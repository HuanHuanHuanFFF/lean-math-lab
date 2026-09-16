#!/usr/bin/env python3
"""Exact sufficient tests from the paired-midpoint paper, not a counterexample oracle.
No factoring of arbitrary large integers, and no historical acceptance chain is run.
Supported targets: 5,6,7,8; i=4 needs its own four-window proof and is not enabled.
"""
from math import gcd
import argparse,json

PRIMES=(2,3,5,7)

def small_lt(value:int,i:int)->int:
    if value==0: raise ValueError('the smooth part of zero is not used')
    value=abs(value); ans=1
    for p in PRIMES:
        if p<i:
            while value%p==0:
                value//=p; ans*=p
    return ans

def source_small(value:int,i:int)->int:
    if value<=0: raise ValueError('source arguments must be positive')
    ans=small_lt(value,i)
    if i in (5,7) and value%i==0 and value%(i*i)!=0: ans*=i
    return ans

def data(n:int,i:int,j:int)->dict:
    if not (i in (5,6,7,8) and i<j and 2*j<=n):
        raise ValueError('require i in {5,6,7,8} and i<j<=floor(n/2)')
    k=n-j; g=gcd(n,j); beta=j//g; gamma=k//g
    small=[source_small(n-r,i) for r in range(5)]
    q=[(n-r)//small[r] for r in range(5)]
    m2=gcd(q[2],j-1); m4=gcd(q[4],j-2)
    ell0=3*j-n-2; ell1=2*n-3*j-2
    W=beta*gamma*(j-1)*(k-1)*ell0*ell1
    den=q[1]**3*m2**2*q[3]*q[4]*m4
    Ap=small[1]**3*small[3]*small[4]
    ans=dict(n=n,i=i,j=j,k=k,g=g,beta=beta,gamma=gamma,small=small,q=q,
             M2=m2,M4=m4,ell0=ell0,ell1=ell1,W=W,denominator=den,Aprime=Ap)
    if W: ans['H']=small_lt(W,i)
    if beta*gamma%q[1]==0:
        t=beta*gamma//q[1];L=g*g*t;s=small[1];K4=9*L-2*s*(n+2)
        e3=gcd(q[3],t);e4=gcd(q[4],t);T0=t//(e3*e4)
        if t%(e3*e4): raise ArithmeticError('coprime block product must divide t')
        if L<=s: raise ArithmeticError('j,k>1 require L>s')
        ans.update(t=t,L=L,s=s,K4=K4,T0=T0,widehat_M4=gcd(q[4],3*L-4*s))
        if K4: ans['refined_lower']=T0*small_lt(L-s,i)*small_lt(K4,i)
    return ans

def assess(n:int,i:int,j:int)->dict:
    z=data(n,i,j);new=[];inherited=[]
    if 't' not in z:
        inherited.append('source1_full_divisibility')
    elif z['K4']%(z['widehat_M4']**2):
        new.append('full_midpoint_square_precision')
    if z['W']:
        if abs(z['W']) < z['H']*z['denominator']:
            new.append('paired_midpoint_exact_integer_gap')
        if n>=80 and 56*z['H']*(z['g']*z['M2'])**2*z['M4']>=z['Aprime']*n:
            new.append('paired_midpoint_simplified_bound')
        if 'refined_lower' in z:
            B=z['refined_lower']
            if abs(z['W']) < B*z['denominator']:
                new.append('paired_midpoint_full_residual_gain')
    return dict(status='proved_common' if new or inherited else 'not_covered',
                new_reasons=new,inherited_reasons=inherited,values=z,
                note='not_covered is not a counterexample; proof level is paper plus exact checks')

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('n',type=int);parser.add_argument('i',type=int);parser.add_argument('j',type=int)
    parser.add_argument('--details',action='store_true',help='include exact internal integers (can produce large output)')
    a=parser.parse_args()
    try:
        result=assess(a.n,a.i,a.j)
        if not a.details:
            result={k:result[k] for k in ('status','new_reasons','inherited_reasons','note')}
            result.update(n_bits=a.n.bit_length(),i=a.i,j_bits=a.j.bit_length())
        print(json.dumps(result,ensure_ascii=False,indent=2))
    except (ValueError,ArithmeticError) as exc: parser.error(str(exc))

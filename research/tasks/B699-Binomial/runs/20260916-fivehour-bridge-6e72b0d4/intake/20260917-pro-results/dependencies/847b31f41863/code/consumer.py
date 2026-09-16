#!/usr/bin/env python3
"""Paper-theorem sufficient conditions; NOT a formal or counterexample oracle.

python3 code/consumer.py N I J
Requires i in {5,6,7,8}, i<j<=n/2. 'not_covered' NEVER means a counterexample.
The optional unit-window corollary in PROOFS.md is NOT enabled here.
"""
from math import gcd
import json,sys

def small(z:int,i:int)->int:
    if z<=0:raise ValueError('small() requires a positive integer')
    out=1
    for p in (2,3,5,7):
        if p<i:
            while z%p==0:z//=p;out*=p
    if i in (5,7) and z%i==0 and z%(i*i)!=0:out*=i
    return out

def small_lt(z:int,i:int)->int:
    if z<=0:raise ValueError('small_lt() requires a positive integer')
    out=1
    for p in (2,3,5,7):
        if p<i:
            while z%p==0:z//=p;out*=p
    return out

def factor(z:int)->dict:
    if z<=0:raise ValueError('factor() requires a positive integer')
    f={};p=2
    while p*p<=z:
        if z%p==0:
            e=0
            while z%p==0:z//=p;e+=1
            f[p]=e
        p=3 if p==2 else p+2
    if z>1:f[z]=1
    return f

def omega(z:int,i:int)->int:
    """This helper uses trial division; avoid it on huge arbitrary inputs."""
    return sum(p>i or (p==i and e>=2) for p,e in factor(z).items()) if i==5 else sum(p>=7 for p in factor(z))

def assess(n:int,i:int,j:int,*,factor_support:bool=False)->dict:
    if not (i in (5,6,7,8) and i<j and 2*j<=n):
        raise ValueError('Require i in {5,6,7,8}, i<j<=floor(n/2).')
    k=n-j;gg=gcd(n,j);alpha=n//gg;beta=j//gg;gamma=k//gg
    ss=[small(n-r,i) for r in range(5)];q=[(n-r)//ss[r] for r in range(5)]
    s=ss[1];A=s*s*ss[3]*ss[4];D=(n-1)**2*(n-3)*(n-4)
    f4=gcd(q[4],(j-1)*(k-1))
    reasons=[];old=[]
    h02=n%72 in (18,56)
    region=(i==5 and h02) or (i==6 and h02 and n%5 in (0,2))
    if region and f4==1:reasons.append('row4_near_group_required')
    if factor_support and region and len(factor(q[4]))<=2:
        reasons.append('row4_at_most_two_prime_bases')
    # General quartic obstruction, independently of the residual being integral.
    if 12*gg**3*D>=A*f4*n**4:reasons.append('quartic_integer_gap')
    out={'n':n,'i':i,'j':j,'status':'not_covered','new_reasons':reasons,'inherited_reasons':old,
         'q4':q[4],'f4':f4,'g':gg,'A':A}
    if (beta*gamma)%q[1]:
        old.append('source1_full_divisibility')
    else:
        t=beta*gamma//q[1];L=gg*gg*t;R=s*alpha-3*gg*t
        e3=gcd(q[3],t);e4=gcd(q[4],t);T0=t//(e3*e4)
        f3=gcd(q[3],L-s);M4=gcd(q[4],j-2)
        # R>0 follows from n>4 and j<=n/2; this is not a numerical assumption.
        if R<=0:raise ArithmeticError('Positive-residual identity failed')
        HR=small_lt(R,i)
        out.update(t=t,L=L,R=R,T0=T0,HR=HR,M4=M4,f3=f3)
        if R%(f3*M4):reasons.append('linear_residual_divisibility')
        if 12*T0*HR*gg**3*D>=A*f4*n**4:
            reasons.append('surplus_amplified_quartic_gap')
        if factor_support and region and q[2]>1 and omega(t,i)==2 and omega(L-s,i)<=2:
            reasons.append('two_base_t_requires_three_base_L_minus_s')
    if reasons or old:out['status']='proved_common'
    return out

if __name__=='__main__':
    if len(sys.argv)!=4:raise SystemExit(__doc__)
    try:print(json.dumps(assess(*(int(v) for v in sys.argv[1:])),ensure_ascii=False))
    except (ValueError,ArithmeticError) as e:raise SystemExit(str(e))

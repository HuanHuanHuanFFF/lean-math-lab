#!/usr/bin/env python3
"""Exact polynomial identities and explicitly finite binomial regression.

Standard library only. These tests supplement, not replace, notes/PROOFS.md.
No factorization of a large integer or giant binomial coefficient is performed.
"""
from __future__ import annotations
import argparse
import json
from math import comb, gcd, isqrt
from pathlib import Path

# A tiny sparse Z[A,Q,b,n,g,z,w,h,d,H,e,t] polynomial implementation.
NAMES = ('A','Q','b','n','g','z','w','h','d','H','e','t')
ZERO = (0,)*len(NAMES)
class Poly:
    def __init__(self, val):
        self.c = {ZERO:val} if isinstance(val,int) and val else ({} if isinstance(val,int) else {k:v for k,v in val.items() if v})
    @staticmethod
    def cast(v): return v if isinstance(v,Poly) else Poly(v)
    def __add__(self, other):
        out=self.c.copy()
        for k,v in self.cast(other).c.items(): out[k]=out.get(k,0)+v
        return Poly(out)
    __radd__=__add__
    def __neg__(self): return Poly({k:-v for k,v in self.c.items()})
    def __sub__(self, other): return self+-self.cast(other)
    def __rsub__(self, other): return self.cast(other)+-self
    def __mul__(self, other):
        out={}
        for a,x in self.c.items():
            for b,y in self.cast(other).c.items():
                k=tuple(u+v for u,v in zip(a,b)); out[k]=out.get(k,0)+x*y
        return Poly(out)
    __rmul__=__mul__
    def __pow__(self, exp):
        if exp<0: raise ValueError('polynomial exponent must be nonnegative')
        ans=Poly(1)
        for _ in range(exp): ans=ans*self
        return ans

def symbols():
    out=[]
    for i in range(len(NAMES)):
        k=list(ZERO); k[i]=1; out.append(Poly({tuple(k):1}))
    return out

def algebra():
    A,Q,b,n,g,z,w,h,d,H,e,t=symbols(); ids={}
    ids['cubic_remainder'] = (6*(A*(Q+1)+b)*A*(Q+1)*(A*(Q+1)-b)
        -6*A*(A*A-b*b)-6*A*Q*(A*A*(Q*Q+3*Q+3)-b*b))
    ids['quadratic_max'] = 4*A*(b-A)+(b-2*A)**2-b*b
    ids['quotient_mod_zeta'] = (w*(n-g*z)*(n-g*z-1)-h*(n-1)*(n-2)
        -(n-1)*((w-h)*n+2*h)-w*g*z*(g*z-2*n+1))
    ids['quotient_h0_expansion'] = (w*(d*(H-g*e)+1)*d*(H-g*e)-h*d*H*(d*H-1)
        -d*(d*(w*(H-g*e)**2-h*H*H)+w*(H-g*e)+h*H))
    ids['negative_bracket_expansion'] = (w*(H-g*e)**2-h*H*H
        -((w-h)*H*H-2*w*H*g*e+w*g*g*e*e))
    ids['pure_power_h1_positive_bracket'] = 3*((2*g+t)-g)**2-(2*g+t)**2-(-g*g+2*g*t+2*t*t)
    ids['square_completion'] = 3*(2*z-1)**2-(12*z*(z-1)+3)
    ids['n_projection_symmetry'] = (n-z)*(n-z-1)-z*(z-1)-(n-1)*(n-2*z)
    ids['k_projection_symmetry'] = ((2-z)*(1-z)*(-z)+z*(z-1)*(z-2))
    ids['small_A0_remainder'] = 6*(Q+4)*(Q+1)*(Q-2)+48-6*Q*(Q*Q+3*Q-6)
    ids['small_A1_remainder'] = 6*(Q+1)*(Q-2)*(Q-5)-60-6*Q*(Q*Q-6*Q+3)
    for name,value in ids.items():
        if value.c: raise AssertionError((name,value.c))
    assert 8*3**3*6**2*6**2 == 279936
    assert 81*6**3 == 17496
    assert 17496<=279936 and 279936*21**9+2 < 2**58
    return {'identities':list(ids),'uniform_constant':279936,
            'H21':279936*21**9+2,'integer_inequalities_checked':4}

def prime(p): return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def vp(x,p):
    if x<=0: raise ValueError('positive input required')
    r=0
    while x%p==0: x//=p; r+=1
    return r

def valuations(n,j,p):
    a=b=0; power=p
    while power<=n:
        a+=n//power-j//power-(n-j)//power
        b+=int(j%power>n%power)
        power*=p
    if a!=b: raise AssertionError('factorial/carry disagreement')
    return a

def normalization(n):
    if n<8 or n%4: raise ValueError('requires a positive legal multiple-of-four row')
    m=(n-2)//2
    lam=3 if vp(n-1,3)==1 else 1
    mu=3 if vp(m,3)==1 else 1
    return lam,mu,(n-1)//lam,m//mu

def finite_regression(max_n=512):
    ps=[p for p in range(2,max_n+1) if prime(p)]
    rows=pairs=vtests=quotients=0
    for n in range(8,max_n+1):
        rows+=1; B3=comb(n,3); bj=1
        relevant=[p for p in ps if B3%p==0]
        for j in range(1,n//2+1):
            bj=bj*(n-j+1)//j
            if j<4: continue
            pairs+=1
            actual=gcd(B3,bj)
            assert actual//(actual&-actual)>1
            for p in relevant:
                assert valuations(n,j,p)==vp(bj,p)
                vtests+=1
            # Audit both directions of the quotient/projection equivalence.
            if n%4==0 and 2*j<n:
                lam,mu,N,K=normalization(n); ell=lam*mu
                projected=(j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0)
                g=gcd(n,j)
                for u in (j,n-j):
                    zeta=u//g; C=gcd(K,zeta); w=ell*C; x=n-u
                    top=w*x*(x-1); bot=(n-1)*(n-2)
                    assert (top%bot==0)==projected
                    if top%bot==0:
                        quotients+=1; h=top//bot
                        assert 1<=h<w and (2*h)%g==0
                        d=gcd(zeta,n-1); e=zeta//d; H=(n-1)//d
                        assert ((w-h)*n+2*h)%e==0
                        assert (w+h)%gcd(d,e)==0
                        assert H>g*e
                        assert n<8*w**3*g*g*e*e+1
                        if u==n-j: assert 4*h<w
    return {'n_range':[8,max_n],'complete_rows':rows,'legal_pairs':pairs,
            'valuation_comparisons':vtests,'integer_quotients':quotients,
            'scope':'finite regression only; not proof of the universal theorem'}

def witness(n,j,p,indices=(3,)):
    if not (prime(p) and 4<=j<=n//2): raise ValueError('invalid witness data')
    vj=valuations(n,j,p); assert vj>0
    vis={str(i):valuations(n,i,p) for i in indices if i<j}
    assert all(value>0 for value in vis.values())
    return {'n':str(n),'j':str(j),'p':p,'v_choose_j':vj,'v_choose_i':vis,
            'n_bits':n.bit_length(),'n_digits':len(str(n))}

def boundaries():
    examples=[]
    examples.append({'name':'p_equals_i','witness':witness(28,14,3)})
    examples.append({'name':'rough_projections_are_not_noCommon','witness':witness(56,11,3)})
    n,j=56,11; assert 3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0
    _,_,N,K=normalization(n); assert j*(j-1)*(j-2)%K!=0
    examples.append({'name':'higher_prime_power_layer','witness':witness(27,5,5)})
    assert not 5%5>27%5 and 5%25>27%25
    n,j=1648,729; g=gcd(n,j); d=gcd(j//g,n-1); e=(j//g)//d
    assert d==e==27 and gcd(d,e)==27
    examples.append({'name':'shared_full_exponent_d_e','d':d,'e':e,'witness':witness(n,j,103)})
    n,j=18610024,7865522; lam,mu,N,K=normalization(n); g=gcd(n,j)
    assert j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0
    C=gcd(K,j//g); x=n-j; h=(lam*mu*C*x*(x-1))//((n-1)*(n-2))
    assert C==h==1 and n//g==9305012
    quotient_rows=[]
    for u in (j,n-j):
        zeta=u//g; CC=gcd(K,zeta); w=lam*mu*CC; xx=n-u
        numerator=w*xx*(xx-1); denominator=(n-1)*(n-2)
        assert numerator%denominator==0
        hh=numerator//denominator; dd=gcd(zeta,n-1); ee=zeta//dd; H0=(n-1)//dd
        assert 1<=hh<w and 2*hh%g==0
        assert ((w-hh)*n+2*hh)%ee==0 and (w+hh)%gcd(dd,ee)==0
        assert n<8*w**3*g*g*ee*ee+1
        assert H0>g*ee and gcd(CC,hh)==gcd(CC,K//CC)==1
        if u==n-j: assert 4*hh<w
        quotient_rows.append({'u':u,'C':CC,'w':w,'h':hh,'d':dd,'e':ee})
    examples.append({'name':'exact_projections_and_integer_quotient_not_noCommon',
                     'alpha':n//g,'C':C,'h':h,'both_quotients':quotient_rows,
                     'witness':witness(n,j,1453,tuple(range(3,10)))})
    return examples

def large_examples():
    out=[]
    for r in (10,20,50,100,500):
        z=21*101**r
        out.append({'side':'beta','a':21,'P':101,'r':r,
                    'witness':witness(2*z+2,z,11,tuple(range(3,10)))})
        out.append({'side':'gamma','a':21,'P':101,'r':r,
                    'witness':witness(2*z-2,z-2,5)})
    for r in (1,3,17,101):
        z=631**r
        out.append({'side':'beta','a':1,'P':631,'r':r,
                    'witness':witness(2*z+2,z,79,tuple(range(3,10)))})
    z=21*7**50
    out.append({'side':'beta','a':21,'P':7,'r':50,'normalized_a':3,'normalized_r':51,
                'witness':witness(2*z+2,z,5)})
    z=9*3**10
    out.append({'side':'beta','a':9,'P':3,'r':10,'normalized_a':1,'normalized_r':12,
                'witness':witness(2*z+2,z,41,tuple(range(3,10)))})
    for case in out:
        n=int(case['witness']['n']); j=int(case['witness']['j']); g=gcd(n,j)
        zz=(j if case['side']=='beta' else n-j)//g
        assert zz==case['a']*case['P']**case['r']
    return {'count':len(out),'max_n_digits':max(x['witness']['n_digits'] for x in out),
            'examples':out,'scope':'regression with explicit common primes, not an infinite proof'}

def main():
    parser=argparse.ArgumentParser(description=__doc__); parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    result={'status':'PASS','algebra':algebra(),'regression':finite_regression(),
            'boundaries':boundaries(),'large_prime_powers':large_examples(),'lean':False}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','identities':len(result['algebra']['identities']),
                      'regression':result['regression'],
                      'large_examples':result['large_prime_powers']['count'],
                      'max_n_digits':result['large_prime_powers']['max_n_digits']},ensure_ascii=False))
if __name__=='__main__':main()

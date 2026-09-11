#!/usr/bin/env python3
"""Exact sparse-polynomial identities and non-vacuous arithmetic regressions.
Python standard library only. No numerical floating-point proof steps.
"""
from __future__ import annotations
import argparse, hashlib, json, math, platform, time
from fractions import Fraction
from pathlib import Path

class Poly:
    """Tiny rational polynomial ring in three indeterminates."""
    def __init__(self, terms=None):
        self.terms = {m: Fraction(c) for m,c in (terms or {}).items() if c}
    @staticmethod
    def const(c): return Poly({(0,0,0): Fraction(c)})
    @staticmethod
    def var(i):
        m = [0,0,0]; m[i] = 1
        return Poly({tuple(m): Fraction(1)})
    @staticmethod
    def coerce(x): return x if isinstance(x,Poly) else Poly.const(x)
    def __add__(self, x):
        other = self.coerce(x); d = dict(self.terms)
        for m,c in other.terms.items(): d[m] = d.get(m,0)+c
        return Poly(d)
    __radd__ = __add__
    def __neg__(self): return Poly({m:-c for m,c in self.terms.items()})
    def __sub__(self,x): return self+-self.coerce(x)
    def __rsub__(self,x): return self.coerce(x)+-self
    def __mul__(self,x):
        other=self.coerce(x);d={}
        for m,c in self.terms.items():
            for v,w in other.terms.items():
                key=tuple(a+b for a,b in zip(m,v))
                d[key]=d.get(key,0)+c*w
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:raise ValueError('nonnegative polynomial exponent required')
        out=Poly.const(1)
        for _ in range(n):out=out*self
        return out
    def __truediv__(self,c):return self*Fraction(1,c)
    def zero(self):return not self.terms

def cube_coefficients(j,k):
    return (j*(j-1)*(j-2)/6, j*(j-1)*k/2,
            j*k*(k-1)/2, k*(k-1)*(k-2)/6)

def polynomial_checks():
    j,k,_=map(Poly.var,range(3))
    A,B,C,D=cube_coefficients(j,k)
    disc=B**2*C**2-4*A*C**3-4*B**3*D-27*A**2*D**2+18*A*B*C*D
    expected=j**2*k**2*(j-1)*(k-1)*(j+k-2)**2*(j+k-1)/12
    assert (disc-expected).zero()
    assert (A+B+C+D-(j+k)*(j+k-1)*(j+k-2)/6).zero()
    a,b,q=map(Poly.var,range(3))
    identities=['cubic_discriminant','vandermonde_sum']
    for r in range(3):
        for s in range(r+1):
            A,B,C,D=cube_coefficients(a*q+s,(b-a)*q+r-s)
            F=A*(b-a)**3-B*(b-a)**2*a+C*(b-a)*a**2-D*a**3
            expected=q*a*b*(b-a)*(b*(2-3*s)+a*(3*r-4))
            assert (6*F-expected).zero(),(r,s)
            identities.append(f'evaluation_r{r}_s{s}')
    # Rational inequalities in the prose are proved there, not by samples here.
    return identities

def valuation(m:int,p:int)->int:
    if m<=0:raise ValueError('positive argument required')
    e=0
    while m%p==0:m//=p;e+=1
    return e

def is_prime(p:int)->bool:
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def binomial_valuation(n:int,k:int,p:int)->int:
    total=0;q=p
    while q<=n:
        total+=n//q-k//q-(n-k)//q
        q*=p
    return total

def local_consumer_counts(n:int,j:int):
    return sum(math.gcd(n-r,j-s)**3 >= (n-r)**2
               for r in range(3) for s in range(r+1))

def regressions(N:int):
    counts=dict(legal_pairs=0,vandermonde_identities=0,content_common_divisor=0,
                binary_content_equalities=0,local_gcd_consumer_hits=0,
                direct_prime_valuation_checks=0,joint_split_projection_cases=0)
    no_odd_content=[]
    for n in range(8,N+1):
        A=math.comb(n,3)
        for j in range(4,n//2+1):
            k=n-j;B=math.comb(n,j)
            coeff=[math.comb(j,t)*math.comb(k,3-t) for t in range(4)]
            H=math.gcd(*coeff);L=A//H
            assert A%H==0 and A%L==0 and B%L==0
            counts['content_common_divisor']+=1
            for t in range(4):
                assert B*coeff[t]==A*math.comb(3,t)*math.comb(n-3,j-t)
                counts['vandermonde_identities']+=1
            if n%4==0:
                assert valuation(H,2)==valuation(math.gcd(n,j),2)
                counts['binary_content_equalities']+=1
            odd=L
            while odd%2==0:odd//=2
            if odd==1:no_odd_content.append([n,j])
            gg=math.gcd(A,B)
            while gg%2==0:gg//=2
            hits=local_consumer_counts(n,j)
            if hits:assert gg>1
            counts['local_gcd_consumer_hits']+=hits
            if 3*j*(j-1)%(n-1)==0:
                gg0=math.gcd(n,j);bet=j//gg0;gam=k//gg0
                dm=math.gcd(bet,n-1);dp=math.gcd(gam,n-1)
                assert math.gcd(dm,dp)==1 and (n-1)%(dm*dp)==0
                tau=(n-1)//(dm*dp)
                em,ep=bet//dm,gam//dp
                assert tau in (1,3)
                assert (tau*dm-gg0*ep)*(tau*dp-gg0*em)==gg0**2*em*ep-tau
                counts['joint_split_projection_cases']+=1
            counts['legal_pairs']+=1
    primes=[p for p in range(2,102) if is_prime(p)]
    for n in range(1,101):
        for k in range(n+1):
            for p in primes:
                B=math.comb(n,k)
                z=binomial_valuation(n,k,p)
                assert z==valuation(B,p)
                qq=p;indicators=0
                while qq<=n:
                    indicators+=int(k%qq>n%qq);qq*=p
                assert z==indicators
                counts['direct_prime_valuation_checks']+=1
    endpoint=[]
    for n,j in [(10,5),(28,14),(244,122)]:
        gg=math.gcd(math.comb(n,3),math.comb(n,j))
        odd=gg
        while odd%2==0:odd//=2
        while odd%3==0:odd//=3
        assert odd==1 and gg%3==0
        endpoint.append(dict(n=n,i=3,j=j,gcd=gg,only_odd_prime=3))
    # Weak low-layer constraints pass, yet higher layers provide common primes.
    n,j=162,70
    assert j%7<=1 and j%23<=1 and j%5<=2
    weak=dict(n=n,j=j,gcd=math.gcd(math.comb(n,3),math.comb(n,j)),
              v5_Cn3=binomial_valuation(n,3,5),v5_Cnj=binomial_valuation(n,j,5),
              v7_Cn3=binomial_valuation(n,3,7),v7_Cnj=binomial_valuation(n,j,7),
              scope='passes selected p>=5 maximal-window-power remainders only; not noCommon')
    assert weak['gcd']==15120 and weak['v5_Cnj']>0 and weak['v7_Cnj']>0
    # The selected prime in the large-power row criterion need not itself witness.
    assert 98 % 49 == 0 and 49**3 >= 98**2
    assert binomial_valuation(100,49,7)==0
    # New family outside the specifically declared old beta criteria.
    n,j,P=4194304,1115339,615793
    assert is_prime(P) and n-j==5*P
    assert math.gcd(n,j)==1 and math.gcd(j,n-1)==15709 and j//15709==71
    assert 23*71*683==j and all(is_prime(p) for p in [23,71,683,89])
    vpA=binomial_valuation(n,3,89);vpB=binomial_valuation(n,j,89)
    assert vpA>0 and vpB>0
    example=dict(n=n,i=3,j=j,g=1,beta=j,dminus=15709,eminus=71,
                 beta_factorization={'23':1,'71':1,'683':1},
                 gamma=n-j,m=5,P=P,P_primality_method='complete trial division through floor(sqrt(P))',
                 common_prime=89,vp_Cn3=vpA,vp_Cnj=vpB,
                 scope='outside listed beta<=2^20,dminus<=32,eminus<=7,beta=mP(m<=7); other historical subfamilies not audited')
    return dict(N=N,counts=counts,content_power_two_diagnostic=no_odd_content,
                endpoint_regressions=endpoint,higher_layer_weak_input=weak,
                complementary_example=example)

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--regression-N',type=int,default=320)
    args=parser.parse_args();assert 8<=args.regression_N<=1000
    start=time.monotonic()
    out=dict(status='PASS',polynomial_ring='Q[x,y,z], sparse exact Fraction coefficients',
             identities=polynomial_checks(),regressions=regressions(args.regression_N),
             elapsed_seconds=time.monotonic()-start,python=platform.python_version(),
             scope='exact symbolic identities + finite regression; paper inequalities and infinite coverage are not machine-formalized')
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(dict(status=out['status'],identities=len(out['identities']),
                         counts=out['regressions']['counts'],seconds=out['elapsed_seconds']),indent=2))
if __name__=='__main__':main()

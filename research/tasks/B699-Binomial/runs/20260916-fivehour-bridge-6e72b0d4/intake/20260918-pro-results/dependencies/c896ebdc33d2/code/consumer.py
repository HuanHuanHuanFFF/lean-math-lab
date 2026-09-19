"""Exact sufficient-predicate API for the new B-prime-power consumer.

True means that the paper B-SPLIT theorem applies to this same (n,j).
False means only 'not certified by this consumer'. This code is not a
proof checker or a Lean proof, and it does not output a witness prime.
No arbitrary coefficient tuple is accepted in place of the original pair.
Trial primality below is exact but is not intended for enormous primes.
"""
from __future__ import annotations
from math import gcd,isqrt
from typing import Optional

def valuation(n:int,p:int)->int:
    if n<=0 or p<2:raise ValueError('positive n and p>=2 required')
    e=0
    while n%p==0:n//=p;e+=1
    return e

def prime_trial(p:int)->bool:
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,isqrt(p)+1,2))

def exact_div(n:int,d:int)->Optional[int]:
    if d<=0:return None
    q,r=divmod(n,d)
    return q if r==0 else None

def canonical_pair(n:int,j:int)->Optional[dict[str,int]]:
    if type(n) is not int or type(j) is not int:raise TypeError('integer n,j required')
    if not (4<=j<=n//2) or n%4:return None
    k=n-j;g=gcd(n,j)
    lam=3 if valuation(n-1,3)==1 else 1
    mu=3 if valuation((n-2)//2,3)==1 else 1
    N=(n-1)//lam;K=(n-2)//(2*mu);H=gcd(K,j-1);C=K//H
    if C<5:return None
    u=exact_div(j*k,g*g*N*C);z=exact_div((j-1)*(k-1),N*H*H)
    if u is None or z is None or min(u,z)<=0:return None
    eps=lam*mu*H-2*u*g*g;A=lam**3*mu**2
    if eps<=0:return None
    T=exact_div(z*eps*eps+A,u*g*g)
    if T is None or T<=0:return None
    return dict(n=n,j=j,g=g,lam=lam,mu=mu,N=N,K=K,H=H,C=C,u=u,z=z,eps=eps,A=A,T=T,rho=eps*T)

def certifies_common(n:int,j:int,*,kappa:int,d:int,prime:int,exponent:int)->bool:
    """Check the sufficient predicate using a supplied prime-power description."""
    for v in (kappa,d,prime,exponent):
        if type(v) is not int:raise TypeError('integer parameters required')
    if exponent<1 or not prime_trial(prime):return False
    if kappa==1:
        if d<3 or d%2==0:return False
    elif kappa==3:
        if d<5 or d%2==0 or d%3==0:return False
    else:return False
    B=d*d+kappa*d-3*kappa*kappa
    if B!=prime**exponent:return False
    v=canonical_pair(n,j)
    if v is None:return False
    M=d*d+2*kappa*d-2*kappa*kappa
    if kappa==1:return v['rho']==v['A']*d*M
    return v['A']==27 and v['rho']==d*M

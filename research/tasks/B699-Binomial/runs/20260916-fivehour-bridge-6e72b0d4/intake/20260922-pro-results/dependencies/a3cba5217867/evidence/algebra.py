"""Small exact sparse-polynomial and finite-field helpers (standard library only)."""
from __future__ import annotations
from math import gcd, isqrt
from typing import Dict, Tuple

Poly = Dict[Tuple[int, ...], int]

def const(c: int, dim: int) -> Poly:
    return {(0,) * dim: c} if c else {}

def var(i: int, dim: int) -> Poly:
    e = [0] * dim; e[i] = 1
    return {tuple(e): 1}

def add(*ps: Poly) -> Poly:
    out: Poly = {}
    for p in ps:
        for e, c in p.items(): out[e] = out.get(e, 0) + c
    return {e:c for e,c in out.items() if c}

def scale(p: Poly, c: int) -> Poly:
    return {e:v*c for e,v in p.items() if v*c}

def mul(p: Poly, q: Poly) -> Poly:
    out: Poly = {}
    for e,c in p.items():
        for f,d in q.items():
            k=tuple(a+b for a,b in zip(e,f));out[k]=out.get(k,0)+c*d
    return {e:c for e,c in out.items() if c}

def power(p: Poly, n: int, dim: int) -> Poly:
    out=const(1,dim)
    while n:
        if n & 1: out=mul(out,p)
        p=mul(p,p);n//=2
    return out

def is_prime_trial(n: int) -> bool:
    """Deterministic trial division; certificate examples are <= 1.4e9."""
    if n<2: return False
    if n%2==0:return n==2
    return all(n%d for d in range(3,isqrt(n)+1,2))

def factor_trial(n: int) -> dict[int,int]:
    if n<1:raise ValueError('factorization input must be positive')
    out={}; p=2
    while p*p<=n:
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def order_two_prime_power(p: int, b: int) -> int:
    """Requires prime p > 2, exponent b >= 1; primality checked by caller."""
    if b<1 or p<=2:raise ValueError('odd prime power required')
    modulus=p**b; candidate=(p-1)*p**(b-1)
    # Factor the known Euler expression structurally; do not trial-factor p**(b-1).
    prime_factors = set(factor_trial(p-1))
    if b > 1: prime_factors.add(p)
    for r in sorted(prime_factors):
        while candidate%r==0 and pow(2,candidate//r,modulus)==1:
            candidate//=r
    return candidate

def qmul(a: tuple[int,int], b: tuple[int,int], p: int) -> tuple[int,int]:
    """Multiply a0+a1*X modulo X^2-6X+4 and p."""
    return ((a[0]*b[0]-4*a[1]*b[1])%p,
            (a[0]*b[1]+a[1]*b[0]+6*a[1]*b[1])%p)

def xpow_remainder(e: int, p: int) -> tuple[int,int]:
    a=(1,0); b=(0,1)
    while e:
        if e&1:a=qmul(a,b,p)
        b=qmul(b,b,p);e//=2
    return a

def orbit_gcd_degree(p: int, order: int, c: int) -> tuple[int,tuple[int,int]]:
    """Degree of gcd(R, X^order-c^order) over F_p, R=X^2-6X+4."""
    b,a=xpow_remainder(order,p);b=(b-pow(c,order,p))%p
    if a==0:return (2 if b==0 else 0),(b,a)
    r=(-b*pow(a,-1,p))%p
    return (1 if (r*r-6*r+4)%p==0 else 0),(b,a)

def local_states(p: int, b: int, order: int) -> dict[int,list[int]]:
    """All exact exponent classes; uses every layer of p**b."""
    modulus=p**b;out={1:[],3:[]};z=1
    for s in range(order):
        for c in (1,3):
            x=c*z%modulus
            if (x*x-6*x+4)%modulus==0:out[c].append(s)
        z=2*z%modulus
    if z!=1:raise ValueError('supplied period is not valid')
    return out

def crt_pair(a: int,m: int,b: int,n: int):
    """Generalized CRT; None means an exact incompatibility."""
    g=gcd(m,n)
    if (b-a)%g:return None
    nn=n//g;mod=m*nn
    k=0 if nn==1 else ((b-a)//g*pow(m//g,-1,nn))%nn
    return (a+m*k)%mod,mod

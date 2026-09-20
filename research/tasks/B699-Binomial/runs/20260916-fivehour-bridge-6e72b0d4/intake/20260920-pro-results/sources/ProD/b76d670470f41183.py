"""Small exact primitives; sparse polynomial design adapted from the previous packet.
No old proof chain is executed. All arithmetic is integer or Fraction arithmetic.
"""
from __future__ import annotations
from fractions import Fraction
from math import isqrt
from typing import Any
NAMES = ('n','U','X','V','D','Q','g','N','A','y','alpha','beta','t')
ZERO = (0,) * len(NAMES)
class Poly:
    def __init__(self, value: Any = 0):
        if isinstance(value, Poly): self.d = dict(value.d)
        elif isinstance(value, dict): self.d = {m:Fraction(c) for m,c in value.items() if c}
        else: self.d = {ZERO:Fraction(value)} if value else {}
    def __add__(self, other: Any) -> 'Poly':
        d=dict(self.d)
        for m,c in Poly(other).d.items(): d[m]=d.get(m,0)+c
        return Poly(d)
    __radd__=__add__
    def __neg__(self): return Poly({m:-c for m,c in self.d.items()})
    def __sub__(self, other): return self+-Poly(other)
    def __rsub__(self, other): return Poly(other)+-self
    def __mul__(self, other):
        out={}
        for a,c in self.d.items():
            for b,d in Poly(other).d.items():
                m=tuple(x+y for x,y in zip(a,b));out[m]=out.get(m,0)+c*d
        return Poly(out)
    __rmul__=__mul__
    def __truediv__(self, k): return self*Fraction(1,k)
    def __pow__(self, e: int):
        if e<0: raise ValueError('Negative polynomial exponent')
        out=Poly(1)
        for _ in range(e):out=out*self
        return out
    def subst(self, name: str, value: Any):
        i=NAMES.index(name);out=Poly()
        for m,c in self.d.items():
            key=list(m);key[i]=0
            out+=Poly({tuple(key):c})*(Poly(value)**m[i])
        return out

def var(name: str):
    m=list(ZERO);m[NAMES.index(name)]=1;return Poly({tuple(m):1})

def valuation(x: int,p: int) -> int:
    if not x or p<2:raise ValueError('Finite valuation needs nonzero x and p>=2')
    x=abs(x);e=0
    while x%p==0:x//=p;e+=1
    return e

def prime_trial(p: int) -> bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def vchoose(n: int,j: int,p: int) -> int:
    if not 0<=j<=n or p<2:raise ValueError('Invalid binomial arguments')
    power=p;ans=0
    while power<=n:
        ans+=n//power-j//power-(n-j)//power;power*=p
    return ans

def weight3(x: int) -> int:
    count=0
    while x:x,r=divmod(x,3);count+=int(r!=0)
    return count

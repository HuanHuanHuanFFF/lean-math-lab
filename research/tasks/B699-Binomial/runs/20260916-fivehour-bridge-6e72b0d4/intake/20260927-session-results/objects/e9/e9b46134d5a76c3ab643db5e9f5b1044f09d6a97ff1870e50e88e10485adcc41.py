"""Tiny exact sparse integer polynomial ring, used only for identity checking.
No external packages, numerical tolerances, or symbolic black boxes.
"""
from __future__ import annotations
class Poly:
    def __init__(self, n: int, terms=None):
        self.n=n
        self.t={tuple(k):int(v) for k,v in (terms or {}).items() if v}
    @classmethod
    def c(cls,n,k): return cls(n,{(0,)*n:int(k)})
    @classmethod
    def var(cls,n,i):
        e=[0]*n;e[i]=1
        return cls(n,{tuple(e):1})
    def coerce(self,o): return o if isinstance(o,Poly) else Poly.c(self.n,o)
    def __add__(self,o):
        o=self.coerce(o); assert self.n==o.n
        t=self.t.copy()
        for k,v in o.t.items():t[k]=t.get(k,0)+v
        return Poly(self.n,t)
    __radd__=__add__
    def __neg__(self): return Poly(self.n,{k:-v for k,v in self.t.items()})
    def __sub__(self,o): return self+-self.coerce(o)
    def __rsub__(self,o): return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o); assert self.n==o.n
        t={}
        for a,x in self.t.items():
            for b,y in o.t.items():
                k=tuple(u+v for u,v in zip(a,b));t[k]=t.get(k,0)+x*y
        return Poly(self.n,t)
    __rmul__=__mul__
    def __pow__(self,k):
        if not isinstance(k,int) or k<0: raise ValueError('nonnegative exponent required')
        r=Poly.c(self.n,1);a=self
        while k:
            if k&1:r=r*a
            a=a*a;k//=2
        return r
    def __eq__(self,o):
        o=self.coerce(o)
        return self.n==o.n and self.t==o.t
    def div_int(self,k):
        if any(v%k for v in self.t.values()):raise ValueError('not coefficientwise divisible')
        return Poly(self.n,{a:v//k for a,v in self.t.items()})
    def records(self):
        return [{'exponents':list(k),'coefficient':v} for k,v in sorted(self.t.items())]

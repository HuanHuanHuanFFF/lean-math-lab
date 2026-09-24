"""Small exact sparse polynomial arithmetic; Python standard library only."""
from __future__ import annotations
from fractions import Fraction as F
from typing import Iterable

class Poly:
    def __init__(self, n: int, terms=None):
        self.n = n
        self.terms = {tuple(k): F(v) for k, v in (terms or {}).items() if v}
        if any(len(k) != n or min(k) < 0 for k in self.terms):
            raise ValueError('Invalid monomial.')
    @classmethod
    def constant(cls, n, c):
        return cls(n, {(0,)*n: F(c)})
    @classmethod
    def variable(cls, n, i):
        p = [0]*n; p[i] = 1
        return cls(n, {tuple(p): F(1)})
    def coerce(self, other):
        return other if isinstance(other, Poly) else Poly.constant(self.n, other)
    def __add__(self, other):
        other = self.coerce(other)
        if self.n != other.n: raise ValueError('Dimension mismatch.')
        ans = dict(self.terms)
        for k, v in other.terms.items(): ans[k] = ans.get(k, F(0)) + v
        return Poly(self.n, ans)
    __radd__ = __add__
    def __neg__(self): return Poly(self.n, {k:-v for k,v in self.terms.items()})
    def __sub__(self, other): return self + (-self.coerce(other))
    def __rsub__(self, other): return self.coerce(other) - self
    def __mul__(self, other):
        other = self.coerce(other); ans = {}
        if self.n != other.n: raise ValueError('Dimension mismatch.')
        for p, a in self.terms.items():
            for q, b in other.terms.items():
                k = tuple(x+y for x,y in zip(p,q))
                ans[k] = ans.get(k, F(0)) + a*b
        return Poly(self.n, ans)
    __rmul__ = __mul__
    def __pow__(self, e):
        if not isinstance(e,int) or e<0: raise ValueError('Nonnegative integer exponent required.')
        ans=Poly.constant(self.n,1); base=self
        while e:
            if e&1: ans=ans*base
            base=base*base; e//=2
        return ans
    def __truediv__(self,c): return self*F(1,c)
    def __eq__(self,other):
        other=self.coerce(other)
        return self.n==other.n and self.terms==other.terms
    def substitute(self, reps: Iterable['Poly']):
        reps=list(reps)
        if len(reps)!=self.n: raise ValueError('One replacement per variable required.')
        target=reps[0].n; ans=Poly.constant(target,0)
        for exps,c in self.terms.items():
            term=Poly.constant(target,c)
            for e,r in zip(exps,reps): term=term*r**e
            ans=ans+term
        return ans
    def records(self):
        return [{'powers':list(k),'coefficient':str(v)} for k,v in sorted(self.terms.items())]
    @classmethod
    def from_records(cls,n,records):
        terms={}
        for r in records:
            k=tuple(r['powers'])
            if k in terms: raise ValueError('Duplicate monomial in certificate.')
            terms[k]=F(r['coefficient'])
        return cls(n,terms)

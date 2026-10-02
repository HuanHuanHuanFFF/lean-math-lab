"""Tiny multivariate Z-polynomial checker. No CAS or numerical arithmetic."""
from __future__ import annotations

class Poly:
    def __init__(self, terms=None, n=1):
        self.n=n
        self.t={tuple(m):int(c) for m,c in (terms or {}).items() if c}
    @classmethod
    def constant(cls,c,n): return cls({(0,)*n:c},n)
    @classmethod
    def variable(cls,i,n):
        e=[0]*n;e[i]=1
        return cls({tuple(e):1},n)
    def coerce(self,x):
        if isinstance(x,Poly):
            assert x.n==self.n
            return x
        return Poly.constant(x,self.n)
    def __add__(self,x):
        x=self.coerce(x);r=dict(self.t)
        for m,c in x.t.items():r[m]=r.get(m,0)+c
        return Poly(r,self.n)
    __radd__=__add__
    def __neg__(self):return Poly({m:-c for m,c in self.t.items()},self.n)
    def __sub__(self,x):return self+-self.coerce(x)
    def __rsub__(self,x):return self.coerce(x)+-self
    def __mul__(self,x):
        x=self.coerce(x);r={}
        for m,c in self.t.items():
            for q,b in x.t.items():
                h=tuple(a+b for a,b in zip(m,q));r[h]=r.get(h,0)+c*b
        return Poly(r,self.n)
    __rmul__=__mul__
    def __pow__(self,e):
        assert isinstance(e,int) and e>=0
        r=Poly.constant(1,self.n);b=self
        while e:
            if e&1:r=r*b
            b=b*b;e//=2
        return r
    def __eq__(self,x):return self.t==self.coerce(x).t
    def export(self):return [[list(m),c] for m,c in sorted(self.t.items())]
    @classmethod
    def load(cls,records,n):
        assert len({tuple(m) for m,c in records})==len(records)
        assert all(len(m)==n and all(isinstance(x,int) and x>=0 for x in m)
                   and isinstance(c,int) for m,c in records)
        return cls({tuple(m):c for m,c in records},n)

def variables(names): return dict(zip(names,(Poly.variable(i,len(names)) for i in range(len(names)))))

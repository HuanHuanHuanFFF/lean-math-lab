#!/usr/bin/env python3
"""Tiny exact sparse multivariate polynomial arithmetic (Python standard library).
No numeric sampling, floating-point arithmetic, or CAS is used in this module.
"""
from __future__ import annotations
from fractions import Fraction
from math import comb
from typing import Dict, Tuple

class Poly:
    def __init__(self, terms=None, dim=2):
        self.dim=dim
        self.terms={tuple(k):Fraction(v) for k,v in (terms or {}).items() if v}
        if any(len(k)!=dim or any(e<0 for e in k) for k in self.terms):
            raise ValueError('Invalid polynomial exponent.')
    @classmethod
    def const(cls,value,dim=2): return cls({(0,)*dim:Fraction(value)},dim)
    @classmethod
    def var(cls,index,dim=2):
        ex=[0]*dim;ex[index]=1
        return cls({tuple(ex):1},dim)
    def coerce(self,other):
        if isinstance(other,Poly):
            if other.dim!=self.dim: raise ValueError('Dimension mismatch.')
            return other
        return Poly.const(other,self.dim)
    def __add__(self,other):
        other=self.coerce(other);out=self.terms.copy()
        for k,c in other.terms.items(): out[k]=out.get(k,0)+c
        return Poly(out,self.dim)
    __radd__=__add__
    def __neg__(self): return Poly({k:-c for k,c in self.terms.items()},self.dim)
    def __sub__(self,other): return self+-self.coerce(other)
    def __rsub__(self,other): return self.coerce(other)+-self
    def __mul__(self,other):
        other=self.coerce(other);out={}
        for k,c in self.terms.items():
            for j,b in other.terms.items():
                ex=tuple(x+y for x,y in zip(k,j))
                out[ex]=out.get(ex,0)+c*b
        return Poly(out,self.dim)
    __rmul__=__mul__
    def __pow__(self,exponent):
        if not isinstance(exponent,int) or exponent<0: raise ValueError('Nonnegative exponent required.')
        out=Poly.const(1,self.dim);base=self
        while exponent:
            if exponent&1:out=out*base
            base=base*base;exponent//=2
        return out
    def scale(self,factor): return self*Fraction(factor)
    def divide_monomial(self,ex):
        if len(ex)!=self.dim: raise ValueError('Dimension mismatch.')
        if any(any(k[i]<ex[i] for i in range(self.dim)) for k in self.terms):
            raise ArithmeticError('Division is not exact.')
        return Poly({tuple(k[i]-ex[i] for i in range(self.dim)):c for k,c in self.terms.items()},self.dim)
    def substitute(self,values):
        if len(values)!=self.dim:raise ValueError('Wrong substitution length.')
        dim=values[0].dim
        if any(v.dim!=dim for v in values):raise ValueError('Output dimension mismatch.')
        out=Poly.const(0,dim)
        for k,c in self.terms.items():
            term=Poly.const(c,dim)
            for v,e in zip(values,k):term=term*v**e
            out=out+term
        return out
    def evaluate(self,values):
        if len(values)!=self.dim:raise ValueError('Wrong evaluation length.')
        ans=Fraction(0)
        for k,c in self.terms.items():
            for v,e in zip(values,k):c*=Fraction(v)**e
            ans+=c
        return ans
    def rows(self):
        return [[list(k),c.numerator,c.denominator] for k,c in sorted(self.terms.items())]
    def __eq__(self,other):
        other=self.coerce(other)
        return self.terms==other.terms

def base_numerators():
    """Y^2=S/W^4, Y_star=U/(8W^2); variables (d,W)."""
    d,W=Poly.var(0),Poly.var(1)
    A=d**3+W*d-1
    S=A**4+d*W*A**3+d**2*W**2*A**2+d**3*W**3*A+d**4*W**4+d**2*W**5
    U=8*d**6+20*W*d**4-16*d**3+(15*W**2+16)*d**2+20*W*d-8
    return d,W,S,U

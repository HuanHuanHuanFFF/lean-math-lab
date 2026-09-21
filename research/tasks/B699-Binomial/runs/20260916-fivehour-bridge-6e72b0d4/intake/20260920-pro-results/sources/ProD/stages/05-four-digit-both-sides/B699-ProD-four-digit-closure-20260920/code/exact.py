#!/usr/bin/env python3
"""Polynomial and arithmetic primitives adapted from the attached previous verifier.
This module does not execute any previous proof chain.
"""
from __future__ import annotations
import argparse
from fractions import Fraction
from hashlib import sha256
import json
from math import gcd, isqrt
from pathlib import Path
from typing import Any

NAMES = ('H','K','X','Y','Z','g','D','C','q','r','n','j')
ZERO_MON = (0,) * len(NAMES)

class Poly:
    def __init__(self, terms: Any = 0):
        if isinstance(terms, Poly): self.d = dict(terms.d)
        elif isinstance(terms, dict): self.d = {m: Fraction(c) for m,c in terms.items() if c}
        else: self.d = {ZERO_MON: Fraction(terms)} if terms else {}
    def __add__(self, other: Any) -> 'Poly':
        d=dict(self.d)
        for m,c in Poly(other).d.items(): d[m]=d.get(m,0)+c
        return Poly(d)
    __radd__=__add__
    def __neg__(self) -> 'Poly': return Poly({m:-c for m,c in self.d.items()})
    def __sub__(self, other: Any) -> 'Poly': return self+-Poly(other)
    def __rsub__(self, other: Any) -> 'Poly': return Poly(other)+-self
    def __mul__(self, other: Any) -> 'Poly':
        d={}
        for m,c in self.d.items():
            for n,b in Poly(other).d.items():
                q=tuple(x+y for x,y in zip(m,n)); d[q]=d.get(q,0)+c*b
        return Poly(d)
    __rmul__=__mul__
    def __truediv__(self, scalar: int) -> 'Poly':
        if not scalar: raise ZeroDivisionError
        return self*Fraction(1,scalar)
    def __pow__(self, exp: int) -> 'Poly':
        if exp<0: raise ValueError('Nonnegative polynomial exponent required')
        ans=Poly(1)
        for _ in range(exp): ans=ans*self
        return ans
    def subst(self, name: str, value: Any) -> 'Poly':
        pos=NAMES.index(name); out=Poly()
        for m,c in self.d.items():
            n=list(m); n[pos]=0
            out += Poly({tuple(n):c})*(Poly(value)**m[pos])
        return out

def var(name: str) -> Poly:
    m=list(ZERO_MON);m[NAMES.index(name)]=1;return Poly({tuple(m):1})

def vp(x: int,p: int) -> int:
    if x==0: raise ValueError('Valuation at zero is not a finite integer')
    x=abs(x); e=0
    while x%p==0:x//=p;e+=1
    return e

def vchoose(n: int,j: int,p: int) -> int:
    if not 0<=j<=n or p<2: raise ValueError('Bad valuation arguments')
    q=p; out=0
    while q<=n:out+=n//q-j//q-(n-j)//q;q*=p
    return out

def prime_trial(p: int) -> bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def digits3(x: int) -> list[tuple[int,int]]:
    if x<1: raise ValueError('Positive integer required')
    out=[];i=0
    while x:
        x,r=divmod(x,3)
        if r:out.append((i,r))
        i+=1
    return out

def recover(alpha: int,beta: int, *, half: bool=True) -> dict[str,int] | None:
    if not (0<beta<alpha) or (half and 2*beta>=alpha) or gcd(alpha,beta)!=1:return None
    H,t=divmod(beta*beta,alpha)
    if H<=0 or t<=0 or beta<=H or (beta-H)%t:return None
    g=(beta-H)//t
    if g<1:return None
    n=g*alpha;j=g*beta
    if j<2 or gcd(n,j)!=g:return None
    assert beta*(alpha-beta)==t*(g*alpha-1)
    return dict(alpha=alpha,beta=beta,H=H,t=t,g=g,n=n,j=j)


"""Sparse integer polynomial arithmetic with exact division, no CAS dependency."""
from __future__ import annotations
from typing import Iterable
Poly = dict[tuple[int, ...], int]

def clean(p: Poly) -> Poly:
    return {m:int(c) for m,c in p.items() if c}

def const(c: int, dim: int=3) -> Poly:
    return {(0,)*dim:c} if c else {}

def var(i: int, dim: int=3) -> Poly:
    v=[0]*dim;v[i]=1
    return {tuple(v):1}

def add(*ps: Poly) -> Poly:
    d: Poly={}
    for p in ps:
        for m,c in p.items():d[m]=d.get(m,0)+c
    return clean(d)

def scale(p: Poly,c: int) -> Poly:
    return clean({m:v*c for m,v in p.items()})

def sub(p: Poly,q: Poly) -> Poly:
    return add(p,scale(q,-1))

def mul(p: Poly,q: Poly) -> Poly:
    d: Poly={}
    for m,c in p.items():
        for n,v in q.items():
            mn=tuple(x+y for x,y in zip(m,n))
            d[mn]=d.get(mn,0)+c*v
    return clean(d)

def power(p: Poly,e: int) -> Poly:
    if e < 0:raise ValueError('negative exponent')
    dim=len(next(iter(p))) if p else 3
    r=const(1,dim)
    for _ in range(e):r=mul(r,p)
    return r

def load(terms: list) -> Poly:
    return clean({tuple(t[1]):int(t[0]) for t in terms})

def encode(p: Poly) -> list:
    return [[c,list(m)] for m,c in sorted(p.items())]

def evaluate(p: Poly,values: tuple[int,...]) -> int:
    ans=0
    for m,c in p.items():
        t=c
        for x,e in zip(values,m):t*=x**e
        ans+=t
    return ans

def divide_exact(f: Poly,g: Poly) -> Poly:
    if not g:raise ZeroDivisionError('zero polynomial')
    r=dict(f);q: Poly={}; lm=max(g);lc=g[lm]
    while r:
        m=max(r);c=r[m]
        if any(x<y for x,y in zip(m,lm)) or c%lc:
            raise ValueError('not an exact integer polynomial division')
        t=tuple(x-y for x,y in zip(m,lm));v=c//lc
        q[t]=q.get(t,0)+v
        r=sub(r,mul({t:v},g))
    return clean(q)

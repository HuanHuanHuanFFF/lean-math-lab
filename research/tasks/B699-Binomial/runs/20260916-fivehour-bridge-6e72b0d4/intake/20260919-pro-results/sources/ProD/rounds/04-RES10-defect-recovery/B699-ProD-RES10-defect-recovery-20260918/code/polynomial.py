"""Tiny integer polynomial ring Z[X,Y], used only for coefficient checks."""
from __future__ import annotations
Poly = dict[tuple[int,int],int]

def add(*ps: Poly) -> Poly:
    q={}
    for p in ps:
        for e,c in p.items(): q[e]=q.get(e,0)+c
    return {e:c for e,c in q.items() if c}

def scale(p: Poly,c: int) -> Poly:
    return {e:a*c for e,a in p.items() if a*c}

def mul(*ps: Poly) -> Poly:
    q={(0,0):1}
    for p in ps:
        z={}
        for (a,b),c in q.items():
            for (u,v),d in p.items():
                e=(a+u,b+v);z[e]=z.get(e,0)+c*d
        q={e:c for e,c in z.items() if c}
    return q

def power(p: Poly,k: int) -> Poly:
    if k<0: raise ValueError('negative polynomial exponent')
    q={(0,0):1}
    for _ in range(k): q=mul(q,p)
    return q

def const(c: int) -> Poly: return {(0,0):c} if c else {}

def sub(p: Poly,x: Poly,y: Poly) -> Poly:
    return add(*(scale(mul(power(x,a),power(y,b)),c) for (a,b),c in p.items()))

def rows(p: Poly) -> list[list[int]]: return [[*e,c] for e,c in sorted(p.items())]

def from_rows(r: list[list[int]]) -> Poly:
    p={}
    for a,b,c in r:
        if min(a,b)<0 or (a,b) in p: raise ValueError('invalid coefficient encoding')
        if c:p[a,b]=c
    return p

X={(1,0):1};Y={(0,1):1}

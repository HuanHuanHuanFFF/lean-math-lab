"""Small independent integer polynomial implementation (two variables)."""
from __future__ import annotations
from math import comb
Poly = dict[tuple[int, int], int]

def const(c: int) -> Poly:
    return {(0, 0): c} if c else {}

def add(*polys: Poly) -> Poly:
    out: Poly = {}
    for poly in polys:
        for m, c in poly.items():
            out[m] = out.get(m, 0)+c
    return {m:c for m,c in out.items() if c}

def scale(poly: Poly, c: int) -> Poly:
    return {m:c*v for m,v in poly.items() if c*v}

def mul(a: Poly, b: Poly) -> Poly:
    out: Poly = {}
    for (i,j),c in a.items():
        for (k,l),d in b.items():
            m = (i+k,j+l)
            out[m] = out.get(m, 0)+c*d
    return {m:c for m,c in out.items() if c}

def power(poly: Poly, exponent: int) -> Poly:
    if exponent < 0:
        raise ValueError('nonnegative exponent required')
    out = const(1)
    while exponent:
        if exponent & 1:
            out = mul(out, poly)
        poly = mul(poly,poly)
        exponent >>= 1
    return out

def substitute(poly: Poly, a: Poly, b: Poly) -> Poly:
    out: Poly = {}
    for (i,j),c in poly.items():
        out = add(out, scale(mul(power(a,i),power(b,j)),c))
    return out

def shift(poly: Poly, a: int, b: int) -> Poly:
    out: Poly = {}
    for (i,j),c in poly.items():
        for u in range(i+1):
            for v in range(j+1):
                m = (u,v)
                out[m] = out.get(m,0)+c*comb(i,u)*comb(j,v)*a**(i-u)*b**(j-v)
    return {m:c for m,c in out.items() if c}

def order(poly: Poly) -> int:
    if not poly:
        raise ValueError('zero polynomial has no finite order')
    return min(i+j for i,j in poly)

def terms(poly: Poly) -> list[list[int]]:
    return [[i,j,c] for (i,j),c in sorted(poly.items())]

X: Poly = {(1,0):1}
Y: Poly = {(0,1):1}

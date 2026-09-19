"""Small exact two-variable polynomial ring used only for certificate verification."""
from __future__ import annotations
from fractions import Fraction
from math import factorial
from typing import Dict, Tuple

Poly = Dict[Tuple[int, int], Fraction]

def const(c: int | Fraction) -> Poly:
    q = Fraction(c)
    return {(0, 0): q} if q else {}

def add(*polys: Poly) -> Poly:
    out: Poly = {}
    for a in polys:
        for e, c in a.items():
            out[e] = out.get(e, Fraction(0)) + c
    return {e: c for e, c in out.items() if c}

def scale(a: Poly, c: int | Fraction) -> Poly:
    return {e: c * q for e, q in a.items() if c * q}

def sub(a: Poly, b: Poly) -> Poly:
    return add(a, scale(b, -1))

def mul(*polys: Poly) -> Poly:
    out = const(1)
    for a in polys:
        nxt: Poly = {}
        for e, c in out.items():
            for f, d in a.items():
                k = (e[0] + f[0], e[1] + f[1])
                nxt[k] = nxt.get(k, Fraction(0)) + c * d
        out = {e: c for e, c in nxt.items() if c}
    return out

def power(a: Poly, k: int) -> Poly:
    if k < 0:
        raise ValueError("negative polynomial exponent")
    out = const(1)
    for _ in range(k):
        out = mul(out, a)
    return out

def falling_binom(a: Poly, k: int) -> Poly:
    return scale(mul(*(sub(a, const(r)) for r in range(k))), Fraction(1, factorial(k)))

def assert_equal(a: Poly, b: Poly, name: str) -> int:
    diff = sub(a, b)
    if diff:
        first = next(iter(diff.items()))
        raise AssertionError(f"{name}: nonzero coefficient {first}")
    return len(a)

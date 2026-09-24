#!/usr/bin/env python3
"""Independent integer-root-floor algorithm for PHASE1024.

Uses the two eliminated cubics directly; no dyadic interval or Fraction code
from phase_a is imported. All comparisons are integer polynomial signs.
"""
from __future__ import annotations
from math import isqrt
from typing import Callable


def f_y(h: int, m: int) -> int:
    return -2*m**3+(h-1)*m*m+2*h*m-h*h


def f_z(h: int, m: int) -> int:
    return 2*m**3+(7*h+1)*m*m+(-2*h**3+2*h*h)*m+h**4


def f_t(h: int, m: int) -> int:
    return m**3+(6*h+1)*m*m+(-h**3+6*h*h)*m+h**3


def root_floor(poly: Callable[[int,int],int], h: int, lo: int, hi: int) -> int:
    if not poly(h,lo) < 0 < poly(h,hi):
        raise ArithmeticError('eliminated-cubic sign bracket failed')
    while hi-lo>1:
        mid=(hi+lo)//2
        v=poly(h,mid)
        if v==0:
            raise ArithmeticError('integer root contradicts algebraic degree')
        if v<0: lo=mid
        else: hi=mid
    return lo


def classify(h: int) -> dict[str,int]:
    if type(h) is not int or h<=1024 or h%2!=1:
        raise ValueError('requires odd integer h>1024')
    a=isqrt(h)
    fy=root_floor(f_y,h,a,a+2)
    lower,upper=h*(a-4),h*(a+2)
    fz=root_floor(f_z,h,lower,upper)
    ft=root_floor(f_t,h,lower,upper)
    chi=fz-h+fy+1-ft
    if chi not in (0,1):
        raise ArithmeticError('non-binary phase')
    return {'h':h,'floor_y':fy,'floor_Z':fz,'floor_T':ft,'chi':chi}

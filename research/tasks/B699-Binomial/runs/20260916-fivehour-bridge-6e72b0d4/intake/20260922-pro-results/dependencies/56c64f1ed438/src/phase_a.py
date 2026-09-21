#!/usr/bin/env python3
"""PHASE1024: exact dyadic isolation in the original auxiliary cubic.

This is an h-only source-carry classifier, NOT a B699 counterexample search.
It does not assert existence of a recovered integer input.
"""
from __future__ import annotations
from fractions import Fraction
from math import isqrt
from typing import Any


def validate_h(h: int) -> None:
    if type(h) is not int or h <= 1024 or h % 2 != 1:
        raise ValueError('PHASE1024 requires an odd integer h > 1024')


def cubic(h: int, y: Fraction | int) -> Fraction | int:
    return ((-2*y + h-1)*y + 2*h)*y - h*h


def z_value(h: int, y: Fraction) -> Fraction:
    return h*y-2*y*y


def t_value(h: int, y: Fraction) -> Fraction:
    return z_value(h, y)+y-h


def floor_q(x: Fraction) -> int:
    return x.numerator // x.denominator


def classify(h: int) -> dict[str, Any]:
    validate_h(h)
    a = isqrt(h)
    lo, hi = Fraction(a), Fraction(a+2)
    if not cubic(h, lo) < 0 < cubic(h, hi):
        raise ArithmeticError('initial root bracket failed')
    max_steps = (512*h**4).bit_length()+2
    for step in range(max_steps+1):
        low = (floor_q(lo), floor_q(z_value(h, lo)), floor_q(t_value(h, lo)))
        high = (floor_q(hi), floor_q(z_value(h, hi)), floor_q(t_value(h, hi)))
        if low == high:
            fy, fz, ft = low
            chi = fz - h + fy + 1 - ft
            if chi not in (0, 1):
                raise ArithmeticError('non-binary carry')
            return {'h': h, 'lower': [lo.numerator, lo.denominator],
                    'upper': [hi.numerator, hi.denominator],
                    'floor_y': fy, 'floor_Z': fz, 'floor_T': ft,
                    'chi': chi, 'dyadic_steps': step,
                    'proved_step_limit': max_steps}
        mid = (lo+hi)/2
        f = cubic(h, mid)
        if f == 0:
            raise ArithmeticError('rational root contradicts odd-h irreducibility')
        if f < 0:
            lo = mid
        else:
            hi = mid
    raise ArithmeticError('proved logarithmic step bound exceeded')


def verify_certificate(cert: dict[str, Any]) -> bool:
    try:
        h = cert['h']; validate_h(h)
        lo = Fraction(*cert['lower']); hi = Fraction(*cert['upper'])
        a = isqrt(h)
        if not Fraction(a) <= lo < hi <= Fraction(a+2):
            return False
        if not cubic(h, lo) < 0 < cubic(h, hi):
            return False
        floors = (cert['floor_y'], cert['floor_Z'], cert['floor_T'])
        for y in (lo, hi):
            if (floor_q(y), floor_q(z_value(h, y)), floor_q(t_value(h, y))) != floors:
                return False
        return cert['chi'] in (0,1) and cert['chi'] == floors[1]-h+floors[0]+1-floors[2]
    except (KeyError, TypeError, ValueError, ZeroDivisionError):
        return False

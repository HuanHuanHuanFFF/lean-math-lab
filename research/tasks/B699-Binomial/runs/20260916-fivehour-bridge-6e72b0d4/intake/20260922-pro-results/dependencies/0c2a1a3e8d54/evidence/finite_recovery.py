#!/usr/bin/env python3
"""Exact necessary recovery for a FIXED cyclotomic defect.

No bound on the defect itself is claimed. Returned points are algebraic candidates,
not NC3 counterexamples. Only standard-library exact arithmetic is used.
"""
from __future__ import annotations
import argparse
import json
from fractions import Fraction
from math import gcd, isqrt
from typing import Iterator


def coefficients(h: int, t: int, m: int) -> tuple[int, int, int]:
    """m^3 * F_h(1+(1+t/m)*v,v) / v = A*v^2+B*v+C."""
    A = (-h*h*t*t*m + 6*h*t*t*m + 10*h*t*m*m + 4*h*m**3
         + 4*t**3 + 11*t*t*m + 10*t*m*m + 3*m**3)
    B = (-2*h*h*t*m*m + 12*h*t*m*m + 10*h*m**3
         + 12*t*t*m + 22*t*m*m + 10*m**3)
    C = (-h*h+6*h+11)*m**3 + 12*t*m*m
    return A, B, C


def positive_integer_roots(A: int, B: int, C: int) -> list[int]:
    """Return ALL positive integer roots, handling A=0 explicitly."""
    if A == 0:
        if B == 0:
            if C == 0:
                raise ValueError('Identically zero recovery: not a finite problem')
            return []
        if (-C) % B == 0 and (-C)//B > 0:
            return [(-C)//B]
        return []
    discriminant = B*B - 4*A*C
    if discriminant < 0:
        return []
    r = isqrt(discriminant)
    if r*r != discriminant:
        return []
    out = set()
    for numerator in (-B-r, -B+r):
        denominator = 2*A
        if numerator % denominator == 0 and numerator//denominator > 0:
            out.add(numerator//denominator)
    return sorted(out)


def recover(defect: int) -> dict:
    """Complete enumeration of the bounded-defect NECESSARY algebraic system.

    Runtime grows with defect. This routine neither bounds all defects nor asserts
    that a surviving tuple meets full source/prime-power/NC3 conditions.
    """
    if defect < 1:
        raise ValueError('defect must be a positive integer')
    m = 3*defect
    h_upper = 36*defect*defect + 30*defect + 9  # strict
    tested = 0
    candidates: list[dict] = []
    for t in range(1, 6*defect):
        # Necessary because defect is coprime to 3*(Delta-1).
        if gcd(t, defect) != 1:
            continue
        for h in range(15, h_upper, 2):
            tested += 1
            A,B,C = coefficients(h,t,m)
            assert C < 0
            for v in positive_integer_roots(A,B,C):
                if v % 2:
                    continue
                Qf = Fraction(1) + Fraction(m+t,m)*v
                if Qf.denominator != 1:
                    continue
                Q = Qf.numerator
                Delta = Q-v
                if Q < 11 or Q % 2 == 0 or Delta < 17 or Delta % 16 != 1:
                    continue
                if not (0 < v < Q and 3*v > Q):
                    continue
                if v % defect or v//gcd(v,3*(Delta-1)) != defect:
                    continue
                if (Delta**3-1) % v:
                    continue
                nu2 = h*Delta-Q
                if nu2 <= 0 or nu2 % 4:
                    continue
                nu = nu2//2
                H = nu//2
                if H % 2 == 0:
                    continue
                P = Q+h*v
                if P < 4*Q or v*nu*nu != P*Q*Q-1:
                    continue
                E = P+nu
                F = Q*Q+v*nu
                n = P*Q*nu+2
                sigma, tau = E*Q*Q, F*P
                assert E*F == n-1 and sigma+tau == n
                assert 4 <= sigma < tau
                assert n < (1 << 78)*defect**24
                candidates.append(dict(defect=defect,t=t,h=h,v=v,Q=Q,
                    Delta=Delta,nu=nu,H=H,P=P,E=E,F=F,n=n,
                    sigma=sigma,tau=tau,status='ALGEBRAIC_CANDIDATE_NOT_NC3'))
    return dict(defect=defect,h_strict_upper=h_upper,
        t_range=[1,6*defect-1],quadratics_tested=tested,candidates=candidates,
        meaning='Exact bounded-defect necessary recovery; not global finiteization')


def main() -> None:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--defect',type=int,required=True)
    p.add_argument('--output')
    a=p.parse_args()
    result=recover(a.defect)
    text=json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True)+'\n'
    if a.output:
        with open(a.output,'w',encoding='utf8') as f: f.write(text)
    else:
        print(text,end='')

if __name__=='__main__':
    main()

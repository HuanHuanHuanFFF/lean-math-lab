"""Exact unit-carry residue certificate and B5 input recognition.

These routines recognize sufficient conditions only. Passing a source or failing
these sufficient conditions is never treated as evidence of NC6.
"""
from __future__ import annotations
from math import gcd
from typing import Any


def power_exponent(x: int, base: int) -> int | None:
    if x < 1 or base < 2:
        raise ValueError('Require x>=1 and base>=2.')
    e = 0
    while x % base == 0:
        x //= base
        e += 1
    return e if x == 1 else None


def residue_certificate() -> list[dict[str, Any]]:
    """All 16 exponent classes; no bound on actual exponents is imposed."""
    records = []
    square10_mod16 = {10*z*z % 16 for z in range(16)}
    for h in range(4):
        for d in range(4):
            S5, T5 = pow(3,d,5), pow(3,h,5)
            b5 = (1-T5*(S5-1)) % 5
            c5 = (2*b5-S5) % 5
            t5 = (c5*S5*T5+b5*b5) % 5
            S16, T16 = pow(3,d,16), pow(3,h,16)
            rows = []
            for g in range(0,16,2):
                if g*T16 % 8 != 2:
                    continue
                for c in range(1,16,2):
                    A = (1+g*c) % 16
                    for b in range(1,16,2):
                        if (c-2*A*b+S16) % 16:
                            continue
                        if (T16*(S16-A*A)-g*b*b+b-1) % 16:
                            continue
                        rows.append([g,c,b,A,(c*S16*T16+b*b)%16])
            values = sorted({r[-1] for r in rows})
            if not rows or len(values) != 1:
                raise AssertionError('Unexpected failure of exact residue classification.')
            survive = t5 == 0 and values[0] in square10_mod16
            records.append(dict(h_mod4=h,d_mod4=d,b_mod5=b5,c_mod5=c5,
                                t_mod5=t5,t_mod16=values[0],
                                rows_mod16=rows,survives=survive))
    return records


def assess_b5(n: int, j: int) -> dict[str, Any]:
    """Recognize the new quintic two-block condition for the actual input.

W10 is checked by an integer square test, not assumed from a modular model.
The returned source failure is checked as an extra implementation assertion.
The theorem proving it is in PROOFS.md, not a bounded experiment.
"""
    from math import isqrt
    if n % 1800 != 1530 or not 7 <= j <= n//2:
        return {'triggered': False, 'reason': 'outside B-tail legal input'}
    g = gcd(n,j)
    alpha = n//g
    a = power_exponent(alpha,3)
    if a is None or a == 0 or a % 5:
        return {'triggered': False, 'reason': 'alpha is not 3^(5h)'}
    W = (n-1)*j*(n-j)
    if W % 10:
        return {'triggered': False, 'reason': 'W10 fails'}
    y = isqrt(W//10)
    if 10*y*y != W:
        return {'triggered': False, 'reason': 'W10 fails'}
    T = 3**(a//5)
    for side,x in [('beta',j//g),('gamma',(n-j)//g)]:
        digits = []
        yx = x
        while yx:
            digits.append(yx % T)
            yx //= T
        support = [i for i,v in enumerate(digits) if v]
        if len(support) <= 2:
            defect = (n-1)//gcd(n-1,j*(n-j))
            if defect <= 1:
                raise AssertionError('B5 theorem contradicted by exact input.')
            return dict(triggered=True,side=side,T=T,a=a,g=g,
                        support=support,source1_defect=defect,
                        status='sufficient Common4/5/6 condition, not NC characterization')
    return {'triggered':False,'reason':'more than two base-T blocks on both sides'}

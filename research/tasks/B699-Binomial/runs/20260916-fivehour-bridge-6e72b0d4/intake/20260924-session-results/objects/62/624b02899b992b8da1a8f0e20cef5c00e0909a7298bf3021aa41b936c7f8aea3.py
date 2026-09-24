"""Exact necessary filters. They do not recognize NC3 or prove their inputs NC3."""
from __future__ import annotations
from functools import reduce
from math import gcd
from typing import Sequence


def valuation(n: int, p: int) -> int:
    if n == 0 or p < 2:
        raise ValueError('valuation requires a nonzero integer and p >= 2')
    n = abs(n)
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def leading_D(A: int, d: int) -> int:
    if A <= 0 or d <= 0:
        raise ValueError('A,d must be positive')
    z, ans, p = d, 1, 2
    while p*p <= z:
        v = 0
        while z % p == 0:
            z //= p
            v += 1
        if v:
            ans *= p ** min(v, valuation(A,p)//2)
        p += 1
    if z > 1:
        ans *= z ** min(1, valuation(A,z)//2)
    return ans


def candidate_slots(coeff: Sequence[int], *, numerator: int = 11,
                    denominator: int = 13) -> list[int]:
    """Necessary highest unequal digits; GATE and NC3 are NOT inferred.

    The previous filter has numerator=5, denominator=6.  This round has
    numerator=11, denominator=13 and retains the old sixth-power content filter.
    """
    a = list(coeff)
    if len(a) < 2 or a[0] != 2 or a[-1] <= 0 or any(x < 0 for x in a):
        raise ValueError('expected a nonnegative integer polynomial with f(0)=2')
    d, A = len(a)-1, a[-1]
    if leading_D(A,d) != 2:
        raise ValueError('this filter is restricted to D(A,d)=2')
    cf = reduce(gcd,a[1:])
    ea, ec = valuation(A,2), valuation(cf,2)
    threshold = 2 ** max(0,(5*ea-2*ec+5)//6)
    return [s for s in range(1,d)
            if denominator*s > numerator*d
            and all(v % 2 == 0 for v in a[s+1:])
            and a[s] % 2 == 0 and a[s] >= threshold]


def degree_pairs_for_loss(m: int) -> list[tuple[int,int,int]]:
    """Return (d,s,ell) degree pairs ONLY, never original integer instances."""
    if m <= 0 or m % 2:
        raise ValueError('the D=2 branch has positive even m')
    result=[]
    for d in range(2,13*m-5,2):
        if (5*d+m) % 6:
            continue
        s=(5*d+m)//6
        if 0<s<d:
            ell=4*s-3*d
            if ell>m and ell<=5*m-2:
                result.append((d,s,ell))
    return result


def horner(coeff: Sequence[int], x: int) -> int:
    y=0
    for c in reversed(coeff):
        y=y*x+c
    return y

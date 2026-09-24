"""Exact original-input consumers for the paper theorems TC7 and BL6.

No necessary-source survivor is labelled NC6. A first-source deficit is an
integer witness block, not a claim to have factored that block into primes.
"""
from __future__ import annotations
from math import gcd
from typing import Literal

Side = Literal['beta', 'gamma']


def _input(n: int, j: int, side: Side) -> tuple[int, int, int]:
    if type(n) is not int or type(j) is not int:
        raise TypeError('n and j must be integers')
    if not (7 <= j <= n // 2):
        raise ValueError('The original interval 7 <= j <= floor(n/2) is required')
    if n % 1800 not in (1280, 1530):
        raise ValueError('This consumer is scoped to the two stated tails')
    if side not in ('beta', 'gamma'):
        raise ValueError('side must be beta or gamma')
    g = gcd(n, j)
    alpha = n // g
    x = (j if side == 'beta' else n-j) // g
    if g < 2 or alpha % 2 == 0:
        raise ValueError('An odd quotient and the true g >= 2 are required')
    if gcd(alpha, x) != 1:
        raise AssertionError('The actual gcd normalization failed')
    return g, alpha, x


def power_exponent(value: int, base: int) -> int | None:
    """Return e when value=base**e, else None, using exact integer divisions."""
    if value < 1 or base < 2:
        raise ValueError('value >= 1 and base >= 2 required')
    e = 0
    while value > 1 and value % base == 0:
        value //= base
        e += 1
    return e if value == 1 else None


def _certificate(n: int, j: int, theorem: str, data: dict) -> dict:
    N = n - 1
    deficit = N // gcd(N, j*(n-j))
    if deficit <= 1 or gcd(deficit, 30) != 1:
        raise AssertionError('The proved first-source conclusion failed')
    return {
        'status': 'COMMON_4_5_6_BY_FIRST_SOURCE',
        'theorem': theorem,
        'n': n, 'j': j, 'g': gcd(n, j),
        'source_deficit': deficit,
        'prime_threshold': 7,
        'prime_not_factored': True,
        'scope': 'Every prime divisor of this deficit is a common witness for the same original pair',
        **data,
    }


def certify_tc7(n: int, j: int, h: int, r: int,
                side: Side = 'beta') -> dict:
    """Certify a supplied TC7 representation; reject out-of-scope inputs."""
    g, alpha, x = _input(n, j, side)
    a = power_exponent(alpha, 3)
    if a is None or type(h) is not int or type(r) is not int:
        raise ValueError('A true power-of-three quotient and integer h,r are required')
    if not (h >= 1 and r >= h and a >= 7*h):
        raise ValueError('TC7 requires h>=1, r>=h, a>=7h')
    A, b = divmod(x, 3**r)
    M = 3**h
    if not (0 <= A < M and 1 <= b < M and b % 3):
        raise ValueError('The exact two-cluster representation does not hold')
    # A=0 is the separately proved single-low-block case.
    return _certificate(n, j, 'TC7' if A else 'TC7_SINGLE_BLOCK',
                        {'side': side, 'a': a, 'h': h, 'r': r, 'A': A, 'b': b})


def certify_bl6(n: int, j: int, T: int, m: int,
                side: Side = 'beta') -> dict:
    """Certify a literal T-adic support of at most two nonzero blocks."""
    g, alpha, x = _input(n, j, side)
    if type(T) is not int or type(m) is not int or T < 3 or T % 2 == 0 or m < 6:
        raise ValueError('BL6 requires odd integer T>=3 and m>=6')
    if alpha != T**m:
        raise ValueError('T**m must be the actual quotient n/g')
    digits = []
    y, r = x, 0
    while y:
        y, digit = divmod(y, T)
        if digit:
            digits.append((r, digit))
        r += 1
    if not (1 <= len(digits) <= 2) or digits[0][0] != 0:
        raise ValueError('Not an exact one- or two-block representation')
    if gcd(digits[0][1], T) != 1:
        raise AssertionError('The true gcd should force a unit bottom block')
    return _certificate(n, j, 'BL6',
                        {'side': side, 'base': T, 'm': m, 'digits': digits})


def family(u: int = 0) -> dict:
    """The original-input comparison family; NOT a model of full NC6 conditions."""
    if type(u) is not int or u < 0:
        raise ValueError('u must be a nonnegative integer')
    h = 29 + 420*u
    T = 3**h
    alpha = T**7
    beta = (T-1)*T**4 + T-2
    g = 190
    return {'u': u, 'h': h, 'T': T, 'a': 7*h, 'alpha': alpha,
            'g': g, 'beta': beta, 'gamma': alpha-beta,
            'n': g*alpha, 'j': g*beta}


if __name__ == '__main__':
    import json
    row = family(0)
    certificate = certify_tc7(row['n'], row['j'], row['h'], 4*row['h'])
    print(json.dumps(certificate, indent=2))

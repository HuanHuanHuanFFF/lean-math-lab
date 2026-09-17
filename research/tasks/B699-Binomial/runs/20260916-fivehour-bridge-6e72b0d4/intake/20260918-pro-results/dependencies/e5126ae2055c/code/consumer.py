#!/usr/bin/env python3
"""B699: exact, sufficient two-window consumers. Standard library only.

No primality test is needed by pair_certificate.  A returned cofactor is not
asserted prime: EVERY prime dividing it is an admissible common witness.
A None result means only that these sufficient tests did not decide the pair.
"""
from __future__ import annotations
from math import gcd, prod
from typing import Any


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def small_part(x: int, target: int) -> int:
    require(type(x) is int and x > 0, 'positive integer required')
    require(target in (5, 6, 7, 8), 'target must be 5, 6, 7 or 8')
    rest = x
    for p in (2, 3, 5, 7):
        if p < target:
            while rest % p == 0:
                rest //= p
    if target in (5, 7) and rest % target == 0 and rest % (target * target) != 0:
        rest //= target
    return x // rest


def bridge_allowed(n: int, target: int) -> bool:
    if target == 5:
        return True
    if target == 6:
        return n % 25 >= 5
    if target in (7, 8):
        return n % 25 >= 5 and n % 7 in (5, 6)
    return False


def valuation_binomial(n: int, j: int, prime: int) -> int:
    require(0 <= j <= n and prime >= 2, 'invalid valuation input')
    power, value = prime, 0
    while power <= n:
        value += n // power - j // power - (n - j) // power
        power *= prime
    return value


def obstruction(n: int, j: int, target: int) -> dict[str, int] | None:
    """Exact full-layer source obstruction; no NC assumption in this test."""
    for r in range(1, 5):
        q = (n - r) // small_part(n - r, target)
        falling = prod(j - b for b in range(r + 1))
        residual = q // gcd(q, falling)
        if residual > 1:
            return {'row': r, 'q_r': q, 'falling_product': falling,
                    'witness_cofactor': residual}
    return None


def pair_certificate(n: int, j: int, target: int = 5) -> dict[str, Any] | None:
    require(type(n) is int and type(j) is int, 'n,j must be integers')
    require(target in (5, 6, 7, 8) and target < j <= n // 2, 'outside legal original domain')
    if not bridge_allowed(n, target):
        return None
    # On this bridge domain the first five native small parts agree with s5.
    require(all(small_part(n-r, target) == small_part(n-r, 5) for r in range(5)),
            'native small-part bridge failed')
    s = small_part(n-1, target)
    zero = (2*j == n-1 or 3*j == n-1 or 3*j == n+2)
    hit: dict[str, Any] | None = {'kind': 'proved_zero_line'} if zero else None
    if hit is None:
        for r in (3, 4):
            rhs = r * (r-1) * s * (n-r)**2
            for b in range(r+1):
                d = gcd(n-r, j-b)
                lhs = (n-1) * d*d
                if lhs >= rhs:
                    hit = {'kind': 'two_window_large_gcd', 'row': r, 'slot': b,
                           'shifted_gcd': d, 'left': lhs, 'right': rhs}
                    break
            if hit is not None:
                break
    if hit is None:
        return None
    witness = obstruction(n, j, target)
    require(witness is not None, 'proved consumer triggered without its full-layer obstruction')
    return {'status': 'COMMON_PRIME_CERTIFIED', 'target': target, 'n': n, 'j': j,
            's_1': s, 'criterion': hit, 'source_obstruction': witness,
            'interpretation': 'Every prime divisor of witness_cofactor divides both original binomial coefficients.'}


def complete_power_row_test(n: int, r: int, p: int, e: int,
                            target: int = 5) -> dict[str, Any] | None:
    """Arithmetic row criterion, CONDITIONAL on a separately supplied proof p is prime.

    This function deliberately does not label an unproved input p as prime.
    The replay uses only small primes proved by complete trial division.
    """
    require(target in (5,6,7,8) and n >= 2*(target+1), 'outside legal row domain')
    require(r in (3,4) and type(p) is int and p >= target and type(e) is int and e >= 1,
            'bad source-power parameters')
    if not bridge_allowed(n, target):
        return None
    q = (n-r) // small_part(n-r, target)
    Q = p**e
    require(q % Q == 0 and (q // Q) % p != 0, 'not the complete p-power of the native rough block')
    s = small_part(n-1, target)
    R = q // Q
    direct = (n-1)*Q*Q >= r*(r-1)*s*(n-r)**2
    cubic = n % 72 in (18,56) and R**3 <= n
    if not (direct or cubic):
        return None
    return {'status': 'ROW_ARITHMETIC_PASS_REQUIRES_PRIMALITY_OF_P', 'target': target,
            'n': n, 'row': r, 'p': p, 'e': e, 'Q': Q, 'R': R,
            'criterion': 'direct_quadratic' if direct else 'cubic_cofactor_with_verified_finite_bottom',
            'QIG_dependency': not direct}

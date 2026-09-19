#!/usr/bin/env python3
"""Exact, factorization-free sufficient consumers for native i6/H025.

No binomial coefficients, prime factorization, numerical logarithms, or search
through possible (n,j) are used. A returned witness_divisor is not claimed prime.
Every prime factor of that divisor is a common prime >= 7.
"""
from __future__ import annotations
import argparse
import json
from math import gcd, prod
from typing import Any


def supported_part(value: int, base: int) -> int:
    """Full prime-support part of positive value on the primes of positive base.

    This does not truncate either the source valuation or the valuation in value.
    Each successful iteration divides the remainder by an integer >= 2, so the
    procedure terminates in at most value.bit_length() successful iterations.
    """
    if value < 1 or base < 1:
        raise ValueError('supported_part requires positive integers')
    remainder, result = value, 1
    while True:
        factor = gcd(remainder, base)
        if factor == 1:
            return result
        result *= factor
        remainder //= factor


def coarse6(value: int) -> int:
    if value < 1:
        raise ValueError('source window arguments must be positive')
    for p in (2, 3, 5):
        while value % p == 0:
            value //= p
    return value


def source_defects(n: int, j: int, rows: tuple[int, ...] = (1,3,4)) -> list[dict[str, int]]:
    results = []
    for r in rows:
        q = coarse6(n-r)
        divisor = q // gcd(q, prod(j-b for b in range(r+1)))
        if divisor > 1:
            results.append({'source_row': r, 'witness_divisor': divisor})
    return results


def power_of_three(value: int) -> bool:
    if value < 9:
        return False
    while value % 3 == 0:
        value //= 3
    return value == 1


def compute(n: int, j: int) -> dict[str, Any]:
    if not isinstance(n, int) or not isinstance(j, int):
        raise TypeError('n and j must be integers')
    if n % 1800 not in (1280, 1530) or not 7 <= j <= n//2:
        raise ValueError('requires an H025 tail and 7 <= j <= floor(n/2)')
    from math import isqrt
    k = n-j
    g = gcd(n, j)
    qs = {r: coarse6(n-r) for r in (1, 2, 3, 4, 5)}
    J, A = j*k, (j-1)*(k-1)
    E3, E4 = gcd(qs[3], J), gcd(qs[4], J)
    delta3 = E3*E3 // gcd(E3*E3, J)
    delta4 = E4*E4 // gcd(E4*E4, J)
    D = supported_part(J*A, qs[2]*qs[5])
    D_squared_cap = gcd((qs[2]*qs[5])**2, J*A)
    conditions: list[str] = []
    tail = n % 1800
    if tail == 1280:
        if delta3 <= 15*g**3*D:
            conditions.append('SAT3_A')
        if 11*delta4 <= g*g*D:
            conditions.append('SAT4_A')
    else:
        if delta3 <= 3*g**3*D:
            conditions.append('SAT3_B')
        if 24*delta4 <= g*g*D:
            conditions.append('SAT4_B')
    W = (n-1)*J
    quotient = W//10 if W % 10 == 0 else -1
    ten_square = quotient >= 0 and isqrt(quotient)**2 == quotient
    is_res10 = (n % 9000 == 5130 and power_of_three(n//g) and ten_square)
    if is_res10:
        if delta3 <= 90*g**3*D:
            conditions.append('RES_SAT3_30')
        if delta4 <= 10*g*g*D:
            conditions.append('RES_SAT4_240')
    primary_trigger = bool(conditions)
    Q52 = gcd(qs[5], (j-2)*(k-2))
    if is_res10 and Q52 == 1 and min(delta3,delta4) <= qs[5]:
        conditions.append('RES_NONCENTRAL_DEFECT_BAND')
    rows = (1,3,4) if primary_trigger else (1,3,4,5)
    witnesses = source_defects(n, j, rows) if conditions else []
    if conditions and not witnesses:
        # A violation signals an implementation/theorem issue, never a hidden
        # unverified success or an inferred common prime.
        raise ArithmeticError('consumer triggered but no certified source defect')
    return {
        'n': n, 'j': j, 'k': k, 'g': g, 'tail': tail,
        'q': {str(r): qs[r] for r in qs}, 'E3': E3, 'E4': E4,
        'Delta3': delta3, 'Delta4': delta4, 'D25': D,
        'D25_squared_cap': D_squared_cap,
        'M2': gcd(qs[2], j-1),
        'Q50': gcd(qs[5], J), 'Q51': gcd(qs[5], A), 'Q52': Q52,
        'res10_original_conditions': is_res10,
        'sufficient_conditions': conditions,
        'common6_certified': bool(conditions),
        'witnesses': witnesses,
        'witness_semantics': 'each prime factor of a listed divisor is a common prime >=7; divisor need not be prime',
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('n', type=int)
    parser.add_argument('j', type=int)
    args = parser.parse_args()
    try:
        report = compute(args.n, args.j)
    except (ValueError, ArithmeticError, TypeError) as error:
        parser.exit(2, str(error)+'\n')
    print(json.dumps(report, ensure_ascii=False, indent=2))

if __name__ == '__main__':
    main()

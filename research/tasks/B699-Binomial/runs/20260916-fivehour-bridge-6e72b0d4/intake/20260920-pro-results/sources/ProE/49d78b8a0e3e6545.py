#!/usr/bin/env python3
"""Exact, conditional exponent filter for the B699 i3 canonical minimal branch.

This does NOT certify an entire binomial row or assert that arbitrary (n,j)
belong to the branch. No binomial coefficient or 2**s-2 factorization is used.
Trial division factors the exponent (or a supplied divisor); large unfactored
exponents can naturally take a long time.
"""
from __future__ import annotations
import argparse
import json
import sys
sys.dont_write_bytecode = True

def factor(n: int) -> dict[int, int]:
    if not isinstance(n, int) or isinstance(n, bool) or n < 1:
        raise ValueError('factor input must be a positive integer')
    out: dict[int, int] = {}
    p = 2
    while p * p <= n:
        while n % p == 0:
            out[p] = out.get(p, 0) + 1
            n //= p
        p = 3 if p == 2 else p + 2
    if n > 1:
        out[n] = out.get(n, 0) + 1
    return out

def totient_from_factors(n: int, factors: dict[int, int]) -> int:
    value = n
    for p in factors:
        value = value // p * (p - 1)
    return value

def classify(c: int, s: int, divisor: int | None = None) -> dict:
    if not isinstance(c, int) or isinstance(c, bool) or c not in (1, 3) or not isinstance(s, int) or isinstance(s, bool) or s < 1:
        raise ValueError('require c in {1,3} and a positive integer exponent s')
    result = {'c': c, 's': s, 'n_representation': f'{c}*2^{s}',
              'scope': 'conditional exclusion of NC3 in the canonical minimal branch ONLY',
              'whole_row_claim': False, 'closed_by_this_round': False,
              'theorem': None, 'reason': ''}
    if c != 1:
        result['reason'] = 'C6/CYC require c_alpha=1; c_alpha=3 is not covered.'
        return result
    if s < 3 or s % 2 == 0:
        result['reason'] = 'This round tests odd exponents s>=3 only.'
        return result
    m = s - 1
    if m % 6 == 0:
        result.update(closed_by_this_round=True, theorem='C6', D=6, t=m//6,
                      reason='All positive t in n=2^(6t+1) are excluded in this branch.')
        return result
    if divisor is None:
        factors_m = factor(m)
        D = 1
        for p in factors_m:
            D *= p
        factors_D = {p: 1 for p in factors_m}
    else:
        if not isinstance(divisor, int) or isinstance(divisor, bool) or divisor < 2:
            raise ValueError('the supplied divisor D must be an integer >=2')
        D = divisor
        if m % D:
            raise ValueError('D must divide s-1')
        factors_D = factor(D)
    phi = totient_from_factors(D, factors_D)
    valid = D % 2 == 0 and D % 3 != 0 and all(e == 1 for e in factors_D.values())
    result.update(D=D, phi_D=phi, totient_gap=D-3*phi,
                  squarefree=all(e == 1 for e in factors_D.values()))
    if valid and D-3*phi >= 8:
        result.update(closed_by_this_round=True, theorem='CYC', t=m//D,
                      reason='The supplied/radical divisor satisfies the uniform CYC theorem.')
    else:
        result['reason'] = 'No new exclusion follows from this exponent test; not a counterexample.'
    return result

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--s', type=int, required=True)
    parser.add_argument('--c', type=int, default=1, choices=[1, 3])
    parser.add_argument('--D', type=int, default=None)
    args = parser.parse_args()
    try:
        result = classify(args.c, args.s, args.D)
    except ValueError as exc:
        parser.error(str(exc))
    print(json.dumps(result, ensure_ascii=False, indent=2))
    return 0
if __name__ == '__main__':
    raise SystemExit(main())

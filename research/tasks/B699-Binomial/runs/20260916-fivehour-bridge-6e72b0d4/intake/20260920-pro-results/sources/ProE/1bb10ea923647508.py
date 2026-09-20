#!/usr/bin/env python3
"""Conditional exponent consumer. Never constructs n=2**s or asserts NC3.

All exclusions require the canonical minimal branch in PROOFS.md §0.
Only Python's standard library is used. A partial factorization is not
silently promoted to a complete one.
"""
from __future__ import annotations
import argparse
import json
from math import prod

TRIAL_LIMIT = 100_000

def certified_factor_part(n: int) -> tuple[dict[int, int], int]:
    if n < 1:
        raise ValueError('factor input must be positive')
    factors: dict[int, int] = {}
    d = 2
    while d*d <= n and d <= TRIAL_LIMIT:
        while n % d == 0:
            factors[d] = factors.get(d, 0) + 1
            n //= d
        d = 3 if d == 2 else d + 2
    if n > 1 and d*d > n:
        factors[n] = factors.get(n, 0) + 1
        n = 1
    return factors, n

def evaluate(s: int, c_alpha: int = 1, S_hint: int | None = None) -> dict:
    if not isinstance(s, int) or s < 1 or c_alpha not in (1, 3):
        raise ValueError('require s>=1 and c_alpha in {1,3}')
    out = {
        's': s, 'c_alpha': c_alpha,
        'scope_required': 'NC3 canonical minimal branch, as in PROOFS.md section 0',
        'status': 'NO_NEW_EXCLUSION', 'theorems': [],
        'warning': 'This does not certify the branch, a whole row, or a counterexample.'
    }
    if c_alpha != 1 or s == 1:
        return out
    m = s - 1
    u = m
    e = 0
    while u % 2 == 0:
        e += 1
        u //= 2
    out['v2_s_minus_1'] = e
    labels = []
    if e == 2:
        labels.append('G4')
    if e == 3:
        labels.append('G8')
    if m % 20 == 0:
        labels.append('J5')
    if m % 28 == 0:
        labels.append('J7')
    if S_hint is not None:
        f, rest = certified_factor_part(S_hint)
        if rest != 1:
            raise ValueError('S not certified within the trial-division limit')
        if S_hint < 1 or S_hint % 2 == 0 or S_hint % 3 == 0 or any(v != 1 for v in f.values()):
            raise ValueError('S must be odd, squarefree and not divisible by 3')
        if m % (4*S_hint) != 0:
            raise ValueError('4*S must divide s-1')
        S = S_hint
        complete = True
    else:
        f, rest = certified_factor_part(u)
        # A certified squarefree divisor suffices; a full radical is not required.
        f = {p: v for p, v in f.items() if p != 3}
        S = prod(f)
        complete = rest == 1
    phi = prod(p-1 for p in f)
    gap = 8*S - 9*phi
    out['joint_candidate'] = {'S': S, 'phi_S': phi, 'gap': gap,
                              'factorization_complete': complete,
                              'kind': 'certified squarefree divisor, not necessarily full radical'}
    if m % (4*S) == 0 and gap >= 14:
        labels.append('J14')
    out['theorems'] = labels
    if labels:
        out['status'] = 'EXCLUDED_CONDITIONALLY_ON_MINIMAL_BRANCH'
    return out

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--s', required=True, type=int)
    parser.add_argument('--c-alpha', default=1, choices=(1,3), type=int)
    parser.add_argument('--S', dest='S_hint', default=None, type=int,
                        help='Optional certified odd squarefree divisor for J14')
    args = parser.parse_args()
    try:
        result = evaluate(args.s, args.c_alpha, args.S_hint)
    except ValueError as exc:
        parser.error(str(exc))
    print(json.dumps(result, ensure_ascii=False, indent=2))
    return 0

if __name__ == '__main__':
    raise SystemExit(main())

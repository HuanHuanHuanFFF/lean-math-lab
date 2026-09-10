#!/usr/bin/env python3
"""Independent exhaustive i=3 bottom-power check for 8<=n<=10000, 4|n.
Together with REPORT.md's universal 4|n and height lemmas, this closes every
integer-offset family |n-1-m*j|<=17.  Trial factors and literal j enumeration
are independent of local_digit_probe.py's SPF sieve and seeded enumeration.
"""
import json
import time
from pathlib import Path


def trial_factor(value: int) -> list[tuple[int, int, int]]:
    factors = []
    p = 2
    while p * p <= value:
        exponent = 0
        power = 1
        while value % p == 0:
            value //= p
            exponent += 1
            power *= p
        if exponent:
            factors.append((p, exponent, power))
        p = 3 if p == 2 else p + 2
    if value > 1:
        factors.append((value, 1, value))
    return factors


def verify(bound: int = 10000) -> dict:
    start = time.perf_counter()
    examined = 0
    rows = 0
    for n in range(8, bound + 1, 4):
        constraints = []
        for r in range(3):
            factors = trial_factor(n - r)
            reconstructed = 1
            for p, exponent, power in factors:
                reconstructed *= power
                if p > 3 or (p == 3 and exponent >= 2):
                    constraints.append((power, r))
            if reconstructed != n - r:
                raise AssertionError('Trial factor reconstruction failed')
        # Ordering only accelerates rejection; every j is explicitly visited.
        constraints.sort(reverse=True)
        for j in range(4, n // 2 + 1):
            examined += 1
            if all(j % power <= r for power, r in constraints):
                raise AssertionError(f'Unexcluded necessary-condition candidate: n={n}, j={j}')
        rows += 1
    return {
        'i': 3,
        'N': bound,
        'n_rows': rows,
        'literal_j_checks': examined,
        'necessary_condition_survivors': 0,
        'enumeration': 'Every legal j in every 4-divisible n; independent trial factorization',
        'other_n': 'Excluded by the universal paper proof of 4|n in REPORT.md Appendix A',
        'uniform_offset_corollary': {
            'max_abs_n_minus_1_minus_mj': 17,
            'height_bound': 33 * 17 ** 2,
            'height_is_within_checked_box': 33 * 17 ** 2 <= bound,
        },
        'elapsed_seconds': time.perf_counter() - start,
    }


if __name__ == '__main__':
    result = verify()
    path = Path(__file__).resolve().parents[1] / 'evidence' / 'small_box_verified.json'
    path.write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))

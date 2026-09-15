"""Exact, bounded regression for the paper theorem; not an infinite proof.

Run from this directory with C:/Python314/python.exe -B check_repdigit.py.
Only Python standard library is required. Existing outputs are not overwritten.
"""
from __future__ import annotations

import hashlib
import json
import math
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path
import time


def primes_upto(bound: int) -> list[int]:
    return [p for p in range(3, bound + 1, 2)
            if all(p % q for q in range(2, math.isqrt(p) + 1))]


def valuation(n: int, p: int) -> int:
    v = 0
    while n % p == 0:
        n //= p
        v += 1
    return v


def binom_valuation(n: int, j: int, p: int) -> int:
    value = 0
    q = p
    while q <= n:
        value += n // q - j // q - (n - j) // q
        q *= p
    return value


def main() -> None:
    started = time.perf_counter()
    counts = Counter()
    allowed = {12, 24, 240}
    residual_rows = set()
    small_rows = set()
    max_bits = 0
    for p in primes_upto(43):
        for a in range(1, p):
            for f in range(1, 5):
                for d in range(1, 9):
                    q = p ** d
                    geom = 0
                    for k in range(1, 17):
                        geom = geom * q + 1
                        n = a * p ** f * geom
                        counts['parameter_representations'] += 1
                        max_bits = max(max_bits, n.bit_length())
                        if n <= 500 and n >= 8:
                            small_rows.add(n)
                        actual_two = n & -n
                        if k & 1:
                            expected_two = a & -a
                        else:
                            expected_two = ((a & -a) *
                                            ((q + 1) & -(q + 1)) *
                                            (k & -k) // 2)
                        assert actual_two == expected_two, (p, a, f, d, k)
                        if n < 8 or n % 4:
                            counts['no_legal_or_no_4_divisibility'] += 1
                            continue
                        odd = n // actual_two
                        cancelled = 3 if valuation(n, 3) == 1 else 1
                        minimal_g = odd // cancelled
                        if minimal_g ** 4 >= 3 * n:
                            counts['old_alpha_g4_rejects'] += 1
                        else:
                            residual_rows.add(n)
                            counts['boundary_representation'] += 1
                            assert n in allowed, (p, a, f, d, k, n)
                        if k >= 6 and k % 2 == 0:
                            assert 16 * p ** (3 * k - 8) >= 243 * k ** 4

    # Independent small original-definition check, using actual binomial gcd.
    pair_count = 0
    witness_prime3_count = 0
    for n in sorted(small_rows):
        source = math.comb(n, 3)
        for j in range(4, n // 2 + 1):
            g = math.gcd(source, math.comb(n, j))
            odd_g = g // (g & -g)
            assert odd_g > 1, (n, j, g)
            pair_count += 1
            witness_prime3_count += (source % 3 == 0 and math.comb(n, j) % 3 == 0)

    # The actual boundary proof uses p=n-1 for every legal j; a floor-sum
    # implementation, separate from math.comb, checks that precise witness.
    boundary_pairs = 0
    for n in sorted(allowed):
        p = n - 1
        assert all(p % q for q in range(2, math.isqrt(p) + 1))
        assert binom_valuation(n, 3, p) == 1
        for j in range(4, n // 2 + 1):
            assert binom_valuation(n, j, p) == 1
            boundary_pairs += 1

    result = {
        'status': 'PASS',
        'evidence_type': 'bounded exact regression, not an infinite proof',
        'utc': datetime.now(timezone.utc).isoformat(),
        'python_script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'parameters': {'odd_prime_P_max': 43, 'all_A_from_1_to_P_minus_1': True,
                       'f': [1, 4], 'd': [1, 8], 'k': [1, 16]},
        'counts': dict(counts),
        'maximum_integer_bits': max_bits,
        'exact_two_part_mismatches': 0,
        'old_alpha_g4_residual_rows': sorted(residual_rows),
        'original_definition_regression': {'n_max': 500, 'distinct_rows': len(small_rows),
                                           'pairs': pair_count,
                                           'pairs_with_common_3': witness_prime3_count,
                                           'counterexamples': 0},
        'boundary_prime_witness_pairs': boundary_pairs,
        'elapsed_seconds': round(time.perf_counter() - started, 6),
    }
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    target = Path(__file__).with_name(f'repdigit-check-{stamp}.json')
    with target.open('x', encoding='utf-8', newline='\n') as stream:
        json.dump(result, stream, ensure_ascii=False, indent=2)
        stream.write('\n')
    print(json.dumps(result, ensure_ascii=False, separators=(',', ':')))
    print('saved:', target.name)


if __name__ == '__main__':
    main()

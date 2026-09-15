"""Bounded exact regression for BLOCK_EXTENSION.md; no infinite extrapolation."""
from __future__ import annotations

import hashlib
import json
import math
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path
import time


def is_prime(p: int) -> bool:
    return p >= 2 and all(p % t for t in range(2, math.isqrt(p) + 1))


def once_three(n: int) -> bool:
    return n % 3 == 0 and n % 9 != 0


def main() -> None:
    began = time.perf_counter()
    counts = Counter()
    residual_rows: set[int] = set()
    small_rows: set[int] = {1344}
    max_bits = 0
    allowed = {12, 24, 240, 1344}

    def check(p: int, d: int, a: int, sampled: bool) -> None:
        nonlocal max_bits
        q = p ** d
        for f in range(1, 5):
            geom = 1
            for k in range(2, 13):
                geom = geom * q + 1
                n = a * p ** f * geom
                counts['sampled_extremes' if sampled else 'exhaustive_representations'] += 1
                max_bits = max(max_bits, n.bit_length())
                two = n & -n
                expect = (a & -a) if k & 1 else (
                    (a & -a) * ((q + 1) & -(q + 1)) * (k & -k) // 2)
                assert two == expect, (p, d, a, f, k)
                if 8 <= n <= 1500:
                    small_rows.add(n)
                if n < 8 or n % 4:
                    counts['small_or_not_divisible_by_4'] += 1
                    continue
                g_min = (n // two) // (3 if once_three(n) else 1)
                if g_min ** 4 >= 3 * n:
                    counts['old_alpha_g4_rejects'] += 1
                else:
                    residual_rows.add(n)
                    counts['old_alpha_g4_survives'] += 1
                    assert n in allowed, (p, d, a, f, k, n)

    pq_pairs = []
    for p in range(3, 44, 2):
        if not is_prime(p):
            continue
        d = 1
        while p ** d <= 1024:
            q = p ** d
            pq_pairs.append([p, d, q])
            for a in range(1, q):
                check(p, d, a, False)
            d += 1

    # Large-width stress checks include complete high powers of 2 in A.
    # These are samples, clearly separate from the exhaustive finite box.
    for p in (3, 5, 11, 43):
        for d in (8, 12, 16):
            q = p ** d
            a_values = {1, q - 1, q // 2, p, q // p}
            a_values.update(1 << r for r in range(1, q.bit_length()) if (1 << r) < q)
            for a in sorted(a_values):
                if 1 <= a < q:
                    check(p, d, a, True)

    pairs = 0
    common_3 = 0
    for n in sorted(small_rows):
        first = n * (n - 1) * (n - 2) // 6
        choose = 1
        for j in range(1, n // 2 + 1):
            choose = choose * (n - j + 1) // j
            if j < 4:
                continue
            odd_gcd = math.gcd(first, choose)
            odd_gcd //= odd_gcd & -odd_gcd
            assert odd_gcd > 1, (n, j)
            common_3 += (first % 3 == 0 and choose % 3 == 0)
            pairs += 1

    assert is_prime(17) and is_prime(79)
    crt_roots = [j for j in range(1343) if j * (j - 1) % 1343 == 0]
    assert crt_roots == [0, 1, 238, 1106]
    half_roots = [j for j in range(4, 1344 // 2 + 1)
                  if j * (j - 1) % 1343 == 0]
    assert half_roots == [238]
    assert math.gcd(1344, 238) == 14
    assert 14 ** 4 >= 3 * 1344

    result = {
        'status': 'PASS',
        'evidence_type': 'bounded exact regression, not the infinite proof',
        'utc': datetime.now(timezone.utc).isoformat(),
        'script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'exhaustive_box': {'odd_prime_P_max': 43, 'P_power_d_max': 1024,
                           'all_A_from_1_to_P_power_d_minus_1': True,
                           'f': [1, 4], 'k': [2, 12], 'P_d_q': pq_pairs},
        'counts': dict(counts), 'maximum_bits': max_bits,
        'exact_two_part_mismatches': 0,
        'old_alpha_g4_residual_rows': sorted(residual_rows),
        'small_original_definition': {'n_max': 1500, 'distinct_rows': len(small_rows),
                                      'pairs': pairs, 'common_3_pairs': common_3,
                                      'counterexamples': 0},
        'row_1344': {'crt_roots_mod_1343': crt_roots, 'legal_half_roots': half_roots,
                     'gcd_at_238': math.gcd(1344, 238), 'g4_rejects_238': True},
        'elapsed_seconds': round(time.perf_counter() - began, 6),
    }
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    destination = Path(__file__).with_name(f'block-check-{stamp}.json')
    with destination.open('x', encoding='utf-8', newline='\n') as stream:
        json.dump(result, stream, ensure_ascii=False, indent=2)
        stream.write('\n')
    brief = {k: v for k, v in result.items() if k != 'exhaustive_box'}
    print(json.dumps(brief, ensure_ascii=False, separators=(',', ':')))
    print('saved:', destination.name)


if __name__ == '__main__':
    main()

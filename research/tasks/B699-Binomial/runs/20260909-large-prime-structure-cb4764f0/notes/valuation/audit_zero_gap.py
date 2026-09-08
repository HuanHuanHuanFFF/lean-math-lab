#!/usr/bin/env python3
"""Nonvacuous exact audit of B699 avoiding-part / additive-gap localization.

The valuation worker writes this script; only the primary executes it.
Stdlib only. No Lean, external data, or search beyond the stated finite range.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
from functools import lru_cache
from pathlib import Path
import sys


def primes_through(limit: int) -> list[int]:
    sieve = bytearray(b"\x01") * (limit + 1)
    if limit >= 0:
        sieve[0] = 0
    if limit >= 1:
        sieve[1] = 0
    for p in range(2, math.isqrt(limit) + 1):
        if sieve[p]:
            sieve[p * p:limit + 1:p] = b"\x00" * (((limit - p * p) // p) + 1)
    return [p for p in range(2, limit + 1) if sieve[p]]


def vp(value: int, prime: int) -> int:
    assert value > 0
    result = 0
    while value % prime == 0:
        value //= prime
        result += 1
    return result


def audit(max_n: int, max_i: int | None) -> dict:
    primes = primes_through(max_n)
    counters = {
        "legal_triples_i_ge_2": 0,
        "selected_prime_localizations": 0,
        "selected_boundary_prime_i": 0,
        "zero_cells": 0,
        "nonzero_cells": 0,
        "adjusted_lcm_divisibilities": 0,
        "bounded_gap_prime_products": 0,
        "prime_free_strip_target_checks": 0,
        "central_even_target_checks": 0,
        "central_odd_composite_target_checks": 0,
        "quadratic_tail_target_checks": 0,
    }

    @lru_cache(maxsize=None)
    def adjusted_lcm(i: int, d: int) -> tuple[int, int]:
        result = 1
        for offset in range(1 - i, i):
            value = abs(d + offset)
            if value:
                result = math.lcm(result, value)
        rough = 1
        for p in primes:
            if p >= i and p <= d + i - 1:
                rough *= p ** max(0, vp(result, p) - int(p == i))
        return result, rough

    @lru_cache(maxsize=None)
    def interval_prime_product(i: int, d: int) -> tuple[int, int]:
        eligible = [p for p in primes if i < p <= i + d - 1]
        return math.prod(eligible), len(eligible)

    for n in range(4, max_n + 1):
        row = [math.comb(n, k) for k in range(n // 2 + 1)]
        i_stop = n // 2 if max_i is None else min(n // 2, max_i + 1)
        for i in range(2, i_stop):
            factor_data = [(p, vp(row[i], p)) for p in primes if i <= p <= n and row[i] % p == 0]
            full_part = math.prod(p ** exponent for p, exponent in factor_data)
            for j in range(i + 1, n // 2 + 1):
                counters["legal_triples_i_ge_2"] += 1
                d = n - 2 * j
                z = max(0, (i - d + 1) // 2)
                selected = [(p, exponent) for p, exponent in factor_data if row[j] % p]
                witness = next((p for p, _ in factor_data if row[j] % p == 0), None)
                avoiding = math.prod(p ** exponent for p, exponent in selected)
                assert (avoiding == full_part) == (witness is None)
                zero_numerator_part = 1
                nonzero_binomial_part = 1
                for p, exponent in selected:
                    counters["selected_prime_localizations"] += 1
                    delta = int(p == i)
                    counters["selected_boundary_prime_i"] += delta
                    power = p ** (exponent + delta)
                    a = n % p
                    assert a < i
                    assert vp(n - a, p) == exponent + delta
                    assert n % power == a
                    r, s = j % power, (n - j) % power
                    assert r + s == a and a < i
                    assert (j - r) % power == 0 and (n - j - s) % power == 0
                    defect = d + r - s
                    assert defect % power == 0
                    if defect == 0:
                        counters["zero_cells"] += 1
                        assert s == d + r and 0 <= r < z
                        zero_numerator_part *= power
                    else:
                        counters["nonzero_cells"] += 1
                        assert abs(defect) <= d + i - 1
                        nonzero_binomial_part *= p ** exponent
                        if 1 <= d <= i:
                            assert exponent == 1 and p > i and p <= i + d - 1
                assert math.comb(j, z) % zero_numerator_part == 0
                lcm_value, rough = adjusted_lcm(i, d)
                assert rough % nonzero_binomial_part == 0
                assert (rough * math.comb(j, z)) % avoiding == 0
                counters["adjusted_lcm_divisibilities"] += 1
                if 1 <= d <= i:
                    product, count = interval_prime_product(i, d)
                    assert product == rough
                    assert math.comb(i + d - 1, d - 1) % product == 0
                    counters["bounded_gap_prime_products"] += 1
                    u, t = i // 2, (i + 1) // 2
                    h = i - 2 * z
                    assert row[i] >= math.comb(j, z) ** 2
                    # Cross multiplication checks the rational-power inequality exactly.
                    assert row[i] * t ** h >= math.comb(j, z) ** 2 * (j - t + 1) ** h
                    if product == 1:
                        assert witness is not None, ("prime-free strip", n, i, j)
                        counters["prime_free_strip_target_checks"] += 1
                    if d >= 2:
                        assert h > 0 and count <= h // 2
                        assert product ** 2 <= (i + d - 1) ** h
                        if j >= t * (i + d) - 1:
                            assert witness is not None, ("quadratic tail", n, i, j)
                            counters["quadratic_tail_target_checks"] += 1
                if d == 0 and i % 2 == 0:
                    assert row[i] >= math.comb(j, z) ** 2
                    assert witness is not None, ("central even", n, i, j)
                    counters["central_even_target_checks"] += 1
                if d == 0 and i % 2 == 1 and i not in primes:
                    assert i >= 9 and witness is not None, ("central odd composite", n, i, j)
                    counters["central_odd_composite_target_checks"] += 1

    diagnostics = []
    for n, i, j, p in [(12, 2, 6, 3), (12, 2, 4, 2), (28, 3, 14, 13)]:
        first, second = math.comb(n, i), math.comb(n, j)
        exponent = vp(first, p)
        power = p ** (exponent + int(p == i))
        a, r, s = n % power, j % power, (n - j) % power
        diagnostics.append({"n": n, "i": i, "j": j, "p": p,
                            "first_binomial": first, "second_binomial": second,
                            "gcd": math.gcd(first, second), "Q": power,
                            "a": a, "r": r, "s": s,
                            "low_localization": r + s == a < i,
                            "prime_avoids_second": second % p != 0})
    assert diagnostics[0]["low_localization"] and not diagnostics[0]["prime_avoids_second"]
    assert diagnostics[1]["Q"] == 4 and diagnostics[1]["prime_avoids_second"]
    assert diagnostics[2]["r"] == 1 and diagnostics[2]["gcd"] == 36
    assert math.comb(14, 1) % 13 != 0
    return {
        "status": "PASS",
        "range": {"n_min": 4, "n_max": max_n, "i_max_requested": max_i},
        "counters": counters,
        "diagnostics": diagnostics,
        "scope": "Exact finite nonvacuous avoiding-part checks; no unrestricted theorem or EEES reproof.",
        "script_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "python_version": sys.version.split()[0],
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--max-n", type=int, default=120)
    parser.add_argument("--max-i", type=int, default=None)
    args = parser.parse_args()
    if args.max_n < 4 or (args.max_i is not None and args.max_i < 2):
        parser.error("require max-n>=4 and max-i>=2 when supplied")
    print(json.dumps(audit(args.max_n, args.max_i), ensure_ascii=False, indent=2))


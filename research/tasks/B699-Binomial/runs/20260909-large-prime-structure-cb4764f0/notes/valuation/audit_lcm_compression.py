#!/usr/bin/env python3
"""Tiny generic LCM/binomial audit, executed only by the primary.

Checks new (i,d) algebra and two fixed nonvacuous avoiding-part diagnostics.
No scan of all original B699 triples and no EEES re-verification.
"""
import argparse
import hashlib
import json
import math
from pathlib import Path
import sys


def primes_through(n):
    mark = bytearray(b"\x01") * (n + 1)
    mark[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(n) + 1):
        if mark[p]:
            mark[p*p:n+1:p] = b"\x00" * ((n-p*p)//p + 1)
    return [p for p in range(2, n+1) if mark[p]]


def vp(value, p):
    exponent = 0
    while value % p == 0:
        value //= p
        exponent += 1
    return exponent


def avoiding_part(n, i, j, primes):
    first, second = math.comb(n, i), math.comb(n, j)
    data = [(p, vp(first, p)) for p in primes if i <= p <= n and first % p == 0 and second % p != 0]
    d_part = math.prod(p**e for p, e in data)
    w_part = math.prod(p**(e+int(p == i)) for p, e in data)
    return d_part, w_part


def main(max_i, d_multiplier):
    primes = primes_through(max(20, (d_multiplier + 1) * max_i))
    count = 0
    omission = None
    for i in range(2, max_i + 1):
        m = 2 * i - 1
        correction = math.prod(p for p in primes if i < p <= m)
        assert math.comb(m, i - 1) % correction == 0
        assert correction <= math.comb(m, i - 1) <= 4 ** (i - 1)
        assert m ** m < 3 ** m * math.factorial(m)
        for d in range(i, d_multiplier * i + 1):
            M = d + i - 1
            interval_lcm = 1
            for value in range(d - i + 1, d + i):
                interval_lcm = math.lcm(interval_lcm, value)
            rough = math.prod(p ** max(0, vp(interval_lcm, p) - int(p == i))
                              for p in primes if i <= p <= M)
            coefficient = math.comb(M, m)
            assert correction * coefficient % rough == 0, (i, d, rough, correction, coefficient)
            assert coefficient * m ** m < (3 * M) ** m
            assert M * i <= d * m
            # Exact finite check of the complete constant comparison.
            assert correction ** 2 * coefficient ** 2 * i ** (4 * i) < 1296 ** i * d ** (4 * i)
            count += 1
            if omission is None and coefficient % rough != 0:
                omission = {"i": i, "d": d, "L": interval_lcm, "R": rough,
                            "K": correction, "binomial": coefficient}
    assert omission == {"i": 2, "d": 2, "L": 6, "R": 3, "K": 3, "binomial": 1}
    diagnostics = []
    for n, i, j in [(16, 2, 7), (12, 2, 4)]:
        d = n - 2 * j
        K = math.prod(p for p in primes if i < p <= 2 * i - 1)
        B = math.comb(d + i - 1, 2 * i - 1)
        D, W = avoiding_part(n, i, j, primes)
        assert K * B % D == 0
        diagnostics.append({"n": n, "i": i, "j": j, "d": d,
                            "D": D, "W": W, "K": K, "binomial": B})
    assert diagnostics[0]["D"] == 3 and diagnostics[0]["binomial"] == 1
    assert diagnostics[1]["D"] == 2 and diagnostics[1]["W"] == 4
    assert diagnostics[1]["K"] * diagnostics[1]["binomial"] % diagnostics[1]["W"] != 0
    return {"status": "PASS", "scope": "New generic lcm/binomial algebra, not an original B699 scan",
            "range": {"i_min": 2, "i_max": max_i, "d_min": "i", "d_max": f"{d_multiplier}*i"},
            "generic_pairs": count, "omitting_K_counterexample": omission,
            "fixed_avoiding_part_diagnostics": diagnostics,
            "script_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
            "python_version": sys.version.split()[0]}


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--max-i", type=int, default=24)
    parser.add_argument("--d-multiplier", type=int, default=4)
    args = parser.parse_args()
    if args.max_i < 2 or args.d_multiplier < 1:
        parser.error("require max-i>=2 and d-multiplier>=1")
    print(json.dumps(main(args.max_i, args.d_multiplier), ensure_ascii=False, indent=2))

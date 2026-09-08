#!/usr/bin/env python3
"""Cost/coverage probe for an exact LCM-invariant certificate, not a Lean proof."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
from math import isqrt, lcm
from pathlib import Path
import time


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=2000)
    args = ap.parse_args()
    limit = args.limit
    start = time.monotonic()
    bound = 2 * limit + 10
    sieve = bytearray(b"\x01") * (bound + 1)
    sieve[0:2] = b"\x00\x00"
    for p in range(2, isqrt(bound) + 1):
        if sieve[p]:
            sieve[p * p::p] = b"\x00" * ((bound - p * p) // p + 1)
    primes = [p for p in range(2, bound + 1) if sieve[p]]
    next_prime = []
    j = 0
    for m in range(limit):
        while primes[j] <= m:
            j += 1
        next_prime.append(primes[j])
    maxk = max(min(m, next_prime[m] - m - 1) for m in range(1, limit))
    maxterm = limit + maxk - 1
    powers = []
    for p in primes:
        q = p
        while q <= maxterm:
            powers.append(q)
            q *= p
    powers.sort()
    weight = [0] * (maxterm + 1)
    updates = 0
    for q in powers:
        w = q ** 5
        for x in range(q, maxterm + 1, q):
            weight[x] += w
            updates += 1
    prefix = [0]
    for x in range(1, maxterm + 1):
        prefix.append(prefix[-1] + weight[x])
    rows = []
    witness = None
    direct_checked = 0
    for k in range(1, maxk + 1):
        small = [(q, q ** 5) for q in powers if q <= k]
        signatures = [prefix[n + k] - prefix[n] -
                      sum(w * ((n + k) // q - n // q) for q, w in small)
                      for n in range(limit)]
        groups = {}
        for n, s in enumerate(signatures):
            if s not in groups:
                groups[s] = n
            elif n - groups[s] >= k:
                a = groups[s]
                witness = {"n": a, "m": n, "k": k, "signature": str(s),
                           "left_lcm": str(lcm(*range(a + 1, a + k + 1))),
                           "right_lcm": str(lcm(*range(n + 1, n + k + 1)))}
                break
        firsts = [groups[s] for s in sorted(groups)]
        rank_by_sig = {signatures[n]: r for r, n in enumerate(firsts)}
        ranks = [rank_by_sig[s] for s in signatures]
        assert all(signatures[firsts[r]] < signatures[firsts[r + 1]]
                   for r in range(len(firsts) - 1))
        if not witness:
            assert all(signatures[firsts[ranks[n]]] == signatures[n] and
                       firsts[ranks[n]] <= n < firsts[ranks[n]] + k for n in range(limit))
        values = {}
        for n in range(min(limit, 201)):
            direct = sum(q ** 5 for q in powers if q > k and
                         any(x % q == 0 for x in range(n + 1, n + k + 1)))
            assert direct == signatures[n]
            value = lcm(*range(n + 1, n + k + 1))
            assert value not in values or values[value] == direct
            values[value] = direct
            direct_checked += 1
        rows.append({"k": k, "groups": len(firsts), "starts": limit,
                     "max_signature_bits": max(signatures).bit_length(),
                     "certificate_index_bytes_estimate": sum(len(str(x)) + 1 for x in firsts + ranks)})
        if witness:
            break
    report = {"evidence": "Python route/cost probe only; no Lean certificate accepted",
              "limit": limit, "maxk": maxk, "prime_powers": len(powers), "sieve_updates": updates,
              "direct_definition_checks": direct_checked, "witness": witness, "rows": rows,
              "seconds": time.monotonic() - start,
              "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    out = Path(__file__).resolve().parent / f"probe-{limit}-{stamp}.json"
    out.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({k: v for k, v in report.items() if k != "rows"}, indent=2))
    print("index certificate bytes", sum(r["certificate_index_bytes_estimate"] for r in rows))
    print(out)


if __name__ == "__main__":
    main()

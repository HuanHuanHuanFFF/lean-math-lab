"""Discriminating bounded probe of all remaining NC5 denominator shapes.

Purpose: compare simultaneous full-power NORM, top-layer Kummer, and
truncated projections. No finite result is used as an infinite proof.
"""
from collections import Counter
from datetime import datetime, timezone
from math import gcd
from pathlib import Path
import argparse
import json
import time

def valuation(x, p):
    e = 0
    while x % p == 0:
        x //= p
        e += 1
    return e

def smallpart(x):
    y = x
    for p in (2, 3):
        while y % p == 0:
            y //= p
    if y % 5 == 0 and y % 25 != 0:
        y //= 5
    return x // y

def factors(x):
    result = []
    p = 2
    while p * p <= x:
        if x % p == 0:
            e = 0
            while x % p == 0:
                x //= p
                e += 1
            result.append((p, e))
        p += 1
    if x > 1:
        result.append((x, 1))
    return result

def norm_mod(alpha, beta, r, q):
    v = 1
    for b in range(r + 1):
        v = v * (alpha * b - r * beta) % q
    return v

def run(limit):
    start = time.monotonic()
    denoms = set()
    for p, cs in ((2, (1, 5)), (3, (1, 2, 5, 10))):
        pa = p
        while pa <= limit:
            if pa > 5:
                denoms.update(c * pa for c in cs if c * pa <= limit)
            pa *= p
    counts = Counter()
    failmask = Counter()
    survivors = []
    row2_survivors = []
    examples = {}
    for alpha in sorted(denoms):
        for n in range(max(alpha, ((12 + alpha - 1) // alpha) * alpha), limit + 1, alpha):
            if alpha % 5 == 0 and n % 25 == 0:
                continue
            v2 = [valuation(n-r, 2) for r in range(5)]
            v3 = [valuation(n-r, 3) for r in range(5)]
            if max(v2) < 3 or max(v3) < 2:
                continue
            h = tuple(sorted((v2.index(max(v2)), v3.index(max(v3)))))
            if h not in ((0, 1), (0, 2)):
                continue
            qs = [(n-r) // smallpart(n-r) for r in range(5)]
            g = n // alpha
            counts[f"rows_H{h[1]}"] += 1
            for beta in range(max(1, (6 + g - 1) // g), alpha // 2 + 1):
                if gcd(alpha, beta) != 1:
                    continue
                j = g * beta
                mask = sum((norm_mod(alpha, beta, r, qs[r]) != 0) << (r-1) for r in range(1, 5))
                counts["pairs"] += 1
                failmask[str(mask)] += 1
                if not (mask & 3):
                    counts["passes_r1_r2"] += 1
                    if len(row2_survivors) < 20:
                        row2_survivors.append({"n": n, "j": j, "alpha": alpha, "beta": beta, "g": g, "H": h, "q": qs, "failmask": mask})
                if str(mask) not in examples:
                    examples[str(mask)] = {"n": n, "j": j, "alpha": alpha, "beta": beta, "g": g, "H": h}
                if mask == 0:
                    # NORM is equivalent to the top-layer slots here since gcd(alpha,q_r)=1.
                    slots = all(j % (p**e) <= r for r in range(5) for p,e in factors(qs[r]))
                    full_carry_primes = []
                    for r in range(5):
                        for p,e in factors(qs[r]):
                            pe = p
                            while pe <= n:
                                if j % pe > n % pe:
                                    full_carry_primes.append(p)
                                    break
                                pe *= p
                    survivors.append({"n": n, "j": j, "alpha": alpha, "beta": beta, "g": g, "H": h, "q": qs, "top_slots": slots, "higher_carry_witnesses": sorted(set(full_carry_primes))})
    return {"time_utc": datetime.now(timezone.utc).isoformat(), "limit_n": limit, "denominator_shapes": "2^a*{1,5},3^a*{1,2,5,10}; p^a>5; all divisors of n within bound", "scope": "All legal pairs within n bound and stated H/denominator conditions, not all B699 inputs", "counts": dict(counts), "failure_masks_r1_to_r4": dict(sorted(failmask.items(), key=lambda kv: int(kv[0]))), "mask_examples": examples, "first_two_norm_survivors": row2_survivors, "all_norm_survivors": survivors, "elapsed_seconds": time.monotonic()-start}

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=20000)
    args = ap.parse_args()
    result = run(args.limit)
    output = Path(__file__).with_name(f"nc5_norm_{args.limit}.json")
    output.write_text(json.dumps(result, indent=2), encoding="utf-8")
    print(json.dumps({k: result[k] for k in ("limit_n", "counts", "failure_masks_r1_to_r4", "all_norm_survivors", "elapsed_seconds")}))

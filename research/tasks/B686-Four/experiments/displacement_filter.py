"""Centered candidate windows and exact factor-valuation filters for Four.

This is a bounded-displacement experiment, not a proof for arbitrary d or k.
The window and divisibility claims themselves are general, as proved in the log.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from hashlib import sha256
import json
from math import comb, prod
from pathlib import Path
import time


def root_floor(k, d):
    """floor(d/(4**(1/k)-1)); integer comparisons only."""
    low, high = 0, 1
    while (high + d) ** k >= 4 * high ** k:
        low, high = high, 2 * high
    while high - low > 1:
        mid = (low + high) // 2
        if (mid + d) ** k >= 4 * mid ** k:
            low = mid
        else:
            high = mid
    assert (low + d) ** k >= 4 * low ** k
    assert (low + 1 + d) ** k < 4 * (low + 1) ** k
    return low


def window(k, d):
    q = root_floor(k, d)
    # n+(k+1)/2 > z and n+1 < z, with q <= z < q+1.
    lower = max(0, (2 * q - k - 1) // 2 + 1)
    upper = q - 1
    assert upper - lower + 1 <= k // 2
    return lower, upper


def independent_crossing(k, d):
    """Independent product-ratio check using binomial coefficients and bisection."""
    def difference(n):
        return comb(n + d + k, k) - 4 * comb(n + k, k)

    low, high = 0, 1
    assert difference(low) > 0
    while difference(high) > 0:
        low, high = high, high * 2
    while high - low > 1:
        mid = (low + high) // 2
        if difference(mid) > 0:
            low = mid
        else:
            high = mid
    assert difference(low) > 0 and difference(high) <= 0
    return low, high, difference(high) == 0


def run(ks, d_max, cross_check):
    start = time.monotonic()
    rows, hits = [], []
    for k in ks:
        counters = {"d_count": 0, "candidate_count": 0,
                    "center_rejected": 0, "lower_divisibility_rejected": 0,
                    "upper_divisibility_rejected": 0, "original_equalities_checked": 0,
                    "independently_checked_slices": 0}
        digest = sha256()
        for d in range(k, d_max + 1):
            counters["d_count"] += 1
            lower, upper = window(k, d)
            lower_stencils = [prod(d + i - j for i in range(1, k + 1))
                              for j in range(1, k + 1)]
            upper_stencils = [4 * prod(d + i - j for j in range(1, k + 1))
                              for i in range(1, k + 1)]
            local_hits = []
            for n in range(lower, upper + 1):
                m = n + d
                counters["candidate_count"] += 1
                # Pairing about the center proves strict normalized monotonicity.
                if (2 * m + k + 1) ** k >= 4 * (2 * n + k + 1) ** k:
                    counters["center_rejected"] += 1
                    continue
                if any(value % (n + j) != 0 for j, value in enumerate(lower_stencils, 1)):
                    counters["lower_divisibility_rejected"] += 1
                    continue
                if any(value % (m + i) != 0 for i, value in enumerate(upper_stencils, 1)):
                    counters["upper_divisibility_rejected"] += 1
                    continue
                counters["original_equalities_checked"] += 1
                if prod(range(m + 1, m + k + 1)) == 4 * prod(range(n + 1, n + k + 1)):
                    assert n >= 0 and m >= n + k
                    assert comb(m + k, k) == 4 * comb(n + k, k)
                    local_hits.append(n)
                    hits.append({"k": k, "n": n, "m": m})
            if cross_check:
                lo, hi, hit = independent_crossing(k, d)
                counters["independently_checked_slices"] += 1
                assert local_hits == ([hi] if hit else [])
                # Not all real crossings have an integer in the necessary window.
                # Check the real location overlaps the bracket implied by the window.
                assert hi >= lower and lo <= upper
                digest.update(f"{d},{lo},{hi},{int(hit)}\n".encode())
        rows.append({"k": k, "d_min": k, "d_max": d_max, **counters,
                     "crossing_sha256": digest.hexdigest() if cross_check else None})
    return {"created_utc": datetime.now(timezone.utc).isoformat(),
            "coverage": "all natural n for exactly the listed k and d ranges",
            "kernel_checked": False, "rows": rows, "hits": hits,
            "elapsed_seconds": time.monotonic() - start}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ks", default="5,7,9,11")
    parser.add_argument("--max-d", type=int, default=10000)
    parser.add_argument("--cross-check", action="store_true")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    payload = run([int(k) for k in args.ks.split(",")], args.max_d, args.cross_check)
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2))


if __name__ == "__main__":
    main()

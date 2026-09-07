"""Exact, non-kernel certificates for fixed even lengths in Erdős 686 / Four.

Standard library only.  Coefficient arrays are in ascending degree order.
The accompanying exploration.md proves the square-gap certificate criterion.
No test of finitely many values is used as a substitute for a polynomial identity.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from fractions import Fraction
from hashlib import sha256
import json
from math import comb, gcd, lcm, prod
from pathlib import Path
import platform
import time


def trim(a):
    a = list(a)
    while len(a) > 1 and a[-1] == 0:
        a.pop()
    return a


def multiply(a, b):
    c = [0] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            c[i + j] += x * y
    return trim(c)


def evaluate(a, t):
    value = 0
    for coefficient in reversed(a):
        value = value * t + coefficient
    return value


def translate(a, n):
    return [sum(a[j] * comb(j, i) * n ** (j - i)
                for j in range(i, len(a))) for i in range(len(a))]


def block(t, k):
    return prod(range(t + 1, t + k + 1))


def finite_band(k, threshold):
    """For every n < threshold bracket the increasing product as a function of m.

    m >= 2*n+k makes each factor at least double, and at least one strictly
    double, so P_k(m)>4*P_k(n) for k>=2.  Thus the finite band covers all m.
    """
    digest = sha256()
    hits = []
    comparisons = 0
    for n in range(threshold):
        target = 4 * block(n, k)
        low, high = n + k, 2 * n + k
        value = block(low, k)
        comparisons += 1
        if value < target:
            assert block(high, k) > target
            while high - low > 1:
                mid = (low + high) // 2
                comparisons += 1
                if block(mid, k) < target:
                    low = mid
                else:
                    high = mid
            first = high
        else:
            first = low
        difference = block(first, k) - target
        assert difference >= 0
        if first > n + k:
            assert block(first - 1, k) < target
        digest.update(f"{n},{first},{difference}\n".encode())
        if difference == 0:
            assert comb(first + k, k) == 4 * comb(n + k, k)
            hits.append({"k": k, "n": n, "m": first})
    return {
        "n_min": 0, "n_max_exclusive": threshold,
        "m_coverage": "all m >= n+k; monotone bracket and m<2*n+k bound",
        "n_count": threshold, "comparisons": comparisons,
        "bracket_sha256": digest.hexdigest(), "hits": hits,
    }


def certificate(k, finite_limit):
    assert k >= 2 and k % 2 == 0
    p = [1]
    for i in range(1, k + 1):
        p = multiply(p, [i, 1])
    r = k // 2
    root_descending = [Fraction(1)]
    for j in range(1, r + 1):
        cross = sum(root_descending[i] * root_descending[j - i]
                    for i in range(1, j))
        root_descending.append(Fraction(p[k - j] - cross) / 2)
    scale = lcm(*(x.denominator for x in root_descending))
    a = [int(scale * x) for x in reversed(root_descending)]
    square = multiply(a, a)
    e = trim([square[i] - scale * scale * p[i] for i in range(k + 1)])
    assert len(e) - 1 < r
    assert a[0] > 0 and all(x >= 0 for x in a)
    assert e[0] > 0 and all(x >= 0 for x in e)

    # Newton's exact expansion A(t) = sum Delta^j A(0) * binom(t,j).
    values = [evaluate(a, t) for t in range(r + 1)]
    differences = []
    while values:
        differences.append(values[0])
        values = [y - x for x, y in zip(values, values[1:])]
    divisor = gcd(*differences)
    assert divisor > 0
    assert differences[0] % (2 * divisor) == divisor
    assert all(x % (2 * divisor) == 0 for x in differences[1:])

    gap = [4 * divisor * (a[i] if i < len(a) else 0)
           - 4 * (e[i] if i < len(e) else 0)
           for i in range(max(len(a), len(e)))]
    gap[0] -= divisor * divisor
    gap = trim(gap)

    def acceptable(n):
        shifted = translate(gap, n)
        return shifted[0] > 0 and all(x >= 0 for x in shifted)

    low, high = -1, 1
    while not acceptable(high):
        high *= 2
    # Once all shifted coefficients are positive/nonnegative, increasing
    # the shift preserves that property.  This search is therefore monotone.
    while high - low > 1:
        mid = (low + high) // 2
        if acceptable(mid):
            high = mid
        else:
            low = mid
    shifted_gap = translate(gap, high)
    assert shifted_gap[0] > 0 and all(x >= 0 for x in shifted_gap)
    assert evaluate(a, high) >= divisor
    result = {
        "k": k, "scale_L": scale, "fixed_divisor_g": divisor,
        "P_coefficients": p, "A_coefficients": a, "E_coefficients": e,
        "newton_coefficients": differences,
        "A_div_g_is_odd_for_all_natural_t": True,
        "gap_coefficients": gap, "threshold_N": high,
        "gap_at_N_plus_s_coefficients": shifted_gap,
        "large_claim": "P_k(m) != 4 P_k(n) for all n,m >= N",
        "kernel_checked": False,
        "finite_band": finite_band(k, high) if high <= finite_limit else None,
    }
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--max-k", type=int, default=64)
    parser.add_argument("--finite-limit", type=int, default=20000)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    start = time.monotonic()
    rows = []
    for k in range(2, args.max_k + 1, 2):
        row = certificate(k, args.finite_limit)
        rows.append(row)
        print(json.dumps({"k": k, "N": row["threshold_N"],
                          "g": row["fixed_divisor_g"],
                          "finite_checked": row["finite_band"] is not None,
                          "hits": (row["finite_band"] or {}).get("hits")}), flush=True)
    payload = {
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "python_version": platform.python_version(),
        "method": "exact polynomial identity + Newton parity + positive shifted coefficients",
        "kernel_checked": False, "finite_limit": args.finite_limit,
        "elapsed_seconds": time.monotonic() - start, "rows": rows,
    }
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()

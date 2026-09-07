"""Exact fixtures for two infinite parity families; proof is in exploration.md.

The bounded fixtures do NOT prove the universal 2-adic lemma by themselves.
They compare coefficient recurrence with an independent binomial expansion.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from fractions import Fraction as F
import json
from math import factorial, isqrt, lcm
from pathlib import Path


def multiply(a, b):
    c = [F(0)] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            c[i + j] += x * y
    return c


def v2(n):
    assert n != 0
    return (abs(n) & -abs(n)).bit_length() - 1


def valuation(q):
    q = F(q)
    return v2(q.numerator) - v2(q.denominator)


def sqrt_coefficients(w, count):
    coefficients = [F(1)]
    for j in range(1, count + 1):
        coefficients.append((w[j] - sum(coefficients[i] * coefficients[j - i]
                                         for i in range(1, j))) / 2)
    # Independent binomial-series calculation.
    h = list(w)
    h[0] = 0
    power, binomial = [F(1)], F(1)
    other = [F(1)] + [F(0)] * count
    for j in range(1, count + 1):
        power = multiply(power, h)[:count + 1]
        binomial *= F(3 - 2 * j, 2 * j)
        for i in range(1, min(count + 1, len(power))):
            other[i] += binomial * power[i]
    assert other == coefficients
    assert all(valuation(coefficients[j]) == -j - v2(factorial(j))
               for j in range(count + 1))
    return coefficients


def transform_linear(a, slope, intercept):
    result = [F(0)]
    for coefficient in reversed(a):
        result = multiply(result, [F(intercept), F(slope)])
        result[0] += coefficient
    while len(result) > 1 and result[-1] == 0:
        result.pop()
    return result


def eventual_bound(a, e):
    leading = a[-1]
    lower_sum = sum(abs(x) for x in a[:-1])
    error_sum = sum(abs(x) for x in e)
    assert leading > 0
    return 1 + max(1, int(2 * lower_sum // leading), int(6 * error_sum // leading))


def fixture(k):
    r = k // 2
    assert r % 2 == 1 or r % 4 == 2
    w = [F(1)]
    if r % 2 == 1:
        for i in range(1, r + 1):
            w = multiply(w, [F(1), F(-(2 * i - 1) ** 2)])
        s = (r - 1) // 2
        family = "k=2 mod 4; odd center x=2t+k+1"
    else:
        for i in range(1, r + 1):
            w = multiply(w, [F(1), F(i * (2 * r + 1 - i) // 2)])
        s = r // 2
        family = "k=4 mod 8; integral w=t(t+k+1)/2"
    assert int(w[1]) % 2 == 1
    c = sqrt_coefficients(w, s)
    scale = lcm(*(x.denominator for x in c))
    scaled = [int(scale * x) for x in c]
    assert scaled[-1] % 2 == 1 and all(x % 2 == 0 for x in scaled[:-1])
    if r % 2 == 1:
        a = [F(0)] * (r + 1)
        for j, value in enumerate(scaled):
            a[r - 2 * j] = F(value)
        p = [F(0)] * (2 * r + 1)
        for j, value in enumerate(w):
            p[2 * (r - j)] = value
    else:
        a, p = [F(x) for x in reversed(scaled)], list(reversed(w))
    square = multiply(a, a)
    e = [square[i] - scale * scale * p[i] for i in range(len(p))]
    while len(e) > 1 and e[-1] == 0:
        e.pop()
    assert len(e) < len(a)
    if r % 2 == 1:
        a, e = transform_linear(a, 2, k + 1), transform_linear(e, 2, k + 1)
        bound = eventual_bound(a, e)
        scale_for_original = F(scale * 2 ** r)
        auxiliary_bound = bound
    else:
        auxiliary_bound = eventual_bound(a, e)
        bound = max(0, (isqrt((k + 1) ** 2 + 8 * auxiliary_bound) - k - 1) // 2)
        while bound * (bound + k + 1) // 2 < auxiliary_bound:
            bound += 1
        scale_for_original = F(scale, 2 ** s)
    return {"k": k, "family": family,
            "sqrt_series_coefficients": [str(x) for x in c],
            "clearing_denominator": scale,
            "scaled_coefficients_have_unique_odd_last_term": True,
            "A_coefficients_in_t_or_w": [str(x) for x in a],
            "E_coefficients_in_t_or_w": [str(x) for x in e],
            "scale_for_sqrt_original_product": str(scale_for_original),
            "conservative_auxiliary_bound": auxiliary_bound,
            "conservative_n_bound": bound,
            "finite_remainder_checked": False, "kernel_checked": False}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--max-k", type=int, default=64)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    rows = [fixture(k) for k in range(2, args.max_k + 1, 2) if k % 8 != 0]
    payload = {"created_utc": datetime.now(timezone.utc).isoformat(),
               "kernel_checked": False, "rows": rows,
               "scope": "bounded coefficient fixtures for separately proved infinite families"}
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"fixtures_checked": len(rows), "k_values": [r["k"] for r in rows],
                      "kernel_checked": False}))


if __name__ == "__main__":
    main()

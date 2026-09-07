"""Exact k=5 quotient-curve probes; bounded ratios, all positive integral scales.

X=m+3=g*a, Y=n+3=g*b with gcd(a,b)=1.  Any admissible solution has
1<a/b<4**(1/5) and A*g**4 - 5*B*g**2 + 4*C = 0, where
A=a**5-4*b**5, B=a**3-4*b**3, C=a-4*b.
The discriminant must be a square.  Each rational ratio gives at most two g**2.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from fractions import Fraction as F
import json
from math import gcd, isqrt, prod
from pathlib import Path
import platform
import time


def centered(x):
    return x ** 5 - 5 * x ** 3 + 4 * x


def sextic(a, b):
    return (9 * a ** 6 + 64 * a ** 5 * b - 200 * a ** 3 * b ** 3
            + 64 * a * b ** 5 + 144 * b ** 6)


def trim(a):
    a = list(a)
    while a and a[-1] == 0:
        a.pop()
    return a


def poly_mod(a, b):
    a = trim([F(x) for x in a])
    b = trim([F(x) for x in b])
    while a and len(a) >= len(b):
        offset, factor = len(a) - len(b), a[-1] / b[-1]
        for i, value in enumerate(b):
            a[offset + i] -= factor * value
        a = trim(a)
    return a


def squarefree_check():
    f = [144, 64, 0, -200, 0, 64, 9]
    derivative = [i * f[i] for i in range(1, len(f))]
    a, b = f, derivative
    degrees = []
    while b:
        degrees.append(len(b) - 1)
        a, b = b, poly_mod(a, b)
    assert len(a) == 1 and a[0] != 0
    return {"polynomial_ascending": f, "euclidean_remainder_degrees": degrees,
            "gcd_monic": [1], "kernel_checked": False}


def run(height):
    start = time.monotonic()
    points, hits = [], []
    primitive_pairs, isqrt_calls = 0, 0
    squares_mod_256 = {x * x % 256 for x in range(256)}
    for b in range(1, height + 1):
        for a in range(b + 1, 4 * b // 3 + 1):
            if gcd(a, b) != 1 or a ** 5 >= 4 * b ** 5:
                continue
            primitive_pairs += 1
            aa, bb, cc = a ** 5 - 4 * b ** 5, a ** 3 - 4 * b ** 3, a - 4 * b
            disc = 25 * bb * bb - 16 * aa * cc
            assert disc == sextic(a, b)
            if disc < 0 or disc % 256 not in squares_mod_256:
                continue
            isqrt_calls += 1
            root = isqrt(disc)
            if root * root != disc:
                continue
            scales = []
            for sign in (-1, 1):
                u = F(5 * bb + sign * root, 2 * aa)
                assert aa * u * u - 5 * bb * u + 4 * cc == 0
                record = {"g_squared": str(u), "positive": u > 0,
                          "integral_square": False, "rational_square": False}
                if u > 0:
                    num, den = isqrt(u.numerator), isqrt(u.denominator)
                    if num * num == u.numerator and den * den == u.denominator:
                        g = F(num, den)
                        x, y = g * a, g * b
                        assert centered(x) == 4 * centered(y)
                        record.update({"rational_square": True, "g": str(g),
                                       "X": str(x), "Y": str(y),
                                       "n": str(y - 3), "m": str(x - 3)})
                        if den == 1:
                            record["integral_square"] = True
                            assert 4 * cc % (num * num) == 0
                            n, m = int(y - 3), int(x - 3)
                            if n >= 0 and m >= n + 5:
                                assert prod(range(m + 1, m + 6)) == 4 * prod(range(n + 1, n + 6))
                                hits.append({"k": 5, "n": n, "m": m})
                scales.append(record)
            points.append({"a": a, "b": b, "sqrt_discriminant": root, "scales": scales})
    return {
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "python_version": platform.python_version(), "kernel_checked": False,
        "coverage": {"b_max": height, "a_range": "b<a and a^5<4*b^5",
                     "coprime_a_b": True, "g_coverage": "all positive integers, by quadratic roots"},
        "primitive_pairs": primitive_pairs, "isqrt_calls": isqrt_calls,
        "sextic_squarefree": squarefree_check(), "quotient_points": points,
        "admissible_integer_hits": hits, "elapsed_seconds": time.monotonic() - start,
        "not_proved": "No bound on b; no exhaustive rational-point determination.",
    }


def integral_scale_scan(height):
    """One a per b is sufficient for every positive integral g.

    Put U=4*b^5-a^5, V=4*b^3-a^3, W=4*b-a.  The equation gives
    U*g^4 = 5*V*g^2-4*W, hence U<5*V and U*g^2<5*V.
    Since a>b, U=(alpha*b-a)*sum(...)>5*b^4*(alpha*b-a), and
    V<3*b^3.  Thus 0<alpha*b-a<3/(g^2*b)<=1 for b>=3.
    The interval 1<a/b<alpha contains no reduced ratios with b<=3.
    Therefore a=floor(alpha*b) for every possible integral-scale solution.
    """
    a = 0
    survivors, hits = [], []
    coprime_candidates = 0
    for b in range(1, height + 1):
        bound = 4 * b ** 5
        while (a + 1) ** 5 < bound:
            a += 1
        assert a ** 5 < bound < (a + 1) ** 5
        if a <= b or gcd(a, b) != 1:
            continue
        coprime_candidates += 1
        u, v, w = bound - a ** 5, 4 * b ** 3 - a ** 3, 4 * b - a
        if u >= 5 * v:
            continue
        disc = 25 * v * v - 16 * u * w
        assert disc == sextic(a, b) and disc > 0
        s = isqrt(disc)
        row = {"a": a, "b": b, "U": u, "V": v, "W": w,
               "discriminant": disc, "floor_sqrt": s, "is_square": s * s == disc}
        if s * s == disc:
            for sign in (-1, 1):
                g2 = F(5 * v + sign * s, 2 * u)
                if g2 > 0 and g2.denominator == 1:
                    g = isqrt(g2.numerator)
                    if g * g == g2:
                        n, m = g * b - 3, g * a - 3
                        if n >= 0 and m >= n + 5:
                            assert prod(range(m + 1, m + 6)) == 4 * prod(range(n + 1, n + 6))
                            hits.append({"k": 5, "n": n, "m": m})
        survivors.append(row)
    return {"b_max": height, "g_coverage": "all positive integers",
            "coprime_floor_candidates": coprime_candidates,
            "survivors_U_lt_5V": survivors, "admissible_integer_hits": hits,
            "kernel_checked": False,
            "also_covers_all_n_up_to": height - 3,
            "not_proved": "No upper bound on b; remaining b>height are not excluded."}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--height", type=int, default=5000)
    parser.add_argument("--integral-height", type=int, default=1000000)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    payload = run(args.height)
    start = time.monotonic()
    payload["integral_scale_scan"] = integral_scale_scan(args.integral_height)
    payload["integral_scale_scan"]["elapsed_seconds"] = time.monotonic() - start
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2))


if __name__ == "__main__":
    main()

"""Separate exact recomputation of checkpoint-2 certificates; not a Lean kernel.

Does not import the experiment generators.  Uses Newton interpolation from
binomial coefficients, a forward m scan, and an alternative sextic expression.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from fractions import Fraction as F
from hashlib import sha256
import json
from math import comb, factorial, gcd, isqrt
from pathlib import Path
import time


def newton_to_power(differences):
    result = [F(0)] * len(differences)
    basis = [F(1)]
    for j, value in enumerate(differences):
        for i, coefficient in enumerate(basis):
            result[i] += value * coefficient
        next_basis = [F(0)] * (len(basis) + 1)
        for i, coefficient in enumerate(basis):
            next_basis[i] -= F(j, j + 1) * coefficient
            next_basis[i + 1] += coefficient / (j + 1)
        basis = next_basis
    return result


def block_coefficients(k):
    values = [factorial(k) * comb(t + k, k) for t in range(k + 1)]
    differences = []
    while values:
        differences.append(values[0])
        values = [values[i + 1] - values[i] for i in range(len(values) - 1)]
    return newton_to_power(differences)


def horner_translate(coefficients, n):
    result = []
    for coefficient in reversed(coefficients):
        translated = [0] * (len(result) + 1)
        for i, value in enumerate(result):
            translated[i] += n * value
            translated[i + 1] += value
        translated[0] += coefficient
        result = translated
    return result


def verify_even(payload):
    checked, finite = [], []
    total_n = 0
    for row in payload["rows"]:
        k, scale, g = row["k"], row["scale_L"], row["fixed_divisor_g"]
        a, e, n0 = row["A_coefficients"], row["E_coefficients"], row["threshold_N"]
        assert k >= 2 and k % 2 == 0 and len(a) == k // 2 + 1
        assert scale > 0 and g > 0 and n0 >= 0
        p = block_coefficients(k)
        assert p == row["P_coefficients"]
        square = [sum(a[i] * a[d - i] for i in range(len(a))
                      if 0 <= d - i < len(a)) for d in range(k + 1)]
        assert square == [scale * scale * p[i] + (e[i] if i < len(e) else 0)
                          for i in range(k + 1)]
        ds = row["newton_coefficients"]
        assert newton_to_power(ds) == a
        assert ds[0] % (2 * g) == g
        assert all(value % (2 * g) == 0 for value in ds[1:])
        assert a[0] > 0 and all(value >= 0 for value in a)
        assert e[0] > 0 and all(value >= 0 for value in e)
        q = [4 * g * a[i] - 4 * (e[i] if i < len(e) else 0) for i in range(len(a))]
        q[0] -= g * g
        assert q == row["gap_coefficients"]
        shifted = horner_translate(q, n0)
        assert shifted == row["gap_at_N_plus_s_coefficients"]
        assert shifted[0] > 0 and all(value >= 0 for value in shifted)
        checked.append(k)
        band = row["finite_band"]
        if band is None:
            continue
        assert band["n_min"] == 0 and band["n_max_exclusive"] == n0
        digest, hits = sha256(), []
        m = k
        for n in range(n0):
            m = max(m, n + k)
            target = 4 * comb(n + k, k)
            while comb(m + k, k) < target:
                m += 1
            difference = factorial(k) * (comb(m + k, k) - target)
            if m > n + k:
                assert comb(m - 1 + k, k) < target
            assert m <= 2 * n + k
            digest.update(f"{n},{m},{difference}\n".encode())
            if difference == 0:
                hits.append({"k": k, "n": n, "m": m})
        assert digest.hexdigest() == band["bracket_sha256"]
        assert hits == band["hits"] == []
        finite.append(k)
        total_n += n0
    return {"polynomial_certificates_checked": checked, "complete_fixed_k_checked": finite,
            "finite_n_checked": total_n, "kernel_checked": False}


def sparse_multiply(a, b):
    result = {}
    for (i, j), x in a.items():
        for (r, s), y in b.items():
            result[i + r, j + s] = result.get((i + r, j + s), 0) + x * y
    return {ij: value for ij, value in result.items() if value}


def sparse_sum(*terms):
    result = {}
    for multiplier, polynomial in terms:
        for key, value in polynomial.items():
            result[key] = result.get(key, 0) + multiplier * value
    return {key: value for key, value in result.items() if value}


def modular_gcd_degree(poly, prime):
    a = [x % prime for x in poly]
    b = [i * a[i] % prime for i in range(1, len(a))]
    while b:
        while a and len(a) >= len(b):
            offset = len(a) - len(b)
            ratio = a[-1] * pow(b[-1], -1, prime) % prime
            for i, value in enumerate(b):
                a[offset + i] = (a[offset + i] - ratio * value) % prime
            while a and a[-1] == 0:
                a.pop()
        a, b = b, a
    return len(a) - 1


def verify_k5(payload):
    aa = {(5, 0): 1, (0, 5): -4}
    bb = {(3, 0): 1, (0, 3): -4}
    cc = {(1, 0): 1, (0, 1): -4}
    delta = {(6, 0): 9, (5, 1): 64, (3, 3): -200, (1, 5): 64, (0, 6): 144}
    assert sparse_sum((25, sparse_multiply(bb, bb)), (-16, sparse_multiply(aa, cc))) == delta
    difference = {(2, 0): 1, (0, 2): -1}
    norm_term = sparse_multiply({(1, 1): 1}, sparse_multiply(difference, difference))
    assert sparse_sum((9, sparse_multiply(bb, bb)), (64, norm_term)) == delta
    assert horner_translate([0, 4, 0, -5, 0, 1], 3) == block_coefficients(5)
    polynomial = payload["sextic_squarefree"]["polynomial_ascending"]
    assert polynomial == [144, 64, 0, -200, 0, 64, 9]
    prime = next(p for p in (7, 11, 13, 17, 19, 23) if modular_gcd_degree(polynomial, p) == 0)
    points = []
    pairs = 0
    for b in range(1, payload["coverage"]["b_max"] + 1):
        for a in range(b + 1, 4 * b // 3 + 1):
            if gcd(a, b) != 1 or a ** 5 >= 4 * b ** 5:
                continue
            pairs += 1
            value = 9 * (a ** 3 - 4 * b ** 3) ** 2 + 64 * a * b * (a * a - b * b) ** 2
            s = isqrt(value)
            if s * s == value:
                points.append((a, b, s))
    assert pairs == payload["primitive_pairs"]
    assert points == [(row["a"], row["b"], row["sqrt_discriminant"])
                      for row in payload["quotient_points"]]
    assert points == [(14, 11, 10740)]
    x, y = F(14, 3), F(11, 3)
    # Independent original five-factor check in rationals.
    p, q = F(1), F(1)
    for i in range(-2, 3):
        p *= x + i
        q *= y + i
    assert p == 4 * q and x - y == 1
    integral = payload["integral_scale_scan"]
    assert integral["also_covers_all_n_up_to"] == integral["b_max"] - 3
    survivors = []
    candidates = 0
    a = 0
    for b in range(1, integral["b_max"] + 1):
        # alpha in (1, 4/3): increasing b changes its floor by 1 or 2.
        # Choose using exact fifth powers, independently of the generator's loop.
        a += 1
        if (a + 1) ** 5 < 4 * b ** 5:
            a += 1
        assert a ** 5 < 4 * b ** 5 < (a + 1) ** 5
        if a <= b or gcd(a, b) != 1:
            continue
        candidates += 1
        u, v, w = 4 * b ** 5 - a ** 5, 4 * b ** 3 - a ** 3, 4 * b - a
        if u < 5 * v:
            d = 9 * v * v + 64 * a * b * (a * a - b * b) ** 2
            s = isqrt(d)
            assert s * s < d < (s + 1) ** 2
            # Third check: the quadratic bounds g, so evaluate every remaining
            # integral scale directly against binomial block products.
            for g in range(1, isqrt((5 * v - 1) // u) + 1):
                n, m = g * b - 3, g * a - 3
                if n >= 0 and m >= n + 5:
                    assert comb(m + 5, 5) != 4 * comb(n + 5, 5)
            survivors.append((a, b, u, v, w, d, s))
    assert candidates == integral["coprime_floor_candidates"]
    assert survivors == [(r["a"], r["b"], r["U"], r["V"], r["W"],
                          r["discriminant"], r["floor_sqrt"])
                         for r in integral["survivors_U_lt_5V"]]
    assert integral["admissible_integer_hits"] == []
    return {"homogeneous_identities_checked": True,
            "squarefree_mod_prime": prime, "all_ratio_pairs_checked": pairs,
            "integral_b_max_checked": integral["b_max"],
            "integral_survivors_checked": len(survivors), "kernel_checked": False}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--even", type=Path, required=True)
    parser.add_argument("--k5", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    start = time.monotonic()
    result = {"created_utc": datetime.now(timezone.utc).isoformat(),
              "even": verify_even(json.loads(args.even.read_text())),
              "k5": verify_k5(json.loads(args.k5.read_text())),
              "elapsed_seconds": time.monotonic() - start,
              "input_sha256": {str(p): sha256(p.read_bytes()).hexdigest()
                               for p in (args.even, args.k5)}}
    args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()

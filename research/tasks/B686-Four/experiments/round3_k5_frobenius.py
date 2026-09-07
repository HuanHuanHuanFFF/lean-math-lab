"""Exact finite-field and Frobenius certificates for the k=5 quotient curve.

This excludes an elliptic-quotient shortcut; it does not determine rational
points or solve the original natural-number problem. Algebraic-geometric
implications are explained separately in exploration.md, not kernel-checked.
"""
from collections import Counter
from datetime import datetime, timezone
from fractions import Fraction as Q
import argparse
import json
from math import gcd, isqrt, lcm
from pathlib import Path

F = [144, 64, 0, -200, 0, 64, 9]


def trim(a):
    while a and a[-1] == 0:
        a.pop()
    return a


def divide(a, b):
    a, b = list(map(Q, a)), list(map(Q, b))
    q = [Q(0)] * max(0, len(a) - len(b) + 1)
    while a and len(a) >= len(b):
        j, c = len(a) - len(b), a[-1] / b[-1]
        q[j] = c
        for i, x in enumerate(b):
            a[j + i] -= c * x
        trim(a)
    return trim(q), a


def mod_remainder(a, b, p):
    a, b = trim([x % p for x in a]), trim([x % p for x in b])
    while a and len(a) >= len(b):
        j, c = len(a) - len(b), a[-1] * pow(b[-1], -1, p) % p
        for i, x in enumerate(b):
            a[j + i] = (a[j + i] - c * x) % p
        trim(a)
    return a


def count_curve(p):
    def leg(x):
        x %= p
        return 0 if not x else 1 if pow(x, (p - 1) // 2, p) == 1 else -1

    nonresidue = next(x for x in range(2, p) if leg(x) == -1)

    def mul(x, y):
        return ((x[0] * y[0] + nonresidue * x[1] * y[1]) % p,
                (x[0] * y[1] + x[1] * y[0]) % p)

    def evaluate(x):
        y = (0, 0)
        for c in reversed(F):
            y = mul(y, x)
            y = ((y[0] + c) % p, y[1])
        return y

    a, b = F, [i * F[i] for i in range(1, len(F))]
    euclid = []
    while b:
        euclid.append([x % p for x in b])
        a, b = b, mod_remainder(a, b, p)
    assert len(a) == 1 and a[0] % p
    assert F[-1] % p and leg(F[-1]) == 1
    fp_elements = [(a, 0) for a in range(p)]
    fp2_elements = [(a, b) for a in range(p) for b in range(p)]
    fp_square_counts = Counter(mul(x, x) for x in fp_elements)
    fp2_square_counts = Counter(mul(x, x) for x in fp2_elements)
    per_x1 = [fp_square_counts[evaluate(x)] for x in fp_elements]
    per_x2 = [fp2_square_counts[evaluate(x)] for x in fp2_elements]
    n1, n2 = sum(per_x1) + 2, sum(per_x2) + 2
    # Independent character-sum counts, using norm from F_(p^2) to F_p.
    assert n1 == p + 2 + sum(leg(evaluate(x)[0]) for x in fp_elements)
    assert n2 == p * p + 2 + sum(
        leg((y := evaluate(x))[0] ** 2 - nonresidue * y[1] ** 2)
        for x in fp2_elements)
    a1 = p + 1 - n1
    assert (a1 * a1 - (p * p + 1 - n2)) % 2 == 0
    a2 = (a1 * a1 - (p * p + 1 - n2)) // 2
    characteristic = [1, -a1, a2, -p * a1, p * p]
    split_disc = a1 * a1 - 4 * (a2 - 2 * p)
    return {
        "p": p, "quadratic_nonresidue": nonresidue,
        "squarefree_euclid_remainders": euclid, "points_at_infinity": 2,
        "affine_y_counts_Fp": per_x1, "affine_y_counts_Fp2": per_x2,
        "N1": n1, "N2": n2, "frobenius_descending": characteristic,
        "elliptic_trace_discriminant": split_disc,
        "elliptic_trace_discriminant_is_square":
            split_disc >= 0 and isqrt(split_disc) ** 2 == split_disc,
    }


def root_quotient_certificate(row):
    p, c = row["p"], row["frobenius_descending"]
    # Certify irreducibility of F modulo 2 by testing all monic degree 1/2
    # polynomials. Every reducible quartic has a factor of one of these degrees.
    mod2_checks = []
    for degree in [1, 2]:
        for bits in range(1 << degree):
            factor = [(bits >> i) & 1 for i in range(degree)] + [1]
            rem = mod_remainder(list(reversed(c)), factor, 2)
            assert rem
            mod2_checks.append({"factor": factor, "remainder": rem})
    powers = [4]
    for j in range(1, 17):
        if j <= 4:
            powers.append(-sum(c[i] * powers[j - i] for i in range(1, j)) - j * c[j])
        else:
            powers.append(-sum(c[i] * powers[j - i] for i in range(1, 5)))
    # Reciprocal Weil symmetry gives sum alpha_i^(-j) = s_j/p^j.
    traces = [Q(powers[j] ** 2, p ** j) for j in range(1, 17)]
    h = [Q(1)]
    for j in range(1, 17):
        h.append(-sum(h[j - i] * traces[i - 1] for i in range(1, j + 1)) / j)
    residual = list(reversed(h))
    for _ in range(4):
        residual, rem = divide(residual, [-1, 1])
        assert not rem
    assert len(residual) == 13
    scale = lcm(*(x.denominator for x in residual))
    integer_residual = [int(x * scale) for x in residual]
    assert gcd(*integer_residual) == 1
    cyclotomic, checks = {}, []
    # phi(N)^2 >= N/2, hence phi(N)<=12 implies N<=288.
    for n in range(1, 289):
        phi = [-1] + [0] * (n - 1) + [1]
        for d in range(1, n):
            if n % d == 0:
                phi, rem = divide(phi, cyclotomic[d])
                assert not rem
        cyclotomic[n] = phi
        if len(phi) <= len(residual):
            _, rem = divide(integer_residual, phi)
            assert rem
            checks.append({"n": n, "cyclotomic": [int(x) for x in phi],
                           "nonzero_remainder": [str(x) for x in rem]})
    return {
        "irreducible_mod_2_checks": mod2_checks,
        "root_power_sums": powers, "root_quotient_power_sums": list(map(str, traces)),
        "removed_diagonal_factor": "(T-1)^4",
        "residual_degree": 12, "residual_integer_coefficients_ascending": integer_residual,
        "residual_denominator": scale, "cyclotomic_checks": checks,
        "nontrivial_root_quotient_is_root_of_unity": False,
    }


def rational_point_witnesses():
    rows = []
    for t in [Q(-2), Q(-1), Q(-1, 2), Q(0), Q(1, 2), Q(1), Q(2), Q(4), Q(14, 11)]:
        value = sum(Q(c) * t ** i for i, c in enumerate(F))
        top, bottom = isqrt(value.numerator), isqrt(value.denominator)
        assert top > 0 and top * top == value.numerator and bottom * bottom == value.denominator
        rows.append({"t": str(t), "positive_z": str(Q(top, bottom)), "both_signs": True})
    assert len({row["t"] for row in rows}) == 9
    return {"affine_positive_rows": rows, "affine_points": 18,
            "infinity_leading_z_over_t_cubed": [3, -3], "known_rational_points": 20}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    row = count_curve(11)
    assert (row["N1"], row["N2"]) == (17, 127)
    certificate = root_quotient_certificate(row)
    row7 = count_curve(7)
    assert row7["N1"] == 16
    witnesses = rational_point_witnesses()
    assert witnesses["known_rational_points"] > row7["N1"] + 2
    payload = {
        "created_utc": datetime.now(timezone.utc).isoformat(), "curve_ascending": F,
        "point_counts": row, "absolute_simplicity_arithmetic": certificate,
        "point_counts_p7": row7, "rational_point_witnesses": witnesses,
        "rank_lower_bound_from_Coleman": 2,
        "kernel_checked": False,
        "boundary": "No rational-point enumeration; no original k=5 nonexistence claim.",
    }
    args.output.write_text(json.dumps(payload, indent=2) + "\n")
    print(json.dumps({"p": 11, "N1": row["N1"], "N2": row["N2"],
                      "frobenius": row["frobenius_descending"],
                      "split_discriminant": row["elliptic_trace_discriminant"],
                      "cyclotomic_n_checked": [x["n"] for x in certificate["cyclotomic_checks"]],
                      "kernel_checked": False}, indent=2))


if __name__ == "__main__":
    main()

"""k=5: exact continued-fraction certificate for a bounded denominator range.

Mathematical coverage relies on the proved inequality in exploration.md and the
classical Fatou-Grace theorem, not on a Lean proof.  The checker independently
reconstructs CF terms by Euclid on both rational endpoints, reconstructs finite
fractions from the bottom up, and checks original binomial products.
No floating-point values decide an interval, a root, or an exclusion.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from fractions import Fraction as F
import json
from math import comb, gcd, isqrt
from pathlib import Path
import time


def root5_floor(n):
    x = 1 << ((n.bit_length() + 4) // 5)
    while True:
        y = (4 * x + n // x ** 4) // 5
        if y >= x:
            break
        x = y
    while (x + 1) ** 5 <= n:
        x += 1
    while x ** 5 > n:
        x -= 1
    return x


def classify(a, b):
    if a <= b or a ** 5 >= 4 * b ** 5:
        return None
    u, v, w = 4 * b ** 5 - a ** 5, 4 * b ** 3 - a ** 3, 4 * b - a
    if u >= 5 * v:
        return None
    delta = 25 * v * v - 16 * u * w
    s = isqrt(delta)
    return {"a": a, "b": b, "U": u, "V": v, "W": w,
            "discriminant": delta, "floor_sqrt": s, "is_square": s * s == delta,
            "g_upper": isqrt((5 * v - 1) // u)}


def generate(bound_power, digits):
    start = time.monotonic()
    denominator_bound, scale = 10 ** bound_power, 10 ** digits
    root = root5_floor(4 * scale ** 5)
    assert root ** 5 < 4 * scale ** 5 < (root + 1) ** 5
    lower, upper = F(root, scale), F(root + 1, scale)
    p0, p1, q0, q1 = 0, 1, 1, 0
    terms, survivors, hits = [], [], []
    fraction_count, lower_count = 0, 0
    while True:
        partial = lower.numerator // lower.denominator
        if partial != upper.numerator // upper.denominator:
            raise ValueError("Insufficient exact isolation precision; increase --digits")
        p, q = partial * p1 + p0, partial * q1 + q0
        terms.append({"partial_quotient": partial, "p": p, "q": q})
        for j in range(1, partial + 1):
            a, b = j * p1 + p0, j * q1 + q0
            if b > denominator_bound:
                break
            assert b > 0 and gcd(a, b) == 1
            fraction_count += 1
            if b < a and a ** 5 < 4 * b ** 5:
                lower_count += 1
            row = classify(a, b)
            if row is not None:
                row.update({"stage": len(terms) - 1, "last_partial": j})
                survivors.append(row)
                for g in range(1, row["g_upper"] + 1):
                    n, m = g * b - 3, g * a - 3
                    if n >= 0 and m >= n + 5 and comb(m + 5, 5) == 4 * comb(n + 5, 5):
                        hits.append({"k": 5, "n": n, "m": m})
        if q > denominator_bound:
            break
        p0, p1, q0, q1 = p1, p, q1, q
        assert lower > partial
        lower, upper = 1 / (upper - partial), 1 / (lower - partial)
    return {
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "kernel_checked": False,
        "coverage": {"b_max": denominator_bound, "g": "all positive integers",
                     "also_covers_all_n_up_to": denominator_bound - 3,
                     "boundary": "Does not cover b>b_max or settle unrestricted k=5."},
        "root_isolation": {"lower_numerator": root, "upper_numerator": root + 1,
                           "common_denominator": scale},
        "partial_quotients_and_convergents": terms,
        "convergents_and_mediants_checked": fraction_count,
        "lower_ratios_checked": lower_count,
        "survivors_U_lt_5V": survivors, "admissible_integer_hits": hits,
        "coverage_dependencies": [
            "k5 centering and primitive-scale quadratic",
            "X/Y>5/4 from positive polynomial coefficients at Y>=4",
            "0<alpha-a/b<524/(625*g^2*b^2)<1/b^2",
            "Fatou-Grace: error<1/b^2 implies convergent or nearest mediant",
        ],
        "references": [
            "https://arxiv.org/html/2312.13988v1#S5.SS2",
            "https://leanprover-community.github.io/mathlib4_docs/Mathlib/NumberTheory/DiophantineApproximation/Basic.html",
        ],
        "elapsed_seconds": time.monotonic() - start,
    }


def rational_cf(numerator, denominator):
    terms = []
    while denominator:
        term, residue = divmod(numerator, denominator)
        terms.append(term)
        numerator, denominator = denominator, residue
    return terms


def finite_fraction(terms):
    value = F(terms[-1])
    for term in reversed(terms[:-1]):
        value = term + 1 / value
    return value


def verify(payload):
    isolation = payload["root_isolation"]
    lo, hi, den = isolation["lower_numerator"], isolation["upper_numerator"], isolation["common_denominator"]
    assert den > 0 and 0 < lo < hi
    assert lo ** 5 < 4 * den ** 5 < hi ** 5
    terms = [r["partial_quotient"] for r in payload["partial_quotients_and_convergents"]]
    assert terms[0] == 1 and all(x > 0 for x in terms[1:])
    # Common Euclidean prefix of both exact endpoints certifies the entire
    # prefix for every number strictly inside this root-isolating interval.
    assert rational_cf(lo, den)[:len(terms)] == terms
    assert rational_cf(hi, den)[:len(terms)] == terms
    bound = payload["coverage"]["b_max"]
    assert bound >= 4
    assert payload["coverage"]["also_covers_all_n_up_to"] == bound - 3
    expected_survivors = []
    total, lowers, direct_g_checks = 0, 0, 0
    finite_before_bound = []
    for stage, partial in enumerate(terms):
        convergent = finite_fraction(terms[:stage + 1])
        record = payload["partial_quotients_and_convergents"][stage]
        assert (convergent.numerator, convergent.denominator) == (record["p"], record["q"])
        if stage < len(terms) - 1:
            assert convergent.denominator <= bound
        else:
            assert convergent.denominator > bound
        for last in range(1, partial + 1):
            fraction = finite_fraction(terms[:stage] + [last])
            a, b = fraction.numerator, fraction.denominator
            if b > bound:
                continue
            total += 1
            finite_before_bound.append((a, b))
            if not (b < a and a ** 5 < 4 * b ** 5):
                continue
            lowers += 1
            u, v, w = 4 * b ** 5 - a ** 5, 4 * b ** 3 - a ** 3, 4 * b - a
            if u >= 5 * v:
                continue
            # Alternative homogeneous norm expression.
            delta = 9 * v ** 2 + 64 * a * b * (a * a - b * b) ** 2
            s = isqrt(delta)
            assert s * s < delta < (s + 1) ** 2
            bound_g = isqrt((5 * v - 1) // u)
            for g in range(1, bound_g + 1):
                n, m = g * b - 3, g * a - 3
                if n >= 0 and m >= n + 5:
                    # Direct original f(X), f(Y), not the discriminant test.
                    x, y = g * a, g * b
                    assert x * (x - 1) * (x + 1) * (x - 2) * (x + 2) != (
                        4 * y * (y - 1) * (y + 1) * (y - 2) * (y + 2))
                    direct_g_checks += 1
            expected_survivors.append({"a": a, "b": b, "U": u, "V": v, "W": w,
                                       "discriminant": delta, "floor_sqrt": s,
                                       "is_square": False, "g_upper": bound_g,
                                       "stage": stage, "last_partial": last})
    assert len(set(finite_before_bound)) == len(finite_before_bound)
    assert total == payload["convergents_and_mediants_checked"]
    assert lowers == payload["lower_ratios_checked"]
    assert expected_survivors == payload["survivors_U_lt_5V"]
    assert payload["admissible_integer_hits"] == []
    return {"verified_cf_terms": len(terms), "verified_fractions": total,
            "verified_survivors": len(expected_survivors), "direct_scale_checks": direct_g_checks,
            "b_max": bound, "kernel_checked": False,
            "warning": "Coverage implication uses paper proof and Fatou-Grace, not a Lean check."}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--bound-power", type=int, default=50)
    parser.add_argument("--digits", type=int, default=140)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--verify", type=Path)
    args = parser.parse_args()
    if args.verify is not None:
        print(json.dumps(verify(json.loads(args.verify.read_text())), indent=2))
        return
    if args.output is None:
        parser.error("--output is required for generation")
    payload = generate(args.bound_power, args.digits)
    payload["independent_arithmetic_verification"] = verify(payload)
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload["independent_arithmetic_verification"], indent=2))


if __name__ == "__main__":
    main()

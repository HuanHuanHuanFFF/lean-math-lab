"""Independent exact checks of round3 fixed even-k tail certificates.

Does not import the generator. Polynomial identities are checked at degree+1
distinct integer points, together with their degree bounds. Tail inequalities
are certified by nonnegative coefficients after t=N+s; this is stronger than
sampling the tail. These are Python certificates, not Lean polynomial proofs,
and no n<N remainder or all-k enumeration is claimed.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
from math import comb, prod
from pathlib import Path


def evaluate(coefficients, t):
    # Deliberately direct powers, independent of the generator's Horner code.
    return sum(c * t ** j for j, c in enumerate(coefficients))


def combine(*terms):
    result = [0] * max(len(p) for _, p in terms)
    for multiplier, polynomial in terms:
        for j, c in enumerate(polynomial):
            result[j] += multiplier * c
    return result


def monomial(degree, coefficient):
    return [0] * degree + [coefficient]


def translated_positive(polynomial, threshold):
    shifted = [sum(c * comb(i, j) * threshold ** (i - j)
                   for i, c in enumerate(polynomial) if i >= j)
               for j in range(len(polynomial))]
    assert shifted[0] > 0
    assert all(c >= 0 for c in shifted)
    # For s>=0, every term is nonnegative and the constant is positive.
    return {"degree_bound": len(polynomial) - 1,
            "translated_constant_positive": True,
            "all_translated_coefficients_nonnegative": True}


def check_row(row):
    k, r, scale, n = (row[key] for key in ("k", "r", "L", "N"))
    a, e, p = (row[key] for key in ("A", "E", "P"))
    assert k >= 2 and k % 2 == 0 and r * 2 == k
    assert len(a) == r + 1 and a[-1] == scale > 0
    assert 1 <= len(e) <= r and e[-1] != 0
    assert len(p) == k + 1 and n >= 1
    assert all(type(x) is int for x in a + e + p)
    # Both differences have degree <=k; k+1 zero values imply identity.
    for t in range(k + 1):
        original = prod(t + i for i in range(1, k + 1))
        assert evaluate(p, t) == original
        assert evaluate(a, t) ** 2 - scale ** 2 * original == evaluate(e, t)
    degree, lead = len(e) - 1, abs(e[-1])
    assert row["degree_E"] == degree
    sign = 1 if e[-1] > 0 else -1
    leading_a, leading_e = monomial(r, scale), monomial(degree, lead)
    inequalities = {
        "8A_gt_7_leading_A": combine((8, a), (-7, leading_a)),
        "8A_lt_9_leading_A": combine((-8, a), (9, leading_a)),
        "8_signed_E_gt_7_leading_abs_E": combine((8 * sign, e), (-7, leading_e)),
        "8_signed_E_lt_9_leading_abs_E": combine((-8 * sign, e), (9, leading_e)),
        "A_gt_3E": combine((1, a), (-3, e)),
        "A_gt_minus_3E": combine((1, a), (3, e)),
        "A_gt_1": combine((1, a), (-1, [1])),
    }
    checks = {name: translated_positive(poly, n) for name, poly in inequalities.items()}
    return {"k": k, "N": n, "identity_degree_bound": k,
            "distinct_identity_points": k + 1, "inequalities": checks,
            "kernel_checked_instance": False, "finite_remainder_checked": False}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("certificate", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    raw = args.certificate.read_bytes()
    rows = [check_row(row) for row in json.loads(raw)["rows"]]
    report = {"checked_at": datetime.now(timezone.utc).isoformat(),
              "input_sha256": hashlib.sha256(raw).hexdigest(),
              "method": "degree+1 identity checks and translated polynomial inequalities",
              "scope": "listed fixed-k tails only; no finite remainders", "rows": rows}
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"checked_k": [row["k"] for row in rows],
                      "tail_inequalities_certified": 7 * len(rows),
                      "kernel_checked_instances": False}))


if __name__ == "__main__":
    main()

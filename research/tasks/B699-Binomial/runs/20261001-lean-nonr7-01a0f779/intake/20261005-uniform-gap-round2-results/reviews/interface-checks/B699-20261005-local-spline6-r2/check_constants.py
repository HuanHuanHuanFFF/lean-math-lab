#!/usr/bin/env python3
"""Exact scalar checks for B699 local logarithmic spline6, round 2.

No prime search, zero evaluation, Lean invocation, or numerical quadrature.
All acceptance decisions use fractions.Fraction; decimals are explanatory only.
The analytic identities supplying the enclosures are proved in PROOF.md.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as F
import json
from pathlib import Path
import sys

D, A, T, OLD_T, H, OLD_H, K = 4095, 122568684, 16000000000, 800000000000, 800000, 1000000, 49152
C = F(D + 1, D)
checks: list[dict] = []

def frac(q: F | int) -> dict:
    q = F(q)
    return {"numerator": str(q.numerator), "denominator": str(q.denominator)}

def check(name: str, left: F | int, relation: str, right: F | int) -> None:
    l, r = F(left), F(right)
    ok = {"<": l < r, "<=": l <= r, "=": l == r, ">": l > r, ">=": l >= r}[relation]
    checks.append({"id": name, "left": frac(l), "relation": relation, "right": frac(r), "pass": ok})
    if not ok:
        raise AssertionError(f"{name}: {l} {relation} {r}")

def log_unit(q: F, terms: int = 18) -> tuple[F, F]:
    """Enclose log(q) for 1<=q<=2 by the atanh series and geometric tail."""
    if not F(1) <= q <= F(2):
        raise ValueError("log_unit requires 1 <= q <= 2")
    z = (q - 1) / (q + 1)
    s = 2 * sum((z ** (2*j + 1) / (2*j + 1) for j in range(terms)), F(0))
    tail = 2 * z ** (2*terms + 1) / ((2*terms + 1) * (1 - z*z))
    return s, s + tail

def log_bounds(q: F | int, terms: int = 18) -> tuple[F, F]:
    q = F(q)
    if q <= 0:
        raise ValueError("log requires a positive rational")
    if q < 1:
        lo, hi = log_bounds(1 / q, terms)
        return -hi, -lo
    k = 0
    while q >= 2:
        q /= 2
        k += 1
    lo2, hi2 = log_unit(F(2), terms)
    lo, hi = log_unit(q, terms)
    return k * lo2 + lo, k * hi2 + hi

def atan_bounds(q: F, terms: int = 12) -> tuple[F, F]:
    if not 0 <= q <= 1:
        raise ValueError("atan_bounds requires 0 <= q <= 1")
    s = sum(((-1) ** j * q ** (2*j + 1) / (2*j + 1) for j in range(terms)), F(0))
    adjacent = s + (-1) ** terms * q ** (2*terms + 1) / (2*terms + 1)
    return min(s, adjacent), max(s, adjacent)

def ceil(q: F) -> int:
    return -((-q.numerator) // q.denominator)

def cover_lower_bound(upper: int) -> tuple[int, F, F]:
    nl, nu = log_bounds(F(upper, A))
    dl, du = log_bounds(C)
    lower, upper_ratio = nl / du, nu / dl
    if ceil(lower) != ceil(upper_ratio):
        raise AssertionError("insufficient log precision for witness-model bound")
    return ceil(lower), lower, upper_ratio

def run() -> dict:
    p1l, p1u = atan_bounds(F(1, 5))
    p2l, p2u = atan_bounds(F(1, 239))
    pil, piu = 16*p1l - 4*p2u, 16*p1u - 4*p2l
    plo, phi = F(157, 50), F(22, 7)
    check("pi_lower", pil, ">", plo)
    check("pi_upper", piu, "<", phi)
    check("log_2_lower", log_bounds(2)[0], ">", F(2, 3))
    check("log_8000_upper", log_bounds(8000)[1], "<", 9)
    check("log_28000_over_2pi_upper", log_bounds(F(28000) / (2*plo))[1], "<", F(2101, 250))
    check("log_28000_over_2pi_gt_one", log_bounds(F(28000) / (2*phi))[0], ">", 1)
    check("log_H_over_2pi_upper", log_bounds(F(H) / (2*plo))[1], "<", 12)
    check("log_1000_over_2pi_lower", log_bounds(F(1000) / (2*phi))[0], ">", 5)
    check("log_1000_over_2pi_upper", log_bounds(F(1000) / (2*plo))[1], "<", F(51, 10))
    check("log_cT_upper", log_bounds(C*T)[1], "<", 24)
    check("log_cT_lower", log_bounds(C*T)[0], ">", 4)
    n1000 = F(25000, 157)*F(41, 10) + F(7, 8) + F(67, 100)*F(51, 10)
    check("N1000_upper", n1000, "<", 660)
    check("global_count_constant", F(661) - 1, "=", 660)
    check("log_c_lower_for_h", log_bounds(C)[0], ">", F(1, 4096))
    check("log_c_upper_for_h", log_bounds(C)[1], "<", F(1, 4095))
    check("K_from_h_lower", 12*4096, "=", K)
    check("spline_inverse_h", 6*4096, "=", 24576)

    # One small-angle polynomial plus a seven-term arctangent upper sum.
    check("sinc_small_angle_cubic_margin", 2880 - 520*F(3, 2) - F(3, 2)**3, ">", 0)
    aup, bup, vup = F(4899, 4000), F(86603, 50000), F(70711, 100000)
    check("sqrt_3_over_2_upper", aup*aup, ">", F(3, 2))
    check("sqrt_3_upper", bup*bup, ">", 3)
    check("inv_sqrt_2_upper", vup*vup, ">", F(1, 2))
    atan_poly = sum(((-1)**j * vup**(2*j+1) / (2*j+1) for j in range(7)), F(0))
    check("atan_upper_seven_terms", atan_poly, "<", F(77, 125))
    a0up = F(227, 540)*aup + F(3, 8)*bup*F(77, 125)
    check("envelope_moment_A0", a0up, "<", F(183, 200))
    check("envelope_moment_A1", F(5, 12) + F(1, 9), "=", F(19, 36))
    check("envelope_join_value", (1+F(3,2)/3)**-3, "=", F(3,2)**-3)
    check("count_error_tangent_mass", 1 + F(K)*F(183,200)/(2*plo), "<", 8000)
    low = 1322 + F(K)/plo*(F(183,200)*(F(2101,250)-1) + F(K,28000)*F(19,36)) + F(603,50)
    check("low_zero_sum_bound", low, "<", 122000)

    # All heights beyond H are covered by the count-derived sixth moment.
    v6 = F(1,5)/plo/F(H**5)*F(61,5) + F(67,50)*F(25,H**6)
    high = C*F(1,2)*(1+F(1,T))*K**6*v6
    check("high_zero_relative_bound", high, "<", F(17,1000))
    check("finite_zero_H_inside_published_height", H, "<", F(545439823215,1000))
    nh_upper = F(H)/(2*plo)*12
    check("positive_zero_object_bound", nh_upper, "<", 1530000)

    check("sqrt_cutoff", 126000**2, "<=", T)
    check("proper_power_relative_bound", F(24576)*F(3,4)*576*(F(1,2*D*126000)+F(1,126000**2)), "<", F(11,1000))
    check("trivial_zero_relative_bound", F(2,T*(T*T-1)), "<", F(1,1000000))
    total = F(122000,126000)+F(17,1000)+F(11,1000)+F(1,1000000)
    check("total_error", total, "=", F(62764063,63000000))
    check("positive_margin", 1-total, "=", F(235937,63000000))
    check("total_error_strict", total, "<", 1)
    check("cutoff_reduction_factor", F(OLD_T,T), "=", 50)
    check("zero_height_reduction_factor", F(H,OLD_H), "=", F(4,5))
    check("old_initial_precedes_tail", A, "<", T)
    check("largest_new_finite_witness_34_bits", C*T, "<", 2**34)
    check("grid_floor_start", A, ">=", 8192*8193)
    check("bridge_log_upper", log_bounds(F(T,A))[1], "<", 5)
    check("grid_count_cap", 8194*5, "=", 40970)
    new_lb, new_ll, new_lu = cover_lower_bound(T)
    old_lb, old_ll, old_lu = cover_lower_bound(OLD_T)
    check("old_cover_count", old_lb, "=", 35974)
    check("new_cover_ceiling_consistency", new_lb, "=", ceil(new_lu))
    # Fixed six-fold B-spline difference sanity checks, not a complex identity proof.
    from math import comb, factorial
    for power in range(7):
        value = sum((-1)**j * comb(6,j) * j**power for j in range(7))
        check(f"difference6_moment_{power}", value, "=", 0 if power < 6 else factorial(6))
    return {
        "schema": "b699-local-spline6-scalars-v1",
        "arithmetic": "Python standard-library fractions.Fraction only for acceptance",
        "scope": {"T": T, "H": H, "D": D, "A": A, "order": 6, "K": K},
        "analytic_proof_required": "PROOF.md; this file does NOT verify analytic theorems, primes, or zeta zeros",
        "enclosures": {"pi": [frac(pil), frac(piu)], "A0_upper": frac(a0up), "low_zero_upper": frac(low), "sixth_moment_upper": frac(v6), "high_relative_upper": frac(high)},
        "structure": {"new_single_prime_cover_lower_bound": new_lb, "old_single_prime_cover_lower_bound": old_lb, "lower_bound_difference": old_lb-new_lb,
                      "new_cover_ratio_enclosure": [frac(new_ll),frac(new_lu)],
                      "old_cover_ratio_enclosure": [frac(old_ll),frac(old_lu)],
                      "conditional_grid_cells_at_most": 40970, "positive_zero_objects_upper_bound": 1530000,
                      "prime_searches": 0, "zero_evaluations": 0, "lean_invocations": 0,
                      "warning": "Cell count is conditional and does not prove existence in the prescribed windows. Object bound is not a certificate or runtime."},
        "checks": checks, "passed": len(checks), "failed": 0
    }

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=Path("certificates/constants.json"))
    args = parser.parse_args()
    result = run()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2)+"\n", encoding="utf-8")
    print(f"PASS: {result['passed']} exact scalar checks; no prime search, zeta zero evaluation, Lean, or CI.")
    print(f"New witness-model lower bound: {result['structure']['new_single_prime_cover_lower_bound']}; conditional grid cells <= 40970.")
    print(f"T={T}, H={H}, spline order=6; constants written to {args.output}")
    return 0

if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (AssertionError, ValueError) as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        raise SystemExit(1)

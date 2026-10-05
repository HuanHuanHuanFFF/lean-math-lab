#!/usr/bin/env python3
"""Exact rational checks for B699 smoothing-8. Standard library only.

This checks scalar arithmetic and explicit elementary-series enclosures.
It does NOT check any zeta zero, prime, prime chain, or Lean theorem.
The analytic proofs behind the enclosures are in PROOF.md, section 10.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
from math import comb, factorial
import json
from pathlib import Path


def packed(q: Q | int) -> dict[str, str]:
    q = Q(q)
    return {"numerator": str(q.numerator), "denominator": str(q.denominator)}


def atan_interval(q: Q, n: int = 12) -> tuple[Q, Q]:
    if not 0 < q < 1 or n < 1:
        raise ValueError("Expected 0 < q < 1 and positive n")
    s = sum(((-1) ** k * q ** (2*k+1) / (2*k+1) for k in range(n)), Q(0))
    following = s + (-1)**n * q ** (2*n+1) / (2*n+1)
    return min(s, following), max(s, following)


def log_unit_interval(r: Q, n: int = 16) -> tuple[Q, Q]:
    if not 1 <= r <= 2:
        raise ValueError("Expected 1 <= r <= 2")
    z = (r-1)/(r+1)
    s = 2 * sum((z ** (2*k+1) / (2*k+1) for k in range(n)), Q(0))
    tail = 2*z**(2*n+1) / ((2*n+1)*(1-z*z))
    return s, s + tail


def log_interval(q: Q, n: int = 16) -> tuple[Q, Q]:
    if q < 1:
        raise ValueError("Only q >= 1 is needed in this certificate")
    k = 0
    r = q
    while r >= 2:
        r /= 2
        k += 1
    l2, u2 = log_unit_interval(Q(2), n)
    lr, ur = log_unit_interval(r, n)
    return k*l2 + lr, k*u2 + ur


def ceiling(q: Q) -> int:
    return -(-q.numerator // q.denominator)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=None)
    args = parser.parse_args()
    out: dict = {"method": "fractions.Fraction; no floating point in any check",
                 "scope": "scalar inequalities only; NOT zeta/prime/Lean certificates",
                 "inputs": {"H": 10**6, "T": 800000000000,
                            "A": 122568684, "m": 8, "h_denominator": 80000,
                            "atan_terms": 12, "log_terms": 16},
                 "checks": {}, "enclosures": {}}
    checks = out["checks"]
    def lt(name: str, a: Q | int, b: Q | int) -> None:
        a, b = Q(a), Q(b)
        if not a < b:
            raise ArithmeticError(f"Failed: {name}: {a} !< {b}")
        checks[name] = {"left": packed(a), "relation": "<", "right": packed(b), "passed": True}
    def le(name: str, a: Q | int, b: Q | int) -> None:
        a, b = Q(a), Q(b)
        if not a <= b:
            raise ArithmeticError(f"Failed: {name}: {a} !<= {b}")
        checks[name] = {"left": packed(a), "relation": "<=", "right": packed(b), "passed": True}
    def eq(name: str, a: Q | int, b: Q | int) -> None:
        a, b = Q(a), Q(b)
        if a != b:
            raise ArithmeticError(f"Failed: {name}: {a} != {b}")
        checks[name] = {"left": packed(a), "relation": "=", "right": packed(b), "passed": True}
    def logcert(name: str, q: Q) -> tuple[Q,Q]:
        l,u = log_interval(q)
        out["enclosures"][name] = {"argument": packed(q), "lower": packed(l), "upper": packed(u)}
        return l,u

    a5,b5 = atan_interval(Q(1,5))
    a239,b239 = atan_interval(Q(1,239))
    pil,piu = 16*a5-4*b239, 16*b5-4*a239
    out["enclosures"]["pi_via_Machin"] = {"lower": packed(pil), "upper": packed(piu)}
    lt("pi_lower", Q(157,50), pil)
    lt("pi_upper", piu, Q(22,7))
    l,_ = logcert("log_4pi_lower_argument", Q(314,25))
    lt("log_4pi_gt_253_100", Q(253,100), l)
    l200,_ = logcert("log_200", Q(200))
    H200 = sum((Q(1,k) for k in range(1,201)), Q(0))
    out["enclosures"]["harmonic_200"] = packed(H200)
    lt("gamma_lt_29_50_using_H200", H200-l200, Q(29,50))
    eq("reciprocal_square_budget", 2+Q(29,50)-Q(253,100), Q(1,20))
    l1000,_ = logcert("L1000_lower_argument", Q(3500,22))
    _,u1000 = logcert("L1000_upper_argument", Q(25000,157))
    lt("L1000_gt_5", 5, l1000)
    lt("L1000_lt_51_10", u1000, Q(51,10))
    _,uH = logcert("LH_upper_argument", Q(25000000,157))
    lt("LH_lt_12", uH, 12)
    _,u2pi = logcert("log_2pi_upper_argument", Q(44,7))
    lt("log_2pi_lt_2", u2pi, 2)
    N1000 = Q(25000,157)*Q(41,10)+Q(7,8)+Q(67,100)*Q(51,10)
    lt("N1000_lt_660", N1000, 660)
    lt("strip_count_correction_negative_at_v_ge_1", -Q(33,100)+Q(41,200), 0)
    lt("rho_norm_under_161", Q(1,4)+160**2, 161**2)
    head = Q(161,20)+Q(1320,160)
    eq("head_reciprocal_sum_budget", head, Q(163,10))
    mid = Q(12,3)+Q(144-25,6)
    eq("middle_reciprocal_sum_budget", mid, Q(143,6))
    eq("low_zero_sum_budget", head+mid, Q(602,15))
    lt("low_zero_sum_lt_41", head+mid, 41)
    eq("ninth_moment_coarse_coefficient", Q(9,8*3)*(12+Q(1,8)), Q(873,192))
    le("sqrt_T_ge_890000", 890000**2, 800000000000)
    le("sqrt_c_le_c", Q(10001,10000), Q(10001,10000)**2)
    low = 41*Q(10001,10000)/890000
    high = 256*Q(10001,10000)**9*Q(80000,10**6)**8*Q(873,192)
    lt("low_relative_lt_47_per_million", low, Q(47,10**6))
    lt("high_relative_lt_2_per_million", high, Q(2,10**6))
    lt("remainder_lt_1_per_million", Q(3,800000000000), Q(1,10**6))
    eq("psi_relative_budget", Q(1,20000)+Q(47,10**6)+Q(2,10**6)+Q(1,10**6), Q(1,10000))
    lt("exact_actual_upper_budget", Q(1,20000)+low+high+Q(3,800000000000), Q(1,10000))
    eq("psi_theta_threshold", (21*40000)**2, 705600000000)
    le("T_above_psi_theta_threshold", 705600000000, 800000000000)
    eq("theta_lower_error", Q(1,10000)+Q(1,40000), Q(1,8000))
    coeff=4095*Q(1,10000)+4096*Q(1,8000)
    eq("tail_coefficient", coeff, Q(1843,2000))
    lt("tail_coefficient_strict", coeff, 1)
    eq("tail_coefficient_margin", 1-coeff, Q(157,2000))
    le("tail_lower_covers_bridge_lower", Q(1,8000), Q(3,20000))
    eq("conditional_bridge_coefficient", 4096*Q(3,20000), Q(384,625))
    lt("conditional_bridge_coefficient_strict", Q(384,625), 1)
    eq("old_cutoff_softened_coefficient", 4095*Q(1,12000)+4096*Q(1,6480), Q(63073,64800))
    lt("old_cutoff_softened_coefficient_strict", Q(63073,64800), 1)
    eq("log18_lower_error", Q(1,20*18**2), Q(1,6480))
    eq("binomial_sum", sum(comb(8,j) for j in range(9)), 256)
    for k in range(8):
        eq(f"finite_difference_moment_{k}", sum((-1)**(8-j)*comb(8,j)*j**k for j in range(9)), 0)
    eq("finite_difference_moment_8", sum((-1)**(8-j)*comb(8,j)*j**8 for j in range(9)), factorial(8))
    eq("finite_difference_moment_9", sum((-1)**(8-j)*comb(8,j)*j**9 for j in range(9)), 4*factorial(9))
    # Structural cost bounds ONLY. No witnesses are generated, no primes tested.
    A=122568684; T=800000000000
    lratio,uratio=logcert("bridge_log_ratio", Q(T,A))
    ld,ud=logcert("single_witness_log_capacity", Q(4096,4095))
    lt("bridge_log_ratio_lt_9", uratio, 9)
    lower=lratio/ud; upper=uratio/ld
    if ceiling(lower)!=ceiling(upper):
        raise ArithmeticError("Precision insufficient for the witness lower bound")
    out["structural_cost_only"]={
        "minimum_distinct_witnesses_lower_bound": ceiling(lower),
        "bound_ratio_interval": {"lower":packed(lower),"upper":packed(upper)},
        "conditional_grid_max_cells":9*8194,
        "raw_40bit_prime_values_bytes_at_max_cells":9*8194*5,
        "positive_zero_count_upper_bound":2000000,
        "prime_witnesses_generated":0,"zeta_zeros_checked":0,
        "warning":"Grid witnesses and primality proofs NOT supplied; 2M is a count bound, not verified zero certificates."}
    le("grid_floor_growth_gate", 8192*8193, A)
    lt("prime_value_bit_budget", Q(T)*Q(4096,4095), 2**40)
    lt("N_H_lt_two_million", Q(10**6,2)*12/Q(157,50), 2000000)
    out["all_checks_passed"]=True
    out["check_count"]=len(checks)
    text=json.dumps(out,ensure_ascii=False,indent=2)+"\n"
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(text,encoding="utf-8")
        print(f"PASS: {len(checks)} scalar checks; exact JSON: {args.output}")
        print(f"Structural witness lower bound: {ceiling(lower)}; conditional grid cells <= {9*8194}.")
        print("Zero primes and zero zeta zeros checked. Lean not invoked.")
    else:
        print(text,end="")

if __name__=="__main__":
    main()

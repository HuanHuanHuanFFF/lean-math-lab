#!/usr/bin/env python3
"""Deterministically rebuild the round-8 finite certificates.

This does not prove the UFD theorem, auxiliary descent, or any unbounded
assertion by sampling. Those proofs are in PROOFS.md and the frozen dependency.
"""
from __future__ import annotations
import argparse
from fractions import Fraction
import json
from math import isqrt
from pathlib import Path
from arithmetic import pell, matpow
from pell_gate import bounded_gate


def make() -> dict[str, dict]:
    units = []
    for exponent in range(6):
        pairs = [(sign, k) for sign in (0, 1) for k in range(6)
                 if (3 * sign + 4 * k - exponent) % 6 == 0]
        sign, k = pairs[0]
        units.append({"unit_exponent_mod6": exponent,
                      "minus_sign_power": sign, "fourth_root_unit_exponent": k})
    quartic = {
        "V4_terms_a_y": [[4, 0, 1], [2, 1, -4], [0, 2, 2]],
        "identity": "V4(a,y)=2*(y-a^2)^2-a^4",
        "unit_normalizations": units,
        "trace_mod3_states": [
            {"a": a, "y": y, "V4_mod3": (a**4 - 4*a*a*y + 2*y*y) % 3}
            for a in range(3) for y in range(1, 3) if a*a % 3 == y
        ],
        "auxiliary_quartic_all_integer_solutions": [[1, 0], [-1, 0]],
        "scope_of_solution_assertion": "proved by coprime-halves argument, not finite enumeration",
    }
    C = ((7, 6), (8, 7))
    residues = []
    for k in range(12):
        t = 2*k + 1
        U, x, y, d = pell(t)
        residues.append({"index_mod24": t, "y_mod120": y % 120,
                         "x_mod32": x % 32, "delta_mod16": d % 16})
    periods = {
        "odd_step_matrix": C,
        "C4_mod32": matpow(C, 4, 32),
        "C12_mod120": matpow(C, 12, 120),
        "odd_index_residues": residues,
        "alpha10": [262087, 151316],
        "growth_square_gap": 262201**2 - 3*151316**2,
    }
    margin = Fraction(1022) - 21 * Fraction(11, 6)**6
    bounds = {
        "h_shift": "h=15+u, u>=0",
        "positive_margin_coefficients_ascending": [1, 52, 4],
        "positive_polynomial_identity": "(2*h-13)^2-16*(h+3)=4*u^2+52*u+1",
        "balanced_Q_bound": "Q < (11/6)*delta^2",
        "balanced_n_bound": "n < 2^10 * delta^9",
        "height_margin_num_den": [margin.numerator, margin.denominator],
        "integer_exponent_bound": "s <= floor((171*index+9)/10)",
    }
    fibres = {"meaning": "complete proved-height checks for these fixed indices only",
              "records": [bounded_gate(t) for t in (17, 41, 233)]}
    U, x, y, d = pell(41)
    factor = 367033
    assert y % factor == 0 and 1 < factor < y
    v = 2*y
    W = 3*y*(d-1)//2
    Q = d+v
    S, remainder = divmod(Q**5-d*d, v)
    assert remainder == 0
    root = isqrt(S)
    assert root*root < S < (root+1)**2
    failure = {
        "index": 41, "U": str(U), "x": str(x), "delta": str(d),
        "y": str(y), "proper_factor": factor, "cofactor": str(y//factor),
        "claim_refuted": "prime Pell index 1 mod8 implies prime Pell trace",
        "v": str(v), "W": str(W), "Q": str(Q),
        "norm_square_target": str(S), "floor_square_root": str(root),
        "lower_gap": str(S-root*root), "upper_gap": str((root+1)**2-S),
        "missing_original_conditions": ["single-prime trace", "integer positive norm recovery",
                                         "original n,j and all source conditions"],
        "not_an_NC3_counterexample": True,
    }
    _, _, mod_y, _ = pell(233)
    relaxed_root = 727376631525982771629554715132205684416757076476721888759870258385523255773547865344415166438041434387775123413660065197995069614981
    annihilator = (mod_y - 1)//2
    assert pow(2, annihilator, mod_y) == 1
    assert (relaxed_root*relaxed_root - 6*relaxed_root + 4) % mod_y == 0
    assert all(pow(relaxed_root*pow(c, -1, mod_y) % mod_y, annihilator, mod_y) == 1
               for c in (1,3))
    relaxed = {
        "index":233, "modulus_y":str(mod_y), "root":str(relaxed_root),
        "annihilator":str(annihilator),
        "exact_2_power_test":1, "exact_quadratic_residue":0,
        "exact_root_coset_power_tests":{"1":1,"3":1},
        "not_an_exact_order_certificate":True, "primality_asserted":False,
        "bounded_original_exponent_sets": {"1":[],"3":[]},
        "bounded_exponent_max":3985,
        "claim_refuted":"relaxed annihilator/root power tests imply a solution inside the original proved exponent bound",
        "not_an_NC3_counterexample":True,
    }
    return {"ram4_trace.json": quartic, "pell_periods.json": periods,
            "uniform_bounds.json": bounds, "bounded_fibres.json": fibres,
            "failure_prime_index.json": failure,
            "relaxed_orbit_failure.json":relaxed}


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--out", type=Path, required=True)
    args = p.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    for name, value in make().items():
        (args.out/name).write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n',
                                   encoding='utf-8')
    print("CERTIFICATES_REGENERATED=6")


if __name__ == '__main__':
    main()

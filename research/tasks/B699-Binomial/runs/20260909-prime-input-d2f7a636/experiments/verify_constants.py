#!/usr/bin/env python3
"""Exact arithmetic checks for the B699 prime-input paper derivation.

All pass/fail decisions use integers or fractions.Fraction. Decimal calculations
at the end are diagnostics only, not certificates for infinite families.
Run: python experiments/verify_constants.py > experiments/results.json
"""
from __future__ import annotations
from decimal import Decimal, localcontext
from fractions import Fraction as F
import json


def record(margin: F | int) -> dict[str, str | bool]:
    value = F(margin)
    return {"margin": str(value), "strictly_positive": value > 0}


def main() -> None:
    checks = {
        "positive_logX_coefficient": record(F(1, 2) - 2 * F(1, 112)),
        "r_bound_1_over_112": record(F(1, 112) - F(1, 120) - F(1, 2**16)),
        "rL_bound_15_over_7_times_log2": record(F(15, 7) - F(32, 15) - F(1, 256)),
        "log_remainder_bound": record(F(1, 100) - F(512, 2**256)),
        "final_logX_margin": record(11 * F(27, 56) - F(37, 7) - F(1, 100)),
        "derivative_domain_for_u_exp_minus_u_over_16": record(256 * F(1, 2) - 16),
        "derivative_domain_for_u_exp_minus_u": record(256 * F(1, 2) - 1),
        "wheel_denominator_positive_at_i185": record(13 - F(2400, 185)),
        "wheel_denominator_not_positive_at_i184": record(F(2400, 184) - 13),
        "old_Dusart_adapter_interval_denominator_margin": record(25 * 128**2 - 2047),
    }
    assert all(c["strictly_positive"] for c in checks.values())
    assert checks["final_logX_margin"]["margin"] == "11/1400"
    assert F(13, 77) * F(77, 13) == 1
    assert F(154, 13) * F(13, 77) == 2
    with localcontext() as ctx:
        ctx.prec = 60
        two = Decimal(2)
        l = two.ln()
        L = 256 * l
        R = Decimal(32) / Decimal(15) * l / L + two ** -16
        b = l + 2 * R * L + L / (two**256 - 1)
        a = Decimal("0.5") - 2 * R
        f = b / a
        asymptotic = {}
        for label, A in {
            "idealized_A_equal_1_not_asserted_as_valid_upper_bound": Decimal(1),
            "theta_log4_asymptotic_best_counting_coefficient": 2 * l,
            "selected_alpha_15_over_16": Decimal(32) / Decimal(15) * l,
            "mathlib_existing_sqrt_split": 4 * l,
        }.items():
            u = 4 * (4 * A).exp()
            asymptotic[label] = {
                "A": str(A), "U_infinity": str(u),
                "max_forward_relative_width_limit": str(1 / (u - 1)),
            }
        diagnostics = {
            "status": "Decimal diagnostics only; not used for pass/fail",
            "I_star_decimal_integer": str(2**256),
            "M_star_decimal_integer": str(2**257),
            "r_envelope_at_I_star": str(R),
            "F_over_log2_at_I_star": str(f / l),
            "U_envelope_at_I_star": str(f.exp()),
            "coarse_certified_F_over_log2": str((Decimal(37)/7 + Decimal(1)/100) / (Decimal(27)/56)),
            "linear_wheel_gap_exponent_cutoff": str(Decimal(13)/77),
            "linear_wheel_theta_point_5_power": str(Decimal("0.5") * Decimal(77)/13 - 1),
            "asymptotic_envelopes": asymptotic,
        }
    print(json.dumps({"exact_checks": checks, "diagnostics": diagnostics}, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()

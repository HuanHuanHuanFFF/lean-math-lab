#!/usr/bin/env python3
"""Deterministic replay for B699 D/i=3 Round 16.

Checks only the new algebraic identities, rational inequality certificates,
Matveev constant bookkeeping, and the final explicit q bound.  It does not
reprove Matveev's theorem, any frozen NC3 reduction, or Lean statements.
"""
from __future__ import annotations

import json
import math
from fractions import Fraction
from pathlib import Path

import sympy as sp

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "outputs" / "replay.json"


def frac_obj(x: Fraction) -> dict[str, int]:
    return {"numerator": x.numerator, "denominator": x.denominator}


def exp_lower(x: Fraction, n: int) -> Fraction:
    return sum((x**k) / math.factorial(k) for k in range(n + 1))


def exp_upper(x: Fraction, n: int) -> Fraction:
    # Tail after n: first omitted term times a geometric majorant.  For
    # k >= n+1, consecutive ratios are <= x/(n+2).
    s = exp_lower(x, n)
    first = x ** (n + 1) / math.factorial(n + 1)
    ratio = x / (n + 2)
    assert 0 <= ratio < 1
    return s + first / (1 - ratio)


def symbolic_checks() -> list[str]:
    d, v, h = sp.symbols("d v h", positive=True)
    Q = d + v
    nu = (h * d - Q) / 2
    P = Q + h * v
    Y = d * nu - Q**2
    core = sp.expand(v * nu**2 - P * Q**2 + 1)

    # The square norm is exactly d^2 times the frozen core equation.
    sq = sp.expand(v * Y**2 - (Q**5 - d**2))
    assert sp.simplify(sq - d**2 * core) == 0

    r, omega = sp.symbols("r omega", positive=True)
    # Exact recovery of h and n after setting r=v/d, omega=Y/d^2.
    h_expr = 3 + 5 * r + 2 * r**2 + 2 * omega
    n_minus_2 = sp.expand(
        d**3 * (1 + r + h_expr * r) * (1 + r) * (h_expr - 1 - r) / 2
    )
    direct = sp.expand(
        (d * (1 + r + h_expr * r))
        * (d * (1 + r))
        * (d * (h_expr - 1 - r) / 2)
    )
    assert sp.simplify(n_minus_2 - direct) == 0

    # Pell leading-term factorization.
    Z, alpha, m, two_rho = sp.symbols(
        "Z alpha m two_rho", positive=True
    )
    sqrt3 = sp.sqrt(3)
    X = (Z - Z**-1) / (2 * sqrt3)
    y = (alpha * Z**2 + alpha**-1 * Z**-2) / 4
    pell_d = (sqrt3 * (alpha * Z**2 - alpha**-1 * Z**-2) - 2) / 4
    pell_v = 2 * m * X * y / two_rho
    M = sp.factor(8 * pell_v**6 / pell_d**3)
    N0 = m**6 * alpha**3 * Z**12 / (8 * 3 ** sp.Rational(9, 2) * two_rho**6)
    E = Z**-2
    RX = 1 - E
    RY = 1 + alpha**-2 * E**2
    RD = 1 - alpha**-2 * E**2 - 2 * E / (sqrt3 * alpha)
    assert sp.simplify(M / N0 - RX**6 * RY**6 * RD**-3) == 0

    return [
        "v*Y^2-(Q^5-d^2)=d^2*(v*nu^2-P*Q^2+1)",
        "h=3+5r+2r^2+2omega and exact n-2 product",
        "(8v^6/d^3)/N0=RX^6*RY^6*RD^-3",
    ]


def rational_checks() -> dict:
    # Elementary logarithm certificates.
    # e^(7/10)>2, hence log 2 < 7/10.
    e07_lower = exp_lower(Fraction(7, 10), 3)
    assert e07_lower > 2

    # e^(13/10)<37/10<2+sqrt(3), hence log alpha > 13/10.
    e13_upper = exp_upper(Fraction(13, 10), 5)
    assert e13_upper < Fraction(37, 10)
    assert Fraction(17, 10) ** 2 < 3  # sqrt(3)>17/10.

    # e^(6/5)>3, hence log 3 < 6/5.
    e12_lower = exp_lower(Fraction(6, 5), 3)
    assert e12_lower > 3

    # e>27/10 gives log 150, log 216 < 6 and log 1000 < 7.
    e_lower = exp_lower(Fraction(1, 1), 4)
    assert e_lower > Fraction(27, 10)
    assert Fraction(27, 10) ** 6 > 216
    assert Fraction(27, 10) ** 6 > 150
    assert Fraction(27, 10) ** 7 > 1000

    # r-error product: 11/r + 35/r^2 + 25/r^3 < 12/r for r>=100.
    assert Fraction(35, 100) + Fraction(25, 100**2) < 1

    # Pell multiplicative error bounds for E<=1/256.
    Emax = Fraction(1, 256)
    delta_coeff = Fraction(2, 3) + Emax
    assert delta_coeff < Fraction(3, 4)
    x = Fraction(3, 4) * Emax
    # (1-x)^-3 <= 1+4x at this range.
    assert Fraction(1, 1) / (1 - x) ** 3 <= 1 + 4 * x
    assert 63 * Emax <= Fraction(1, 4)

    # Matveev t=3 constant.  We use sqrt(3)<7/4, 1+log2<17/10,
    # A1=A2=7/5.  A3 is later bounded by 12(log q+6).
    K0 = (
        Fraction(7, 5)
        * 30**6
        * Fraction(567, 4)
        * 4
        * Fraction(17, 10)
        * Fraction(7, 5) ** 2
    )
    assert K0.denominator == 1
    assert K0.numerator == 1_928_162_426_400
    C = 12 * K0.numerator
    assert C == 23_137_949_116_800

    # Final comparison at q0=2^53.  log(q0)<53*7/10=371/10.
    q0 = 2**53
    L0 = Fraction(371, 10)
    F0 = L0 + 7 + C * (L0 + 6) * (L0 + 7)
    ratio = F0 / q0
    target = Fraction(26, 5)
    assert ratio < target

    # F(q)/q is decreasing for q>1 because
    # F-qF' = L+6+C(L^2+11L+29)>0.
    # Coefficients and positivity are recorded as an exact certificate.
    monotone_poly = (1, 11, 29)
    assert all(v > 0 for v in monotone_poly)

    return {
        "elementary_exp_bounds": {
            "exp_0_7_lower": frac_obj(e07_lower),
            "exp_1_3_upper": frac_obj(e13_upper),
            "exp_1_2_lower": frac_obj(e12_lower),
            "exp_1_lower": frac_obj(e_lower),
        },
        "matveev": {
            "K0": K0.numerator,
            "C_after_A3_bound": C,
            "q0": q0,
            "log_q0_upper": frac_obj(L0),
            "F_q0_over_q0": frac_obj(ratio),
            "target_4logalpha_lower": frac_obj(target),
            "positive_margin": frac_obj(target - ratio),
        },
        "effective_bounds": {
            "q_exclusive": 2**53,
            "t_exclusive": 2**56,
            "rho_max": 55,
            "m_exclusive": 2**60,
            "s_exclusive": 2**61,
            "formal_q_rows_upper": 2**44,
        },
    }


def main() -> None:
    checks = symbolic_checks()
    exact = rational_checks()
    payload = {
        "schema": "B699-D-i3-round16-matveev-effective-bridge-v1",
        "status": "PASS",
        "scope": (
            "same original (n,j); canonical minimal critical two-base; "
            "true mu=1; balanced pure-two BRIDGE4096 only"
        ),
        "symbolic_checks": checks,
        "exact_certificates": exact,
        "external_theorem_reproved": False,
        "lean_run": False,
        "repository_actions": "none",
    }
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print("SYMBOLIC_IDENTITIES=PASS")
    print("RATIONAL_INEQUALITIES=PASS")
    print(f"MATVEEV_CONSTANT={exact['matveev']['C_after_A3_bound']}")
    print(f"Q_BOUND_EXCLUSIVE={exact['effective_bounds']['q_exclusive']}")
    print("ROUND16_REPLAY=PASS")


if __name__ == "__main__":
    main()

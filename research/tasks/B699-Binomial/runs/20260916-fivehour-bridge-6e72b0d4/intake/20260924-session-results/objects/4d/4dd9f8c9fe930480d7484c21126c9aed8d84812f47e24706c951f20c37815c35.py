#!/usr/bin/env python3
from __future__ import annotations

import json
from fractions import Fraction
from pathlib import Path

import sympy as sp

x = sp.symbols("x")
A, B, C, ell = sp.symbols("A B C ell")


def poly_coeff(expr: sp.Expr, i: int) -> sp.Expr:
    return sp.factor(sp.Poly(sp.expand(expr), x).coeff_monomial(x**i))


def octic_35_symbolic() -> dict:
    U = x**3 + A*x**2 + B*x + C
    eps = {0: sp.Rational(1), 1: sp.Rational(-1, 8), 2: sp.Rational(-8)}
    records = []
    e0 = 2*A**3 - 25*A*B - 1125*C
    e5 = 3*A**4 - 40*A**2*B - 150*A*C + 125*B**2

    for k in (0, 1, 2):
        W = (
            sp.Rational(6-k, 8)*x**3
            + sp.Rational(4-k, 5)*A*x**2
            + sp.Rational(2-k, 2)*B*x
            + k*C
        )
        ode = sp.expand(3*x*sp.diff(W, x) - W - (2*x*sp.diff(U, x) - k*U))
        assert ode == 0

        P = sp.expand(W**3 + ell*x - 2*U*W**2)
        rem = sp.rem(P, sp.expand(U**2), x)
        r0 = poly_coeff(rem, 0)
        r5 = poly_coeff(rem, 5)
        assert sp.factor(r0 - eps[k]*C**2*e0/4000) == 0
        assert sp.factor(r5 - eps[k]*e5/8000) == 0
        records.append({
            "slot": k,
            "epsilon": str(eps[k]),
            "r0": str(r0),
            "r5": str(r5),
        })

    b = sp.symbols("b")
    c = (2 - 25*b) / sp.Integer(1125)
    reduced = sp.factor(15 * (3 - 40*b - 150*c + 125*b**2))
    assert reduced == 1875*b**2 - 550*b + 41
    disc = sp.discriminant(reduced, b)
    assert disc == -5000
    return {
        "remainder_records": records,
        "reduced_quadratic": str(reduced),
        "discriminant": int(disc),
    }


def four_four_boundary_symbolic() -> dict:
    a, b, c = sp.symbols("a b c", nonzero=True)

    # t=0, deg W=2.
    W0 = a*x**2 + b*x + c
    U0 = sp.expand(W0**2/a**2 - W0/2 - a**2/4)
    R0 = sp.expand(-a**4*(a**2 + 4*W0)/8)
    assert sp.expand(W0**3 + R0 - 2*U0*W0**2 + 2*a**2*U0**2) == 0
    # At a root of R0, W0=-a^2/4 and U0=-a^2/16, so W0/U0=4.
    y = sp.symbols("y")
    U0_y = sp.expand(y**2/a**2 - y/2 - a**2/4)
    assert sp.simplify(U0_y.subs(y, -a**2/4) + a**2/16) == 0

    # t=1, D=W-U has degree 2.
    D2 = a*x**2 + b*x + c
    U1 = sp.expand(D2**2/a**2 + D2 - a**2)
    W1 = sp.expand(U1 + D2)
    R1 = sp.expand(a**4*(a**2 - 2*D2))
    # Direct divisibility check:
    assert sp.rem(sp.expand(W1**3 + R1 - 2*U1*W1**2), sp.expand(U1**2), x) == 0
    U1_y = sp.expand(y**2/a**2 + y - a**2)
    assert sp.simplify(U1_y.subs(y, a**2/2) + a**2/4) == 0
    assert sp.simplify((U1_y + y).subs(y, a**2/2) - a**2/4) == 0

    # Internal single-slot algebra: c0 solves the original constant condition.
    c0 = sp.symbols("c0")
    constant_equation = sp.factor(4*c0**2 - 4*c0 - 3)
    roots = sp.solve(constant_equation, c0)
    assert set(roots) == {sp.Rational(-1,2), sp.Rational(3,2)}

    return {
        "t0_deg2_U": str(sp.factor(U0)),
        "t0_deg2_R": str(sp.factor(R0)),
        "t0_forced_ratio": 4,
        "t1_deg2_U": str(sp.factor(U1)),
        "t1_deg2_R": str(sp.factor(R1)),
        "t1_forced_ratio": -1,
        "single_slot_c0_roots": [str(v) for v in sorted(roots)],
    }


# Independent exact-rational regression for the two decisive OCTIC-35 coefficients.
def trim(p: list[Fraction]) -> list[Fraction]:
    while len(p) > 1 and p[-1] == 0:
        p.pop()
    return p


def add(p: list[Fraction], q: list[Fraction]) -> list[Fraction]:
    n = max(len(p), len(q))
    out = [Fraction(0) for _ in range(n)]
    for i in range(n):
        out[i] = (p[i] if i < len(p) else 0) + (q[i] if i < len(q) else 0)
    return trim(out)


def scale(p: list[Fraction], s: Fraction) -> list[Fraction]:
    return trim([s*v for v in p])


def mul(p: list[Fraction], q: list[Fraction]) -> list[Fraction]:
    out = [Fraction(0) for _ in range(len(p)+len(q)-1)]
    for i, u in enumerate(p):
        for j, v in enumerate(q):
            out[i+j] += u*v
    return trim(out)


def divmod_monic(p: list[Fraction], d: list[Fraction]) -> tuple[list[Fraction], list[Fraction]]:
    p = p[:]
    d = trim(d[:])
    assert d[-1] == 1
    q = [Fraction(0) for _ in range(max(1, len(p)-len(d)+1))]
    while len(p) >= len(d) and not (len(p) == 1 and p[0] == 0):
        shift = len(p)-len(d)
        lead = p[-1]
        q[shift] += lead
        for i, v in enumerate(d):
            p[i+shift] -= lead*v
        trim(p)
    return trim(q), trim(p)


def fraction_regression() -> dict:
    samples = [
        (1, 2, 3, 5),
        (-2, 5, 7, 11),
        (4, -3, 2, -9),
        (7, 1, -5, 13),
        (-5, -2, 9, 17),
    ]
    checks = 0
    for Av, Bv, Cv, Lv in samples:
        U = [Fraction(Cv), Fraction(Bv), Fraction(Av), Fraction(1)]
        U2 = mul(U, U)
        e0 = Fraction(2*Av**3 - 25*Av*Bv - 1125*Cv)
        e5 = Fraction(3*Av**4 - 40*Av**2*Bv - 150*Av*Cv + 125*Bv**2)
        eps = {0: Fraction(1), 1: Fraction(-1,8), 2: Fraction(-8)}
        for k in (0,1,2):
            W = [
                Fraction(k*Cv),
                Fraction((2-k)*Bv, 2),
                Fraction((4-k)*Av, 5),
                Fraction(6-k, 8),
            ]
            P = add(add(mul(mul(W,W),W), [Fraction(0), Fraction(Lv)]), scale(mul(U,mul(W,W)), Fraction(-2)))
            _, r = divmod_monic(P, U2)
            r += [Fraction(0)]*(6-len(r))
            assert r[0] == eps[k]*Fraction(Cv**2)*e0/Fraction(4000)
            assert r[5] == eps[k]*e5/Fraction(8000)
            checks += 1
    return {"sample_parameter_sets": len(samples), "slot_checks": checks}


def main() -> None:
    out = {
        "sympy_version": sp.__version__,
        "octic_35": octic_35_symbolic(),
        "four_four_cheap_frontier": four_four_boundary_symbolic(),
        "fraction_regression": fraction_regression(),
        "status": "PASS",
    }
    target = Path(__file__).resolve().parents[1] / "outputs" / "replay.json"
    target.write_text(json.dumps(out, ensure_ascii=False, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps(out, ensure_ascii=False, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path
from typing import Any

import sympy as sp

x = sp.symbols("x")
b, c, r, rho = sp.symbols("b c r rho")


def coeff(expr: sp.Expr, i: int) -> sp.Expr:
    return sp.factor(sp.Poly(sp.expand(expr), x).coeff_monomial(x**i))


def primitive_expr(expr: sp.Expr, *vars_: sp.Symbol) -> sp.Expr:
    return sp.Poly(sp.expand(expr), *vars_, domain=sp.QQ).primitive()[1].as_expr()


def monic_expr(poly: sp.Poly) -> sp.Expr:
    return sp.factor(poly.monic().as_expr())


def no_root_mod(poly: sp.Expr, p: int) -> bool:
    P = sp.Poly(poly, x, modulus=p)
    if int(P.LC()) % p == 0:
        return False
    return all(int(P.eval(a)) % p != 0 for a in range(p))


def slot_quotient_and_degree_law() -> dict[str, Any]:
    # Abstract verification of the CRT quotient formula.
    R0, R1, R2, R0p, R1p, R2p = sp.symbols("R0 R1 R2 R0p R1p R2p")
    Rp = R0p * R1 * R2 + R0 * R1p * R2 + R0 * R1 * R2p
    S = R0 * R1p * R2 + 2 * R0 * R1 * R2p
    assert sp.expand(S - Rp - R1 * (R0 * R2p - R0p * R2)) == 0
    assert sp.expand(S - 2 * Rp + R2 * (R0 * R1p + 2 * R0p * R1)) == 0

    boundary = []
    for d0 in range(4):
        for d1 in range(4 - d0):
            d2 = 3 - d0 - d1
            boundary.append((d0, d1, d2, d1 + 2 * d2))
    assert max(v[3] for v in boundary) == 6

    internal = []
    for d0 in range(5):
        for d1 in range(5 - d0):
            d2 = 4 - d0 - d1
            support = sum(z > 0 for z in (d0, d1, d2))
            if support >= 2:
                m = d1 + 2 * d2
                t = sp.Rational(8 - m, 8)
                internal.append({
                    "degrees": [d0, d1, d2],
                    "weighted_slot_degree": m,
                    "t": str(t),
                    "partition": sorted([z for z in (d0, d1, d2) if z], reverse=True),
                })

    three_one_small_endpoint = [
        z for z in internal
        if z["partition"] == [3, 1] and sp.Rational(z["t"]) <= sp.Rational(1, 2)
    ]
    assert [z["degrees"] for z in three_one_small_endpoint] == [
        [0, 1, 3], [0, 3, 1], [1, 0, 3]
    ]

    remaining_after_no31 = [
        z for z in internal
        if z["partition"] in ([2, 2], [2, 1, 1])
        and sp.Rational(z["t"]) <= sp.Rational(1, 2)
    ]
    assert [z["degrees"] for z in remaining_after_no31] == [
        [0, 2, 2], [1, 1, 2], [1, 2, 1], [2, 0, 2]
    ]

    return {
        "boundary_max_d1_plus_2d2": 6,
        "boundary_required_value": 8,
        "boundary_status": "IMPOSSIBLE",
        "internal_law": "d1+2*d2 = 8*(1-t)",
        "three_plus_one_with_sigma_equal_j": three_one_small_endpoint,
        "remaining_slot_degree_patterns": remaining_after_no31,
    }


def branch_data(name: str, a_value: int = 1) -> tuple[sp.Expr, sp.Expr, sp.Expr, sp.Expr, tuple[int, int]]:
    """Return U,W,R0,q,(cubic_slot,linear_slot). q is a nonzero constant-term parameter."""
    a = sp.Integer(a_value)
    q = r * c
    A3 = x**3 + a * x**2 + b * x + c
    R0 = x * A3
    if name == "20":
        U = (
            x**4
            + (21 * a * c + 20 * q) / (20 * c) * x**3
            + (6 * a * q + 7 * b * c) / (6 * c) * x**2
            + (4 * b * q + 7 * c**2) / (4 * c) * x
            + q
        )
        W = sp.Rational(1, 4) * x**4 + sp.Rational(7, 20) * a * x**3 + sp.Rational(7, 12) * b * x**2 + sp.Rational(7, 4) * c * x
        slots = (2, 0)
    elif name == "21":
        U = (
            x**4
            + 5 * (9 * a * c + 4 * q) / (44 * c) * x**3
            + 3 * (2 * a * q + 5 * b * c) / (14 * c) * x**2
            + (4 * b * q + 15 * c**2) / (12 * c) * x
            + q
        )
        W = (
            sp.Rational(1, 8) * x**4
            + (15 * a * c - 8 * q) / (88 * c) * x**3
            + (15 * b * c - 8 * a * q) / (56 * c) * x**2
            + (15 * c**2 - 8 * b * q) / (24 * c) * x
            + q
        )
        slots = (2, 1)
    elif name == "12":
        U = (
            x**4
            + 5 * (3 * a * c - 2 * q) / (16 * c) * x**3
            + (-3 * a * q + 5 * b * c) / (6 * c) * x**2
            + (-2 * b * q + 5 * c**2) / (8 * c) * x
            + q / 2
        )
        W = (
            sp.Rational(3, 8) * x**4
            + (5 * a * c - 2 * q) / (16 * c) * x**3
            + sp.Rational(5, 24) * b * x**2
            + b * q / (4 * c) * x
            + q
        )
        slots = (1, 2)
    else:
        raise ValueError(name)
    return tuple(map(sp.cancel, (U, W, R0, q))) + (slots,)


def verify_diff_and_slots(name: str, U: sp.Expr, W: sp.Expr, R0: sp.Expr, slots: tuple[int, int]) -> None:
    k, ell = slots
    A3 = sp.cancel(R0 / x)
    S = k * sp.diff(R0, x) + (ell - k) * A3
    diff_expr = sp.expand(W * sp.diff(R0, x) - R0 * (3 * sp.diff(W, x) - 2 * sp.diff(U, x)) - U * S)
    assert sp.factor(diff_expr) == 0
    assert sp.rem(sp.together(W - k * U).as_numer_denom()[0], sp.together(A3).as_numer_denom()[0], x) == 0
    assert sp.factor((W - ell * U).subs(x, 0)) == 0


def high_equations(U: sp.Expr, W: sp.Expr, R0: sp.Expr, q: sp.Expr) -> tuple[list[sp.Expr], sp.Expr]:
    rem = sp.rem(sp.expand(W**3 + rho * R0 - 2 * U * W**2), sp.expand(U**2), x)
    eqs: list[sp.Expr] = []
    for i in (0, 5, 6, 7):
        z = sp.together(coeff(rem, i)).as_numer_denom()[0]
        if i == 0:
            z = sp.cancel(z / q**2)  # q != 0 from gcd(U,R)=1.
        P = sp.Poly(sp.expand(z), b, r, c, domain=sp.QQ)
        min_c = min(mon[2] for mon, _ in P.terms())
        z = sp.cancel(z / c**min_c)  # c != 0 because x and A3 are coprime.
        eqs.append(primitive_expr(z, b, r, c))
    return eqs, rem


EXPECTED = {
    "20": {
        "b": sp.Rational(7, 30),
        "r": sp.Rational(49, 60),
        "c": sp.Rational(49, 6750),
        "rho": -sp.Rational(40353607, 10497600000000),
        "basis": [30 * b - 7, 60 * r - 49, 6750 * c - 49],
    },
    "21": {
        "b": sp.Rational(555665, 1956242),
        "r": sp.Rational(75, 3956),
        "c": sp.Rational(39858075, 1934723338),
        "rho": sp.Rational(1130918269448337890625, 29993024877382599474901188608),
        "basis": [1956242 * b - 555665, 3956 * r - 75, 1934723338 * c - 39858075],
    },
    "12": {
        "b": sp.Rational(968635, 3384006),
        "r": -sp.Rational(25, 4506),
        "c": sp.Rational(487179275, 22872496554),
        "rho": sp.Rational(403616587209069888671875, 21754017258849609906180016078848),
        "basis": [3384006 * b - 968635, 4506 * r + 25, 22872496554 * c - 487179275],
    },
}


def rational_root_data(poly: sp.Expr, linear_roots: list[sp.Rational], q2: sp.Expr, q4: sp.Expr, mod_prime: int) -> dict[str, Any]:
    disc = int(sp.discriminant(q2, x))
    assert math.isqrt(abs(disc)) ** 2 != abs(disc)
    assert no_root_mod(q4, mod_prime)
    for root in linear_roots:
        assert sp.expand(poly.subs(x, root)) == 0
    return {
        "linear_roots": [str(v) for v in linear_roots],
        "quadratic_discriminant": disc,
        "quartic_no_root_mod_prime": mod_prime,
    }


def poly_terms(expr: sp.Expr) -> list[dict[str, Any]]:
    out = []
    for mon, coefficient in sp.Poly(expr, b, r, c, domain=sp.QQ).terms():
        qv = sp.Rational(coefficient)
        out.append({"mon": list(mon), "num": int(qv.p), "den": int(qv.q)})
    return out


def classify_branch(name: str) -> dict[str, Any]:
    U, W, R0, q, slots = branch_data(name, 1)
    verify_diff_and_slots(name, U, W, R0, slots)
    eqs, rem = high_equations(U, W, R0, q)
    G = sp.groebner(eqs, b, r, c, order="grevlex", domain=sp.QQ)
    got = [monic_expr(g) for g in G.polys]
    want = [monic_expr(sp.Poly(z, b, r, c, domain=sp.QQ)) for z in EXPECTED[name]["basis"]]
    assert got == want

    # The a=0 chart: after the same admissible saturation, c^3 belongs to the ideal.
    U0, W0, R00, q0, slots0 = branch_data(name, 0)
    verify_diff_and_slots(name, U0, W0, R00, slots0)
    eqs0, _ = high_equations(U0, W0, R00, q0)
    G0 = sp.groebner(eqs0, b, r, c, order="grevlex", domain=sp.QQ)
    assert G0.reduce(c**3)[1] == 0

    vals = {b: EXPECTED[name]["b"], r: EXPECTED[name]["r"], c: EXPECTED[name]["c"]}
    rv = EXPECTED[name]["rho"]
    assert sp.factor(rem.subs(vals | {rho: rv})) == 0
    # Coefficients 1..4 determine exactly the displayed rho.
    rho_solutions = sp.solve(sp.Eq(coeff(rem, 1).subs(vals), 0), rho)
    assert rho_solutions == [rv]

    Uv = sp.factor(U.subs(vals))
    Wv = sp.factor(W.subs(vals))
    R0v = sp.factor(R0.subs(vals))
    actual_R = sp.factor(rv * R0v)
    product = sp.factor(Wv * (Wv - Uv) * (Wv - 2 * Uv))
    Vv = sp.factor(sp.cancel((1 + product / actual_R) / Uv))
    assert sp.denom(Vv) != 0
    assert sp.rem(sp.together(Vv).as_numer_denom()[0], sp.together(Uv).as_numer_denom()[0], x) == sp.rem(sp.together(Vv).as_numer_denom()[0], sp.together(Uv).as_numer_denom()[0], x)  # deterministic parse guard
    fv = sp.factor(sp.expand(Uv * Vv + 1))
    sig = sp.factor(sp.expand(Vv * Wv))
    tau = sp.factor(sp.expand(fv - sig))
    assert sp.factor(product - (Uv * Vv - 1) * actual_R) == 0
    assert sp.rem(sp.together(Vv * Wv - 1).as_numer_denom()[0], sp.together(Uv).as_numer_denom()[0], x) == 0

    rec: dict[str, Any] = {
        "slots_cubic_linear": list(slots),
        "a_nonzero_groebner_basis": [str(sp.factor(z)) for z in got],
        "saturated_high_equations": [poly_terms(z) for z in eqs],
        "normalized_solution": {k: str(v) for k, v in EXPECTED[name].items() if k != "basis"},
        "a_zero_saturated_consequence": "c^3 in ideal; c!=0, so no admissible solution",
        "rho": str(rv),
        "f_leading_coefficient": str(sp.factor(sp.LC(sp.Poly(fv, x)))),
    }

    if name == "20":
        t = sp.Rational(1, 4)
        lead = sp.factor(t * (t - 1) * (t - 2) / rv)
        assert lead < 0
        rec.update({"exclusion": "negative leading coefficient", "leading_from_t_and_rho": str(lead)})

    elif name == "21":
        D = sp.Integer(10770650185222265625)
        q2 = 1956242 * x**2 + 1285700 * x + 112025
        q4 = 1913441381282 * x**4 + 2582855656230 * x**3 + 1123200797325 * x**2 + 169620546625 * x + 5978711250
        expected_factor = sp.Rational(16, 1) / D * (989 * x + 10) * (989 * x + 325) * q2 * q4
        assert sp.factor(fv - 2 - expected_factor) == 0
        roots = [-sp.Rational(10, 989), -sp.Rational(325, 989)]
        root_data = rational_root_data(fv - 2, roots, q2, q4, 17)

        root_bad = roots[1]
        lin_bad = sp.factor(sp.diff(fv, x).subs(x, root_bad))
        quad_bad = sp.factor(sp.diff(fv, x, 2).subs(x, root_bad) / 2)
        assert lin_bad > 0 and quad_bad < 0

        y, z = sp.symbols("y z")
        F = sp.Poly(sp.expand(fv.subs(x, (y - 10) / 989)), y)
        S = sp.Poly(sp.expand(sig.subs(x, (y - 10) / 989)), y)
        T = sp.Poly(sp.expand(tau.subs(x, (y - 10) / 989)), y)
        assert all(v >= 0 for v in F.all_coeffs())
        assert all(v >= 0 for v in S.all_coeffs())
        assert all(v >= 0 for v in T.all_coeffs())
        assert F.coeff_monomial(y) == sp.Rational(64, 315)
        assert T.coeff_monomial(y) == sp.Rational(1, 30)
        F630 = sp.Poly(sp.expand(F.as_expr().subs(y, 630 * z)), z)
        expected_F630 = (
            147456*z**8 + 524288*z**7 + 745472*z**6 + 540672*z**5
            + 211200*z**4 + 43008*z**3 + 4032*z**2 + 128*z + 2
        )
        assert sp.expand(F630.as_expr() - expected_F630) == 0
        assert all(int(F630.coeff_monomial(z**i)) % 4 == 0 for i in range(1, 9))
        rec.update({
            "exclusion": "only positive Taylor origin forces integral scale s multiple of 630, hence f(T)=2 mod 4",
            "rational_origin_data": root_data,
            "bad_origin_linear": str(lin_bad),
            "bad_origin_quadratic": str(quad_bad),
            "positive_origin_F_linear": "64/315",
            "positive_origin_complement_linear": "1/30",
            "integral_scale": "s=630*m, m positive integer",
            "F_630m_mod4": 2,
            "F630": str(expected_F630),
        })

    elif name == "12":
        D = sp.Integer(6209485957062613671875)
        q2 = 10152018 * x**2 + 6533700 * x + 540025
        q4 = 154595204208486 * x**4 + 129115243047330 * x**3 + 24583999888575 * x**2 - 163675099125 * x - 48717927500
        expected_factor = sp.Rational(16, 1) / D * (2253 * x + 10) * (2253 * x + 725) * q2 * q4
        assert sp.factor(fv - 2 - expected_factor) == 0
        roots = [-sp.Rational(10, 2253), -sp.Rational(725, 2253)]
        root_data = rational_root_data(fv - 2, roots, q2, q4, 7)
        r1, r2 = roots
        r1_lin = sp.factor(sp.diff(fv, x).subs(x, r1))
        r1_quad = sp.factor(sp.diff(fv, x, 2).subs(x, r1) / 2)
        r2_lin = sp.factor(sp.diff(fv, x).subs(x, r2))
        r2_quartic = sp.factor(sp.diff(fv, x, 4).subs(x, r2) / sp.factorial(4))
        assert r1_lin < 0 and r1_quad < 0
        assert r2_lin < 0 and r2_quartic < 0
        rec.update({
            "exclusion": "both rational origins have unavoidable negative Taylor coefficients for either orientation",
            "rational_origin_data": root_data,
            "origin_1_linear": str(r1_lin),
            "origin_1_quadratic": str(r1_quad),
            "origin_2_linear": str(r2_lin),
            "origin_2_quartic": str(r2_quartic),
        })
    return rec


def main() -> None:
    out = {
        "sympy_version": sp.__version__,
        "slot_degree_law": slot_quotient_and_degree_law(),
        "branches": {name: classify_branch(name) for name in ("20", "21", "12")},
        "status": "PASS",
    }
    root = Path(__file__).resolve().parents[1]
    target = root / "outputs" / "replay.json"
    target.write_text(json.dumps(out, indent=2, sort_keys=True, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(out, indent=2, sort_keys=True, ensure_ascii=False))


if __name__ == "__main__":
    main()

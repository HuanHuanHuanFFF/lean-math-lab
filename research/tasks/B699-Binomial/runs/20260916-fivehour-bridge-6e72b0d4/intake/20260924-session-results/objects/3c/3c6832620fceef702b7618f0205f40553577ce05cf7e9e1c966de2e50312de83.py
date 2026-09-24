#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path
import sympy as sp
from sympy.polys.matrices import DomainMatrix

x = sp.symbols("x")
a, b = sp.symbols("a b")
u3, u2, u1, u0 = sp.symbols("u3 u2 u1 u0")
w4, w3, w2, w1, w0 = sp.symbols("w4 w3 w2 w1 w0")
unknowns = [u3, u2, u1, u0, w4, w3, w2, w1, w0]
U = x**4 + u3*x**3 + u2*x**2 + u1*x + u0
W = w4*x**4 + w3*x**3 + w2*x**2 + w1*x + w0
A = x**2 + a*x + b


def analyze(name: str, factors: list[sp.Expr], expected_t: sp.Rational, denominator: sp.Expr) -> dict:
    R = sp.expand(factors[0] * factors[1] * factors[2])
    S = sp.expand(factors[0] * sp.diff(factors[1], x) * factors[2] + 2*factors[0]*factors[1]*sp.diff(factors[2], x))
    ode = sp.Poly(sp.expand(W*sp.diff(R, x) - R*(3*sp.diff(W, x)-2*sp.diff(U, x)) - U*S), x)
    equations = [ode.coeff_monomial(x**i) for i in range(8)]
    for slot, factor in enumerate(factors):
        if sp.degree(factor, x) > 0:
            rem = sp.Poly(sp.rem(W-slot*U, factor, x), x)
            equations.extend(rem.coeff_monomial(x**i) for i in range(sp.degree(factor, x)))
    M, rhs = sp.linear_eq_to_matrix(equations, unknowns)
    augmented = M.row_join(rhs)
    rref, pivots = DomainMatrix.from_Matrix(augmented).to_field().rref()
    matrix = rref.to_Matrix()
    assert pivots == (0,1,2,3,4,5,6,8)
    assert matrix[4, -1] == expected_t and matrix[7, -1] == 0
    assert matrix[:, 7] != sp.zeros(matrix.rows, 1)  # w1 remains free.
    return {
        "name": name,
        "slot_degrees": [int(sp.degree(z, x)) for z in factors],
        "t": str(expected_t),
        "linear_equations": len(equations),
        "unknown_coefficients": [str(z) for z in unknowns],
        "pivot_columns": [int(z) for z in pivots],
        "free_linear_parameter": "w1",
        "geometric_parameters_before_U2": ["a", "b", "w1"],
        "parameters_after_adding_R_scale": ["a", "b", "w1", "rho"],
        "generic_denominator": str(sp.factor(denominator)),
        "degenerate_chart_required": True,
        "w4": str(matrix[4, -1]),
        "w0": str(matrix[7, -1]),
    }


def main() -> None:
    records = [
        analyze(
            "slots (d0,d1,d2)=(1,1,2)",
            [x, x-1, A],
            sp.Rational(3,8),
            b*(18*a+15*b+20),
        ),
        analyze(
            "slots (d0,d1,d2)=(1,2,1)",
            [x, A, x-1],
            sp.Rational(1,2),
            15*a**2+18*a*b+8*a-8*b,
        ),
    ]
    out = {
        "interpretation": "2+1+1 is the cheapest remaining octic family: on each generic chart DIFF and slot conditions leave a,b,w1 plus the R scale rho; each denominator-zero chart must be treated separately.",
        "records": records,
        "status": "PASS",
    }
    root = Path(__file__).resolve().parents[1]
    (root / "outputs" / "next_probe.json").write_text(json.dumps(out, indent=2, sort_keys=True)+"\n", encoding="utf-8")
    print(json.dumps(out, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()

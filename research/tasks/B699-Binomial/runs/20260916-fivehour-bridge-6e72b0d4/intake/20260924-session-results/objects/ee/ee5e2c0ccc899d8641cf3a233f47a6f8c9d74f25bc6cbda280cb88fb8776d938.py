#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path
import sympy as sp

x = sp.symbols("x")
a,b,c,rho = sp.symbols("a b c rho")
u3,u2,u1,u0 = sp.symbols("u3 u2 u1 u0")
w4,w3,w2,w1,w0 = sp.symbols("w4 w3 w2 w1 w0")
U = x**4+u3*x**3+u2*x**2+u1*x+u0
W = w4*x**4+w3*x**3+w2*x**2+w1*x+w0
A3 = x**3+a*x**2+b*x+c
R0 = x*A3
unknowns=[u3,u2,u1,u0,w4,w3,w2,w1,w0]


def branch(k: int, l: int) -> dict:
    S = k*sp.diff(R0,x)+(l-k)*A3
    ode = sp.Poly(sp.expand(W*sp.diff(R0,x)-R0*(3*sp.diff(W,x)-2*sp.diff(U,x))-U*S),x)
    eqs=[ode.coeff_monomial(x**i) for i in range(9)]
    remA=sp.Poly(sp.rem(W-k*U,A3,x),x)
    eqs += [remA.coeff_monomial(x**i) for i in range(3)]
    eqs += [w0-l*u0]
    sol=list(sp.linsolve(eqs,unknowns))[0]
    sd=dict(zip(unknowns,sol))
    Us=sp.cancel(U.subs(sd)); Ws=sp.cancel(W.subs(sd))
    rem=sp.rem(sp.expand(Ws**3+rho*R0-2*Us*Ws**2),sp.expand(Us**2),x)
    stats=[]; all_free=set()
    for i in range(8):
        num=sp.expand(sp.together(sp.Poly(rem,x).coeff_monomial(x**i)).as_numer_denom()[0])
        syms=sorted(num.free_symbols-{x}, key=lambda z:z.name)
        poly=sp.Poly(num,*syms) if num != 0 else None
        stats.append({
            "remainder_coefficient": i,
            "total_degree": 0 if poly is None else poly.total_degree(),
            "monomials": 0 if poly is None else len(poly.terms()),
        })
        all_free |= num.free_symbols
    return {
        "ordered_slots": [k,l],
        "free_parameters": sorted(z.name for z in all_free-{x}),
        "equations": 8,
        "max_total_degree": max(s["total_degree"] for s in stats),
        "max_monomials_one_equation": max(s["monomials"] for s in stats),
        "total_monomials": sum(s["monomials"] for s in stats),
        "coefficient_stats": stats,
    }


def main() -> None:
    records=[branch(k,l) for k,l in [(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]]
    out={"branch":"internal 4+4, quartic R slot totals 3+1", "records":records, "status":"PASS"}
    target=Path(__file__).resolve().parents[1]/"outputs"/"cost_probe.json"
    target.write_text(json.dumps(out,indent=2,sort_keys=True)+"\n",encoding="utf-8")
    print(json.dumps(out,indent=2,sort_keys=True))

if __name__=="__main__":
    main()

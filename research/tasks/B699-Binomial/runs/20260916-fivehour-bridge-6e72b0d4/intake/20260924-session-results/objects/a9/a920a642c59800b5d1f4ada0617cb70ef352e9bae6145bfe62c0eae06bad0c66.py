#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path
from typing import Any

import sympy as sp

x = sp.symbols("x")


def primitive(expr: sp.Expr, *vars_: sp.Symbol) -> sp.Expr:
    num = sp.together(expr).as_numer_denom()[0]
    return sp.factor(sp.Poly(sp.expand(num), *vars_, domain=sp.QQ).primitive()[1].as_expr())


def no_root_mod(poly: sp.Expr, var: sp.Symbol, prime: int) -> tuple[bool, list[int]]:
    P = sp.Poly(poly, var, modulus=prime)
    vals = [int(P.eval(i)) % prime for i in range(prime)]
    return int(P.LC()) % prime != 0 and all(vals), vals


def verify_slot_system(U: sp.Expr, W: sp.Expr, factors: list[sp.Expr]) -> None:
    R = sp.expand(sp.prod(factors))
    S = sp.expand(
        factors[0] * sp.diff(factors[1], x) * factors[2]
        + 2 * factors[0] * factors[1] * sp.diff(factors[2], x)
    )
    diff = sp.factor(
        W * sp.diff(R, x) - R * (3 * sp.diff(W, x) - 2 * sp.diff(U, x)) - U * S
    )
    assert diff == 0
    for slot, factor in enumerate(factors):
        if sp.degree(factor, x) > 0:
            assert sp.factor(sp.rem(W - slot * U, factor, x)) == 0


def interpolation_Q(U: sp.Expr, congruences: list[tuple[sp.Expr, sp.Expr]]) -> tuple[sp.Expr, sp.Expr]:
    """Return a quadratic Q from the first three scalar equations and the fourth residual."""
    q0, q1, q2 = sp.symbols("q0 q1 q2")
    Q = q2 * x**2 + q1 * x + q0
    equations: list[sp.Expr] = []
    for expr, factor in congruences:
        rem = sp.rem(expr.subs({sp.Symbol("Q_PLACEHOLDER"): Q}) if False else expr, factor, x)
        equations.extend(sp.Poly(rem, x).coeff_monomial(x**i) for i in range(sp.degree(factor, x)))
    sol = sp.solve(equations[:3], [q0, q1, q2], dict=True, simplify=False)[0]
    residual = sp.factor(sp.together(equations[3].subs(sol)).as_numer_denom()[0])
    return sp.factor(Q.subs(sol)), residual


def quotient_coefficients(U: sp.Expr, W: sp.Expr, t: sp.Rational, Q: sp.Expr, R: sp.Expr) -> list[sp.Expr]:
    Z = sp.cancel(W - t * U)
    c = 3 * t - 2
    H = sp.cancel(Z**3 + c * U * Z**2 - U**2 * Q)
    num = sp.together(H).as_numer_denom()[0]
    quo, rem = sp.div(sp.Poly(num, x), sp.Poly(R, x))
    assert sp.factor(rem.as_expr()) == 0
    return [sp.factor(quo.coeff_monomial(x**i)) for i in range(quo.degree() + 1)]


def graph_a() -> dict[str, Any]:
    a, b, s = sp.symbols("a b s")
    E = 18 * a + 15 * b + 20
    A = x**2 + a * x + b
    factors = [x, x - 1, A]

    u3 = (468*a**2*b + 390*a*b**2 + 750*a*b + 400*a*s + 105*b**2 + 200*b*s + 300*b + 480*s)/(24*b*E)
    u2 = (234*a**2*b + 432*a**2*s + 663*a*b**2 + 216*a*b*s - 168*a*b + 224*a*s + 468*b**3 + 366*b**2 - 32*b*s - 600*b - 384*s)/(24*b*E)
    u1 = -(156*a**2*b + 96*a**2*s - 192*a*b*s + 200*a*b + 128*a*s - 39*b**3 - 120*b**2*s - 100*b**2 - 224*b*s)/(8*b*E)
    u0 = -(78*a*b + 48*a*s + 39*b**2 + 100*b + 64*s)/(4*E)
    w3 = (234*a**2*b + 195*a*b**2 + 252*a*b + 80*a*s - 24*b**2 + 40*b*s + 96*s)/(24*b*E)
    w2 = (144*a**2*s + 390*a*b**2 + 72*a*b*s + 160*a*s + 351*b**3 + 420*b**2 - 64*b*s)/(24*b*E)
    U = sp.cancel(x**4 + u3*x**3 + u2*x**2 + u1*x + u0)
    W = sp.cancel(sp.Rational(3, 8)*x**4 + w3*x**3 + w2*x**2 + s*x)
    verify_slot_system(U, W, factors)

    q0, q1, q2 = sp.symbols("q0 q1 q2")
    Qv = q2*x**2 + q1*x + q0
    equations = [256*Qv.subs(x, 0) + 45*U.subs(x, 0), 256*Qv.subs(x, 1) + 25*U.subs(x, 1)]
    remA = sp.rem(256*Qv - 507*U, A, x)
    equations += [sp.Poly(remA, x).coeff_monomial(x**i) for i in range(2)]
    M, rhs = sp.linear_eq_to_matrix(equations, [q0, q1, q2])
    left = M.T.nullspace()
    assert len(left) == 1
    compatibility = sp.factor(sp.together((left[0].T * rhs)[0]).as_numer_denom()[0])
    F = -6084*a**2*b - 5070*a*b**2 + 8970*a*b + (10928*a + 30040*b + 6560)*s + 26715*b**2 + 10500*b
    assert sp.factor(compatibility / ((a+b+1)*F)) in (1, -1)

    C = 1366*a + 3755*b + 820
    F0 = sp.factor(F.subs(s, 0))
    c0_sub = sp.factor(sp.together(F0.subs(a, -(3755*b+820)/1366)).as_numer_denom()[0])
    qb = 3172975*b**2 + 1483469*b - 289500
    assert sp.factor(c0_sub / (-4710*b*qb)) == 1
    qb_disc = int(sp.discriminant(qb, b))
    assert qb_disc == 5874985323961 and math.isqrt(qb_disc)**2 != qb_disc

    ssol = sp.cancel((6084*a**2*b + 5070*a*b**2 - 8970*a*b - 26715*b**2 - 10500*b)/(10928*a + 30040*b + 6560))
    Ug = sp.cancel(U.subs(s, ssol)); Wg = sp.cancel(W.subs(s, ssol))
    equations_g = [sp.cancel(e.subs(s, ssol)) for e in equations]
    solQ = sp.solve(equations_g[:3], [q0, q1, q2], dict=True, simplify=False)[0]
    assert sp.factor(equations_g[3].subs(solQ)) == 0
    Qg = sp.cancel(Qv.subs(solQ))
    coeffs = quotient_coefficients(Ug, Wg, sp.Rational(3, 8), Qg, x*(x-1)*A)
    P5 = primitive(coeffs[5], a, b)
    P6full = primitive(coeffs[6], a, b)
    P6 = sp.factor(P6full / C)
    resultant = sp.factor(sp.resultant(P5, P6, a))
    h9 = (
        130516915360000000000*b**9 - 28751370489400000000000*b**8
        + 151392474842604091200000*b**7 - 314981866881061417088064*b**6
        + 1969542927548718694139214*b**5 + 462719748624071766745671*b**4
        + 33825961912353262177500*b**3 - 1747818582217382317500*b**2
        + 15632759909175750000*b - 39788323368750000
    )
    const = 32026664252495430281811103580160000
    assert sp.factor(resultant - const*qb**6*h9) == 0
    h9_no_root, h9_vals = no_root_mod(h9, b, 19)
    assert h9_no_root

    # Degenerate E=0 chart.
    c = sp.symbols("c")
    ad = -(15*b+20)/18
    u3d = -5*(1755*b**3 - 5481*b**2 + 6480*b*c - 108*b - 1728*c + 800)/(648*b*(15*b-4))
    u2d = (-40365*b**3 + 58320*b**2*c - 222372*b**2 + 165888*b*c + 27936*b - 48384*c + 22400)/(1296*b*(15*b-4))
    u1d = -(-45981*b**3 + 38880*b**2*c - 37098*b**2 + 22032*b*c + 9360*b - 8640*c + 4000)/(324*b*(15*b-4))
    u0d = (-4095*b**2 + 3240*b*c + 456*b - 864*c + 400)/(36*(15*b-4))
    w3d = -(8775*b**3 - 2916*b**2 + 12960*b*c - 2736*b - 3456*c + 1600)/(1296*b*(15*b-4))
    w1d = -b*(39*b-20)/(4*(15*b-4))
    Ud = sp.cancel(x**4+u3d*x**3+u2d*x**2+u1d*x+u0d)
    Wd = sp.cancel(sp.Rational(3,8)*x**4+w3d*x**3+c*x**2+w1d*x)
    Ad = x**2+ad*x+b
    verify_slot_system(Ud, Wd, [x, x-1, Ad])
    q0d,q1d,q2d = sp.symbols("q0d q1d q2d")
    Qvd=q2d*x**2+q1d*x+q0d
    ed=[256*Qvd.subs(x,0)+45*Ud.subs(x,0),256*Qvd.subs(x,1)+25*Ud.subs(x,1)]
    rem=sp.rem(256*Qvd-507*Ud,Ad,x); ed += [sp.Poly(rem,x).coeff_monomial(x**i) for i in range(2)]
    Md,rhsd=sp.linear_eq_to_matrix(ed,[q0d,q1d,q2d]); ld=Md.T.nullspace(); assert len(ld)==1
    compd=sp.factor(sp.together((ld[0].T*rhsd)[0]).as_numer_denom()[0])
    Fd=114075*b**3-5562297*b**2+(5086800*b-1356480)*c+606420*b+628000
    assert sp.factor(compd/(18*(3*b-2)*Fd))==1
    cd=sp.cancel(-(114075*b**3-5562297*b**2+606420*b+628000)/(5086800*b-1356480))
    Uds=sp.cancel(Ud.subs(c,cd)); Wds=sp.cancel(Wd.subs(c,cd)); eds=[sp.cancel(z.subs(c,cd)) for z in ed]
    solqd=sp.solve(eds[:3],[q0d,q1d,q2d],dict=True,simplify=False)[0]; assert sp.factor(eds[3].subs(solqd))==0
    Qd=sp.cancel(Qvd.subs(solqd)); kd=quotient_coefficients(Uds,Wds,sp.Rational(3,8),Qd,x*(x-1)*Ad)
    P1d=primitive(kd[1],b); P2d=primitive(kd[2],b)
    P1m=sp.Poly(P1d,b,modulus=7); P2m=sp.Poly(P2d,b,modulus=7)
    bez_s=-2*b**7+2*b**6+2*b**5+2*b**4+b**3+3*b**2-b+2
    bez_t=-2*b**7-2*b**6+3*b**5-2*b**4+3*b**3-3*b**2-2*b-3
    assert sp.Poly(bez_s*P1m.as_expr()+bez_t*P2m.as_expr(),b,modulus=7).as_expr()==1
    assert int(P1m.LC())%7!=0 and int(P2m.LC())%7!=0

    # Special b=4/15 gives a direct inconsistent linear combination of the 8 DIFF coefficient equations.
    bs=sp.Rational(4,15); aas=sp.Rational(-4,3)
    uu3,uu2,uu1,uu0,ww4,ww3,ww2,ww1,ww0=sp.symbols("uu3 uu2 uu1 uu0 ww4 ww3 ww2 ww1 ww0")
    Us=x**4+uu3*x**3+uu2*x**2+uu1*x+uu0; Ws=ww4*x**4+ww3*x**3+ww2*x**2+ww1*x+ww0
    As=x**2+aas*x+bs; Rs=x*(x-1)*As; Ss=x*As+2*x*(x-1)*sp.diff(As,x)
    diffpoly=sp.Poly(sp.expand(Ws*sp.diff(Rs,x)-Rs*(3*sp.diff(Ws,x)-2*sp.diff(Us,x))-Us*Ss),x)
    deqs=[diffpoly.coeff_monomial(x**i) for i in range(8)]
    weights=[4725,6750,7500,8040,8400,8672,8896,9088]
    contradiction=sp.factor(sum(w*e for w,e in zip(weights,deqs)))
    assert contradiction == sp.Rational(256,15)

    return {
        "generic_denominator": str(E),
        "compatibility": str(sp.factor((a+b+1)*F)),
        "C_zero_quadratic": str(qb),
        "C_zero_discriminant": qb_disc,
        "generic_resultant": str(resultant),
        "h9_coefficients_high_to_low": [int(z) for z in sp.Poly(h9,b).all_coeffs()],
        "h9_mod19_values": h9_vals,
        "E_zero_mod7_bezout": {"s": str(bez_s), "t": str(bez_t)},
        "special_b_4_15_contradiction": str(contradiction),
        "status": "NO_RATIONAL_SOLUTION",
    }


def graph_b() -> dict[str, Any]:
    a,b,s=sp.symbols("a b s")
    D=15*a**2+18*a*b+8*a-8*b
    A=x**2+a*x+b
    factors=[x,A,x-1]
    u3=-(-15*a**3-18*a**2*b+7*a**2+47*a*b+10*a*s+9*a+30*b**2+20*b*s+6*b)/D
    u2=-(36*a**3+51*a**2*b+18*a**2*s+24*a**2+18*a*b**2+36*a*b*s-58*a*b-16*a*s-68*b**2-56*b*s-36*b)/(2*D)
    u1=(9*a**2*b+30*a**2*s+48*a*b*s+6*a*b+16*a*s-36*b**3-24*b**2*s-12*b**2-16*b*s)/(2*D)
    u0=3*b**2*(3*a+6*b+4*s+2)/D
    w3=-(-15*a**3-18*a**2*b+13*a**2+50*a*b+8*a*s+12*a+24*b**2+16*b*s)/(2*D)
    w2=-(27*a**3+30*a**2*b+6*a**2*s+18*a**2+12*a*b*s-44*a*b-16*a*s-40*b**2-32*b*s-24*b)/(2*D)
    U=sp.cancel(x**4+u3*x**3+u2*x**2+u1*x+u0)
    W=sp.cancel(sp.Rational(1,2)*x**4+w3*x**3+w2*x**2+s*x)
    verify_slot_system(U,W,factors)
    F=-9*a**2+3*a*b+(18*a+4*b)*s-3*a+6*b**2+14*b
    compatibility=sp.factor(U.subs(x,0)*A.subs(x,1)+9*b*U.subs(x,1))
    assert sp.factor(compatibility*D/(3*b*(a+b+1)*F))==1
    C=9*a+2*b
    assert sp.factor(F.subs({b:-sp.Rational(9,2)*a,s:0}))==33*a*(3*a-2)
    ssol=sp.cancel((9*a**2-3*a*b+3*a-6*b**2-14*b)/(18*a+4*b))
    Ug=sp.cancel(U.subs(s,ssol)); Wg=sp.cancel(W.subs(s,ssol)); Ag=A
    q=sp.cancel(-Ug.subs(x,0)/(4*b)); Q=sp.cancel(q*Ag)
    kg=quotient_coefficients(Ug,Wg,sp.Rational(1,2),Q,x*(x-1)*Ag)
    P6=primitive(kg[6],a,b)
    expected=-(9*a+2*b)*(9*a**2-174*a*b-32*b**2)
    assert sp.factor(P6/expected)==1
    disc=sp.discriminant(9*sp.Symbol("r")**2-174*sp.Symbol("r")-32,sp.Symbol("r"))
    assert disc==31428 and sp.factor(disc)==324*97

    # D=0 chart.
    c=sp.symbols("c")
    bd=sp.cancel(a*(15*a+8)/(8-18*a))
    u3d=(54*a**3+15*a**2+180*a*c+218*a-80*c-72)/(2*(3*a-8)*(9*a-4))
    u2d=(207*a**4+324*a**3*c-36*a**3-324*a**2*c-170*a**2-784*a*c+40*a+384*c+64)/(4*(a+2)*(3*a-8)*(9*a-4))
    u1d=-(3537*a**5+3240*a**4*c+3933*a**4+828*a**3*c+1884*a**3-720*a**2*c+376*a**2-128*a*c-96*a-256)/(2*(a+2)*(3*a-8)*(9*a-4)**2)
    u0d=a*(15*a+8)**2*(21*a**2+18*a*c+7*a-8*c-4)/(4*(a+2)*(3*a-8)*(9*a-4)**2)
    w3d=(27*a**3-27*a**2+72*a*c+144*a-32*c-48)/(2*(3*a-8)*(9*a-4))
    w1d=(9*a**2+9*a+4)/(2*(9*a-4))
    Ud=sp.cancel(x**4+u3d*x**3+u2d*x**2+u1d*x+u0d)
    Wd=sp.cancel(sp.Rational(1,2)*x**4+w3d*x**3+c*x**2+w1d*x)
    Ad=x**2+a*x+bd
    verify_slot_system(Ud,Wd,[x,Ad,x-1])
    Fd=1143*a**3+(1188*a**2-1320*a+352)*c-192*a**2+652*a-400
    compd=sp.factor(Ud.subs(x,0)*Ad.subs(x,1)+9*bd*Ud.subs(x,1))
    # Strip the nonzero rational denominator before matching the displayed numerator factors.
    compd_num=sp.factor(sp.together(compd).as_numer_denom()[0])
    expected_factors=-a*(3*a-4)*(15*a+8)*Fd
    assert sp.factor(compd_num/expected_factors)==1
    assert sp.factor(Fd.subs(a,sp.Rational(2,3)))==288
    cd=sp.cancel(-(1143*a**3-192*a**2+652*a-400)/(1188*a**2-1320*a+352))
    Uds=sp.cancel(Ud.subs(c,cd)); Wds=sp.cancel(Wd.subs(c,cd)); Ads=Ad
    qd=sp.cancel(-Uds.subs(x,0)/(4*bd)); Qd=sp.cancel(qd*Ads)
    kd=quotient_coefficients(Uds,Wds,sp.Rational(1,2),Qd,x*(x-1)*Ads)
    P1=primitive(kd[1],a); P2=primitive(kd[2],a)
    # Remove explicit admissible factors from the first two equations.
    P1=sp.factor(P1/(-a*(9*a-4)**2*(15*a+8)**2))
    P2=sp.factor(P2/((9*a-4)**2))
    P1m=sp.Poly(P1,a,modulus=7); P2m=sp.Poly(P2,a,modulus=7)
    bez_s=2*a**5-2*a**4+a**3-2*a**2+a+3
    bez_t=-2*a**2+2*a-1
    assert sp.Poly(bez_s*P1m.as_expr()+bez_t*P2m.as_expr(),a,modulus=7).as_expr()==1
    assert int(P1m.LC())%7!=0 and int(P2m.LC())%7!=0

    # Special a=8/3, b=-16/5.
    cc=sp.symbols("cc")
    av=sp.Rational(8,3); bv=sp.Rational(-16,5)
    Us=x**4+(30*cc+1)/12*x**3+(300*cc-1447)/210*x**2-(816*cc-841)/70*x+48*(6*cc-5)/35
    Ws=sp.Rational(1,2)*x**4+cc*x**3-sp.Rational(41,10)*x**2+sp.Rational(23,10)*x
    As=x**2+av*x+bv
    verify_slot_system(Us,Ws,[x,As,x-1])
    comps=sp.factor(Us.subs(x,0)*As.subs(x,1)+9*bv*Us.subs(x,1))
    assert sp.factor(comps+sp.Rational(4,25)*(66*cc-97))==0
    ccv=sp.Rational(97,66)
    Uss=sp.cancel(Us.subs(cc,ccv)); Wss=sp.cancel(Ws.subs(cc,ccv)); qs=sp.cancel(-Uss.subs(x,0)/(4*bv)); Qs=sp.cancel(qs*As)
    ks=quotient_coefficients(Uss,Wss,sp.Rational(1,2),Qs,x*(x-1)*As)
    special_nonconstant=sp.factor(ks[6])
    assert special_nonconstant != 0

    return {
        "generic_denominator": str(D),
        "compatibility": str(3*b*(a+b+1)*F),
        "generic_K6": str(P6),
        "ratio_quadratic_discriminant": int(disc),
        "D_zero_mod7_bezout": {"s": str(bez_s), "t": str(bez_t)},
        "special_a_8_3_compatibility": str(comps),
        "special_a_8_3_nonconstant_K6": str(special_nonconstant),
        "status": "NO_RATIONAL_SOLUTION",
    }


def main() -> None:
    out={
        "theorem":"Both octic 4+4 two-plus-one-plus-one slot patterns are impossible over Q under the frozen GATE8 necessary system.",
        "graph_112":graph_a(),
        "graph_121":graph_b(),
        "remaining_directed_slot_patterns":[[0,2,2],[2,0,2]],
        "status":"PASS OCTIC-NO211",
    }
    root=Path(__file__).resolve().parents[1]
    (root/"outputs"/"replay_no211.json").write_text(json.dumps(out,indent=2,sort_keys=True)+"\n",encoding="utf-8")
    print(json.dumps(out,indent=2,sort_keys=True))

if __name__=="__main__":
    main()

#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path
import sympy as sp

x = sp.symbols('x')


def coeffs(poly, var=x):
    P = sp.Poly(sp.expand(poly), var)
    return [sp.factor(P.coeff_monomial(var**i)) for i in range(P.degree() + 1)]


def primitive(expr, var):
    num = sp.together(expr).as_numer_denom()[0]
    return sp.factor(sp.Poly(sp.expand(num), var, domain=sp.QQ).primitive()[1].as_expr())


def verify_distinct_degenerate():
    m, s = sp.symbols('m s')
    d = (m - 2) * (3*m - 4)
    p = -sp.Rational(6, 1) / d
    q = m*p
    A = x**2 + p
    B = x**2 + x + q

    # Linear DIFF/slot chart on D022=0, valid for m != 0 and finite d.
    u3 = sp.Rational(21,20) - (m-2)*(3*m-4)*s/(6*m)
    u2 = -(70*m+43)/(10*d) - (m-2)*(3*m-2)*s/(6*m)
    u1 = -sp.Rational(21,5)/d + (m+1)*s/m
    u0 = 3*(49*m+4)/(5*d**2) + 3*s/(3*m-4)
    w3 = sp.Rational(7,20)
    w2 = -(35*m+2)/(10*d) + (m-2)*s/(3*m)
    w1 = s
    w0 = 6*(7*m+4)/(5*d**2)
    U = sp.cancel(x**4 + u3*x**3 + u2*x**2 + u1*x + u0)
    W = sp.cancel(sp.Rational(1,4)*x**4 + w3*x**3 + w2*x**2 + w1*x + w0)

    # Verify slots and DIFF exactly.
    assert sp.factor(sp.rem(W-U, A, x)) == 0
    assert sp.factor(sp.rem(W-2*U, B, x)) == 0
    diff = sp.factor(
        W*sp.diff(A*B, x) - A*B*(3*sp.diff(W,x)-2*sp.diff(U,x))
        - U*(sp.diff(A,x)*B + 2*A*sp.diff(B,x))
    )
    assert diff == 0

    resultant_ab = sp.factor(sp.resultant(A, B, x))
    assert sp.factor(resultant_ab-6*(3*m**2-2*m-2)/d**2)==0
    assert sp.discriminant(3*m**2-2*m-2, m) == 28

    # Quadratic interpolation.
    r0,r1,r2 = sp.symbols('r0 r1 r2')
    Q = r2*x**2+r1*x+r0
    eq=[]
    for expr, mod in [(32*Q+9*U,A),(32*Q-49*U,B)]:
        rem=sp.rem(expr,mod,x)
        eq += [sp.cancel(sp.Poly(rem,x).coeff_monomial(x**i)) for i in range(2)]
    M,rhs=sp.linear_eq_to_matrix(eq,[r0,r1,r2])
    left=M.T.nullspace()
    comp=sp.factor(sp.together((left[0].T*rhs)[0]).as_numer_denom()[0])
    expected_comp=(m-2)**2*(3*m-4)**2*(3*m**2-2*m-2)*(2010*m**2*s-6700*m*s+147*m+5360*s)
    assert sp.factor(comp-expected_comp)==0
    s_value=sp.factor(-147*m/(670*d))
    assert sp.factor((2010*m**2*s-6700*m*s+147*m+5360*s).subs(s,s_value))==0

    eqg=[sp.factor(e.subs(s,s_value)) for e in eq]
    sol=sp.solve(eqg,[r0,r1,r2],dict=True,simplify=False)
    assert len(sol)==1
    Qg=sp.factor(Q.subs(sol[0]))
    Ug=sp.factor(U.subs(s,s_value)); Wg=sp.factor(W.subs(s,s_value))
    Z=sp.factor(Wg-sp.Rational(1,4)*Ug)
    H=sp.factor(Z**3-sp.Rational(5,4)*Ug*Z**2-Ug**2*Qg)
    K=sp.factor(sp.cancel(H/(A*B)))
    KP=sp.Poly(sp.together(K).as_numer_denom()[0],x)
    K5=primitive(KP.coeff_monomial(x**5),m)
    K6=primitive(KP.coeff_monomial(x**6),m)
    P5=299292*m**2+1654555*m+2025217
    P6=84819*m**2+462980*m+485474
    assert sp.factor(K5/(d**3*P5)) in (1,-1)
    assert sp.factor(K6/(d**3*P6)) in (1,-1)
    bez=sp.expand((3*m-3)*P5+(4-5*m)*P6-1)
    assert all(int(c)%11==0 for c in sp.Poly(bez,m).all_coeffs())
    resultant_p5p6=int(sp.resultant(P5,P6,m))
    assert resultant_p5p6==463032163605606432075

    # The m=0 chart, omitted by the preceding normalization.
    p0=sp.Rational(-3,4);q0=sp.Integer(0);r=sp.symbols('r')
    A0=x**2+p0;B0=x**2+x
    U0=x**4+(2*r+sp.Rational(11,10))*x**3+(r-sp.Rational(41,80))*x**2+(-sp.Rational(3,2)*r-sp.Rational(9,16))*x+sp.Rational(3,80)
    W0=sp.Rational(1,4)*x**4+sp.Rational(7,20)*x**3+r*x**2+sp.Rational(3,40)
    rr0,rr1,rr2=sp.symbols('rr0 rr1 rr2');QQ=rr2*x**2+rr1*x+rr0
    e0=[]
    for expr,mod in [(32*QQ+9*U0,A0),(32*QQ-49*U0,B0)]:
        rem=sp.rem(expr,mod,x)
        e0 += [sp.Poly(rem,x).coeff_monomial(x**i) for i in range(2)]
    MM,bb=sp.linear_eq_to_matrix(e0,[rr0,rr1,rr2])
    c0=sp.factor((MM.T.nullspace()[0].T*bb)[0])
    assert sp.factor(c0+(1340*r+9)/40)==0
    rv=-sp.Rational(9,1340)
    sol0=sp.solve([e.subs(r,rv) for e in e0],[rr0,rr1,rr2],dict=True)[0]
    Q0=QQ.subs(sol0)
    Z0=W0.subs(r,rv)-sp.Rational(1,4)*U0.subs(r,rv)
    K0=sp.factor(sp.cancel((Z0**3-sp.Rational(5,4)*U0.subs(r,rv)*Z0**2-U0.subs(r,rv)**2*Q0)/(A0*B0)))
    K06=sp.factor(sp.Poly(K0,x).coeff_monomial(x**6))
    assert K06==sp.Rational(1699159,11491840)

    return {
        'parameterization': {'p':str(p),'q':str(q),'D':str(d)},
        'resultant_AB':str(resultant_ab),
        'interpolation_s':str(s_value),
        'K5':str(P5),'K6':str(P6),
        'mod11_bezout':'(3m-3)K5+(4-5m)K6 == 1 (mod 11)',
        'resultant_K5_K6':resultant_p5p6,
        'm0_K6':str(K06),
        'status':'PASS DISTINCT-CENTER D022=0 CLOSED',
    }


def verify_same_center_generic():
    p,q=sp.symbols('p q')
    D=4*p-3*q
    s=(-36*p**2+63*p*q+98*q**2)/500
    U=sp.factor((-9*p**2+210*p*q+192*p*x**2+49*q**2+308*q*x**2+250*x**4)/250)
    W=sp.factor((-36*p**2+63*p*q-9*p*x**2+98*q**2+259*q*x**2+125*x**4)/500)
    A=x**2+p;B=x**2+q
    rho=sp.Rational(4084101,500000000)*(p-q)**4
    V=sp.factor(250*(-10953*p**2+24906*p*q+3000*p*x**2+17297*q**2+59500*q*x**2+31250*x**4)/(194481*(p-q)**4))
    f=sp.factor(U*V+1)
    f2_expected=sp.factor(
        4*(6*p+119*q+125*x**2)*(111*p+14*q+125*x**2)
        *(-36*p**2+63*p*q-9*p*x**2+98*q**2+259*q*x**2+125*x**4)
        /(194481*(p-q)**4)
    )
    assert sp.factor(f-2-f2_expected)==0
    assert sp.factor(W-U + 3*A*(6*p+119*q+125*x**2)/500)==0
    assert sp.factor(W-2*U + 7*B*(111*p+14*q+125*x**2)/500)==0
    assert sp.factor(W*(W-U)*(W-2*U)-(U*V-1)*rho*A*B)==0

    # Slot 0 rational origin: after x0^2 normalization, only p=q=-1.
    P,Q=sp.symbols('P Q')
    slot0=sp.expand(-36*P**2+63*P*Q+98*Q**2-9*P+259*Q+125)
    a,b=sp.symbols('a b')
    shifted=sp.factor(slot0.subs({P:a-1,Q:b-1}))
    assert shifted==-36*a**2+63*a*b+98*b**2
    assert sp.discriminant(36*sp.Symbol('r')**2-63*sp.Symbol('r')-98,sp.Symbol('r'))==18081
    assert 18081==21**2*41

    # Noncentral slot 1 and slot 2 Taylor charts at normalized x0=1.
    z,X,r=sp.symbols('z X r')
    def taylor_for(Pexpr,Qexpr):
        ff=sp.factor((2+f2_expected).subs({p:Pexpr,q:Qexpr,x:z}))
        poly=sp.Poly(sp.expand(ff.subs(z,1+X)),X)
        return [sp.factor(poly.coeff_monomial(X**i)) for i in range(9)]
    t1=taylor_for(-(119*r+125)/6,r)
    assert sp.factor(t1[1]-32/(35*(r+1)))==0
    assert sp.factor(t1[3]+64*(105*r+121)/(42875*(r+1)**3))==0
    assert sp.factor(t1[7]-512/(300125*(r+1)**4))==0
    t2=taylor_for(-(14*r+125)/111,r)
    u=sp.symbols('u', positive=True)
    assert sp.factor(t2[1]-1184/(35*(r+1)))==0
    assert sp.factor(t2[7]-59973152/(300125*(r+1)**4))==0

    # Recover integer U,W blocks in the only sign-compatible noncentral slot-2 chart.
    c,m,h,X=sp.symbols('c m h X')
    # u=r+1, c is the affine digit scale.
    Ubar=(245*u**2+6216*u*(c*X)+10952*(c*X)**2+10952*(c*X)**3+2738*(c*X)**4)/(245*u**2)
    # Correct expanded U/U(1) in y=cX:
    Ubar=1+888*c/(35*u)*X+148*(21*u+74)*c**2/(245*u**2)*X**2+10952*c**3/(245*u**2)*X**3+2738*c**4/(245*u**2)*X**4
    Wbar=2+407*c/(35*u)*X+37*(77*u+148)*c**2/(490*u**2)*X**2+2738*c**3/(245*u**2)*X**3+1369*c**4/(490*u**2)*X**4
    csub=35*u*m/37
    Um=sp.Poly(sp.expand(Ubar.subs(c,csub)),X)
    Wm=sp.Poly(sp.expand(Wbar.subs(c,csub)),X)
    assert Um.coeff_monomial(X)==24*m
    assert Wm.coeff_monomial(X)==11*m
    z3=sp.factor(Wm.coeff_monomial(X**3))
    z4=sp.factor(Wm.coeff_monomial(X**4))
    assert z3==350*m**3*u/37
    assert sp.factor(z4-z3**2/(40*m**2))==0

    usub=74*h/(35*m**2)
    Ucanon=sp.factor(sp.expand(Um.as_expr().subs(u,usub)))
    Wcanon=sp.factor(sp.expand(Wm.as_expr().subs(u,usub)))
    expected_U=1+24*m*X+(40*m**2+24*h)*X**2+80*m*h*X**3+40*h**2*X**4
    expected_W=2+11*m*X+(10*m**2+11*h)*X**2+20*m*h*X**3+10*h**2*X**4
    assert sp.expand(Ucanon-expected_U)==0
    assert sp.expand(Wcanon-expected_W)==0
    Vcanon=1+8*m*X+8*(h+m**2)*X**2+16*m*h*X**3+8*h**2*X**4
    fcanon=sp.expand(expected_U*Vcanon+1)
    fcoeff=[sp.factor(sp.Poly(fcanon,X).coeff_monomial(X**i)) for i in range(9)]
    assert fcoeff[0]==2
    for cc in fcoeff[1:]:
        assert sp.Poly(cc/16,m,h,domain=sp.QQ).clear_denoms()[0]==1
    assert sp.factor(fcanon-2-16*X*(h*X+m)*(2*h*X**2+2*m*X+1)*(10*h**2*X**4+20*h*m*X**3+11*h*X**2+10*m**2*X**2+11*m*X+2))==0

    # Central roots.
    rr,y=sp.symbols('rr y')
    center1=sp.factor(f2_expected.subs({p:-119*rr,q:6*rr,x:y}))
    center2=sp.factor(f2_expected.subs({p:-14*rr,q:111*rr,x:y}))
    assert center1==4*y**2*(-105*rr+y**2)*(-4410*rr**2+21*rr*y**2+y**4)/(24310125*rr**4)
    assert center2==4*y**2*(105*rr+y**2)*(8820*rr**2+231*rr*y**2+y**4)/(24310125*rr**4)
    Y=sp.symbols('Y')
    yy=sp.symbols('yy')
    # Slot-2 center coefficients in Y=cX reduce to yy=c^2/rr.
    center_coeffs=[16*yy/105,4*yy**2/735,64*yy**3/1157625,4*yy**4/24310125]
    assert [sp.factor(z.subs(yy,105*h)) for z in center_coeffs]==[16*h,60*h**2,64*h**3,20*h**4]

    return {
        'f_minus_2':str(f2_expected),
        'slot0_discriminant':18081,
        'slot1_taylor_key':[str(t1[i]) for i in (1,3,7)],
        'slot2_canonical_U':str(expected_U),
        'slot2_canonical_W':str(expected_W),
        'slot2_canonical_V':str(Vcanon),
        'slot2_canonical_f':str(sp.factor(fcanon)),
        'slot2_mod16':'all nonconstant coefficients are 16*Z[m,h]',
        'center_slot2_coefficients_after_integrality':[str(z) for z in [16*h,60*h**2,64*h**3,20*h**4]],
        'status':'PASS SAME-CENTER GENERIC 022 CLOSED',
    }


def verify_same_center_degenerate():
    p=sp.symbols('p')
    q=sp.Rational(4,3)*p
    s=sp.Rational(1009,1500)*p
    U=sp.factor((3223*p**2+5424*p*x**2+2250*x**4)/2250)
    W=sp.factor((2000*p**2+3027*p*x**2+1125*x**4)/4500)
    A=x**2+p;B=x**2+q
    rho=sp.Rational(50421,500000000)*p**4
    V=sp.factor(250*(477047*p**2+741000*p*x**2+281250*x**4)/(21609*p**4))
    f=sp.factor(U*V+1)
    f2=sp.factor(4*(389*p+375*x**2)*(494*p+375*x**2)*(2000*p**2+3027*p*x**2+1125*x**4)/(194481*p**4))
    assert sp.factor(f-2-f2)==0
    assert sp.factor(W*(W-U)*(W-2*U)-(U*V-1)*rho*A*B)==0
    slot0_disc=3027**2-4*1125*2000
    assert slot0_disc==63**2*41

    X=sp.symbols('X')
    taylor=[]
    for pv in [-sp.Rational(375,494),-sp.Rational(375,389)]:
        poly=sp.Poly(sp.expand((2+f2.subs(p,pv)).subs(x,1+X)),X)
        vals=[sp.factor(poly.coeff_monomial(X**i)) for i in range(9)]
        assert vals[1]<0 and vals[7]>0
        taylor.append([str(vals[1]),str(vals[7])])
    return {
        'formal_s':str(s),'rho':str(rho),'f_minus_2':str(f2),
        'slot0_discriminant':slot0_disc,
        'slot1_slot2_taylor_c1_c7':taylor,
        'status':'PASS SAME-CENTER 4p-3q=0 CLOSED',
    }


def main():
    out={
        'distinct_center_D022_zero':verify_distinct_degenerate(),
        'same_center_generic':verify_same_center_generic(),
        'same_center_degenerate':verify_same_center_degenerate(),
        'status':'OCTIC (0,2,2) CLOSED',
    }
    root=Path(__file__).resolve().parents[1]
    path=root/'outputs'/'close_022.json'
    path.write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps(out,indent=2,sort_keys=True))

if __name__=='__main__':
    main()

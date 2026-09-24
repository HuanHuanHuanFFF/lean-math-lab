#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path
import sympy as sp

x=sp.symbols('x')


def distinct_generic():
    p,q,s=sp.symbols('p q s')
    D=p-2*q
    A=x**2+p; B=x**2+x+q
    u3=-3*(p+3*q)/(4*D)
    u2=(2*p**3-8*p**2*q+3*p**2+14*p*q**2-9*p*q+4*p*s-12*q**3-8*q*s)/(4*q*D)
    u1=(2*p**3-7*p**2*q+3*p**2-3*p*q**2+4*p*s-8*q*s)/(4*q*D)
    U=sp.factor(x**4+u3*x**3+u2*x**2+u1*x+s)
    W=sp.factor(sp.Rational(1,2)*x**4-3*q*x**3/(2*D)-(p**2-5*p*q+3*p+6*q**2)*x**2/(2*D)-3*p*q*x/(2*D)-p*(2*p**2-7*p*q+3*p+6*q**2)/(2*D))
    assert sp.factor(sp.rem(W,A,x))==0
    assert sp.factor(sp.rem(W-2*U,B,x))==0
    diff=sp.factor(W*sp.diff(A*B,x)-A*B*(3*sp.diff(W,x)-2*sp.diff(U,x))-U*(2*A*sp.diff(B,x)))
    assert diff==0

    r0,r1,r2=sp.symbols('r0 r1 r2');Q=r2*x**2+r1*x+r0
    eq=[]
    for expr,mod in [(4*Q+U,A),(4*Q-9*U,B)]:
        rem=sp.rem(expr,mod,x)
        eq += [sp.factor(sp.Poly(rem,x).coeff_monomial(x**i)) for i in range(2)]
    M,rhs=sp.linear_eq_to_matrix(eq,[r0,r1,r2])
    comp=sp.factor(sp.together((M.T.nullspace()[0].T*rhs)[0]).as_numer_denom()[0])
    resAB=sp.factor(sp.resultant(A,B,x))
    assert comp==-3*q*(p+3*q)*resAB

    # The only legal generic line is p=-3q.
    pline=-3*q
    Ul=sp.factor(U.subs(p,pline)); Wl=sp.factor(W.subs(p,pline)); Al=x**2+pline; Bl=B
    eql=[]
    for expr,mod in [(4*Q+Ul,Al),(4*Q-9*Ul,Bl)]:
        rem=sp.rem(expr,mod,x)
        eql += [sp.factor(sp.Poly(rem,x).coeff_monomial(x**i)) for i in range(2)]
    sol=sp.solve(eql,[r0,r1,r2],dict=True,simplify=False)
    assert len(sol)==1
    Ql=sp.factor(Q.subs(sol[0]))
    Z=Wl-sp.Rational(1,2)*Ul
    H=sp.factor(Z**3-sp.Rational(1,2)*Ul*Z**2-Ul**2*Ql)
    K=sp.factor(sp.cancel(H/(Al*Bl)))
    P=sp.Poly(K,x)
    k5=sp.factor(P.coeff_monomial(x**5))
    k6=sp.factor(P.coeff_monomial(x**6))
    assert sp.factor(k5-3*(2700*q**2-567*q+100*s)/(2000*q))==0
    assert sp.factor(k6+(450*q**2-81*q-50*s)/(200*q))==0
    qv=sp.Rational(81,400);sv=sp.Rational(6561,160000)
    assert sp.factor(k5.subs({q:qv,s:sv}))==0
    assert sp.factor(k6.subs({q:qv,s:sv}))==0
    # The two equations give q*(400q-81)=0; q=0 belongs to a separate chart.
    elim=sp.factor(sp.resultant(2700*q**2-567*q+100*s,450*q**2-81*q-50*s,s))
    assert elim==450*q*(400*q-81)

    pv=-3*qv
    Uv=sp.factor(Ul.subs({q:qv,s:sv}));Wv=sp.factor(Wl.subs({q:qv,s:sv}))
    Av=x**2+pv;Bv=x**2+x+qv
    Qv=sp.factor(Ql.subs({q:qv,s:sv}))
    Zv=Wv-sp.Rational(1,2)*Uv
    Hv=sp.factor(Zv**3-sp.Rational(1,2)*Uv*Zv**2-Uv**2*Qv)
    rho=sp.factor(-sp.cancel(Hv/(Av*Bv)))
    Vv=sp.factor(sp.cancel((1+Wv*(Wv-Uv)*(Wv-2*Uv)/(rho*Av*Bv))/Uv))
    fv=sp.factor(Uv*Vv+1)
    f2=sp.factor(fv-2)
    expected_factors=[
        400*x**2-480*x+117,
        400*x**2+240*x+9,
        160000*x**4-96000*x**3-122400*x**2+41040*x+15309,
    ]
    num=sp.together(f2).as_numer_denom()[0]
    for fac in expected_factors:
        assert sp.rem(num,fac,x)==0
    discs=[int(sp.discriminant(expected_factors[i],x)) for i in (0,1)]
    assert discs==[43200,43200]
    assert math.isqrt(43200)**2!=43200
    quart=expected_factors[2]
    values=[int(quart.subs(x,i))%11 for i in range(11)]
    assert 160000%11!=0 and all(values)

    # q=0 chart: interpolation compatibility forces p=-1, exactly the illegal resultant-zero point.
    pp,tt=sp.symbols('pp tt')
    A0=x**2+pp;B0=x**2+x
    U0=x**4-sp.Rational(3,4)*x**3+(-pp/sp.Integer(4)+tt-sp.Rational(9,4))*x**2+tt*x-pp**2/sp.Integer(2)-3*pp/sp.Integer(4)
    W0=sp.Rational(1,2)*x**4+(-pp/sp.Integer(2)-sp.Rational(3,2))*x**2-pp**2-3*pp/sp.Integer(2)
    rr0,rr1,rr2=sp.symbols('rr0 rr1 rr2');QQ=rr2*x**2+rr1*x+rr0
    e0=[]
    for expr,mod in [(4*QQ+U0,A0),(4*QQ-9*U0,B0)]:
        rem=sp.rem(expr,mod,x)
        e0 += [sp.Poly(rem,x).coeff_monomial(x**i) for i in range(2)]
    MM,bb=sp.linear_eq_to_matrix(e0,[rr0,rr1,rr2])
    comp0=sp.factor((MM.T.nullspace()[0].T*bb)[0])
    assert sp.factor(comp0+3*(pp+1)/4)==0
    assert sp.factor(sp.resultant(A0,B0,x).subs(pp,-1))==0

    # p=2q chart is linearly inconsistent; an exact left-null constraint is -3=0.
    qq=sp.symbols('qq');pp2=2*qq
    uu3,uu2,uu1,uu0,ww3,ww2,ww1,ww0=sp.symbols('uu3 uu2 uu1 uu0 ww3 ww2 ww1 ww0')
    vars2=[uu3,uu2,uu1,uu0,ww3,ww2,ww1,ww0]
    UU=x**4+uu3*x**3+uu2*x**2+uu1*x+uu0
    WW=sp.Rational(1,2)*x**4+ww3*x**3+ww2*x**2+ww1*x+ww0
    AA=x**2+pp2;BB=x**2+x+qq
    ee=[]
    for expr,mod in [(WW,AA),(WW-2*UU,BB)]:
        rem=sp.rem(expr,mod,x)
        ee += [sp.Poly(rem,x).coeff_monomial(x**i) for i in range(2)]
    de=sp.expand(WW*sp.diff(AA*BB,x)-AA*BB*(3*sp.diff(WW,x)-2*sp.diff(UU,x))-UU*(2*AA*sp.diff(BB,x)))
    ee += [sp.Poly(de,x).coeff_monomial(x**i) for i in range(8)]
    M2,b2=sp.linear_eq_to_matrix(ee,vars2)
    constraints=[sp.factor((v.T*b2)[0]) for v in M2.T.nullspace()]
    assert -3 in constraints

    return {
        'interpolation_compatibility':str(comp),
        'resultant_AB':str(resAB),
        'forced_line':'p=-3*q',
        'line_K5':str(k5),'line_K6':str(k6),
        'unique_formal_point':{'p':str(pv),'q':str(qv),'s':str(sv),'rho':str(rho)},
        'f_minus_2':str(f2),
        'quadratic_discriminants':discs,
        'quartic_mod11_values':values,
        'q0_compatibility':str(comp0),
        'p_equals_2q_constraint':'-3=0',
        'status':'PASS DISTINCT-CENTER (2,0,2) CLOSED',
    }


def same_center():
    p,q,s=sp.symbols('p q s')
    A=x**2+p;B=x**2+q
    U=x**4+(p**2-2*p*q+3*q**2+2*s)*x**2/(2*q)+s
    W=sp.Rational(1,2)*x**4-(p-3*q)*x**2/2-p*(2*p-3*q)/2
    r0=-5*p**2/sp.Integer(4)+3*p*q/sp.Integer(2)-s/sp.Integer(4)
    r2=(-p**2-6*p*q+9*q**2-2*s)/(8*q)
    Q=r2*x**2+r0
    Z=W-sp.Rational(1,2)*U
    K=sp.factor(sp.cancel((Z**3-sp.Rational(1,2)*U*Z**2-U**2*Q)/(A*B)))
    k6=sp.factor(sp.Poly(K,x).coeff_monomial(x**6))
    assert sp.factor(k6-(p**2+6*p*q-9*q**2+2*s)/(8*q))==0
    sv=-(p**2+6*p*q-9*q**2)/2
    Uv=sp.factor(U.subs(s,sv));Wv=sp.factor(W)
    Qv=sp.factor(Q.subs(s,sv));Zv=Wv-sp.Rational(1,2)*Uv
    Hv=sp.factor(Zv**3-sp.Rational(1,2)*Uv*Zv**2-Uv**2*Qv)
    rho=sp.factor(-sp.cancel(Hv/(A*B)))
    V=sp.factor(sp.cancel((1+Wv*(Wv-Uv)*(Wv-2*Uv)/(rho*A*B))/Uv))
    f=sp.factor(Uv*V+1)
    f2=sp.factor(-4*(-5*p+6*q+x**2)*(-2*p+3*q+x**2)*(p**2-9*p*q-7*p*x**2+9*q**2+9*q*x**2+x**4)/(81*(p-q)**4))
    assert sp.factor(f-2-f2)==0
    lead=sp.factor(sp.Poly(f,x).LC())
    assert lead==-4/(81*(p-q)**4)

    # q=0 special chart.
    pp=sp.symbols('pp')
    U0=x**4-4*pp*x**2-pp**2/2
    W0=sp.Rational(1,2)*x**4-pp*x**2/2-pp**2
    A0=x**2+pp;B0=x**2
    Q0=-9*pp**2/sp.Integer(8)
    Z0=W0-sp.Rational(1,2)*U0
    H0=sp.factor(Z0**3-sp.Rational(1,2)*U0*Z0**2-U0**2*Q0)
    rho0=sp.factor(-sp.cancel(H0/(A0*B0)))
    V0=sp.factor(sp.cancel((1+W0*(W0-U0)*(W0-2*U0)/(rho0*A0*B0))/U0))
    f0=sp.factor(U0*V0+1)
    lead0=sp.factor(sp.Poly(f0,x).LC())
    assert lead0==-4/(81*pp**4)
    return {
        'formal_s':str(sv),'rho':str(rho),'f_minus_2':str(f2),
        'leading_coefficient':str(lead),
        'q0_rho':str(rho0),'q0_leading_coefficient':str(lead0),
        'status':'PASS SAME-CENTER (2,0,2) CLOSED BY NEGATIVE LEADING COEFFICIENT',
    }


def main():
    out={
        'distinct_center':distinct_generic(),
        'same_center':same_center(),
        'status':'OCTIC (2,0,2) CLOSED',
    }
    root=Path(__file__).resolve().parents[1]
    (root/'outputs'/'close_202.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps(out,indent=2,sort_keys=True))

if __name__=='__main__':
    main()

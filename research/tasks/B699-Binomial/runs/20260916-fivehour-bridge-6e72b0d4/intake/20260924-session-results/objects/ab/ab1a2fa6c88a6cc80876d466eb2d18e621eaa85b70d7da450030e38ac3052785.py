#!/usr/bin/env python3
from __future__ import annotations
import json, math
from pathlib import Path
import sympy as sp

x=sp.symbols('x'); p,q,s=sp.symbols('p q s')


def primitive(expr,*vars_):
    num=sp.together(expr).as_numer_denom()[0]
    return sp.factor(sp.Poly(sp.expand(num),*vars_,domain=sp.QQ).primitive()[1].as_expr())


def build(pv=p,qv=q,sv=s):
    D=8*pv**2-10*pv*qv+6*pv+3*qv**2
    u3=(176*pv**2-196*pv*qv+126*pv+63*qv**2-60*sv)/(20*D)
    u2=(120*pv**3+50*pv**2*qv+94*pv**2-195*pv*qv**2+154*pv*qv-40*pv*sv+70*qv**3+20*qv*sv-60*sv)/(20*D)
    u1=(60*pv**3-59*pv**2*qv+42*pv**2+28*pv*qv**2-30*pv*sv-30*qv*sv)/(10*D)
    u0=(120*pv**3*qv-130*pv**2*qv**2+84*pv**2*qv+80*pv**2*sv+35*pv*qv**3-160*pv*qv*sv+60*pv*sv+60*qv**2*sv)/(20*D)
    w2=(80*pv**2*qv+4*pv**2-110*pv*qv**2+70*pv*qv+40*pv*sv+35*qv**3-20*qv*sv)/(20*D)
    w1=qv*(4*pv**2+7*pv*qv-30*sv)/(10*D)
    U=sp.cancel(x**4+u3*x**3+u2*x**2+u1*x+u0)
    W=sp.cancel(sp.Rational(1,4)*x**4+sp.Rational(7,20)*x**3+w2*x**2+w1*x+sv)
    return D,U,W


def Qsolve(U,A,B):
    r0,r1,r2=sp.symbols('r0 r1 r2'); Q=r2*x**2+r1*x+r0
    eq=[]
    for expr,f in [(32*Q+9*U,A),(32*Q-49*U,B)]:
        rem=sp.rem(expr,f,x); eq += [sp.Poly(rem,x).coeff_monomial(x**i) for i in range(2)]
    M,rhs=sp.linear_eq_to_matrix(eq,[r0,r1,r2]); left=M.T.nullspace()
    comp=sp.factor(sp.together((left[0].T*rhs)[0]).as_numer_denom()[0]) if left else sp.Integer(0)
    sol=sp.solve(eq,[r0,r1,r2],dict=True,simplify=False)
    return Q,eq,comp,sol


def kcoeff(U,W,Q,A,B):
    Z=sp.cancel(W-sp.Rational(1,4)*U)
    H=sp.cancel(Z**3-sp.Rational(5,4)*U*Z**2-U**2*Q)
    num=sp.together(H).as_numer_denom()[0]
    quo,rem=sp.div(sp.Poly(num,x),sp.Poly(A*B,x)); assert sp.factor(rem.as_expr())==0
    return [sp.factor(quo.coeff_monomial(x**i)) for i in range(quo.degree()+1)]


def main():
    D,U,W=build(); A=x**2+p; B=x**2+x+q
    Qv,eq,comp,sol=Qsolve(U,A,B)
    resultant_ab=p**2-2*p*q+p+q**2
    linear=48*p**2+476*p*q-98*p-49*q**2-1340*s
    assert sp.factor(comp/(-3*resultant_ab*linear))==1
    ssol=sp.cancel((48*p**2+476*p*q-98*p-49*q**2)/1340)
    Ug=sp.cancel(U.subs(s,ssol)); Wg=sp.cancel(W.subs(s,ssol))
    # p != q generic subchart.
    Qg,eqg,_,solg=Qsolve(Ug,A,B); assert len(solg)==1
    Qg=sp.cancel(Qg.subs(solg[0])); ks=kcoeff(Ug,Wg,Qg,A,B)
    P5=primitive(ks[5],p,q); P6=primitive(ks[6],p,q)
    assert P5==-409035*p-884065*q+199528
    assert P6==-43215*p-124285*q+28273
    solpq=sp.solve([P5,P6],[p,q],dict=True); assert solpq==[{p:sp.Rational(-27979,1795600),q:sp.Rational(418201,1795600)}]
    vals=solpq[0]
    assert all(sp.factor(z.subs(vals))==0 for z in ks[1:])
    pv,qv=vals[p],vals[q]
    Dv,Uv,Wv=build(pv,qv,ssol.subs(vals)); Av=x**2+pv; Bv=x**2+x+qv
    Qvv,_,_,solqv=Qsolve(Uv,Av,Bv); Qvv=sp.factor(Qvv.subs(solqv[0]))
    Z=sp.factor(Wv-sp.Rational(1,4)*Uv); H0=sp.factor(Z**3-sp.Rational(5,4)*Uv*Z**2-Uv**2*Qvv)
    rho=sp.factor(-sp.cancel(H0/(Av*Bv)))
    V=sp.factor(sp.cancel((1+Wv*(Wv-Uv)*(Wv-2*Uv)/(rho*Av*Bv))/Uv))
    f=sp.factor(sp.expand(Uv*V+1)); f2=sp.factor(f-2)
    expected_factors=[
      1795600*x**2+75040*x-32291,
      1795600*x**2+1763440*x+399889,
      3224179360000*x**4+4513851104000*x**3+1786963164000*x**2+109836310640*x-27397933451,
    ]
    for z in expected_factors: assert sp.rem(sp.together(f2).as_numer_denom()[0],z,x)==0
    disc1=int(sp.discriminant(expected_factors[0],x)); disc2=int(sp.discriminant(expected_factors[1],x))
    assert disc1==disc2==237557880000 and math.isqrt(disc1)**2!=disc1
    quart=sp.Poly(expected_factors[2],x,modulus=13); qvals=[int(quart.eval(i))%13 for i in range(13)]
    assert int(quart.LC())%13!=0 and all(qvals)

    # p=q subchart, still with D != 0.
    pp=sp.symbols('pp'); ss=sp.cancel(pp*(475*pp-98)/1340)
    Dp,Up,Wp=build(pp,pp,ss); Ap=x**2+pp; Bp=x**2+x+pp
    Qp,_,_,solp=Qsolve(Up,Ap,Bp); assert len(solp)==1; Qp=sp.cancel(Qp.subs(solp[0]))
    kp=kcoeff(Up,Wp,Qp,Ap,Bp)
    P5p=primitive(kp[5],pp); P6p=primitive(kp[6],pp)
    assert P5p==49882-323275*pp and P6p==28273-167500*pp
    cross=int(49882*167500-28273*323275); assert cross==-784719075

    # Same-center generic chart (4p-3q != 0): retain the exact formal family as a failure boundary.
    ps, qs = sp.symbols('ps qs')
    Ds = 4*ps - 3*qs
    ssame = sp.cancel((-36*ps**2 + 63*ps*qs + 98*qs**2)/500)
    u2s = sp.cancel((12*ps**2 + 11*ps*qs - 14*qs**2 - 4*ssame)/(4*Ds))
    u0s = sp.cancel((12*ps**2*qs - 7*ps*qs**2 + 8*ps*ssame - 12*qs*ssame)/(4*Ds))
    w2s = sp.cancel((8*ps*qs - 7*qs**2 + 4*ssame)/(4*Ds))
    Us = sp.factor(x**4 + u2s*x**2 + u0s)
    Ws = sp.factor(sp.Rational(1,4)*x**4 + w2s*x**2 + ssame)
    As = x**2 + ps
    Bs = x**2 + qs
    r0s = sp.cancel((36*ps**2*qs - 161*ps*qs**2 + 392*ps*ssame + 108*qs*ssame)/(128*Ds))
    r2s = sp.cancel((36*ps**2 - 63*ps*qs - 98*qs**2 + 500*ssame)/(128*Ds))
    assert sp.factor(r2s) == 0
    Qs = sp.factor(r0s)
    Zs = sp.factor(Ws - sp.Rational(1,4)*Us)
    Hs = sp.factor(Zs**3 - sp.Rational(5,4)*Us*Zs**2 - Us**2*Qs)
    rhos = sp.factor(-sp.cancel(Hs/(As*Bs)))
    Vs = sp.factor(sp.cancel((1 + Ws*(Ws-Us)*(Ws-2*Us)/(rhos*As*Bs))/Us))
    fs = sp.factor(sp.expand(Us*Vs + 1))
    same_expected = sp.factor(
        4*(6*ps + 119*qs + 125*x**2)*(111*ps + 14*qs + 125*x**2)
        *(-36*ps**2 + 63*ps*qs - 9*ps*x**2 + 98*qs**2 + 259*qs*x**2 + 125*x**4)
        /(194481*(ps-qs)**4)
    )
    assert sp.factor(fs - 2 - same_expected) == 0
    assert sp.factor(rhos - sp.Rational(4084101,500000000)*(ps-qs)**4) == 0
    weak_positive = sp.factor(same_expected.subs({ps:-14, qs:111}))
    weak_expected = sp.factor(4*x**2*(x**2+105)*(x**4+231*x**2+8820)/24310125)
    assert sp.factor(weak_positive - weak_expected) == 0

    out={
      'scope':'normalized distinct-center (0,2,2) chart with D022 != 0',
      'D022':str(D),
      'interpolation_compatibility':str(comp),
      'unique_formal_point':{str(k):str(v) for k,v in vals.items()},
      'f_minus_2_factors':[str(z) for z in expected_factors],
      'quadratic_discriminant':disc1,
      'quartic_mod13_values':qvals,
      'p_equals_q_cross_difference':cross,
      'same_center_generic':{
        'scope':'4*p-3*q != 0 and p != q',
        's':str(ssame),
        'rho':str(rhos),
        'f_minus_2':str(same_expected),
        'positive_weak_subfamily_p_minus14_q111':str(weak_positive),
        'status':'FORMAL_FAMILY_REPLAYED_NOT_CLOSED',
      },
      'remaining_022_charts':['distinct-center D022=0','same-center generic formal family','same-center 4p-3q=0'],
      'status':'PASS DISTINCT-CENTER GENERIC 022 CLOSED',
    }
    root=Path(__file__).resolve().parents[1]
    (root/'outputs'/'probe_022.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps(out,indent=2,sort_keys=True))

if __name__=='__main__': main()

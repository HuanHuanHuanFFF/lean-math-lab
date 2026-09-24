#!/usr/bin/env python3
from __future__ import annotations
import json, math
from pathlib import Path
import sympy as s

x=s.symbols('x')

def poly_values(poly, var, p):
    return [int(poly.subs(var,a)) % p for a in range(p)]

def boundary_and_slots():
    triples=[]
    for d0 in range(4):
        for d1 in range(4-d0):
            d2=3-d0-d1
            w=d1+2*d2
            t=s.Rational(8-w,9)
            if 0<t<1:
                triples.append({"d":[d0,d1,d2],"weight":w,"t":str(t)})
    assert len(triples)==10
    remain=[z for z in triples if sorted(z["d"])==[0,1,2]]
    assert len(remain)==6
    return {
        "boundary_t0_equation":"d1+2*d2=8 impossible since d0+d1+d2<=2",
        "boundary_t1_equation":"d1+2*d2=s-5<0 impossible",
        "internal_slot_types":triples,
        "remaining_2plus1":remain,
    }

def single_slot():
    a,b,c,d,rho=s.symbols('a b c d rho')
    A=x**3+a*x**2+b*x+c
    U=x**4+s.Rational(28,27)*a*x**3+s.Rational(10,9)*b*x**2+s.Rational(4,3)*c*x+d
    k=1
    m=s.Rational(4*(2-3*k),9)
    W=s.expand(k*U+A*m*x)
    rem=s.Poly(s.expand(W**3+rho*A-2*U*W**2),x).rem(s.Poly(U**2,x)).as_expr()
    high=[]
    for i in range(4,8):
        ci=s.factor(s.together(s.expand(rem).coeff(x,i)))
        high.append(s.primitive(s.Poly(ci.as_numer_denom()[0],a,b,c,d))[1].as_expr())
    G=s.groebner([h.subs(a,1) for h in high],d,c,b,order='lex')
    gb=[s.factor(p.as_expr()) for p in G.polys]
    assert gb==[531441*d-256,6561*c-160,27*b-8]
    G0=s.groebner([h.subs(a,0) for h in high],d,c,b,order='lex')
    gb0=[s.factor(p.as_expr()) for p in G0.polys]
    assert any(p==b**5 for p in gb0)
    assert any(p==c**3 for p in gb0)
    vals={a:s.Integer(1),b:s.Rational(8,27),c:s.Rational(160,6561),d:s.Rational(256,531441)}
    Ac=s.factor(A.subs(vals)); Uc=s.factor(U.subs(vals))
    rhos={0:s.Rational(2**23,3**33),1:-s.Rational(2**20,3**33),2:-s.Rational(2**26,3**33)}
    candidates={}
    no_root={}
    factors={
        "C3":6561*x**3+5832*x**2+1296*x+64,
        "Q0":295245*x**4+314928*x**3+104976*x**2+11520*x+256,
        "Q1":767637*x**4+787320*x**3+244944*x**2+23040*x+256,
        "Q2":413343*x**4+393660*x**3+104976*x**2+5760*x-256,
    }
    primes={"C3":5,"Q0":7,"Q1":5,"Q2":5}
    for name,P in factors.items():
        vals_mod=poly_values(P,x,primes[name])
        assert all(vals_mod)
        no_root[name]={"prime":primes[name],"values":vals_mod}
    for k in [0,1,2]:
        m=s.Rational(4*(2-3*k),9)
        Wc=s.expand(k*Uc+Ac*m*x)
        rc=rhos[k]
        remc=s.factor(s.Poly(s.expand(Wc**3+rc*Ac-2*Uc*Wc**2),x).rem(s.Poly(Uc**2,x)).as_expr())
        assert remc==0
        L=s.cancel(Wc*(Wc-Uc)*(Wc-2*Uc)/(rc*Ac))
        Vc=s.cancel((L+1)/Uc)
        assert s.Poly(Vc*Wc-1,x).rem(s.Poly(Uc,x)).as_expr()==0
        fc=s.factor(Uc*Vc+1)
        candidates[str(k)]={
            "rho":str(rc),
            "f_minus_2":str(s.factor(fc-2)),
            "leading":str(s.factor(s.LC(s.Poly(fc,x)))),
        }
    Y=s.symbols('Y')
    Wc=s.expand(Ac*s.Rational(8,9)*x)
    rc=rhos[0]
    L=s.cancel(Wc*(Wc-Uc)*(Wc-2*Uc)/(rc*Ac))
    Vc=s.cancel((L+1)/Uc)
    u0=Uc.subs(x,0); v0=Vc.subs(x,0)
    U0=s.expand((Uc/u0).subs(x,s.Rational(8,9)*Y))
    V0=s.expand((Vc/v0).subs(x,s.Rational(8,9)*Y))
    W0=s.expand((Wc/u0).subs(x,s.Rational(8,9)*Y))
    F=s.expand(U0*V0+1); Sigma=s.expand(V0*W0)
    expectedU=1+60*Y+540*Y**2+1512*Y**3+1296*Y**4
    expectedV=1+183*Y+3060*Y**2+15444*Y**3+29808*Y**4+19440*Y**5
    expectedW=40*Y+432*Y**2+1296*Y**3+1152*Y**4
    assert s.expand(U0-expectedU)==0 and s.expand(V0-expectedV)==0 and s.expand(W0-expectedW)==0
    A3=72*Y**3+72*Y**2+18*Y+1
    A4=720*Y**4+864*Y**3+324*Y**2+40*Y+1
    assert s.expand(F-2-3**5*Y*(2*Y+1)*A3*A4)==0
    B3=144*Y**3+162*Y**2+54*Y+5
    U3=216*Y**3+216*Y**2+54*Y+1
    B5=15552*Y**5+22680*Y**4+10800*Y**3+1800*Y**2+60*Y-1
    assert s.expand(Sigma-8*Y*B3*V0)==0
    assert s.expand(Sigma-1-(2*Y+1)*(6*Y+1)*(120*Y-1)*A3*U3)==0
    assert s.expand(Sigma-2-2*A4*B5)==0
    return {
        "high_groebner_a1":[str(z) for z in gb],
        "high_groebner_a0":[str(z) for z in gb0],
        "candidates":candidates,
        "rational_root_mod_certificates":no_root,
        "canonical_positive":{
            "U":str(U0),"V":str(V0),"W":str(W0),"F":str(F),"Sigma":str(Sigma),
            "linear_coefficient_gcd":math.gcd(math.gcd(60,183),40),
            "source_factorization":str(s.factor(F-2)),
            "sigma_minus_1":str(s.factor(Sigma-1)),
            "sigma_minus_2":str(s.factor(Sigma-2)),
        }
    }

def one_one_one():
    q,A,B=s.symbols('q A B')
    M=-177147*A*q**2 +34398*A*q+9936*A -103572*B*q**2+29808*B*q +50700*q**4+17680*q**3-29600*q**2
    Dq=6561*q**2-1274*q-368
    disc=s.discriminant(Dq,q)
    assert disc==11280868 and math.isqrt(int(disc))**2!=disc
    Asol=s.factor(4*q*(-25893*B*q+7452*B+12675*q**3+4420*q**2-7400*q)/(27*Dq))
    N2=(406935612693*B**2*q**2 -272097162144*B**2*q +47375327628*B**2 -202727245500*B*q**4 -233452816740*B*q**3 +280687948920*B*q**2 -61764603840*B*q +3863099520*B +69403230000*q**6 -78514628400*q**5 -70306704000*q**4 -18759707200*q**3 +34780169600*q**2 -1455641600*q +4172800)
    E2=(-1076168025*B**2*q**2 +860934420*B**2*q -172186884*B**2 -430275891240*B*q**4 +46629814320*B*q**3 +104317884720*B*q**2 -11974949280*B*q -4146215040*B +233515175400*q**6 -73403155800*q**5 +97230655600*q**4 -46369275200*q**3 -539136000*q**2 +1552883200*q -2585600)
    res=s.factor(s.resultant(N2,E2,B))
    P8=(1874243735045157411*q**8 -7588066639400463060*q**7 +5976533651595972543*q**6 -6182115393344250334*q**5 +6112773480199388080*q**4 -2506338132652428256*q**3 +347123565112271360*q**2 -258046700361728*q +45804108713984)
    expected=1721868840000*Dq**4*P8
    assert s.expand(res-expected)==0
    vals17=poly_values(P8,q,17); assert all(vals17)
    Bs=s.symbols('Bs')
    Psp=354294*Bs**2-127705005*Bs-164557100
    vals7=poly_values(Psp,Bs,7); assert all(vals7)
    return {
        "M":str(M),
        "Dq":str(Dq),"Dq_discriminant":int(disc),
        "A_solution":str(Asol),
        "resultant":str(res),
        "P8":str(P8),"P8_mod17_values":vals17,
        "special_q":"10/9","special_quadratic":str(Psp),"special_mod7_values":vals7,
    }

def main():
    out={
        "sympy_version":s.__version__,
        "boundary_and_slots":boundary_and_slots(),
        "single_slot":single_slot(),
        "one_one_one":one_one_one(),
        "status":"NONIC_REDUCE6_REPLAY=PASS",
    }
    target=Path(__file__).resolve().parents[1]/"outputs"/"nonic_reduce6.json"
    target.write_text(json.dumps(out,indent=2,sort_keys=True,ensure_ascii=False)+"\n",encoding="utf-8")
    print(out["status"])

if __name__=="__main__":
    main()

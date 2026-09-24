#!/usr/bin/env python3
"""Exact regeneration. The constant quotient coefficient is NEVER set to zero.

Usage: python src/replay.py --output-dir /tmp/fresh-certificate-directory
Requires SymPy 1.14.0. No network, random input, or repository access.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import math
from pathlib import Path
import sympy as s

x,a,b,q=s.symbols('x a b q')
u3,u2,u1,u0,w3,w2,w1,w0=s.symbols('u3 u2 u1 u0 w3 w2 w1 w0')
PAIRS=[(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]

def primitive(expr, *variables):
    num,den=s.cancel(expr).as_numer_denom()
    return s.Poly(num,*variables,domain=s.QQ).clear_denoms()[1].primitive()[1].as_expr()

def univar(expr,var):
    pol=s.Poly(expr,var,domain=s.ZZ)
    return [int(pol.nth(i)) for i in range(pol.degree()+1)]

def sparse(expr,elim,param):
    pol=s.Poly(expr,elim,param,domain=s.ZZ)
    return [[int(i),int(j),int(c)] for (i,j),c in pol.terms()]

def no_root(expr,var,p):
    pol=s.Poly(expr,var,domain=s.ZZ)
    values=[int(pol.eval(r))%p for r in range(p)]
    assert int(pol.LC())%p != 0 and all(values)
    return {'coefficients_ascending':univar(expr,var),'prime':p,'values':values}

def resultant_record(E,F,elim,param):
    E=primitive(E,elim,param);F=primitive(F,elim,param)
    res=s.factor(s.resultant(E,F,elim))
    assert res != 0
    return {'eliminand':str(elim),'parameter':str(param),
            'E_sparse':sparse(E,elim,param),'F_sparse':sparse(F,elim,param),
            'resultant_coefficients_ascending':univar(res,param),
            'resultant_factorization':str(res)}

def eqs_for(t,R,S,A=None,k=None,l=None):
    U=x**4+u3*x**3+u2*x*x+u1*x+u0
    W=t*x**4+w3*x**3+w2*x*x+w1*x+w0
    de=s.expand(W*s.diff(R,x)-R*(3*s.diff(W,x)-2*s.diff(U,x))-U*S)
    assert de.coeff(x,6)==0
    eqs=[de.coeff(x,i) for i in range(5,-1,-1)]
    if A is not None:
        rem=s.rem(W-k*U,A,x).expand()
        eqs += [(W-l*U).subs(x,0),rem.coeff(x,1),rem.coeff(x,0)]
    else:
        eqs += [W.subs(x,0),(W-U).subs(x,1),(W-2*U).subs(x,q)]
    return U,W,eqs

def quotient_coefficients(U,W,R,Q,t):
    Z=s.expand(W-t*U)
    H=s.together(Z**3+(3*t-2)*U*Z**2-U**2*Q)
    num,den=H.as_numer_denom()
    quotient,remainder=s.div(s.Poly(num,x),s.Poly(R,x))
    assert s.expand(remainder.as_expr())==0
    C=[s.factor(quotient.nth(i)/den) for i in range(8)]
    assert s.cancel(H-R*sum(C[i]*x**i for i in range(8)))==0
    return C

def two_plus_one():
    rows=[]
    for k,l in PAIRS:
        t=s.Rational(8-2*k-l,9);A=x*x+a*x+b;R=x*A
        S=k*x*s.diff(A,x)+l*A
        U,W,eqs=eqs_for(t,R,S,A,k,l)
        resonant=(k,l) in [(0,2),(1,0)]
        unknowns=[u3,u2,w3,w2,w1,w0] if resonant else [u2,u1,w3,w2,w1,w0]
        M,rhs=s.linear_eq_to_matrix(eqs,unknowns)
        piv=[0,1,2,3,5,7]
        minor=s.factor(M[piv,:].det(method='domain-ge'))
        # Unlike the derivative-only minor, this does NOT vanish at a^2=4b.
        assert minor!=0 and minor.free_symbols <= {b}
        sol=s.solve(eqs,unknowns)
        assert len(sol)==6 and all(s.cancel(eq.subs(sol))==0 for eq in eqs)
        U=s.factor(U.subs(sol));W=s.factor(W.subs(sol))
        free=u1 if resonant else u3
        assert (U.free_symbols|W.free_symbols) <= {x,a,b,u0,free}
        ct=lambda i:(i-t)**2*(i+2*t-2)
        Q=s.rem(ct(k)*U,A,x)
        Q=s.factor(Q+(ct(l)*U.subs(x,0)-Q.subs(x,0))/b*A)
        assert s.cancel(Q.subs(x,0)-ct(l)*U.subs(x,0))==0
        assert s.cancel(s.rem(Q-ct(k)*U,A,x))==0
        C=quotient_coefficients(U,W,R,Q,t)
        dsol=s.factor(s.solve(C[7],u0)[0])
        assert s.cancel(C[7].subs(u0,dsol))==0
        special=None
        if resonant:
            # a^2+12b=0. Direct substitution into C7 eliminates u0.
            at=s.factor(C[7].subs(b,-a*a/12))
            assert u0 not in at.free_symbols and at != 0
            special={'excluded_divisor':'a^2+12*b', 'substitute_b':'-a^2/12',
                     'C7_after_substitution':str(at),
                     'reason':'b!=0 forces a!=0, so this coefficient cannot vanish'}
        after={i:primitive(C[i].subs(u0,dsol),a,b,free) for i in (5,6)}
        E=primitive(after[6].subs(a,1),free,b)
        F=primitive(after[5].subs(a,1),free,b)
        rr=resultant_record(E,F,free,b)
        fac=s.factor_list(s.Poly(s.resultant(E,F,free),b).as_expr(),b)[1]
        allowed=[]
        for pol,exponent in fac:
            if resonant and s.degree(pol,b)==1:
                assert s.cancel(pol/(12*b+1)).free_symbols==set()
                allowed.append({'factor':str(pol),'coefficients_ascending':univar(pol,b),'multiplicity':int(exponent),
                                'excluded_by':'a^2+12*b=0 was separately contradicted'})
            else:
                p=5 if resonant else {(0,1):11,(2,0):11,(1,2):17,(2,1):7}[(k,l)]
                allowed.append({'factor':str(pol),'coefficients_ascending':univar(pol,b),'multiplicity':int(exponent),
                                'no_rational_root':no_root(pol,b,p)})
        E0=primitive(after[6].subs(a,0),free,b)
        F0=primitive(after[5].subs(a,0),free,b)
        r0=resultant_record(E0,F0,free,b)
        fact0=s.factor_list(s.resultant(E0,F0,free),b)[1]
        assert len(fact0)==1 and s.cancel(fact0[0][0]/b).free_symbols==set()
        ds=[0,0,0];ds[k]+=2;ds[l]+=1
        rows.append({'quadratic_slot':k,'linear_slot':l,'degree_triple':ds,'t':str(t),
                     'linear_unknowns':list(map(str,unknowns)),
                     'linear_minor_rows':piv,'linear_minor':str(minor),
                     'solution':{str(v):str(s.factor(e)) for v,e in sol.items()},
                     'U':str(U),'W':str(W),'Q':str(Q),
                     'quotient_coefficients_ascending':list(map(str,C)),
                     'u0_from_C7':str(dsol),'denominator_exception':special,
                     'a_nonzero_normalization':'x=a*y; b becomes b/a^2; U,W divided by a^4',
                     'a1_resultant':rr,'a1_factors':allowed,'a0_resultant':r0,
                     'constant_term_policy':'C[1]..C[7] must be zero; C[0]=-rho!=0. C[0] NOT USED.'})
        print('PAIR',k,l,'PASS',flush=True)
    return {'rows':rows,'status':'ALL_SIX_21_CORRECTED=PASS'}

def one_one_one():
    t=s.Rational(5,9);R=x*(x-1)*(x-q);S=x*(3*x-q-2)
    U,W,eqs=eqs_for(t,R,S)
    unknowns=[u2,u1,w3,w2,w1,w0]
    M,rhs=s.linear_eq_to_matrix(eqs,unknowns)
    minor=s.factor(M[:6,:].det(method='domain-ge'))
    assert minor==-24*q*q*(q-1)
    sol=s.solve(eqs,unknowns)
    assert len(sol)==6 and all(s.cancel(eq.subs(sol))==0 for eq in eqs)
    U=s.factor(U.subs(sol));W=s.factor(W.subs(sol))
    ct=lambda i:(i-t)**2*(i+2*t-2)
    Q=s.interpolate([(0,ct(0)*U.subs(x,0)),(1,ct(1)*U.subs(x,1)),(q,ct(2)*U.subs(x,q))],x)
    C=quotient_coefficients(U,W,R,Q,t)
    ds=s.factor(s.solve(C[7],u0)[0])
    assert s.cancel(C[7].subs(u0,ds))==0
    E=primitive(C[6].subs(u0,ds),u3,q)
    F=primitive(C[5].subs(u0,ds),u3,q)
    rr=resultant_record(E,F,u3,q)
    factors=[]
    for pol,ex in s.factor_list(s.resultant(E,F,u3),q)[1]:
        if s.degree(pol,q)==1:
            assert s.cancel(pol/(275*q-64)).free_symbols==set()
            factors.append({'factor':str(pol),'coefficients_ascending':univar(pol,q),'multiplicity':int(ex),'exception':'q=64/275'})
        else:
            assert s.degree(pol,q)==18
            factors.append({'factor':str(pol),'coefficients_ascending':univar(pol,q),'multiplicity':int(ex),
                            'no_rational_root':no_root(pol,q,19)})
    sp=primitive(C[7].subs(q,s.Rational(64,275)),u3)
    assert u0 not in sp.free_symbols
    spr=no_root(sp,u3,13)
    disc=int(s.discriminant(sp,u3));root=math.isqrt(disc)
    assert root*root<disc<(root+1)**2
    print('111_REPAIRED PASS',flush=True)
    return {'linear_unknowns':list(map(str,unknowns)),'linear_minor':str(minor),
            'linear_minor_rows':list(range(6)),
            'solution':{str(v):str(s.factor(e)) for v,e in sol.items()},
            'U':str(U),'W':str(W),'Q':str(s.factor(Q)),
            'quotient_coefficients_ascending':list(map(str,C)),
            'u0_from_C7':str(ds),'resultant':rr,'factors':factors,
            'special_q':'64/275','special_C7_polynomial':str(sp),
            'special_no_rational_root':spr,
            'special_discriminant':disc,'special_discriminant_floor_sqrt':root,
            'old_q_10_over_9':'ordinary point in this parameterization; no exclusion or division by 9*q-10',
            'constant_term_policy':'C[0]=-rho!=0, never zeroed',
            'status':'111_REPAIRED=PASS'}

def single_slot():
    aa,bb,cc,dd,rho=s.symbols('aa bb cc dd rho')
    A=x**3+aa*x*x+bb*x+cc
    U=x**4+s.Rational(28,27)*aa*x**3+s.Rational(10,9)*bb*x*x+s.Rational(4,3)*cc*x+dd
    def remainder(k):
        W=k*U+s.Rational(4*(2-3*k),9)*x*A
        return s.Poly(s.expand(W**3+rho*A-2*U*W**2),x).rem(s.Poly(U**2,x))
    base=remainder(1)
    high=[primitive(base.nth(i),aa,bb,cc,dd) for i in range(4,8)]
    for k,scale in [(0,-8),(1,1),(2,64)]:
        rk=remainder(k)
        assert all(s.expand(rk.nth(i)-scale*base.nth(i))==0 for i in range(4,8))
    G=s.groebner([e.subs(aa,1) for e in high],dd,cc,bb,order='lex')
    expected=[531441*dd-256,6561*cc-160,27*bb-8]
    assert list(G)==expected
    G0=s.groebner([e.subs(aa,0) for e in high],dd,cc,bb,order='lex')
    assert bb**5 in list(G0) and cc**3 in list(G0)
    special=[s.factor(v.subs({bb:0,cc:0})) for v in G0 if v.subs({bb:0,cc:0})!=0]
    assert special and all(s.Poly(v,dd).monoms()==[(2,)] for v in special)
    values={aa:1,bb:s.Rational(8,27),cc:s.Rational(160,6561),dd:s.Rational(256,531441)}
    Ac=s.factor(A.subs(values));Uc=s.factor(U.subs(values))
    rootfactors={'C3':6561*x**3+5832*x*x+1296*x+64,
        'Q0':295245*x**4+314928*x**3+104976*x*x+11520*x+256,
        'Q1':767637*x**4+787320*x**3+244944*x*x+23040*x+256,
        'Q2':413343*x**4+393660*x**3+104976*x*x+5760*x-256}
    roots={n:no_root(e,x,p) for (n,e),p in zip(rootfactors.items(),[5,7,5,5])}
    rhos=[s.Rational(2**23,3**33),-s.Rational(2**20,3**33),-s.Rational(2**26,3**33)]
    candidates=[];canonical=None
    for k,rc in enumerate(rhos):
        Wc=s.expand(k*Uc+s.Rational(4*(2-3*k),9)*x*Ac)
        assert s.cancel(remainder(k).as_expr().subs(values).subs(rho,rc))==0
        f=s.cancel(2+Wc*(Wc-Uc)*(Wc-2*Uc)/(rc*Ac))
        Vc=s.cancel((f-1)/Uc)
        assert s.Poly(f,x) and s.Poly(Vc,x)
        assert s.cancel(s.rem(Vc*Wc-1,Uc,x))==0
        rational_roots=[rt for rt,mult in s.polys.polytools.ground_roots(s.Poly(f-2,x)).items()]
        assert set(rational_roots)==({s.Integer(0)} if k==1 else {s.Integer(0),-s.Rational(4,9)})
        # Verify full factorization, not merely absence of additional detected roots.
        C3,Q0,Q1,Q2=[rootfactors[n] for n in ['C3','Q0','Q1','Q2']]
        facs=[2187*x*(9*x+4)*C3*Q0/2**19,
              -2187*x*Q0*Q1/2**18,
              -2187*x*(9*x+4)*C3*Q2/2**21]
        assert s.expand(f-2-facs[k])==0
        tay={}
        for rt in sorted(rational_roots):
            cs=[s.factor(s.diff(f,x,i).subs(x,rt)/s.factorial(i)) for i in range(1,10)]
            if (k,rt)!=(0,s.Integer(0)):
                assert any(c<0 for c in cs)
                assert any((-1)**(i+1)*c<0 for i,c in enumerate(cs))
            else: assert all(c>=0 for c in cs)
            tay[str(rt)]=list(map(str,cs))
        candidates.append({'k':k,'rho':str(rc),'f_minus_two':str(s.factor(f-2)),'taylor_coefficients_1_to_9':tay})
        if k==0:
            y=s.symbols('y');U0=s.expand((Uc/Uc.subs(x,0)).subs(x,s.Rational(8,9)*y))
            V0=s.expand((Vc/Vc.subs(x,0)).subs(x,s.Rational(8,9)*y))
            W0=s.expand((Wc/Uc.subs(x,0)).subs(x,s.Rational(8,9)*y))
            F=s.expand(U0*V0+1);Sig=s.expand(V0*W0)
            A3=72*y**3+72*y*y+18*y+1;A4=720*y**4+864*y**3+324*y*y+40*y+1
            B3=144*y**3+162*y*y+54*y+5;C3p=216*y**3+216*y*y+54*y+1
            B5=15552*y**5+22680*y**4+10800*y**3+1800*y*y+60*y-1
            assert s.expand(F-2-3**5*y*(2*y+1)*A3*A4)==0
            assert s.expand(Sig-8*y*B3*V0)==0
            assert s.expand(Sig-1-(2*y+1)*(6*y+1)*(120*y-1)*A3*C3p)==0
            assert s.expand(Sig-2-2*A4*B5)==0
            assert math.gcd(math.gcd(int(U0.coeff(y,1)),int(V0.coeff(y,1))),int(W0.coeff(y,1)))==1
            canonical={'U':str(U0),'V':str(V0),'W':str(W0),'F':str(F),'Sigma':str(Sig),
                       'integer_polynomials':{n:univar(e,y) for n,e in [('F',F),('Sigma',Sig),('A3',A3),('A4',A4)]},
                       'valuation_loss':5,'linear_gcd':1}
    print('SINGLE_SLOT_REPLAY PASS',flush=True)
    return {'groebner_a1':list(map(str,G)),'groebner_a0':list(map(str,G0)),
            'a0_b_c_zero_equations':list(map(str,special)),
            'nonlinear_root_obstructions':roots,'candidates':candidates,'canonical':canonical,
            'status':'ADOPTED_SINGLE_SLOT_REPLAY=PASS'}

def foundation_and_audit():
    uu,vv,ww,zz,tt=s.symbols('uu vv ww zz tt')
    identity=s.expand((zz+tt*uu)**3-2*uu*(zz+tt*uu)**2
       -(zz**3+(3*tt-2)*uu*zz**2+uu**2*((3*tt**2-4*tt)*zz+(tt**3-2*tt**2)*uu)))
    assert identity==0
    z=s.symbols('z');N=216*z**3+162*z*z+27*z+2
    tau=(3*z+2)*(4*z+1)*(6*z+1)
    Z3=2*(3*z+2)*(6*z+1)*(36*z*z+21*z+1)*(72*z*z+78*z+23)
    assert s.expand(54*tau*(tau-1)*(tau-2)-(N-2)*Z3)==0
    assert s.Poly(Z3,z,modulus=3).as_expr()==-1
    # Direct reproduction of the invalid hint, without using it as an equation.
    A=x*x+a*x+b;d,w=s.symbols('d w')
    U=x**4+(s.Rational(49,45)*a+3*w/(5*b))*x**3+(2*a*w/(3*b)+s.Rational(35,27)*b+d/b)*x*x+(a*d/b+w)*x+d
    W=s.Rational(4,9)*x**4+(s.Rational(28,45)*a+w/(5*b))*x**3+(a*w/(3*b)+s.Rational(28,27)*b)*x*x+w*x
    t=s.Rational(4,9);ct=lambda i:(i-t)**2*(i+2*t-2)
    Q=s.rem(ct(2)*U,A,x);Q=s.factor(Q+(ct(0)*U.subs(x,0)-Q.subs(x,0))/b*A)
    C=quotient_coefficients(U,W,x*A,Q,t)
    expected=s.Rational(128,32805)*d*d*(49*a*b+27*w)/b
    assert s.cancel(C[0]-expected)==0
    T=5**72;f=lambda T:2+6*T**4+12*T**5+72*T**9
    assert T>=188**22 and f(T)%4==0
    assert (f(T)-2)%(5**288)==0 and (f(T)-2)%(5**289)!=0
    return {'TQ_identity':True,'equal_two_thirds_three_adic_identity':True,
            'deep_adopted_input':'NC3 implies 4|n; not reproved in this round',
            'audit_constant_quotient':str(expected),
            'audit_consequence':'C0=-rho!=0. Therefore the old hint 49*a*b+27*w1=0 is not a necessary condition.',
            'old_111_P8_chain':'not used; replaced by C7/C6/C5 elimination and degree-18 resultant',
            'example':{'f':'2+6*X^4+12*X^5+72*X^9','H':92,'T':'5^72','gate':'188^22',
                       'gate_pass':True,'n_mod4':0,'v5_n_minus2':288}}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',required=True);args=ap.parse_args()
    out=Path(args.output_dir)
    if out.exists() and any(out.iterdir()): raise SystemExit('Output directory must be new or empty.')
    out.mkdir(parents=True,exist_ok=True)
    data={'sympy_version':s.__version__,'foundation_and_audit':foundation_and_audit(),
          'two_plus_one':two_plus_one(),'one_one_one':one_one_one(),'single_slot':single_slot(),
          'status':'NONIC_ALL_CORRECTED_EXACT_REPLAY=PASS'}
    raw=(json.dumps(data,ensure_ascii=False,indent=2,sort_keys=True)+'\n').encode()
    (out/'exact.json').write_bytes(raw)
    print(data['status']);print('exact.json sha256',hashlib.sha256(raw).hexdigest())

if __name__=='__main__': main()

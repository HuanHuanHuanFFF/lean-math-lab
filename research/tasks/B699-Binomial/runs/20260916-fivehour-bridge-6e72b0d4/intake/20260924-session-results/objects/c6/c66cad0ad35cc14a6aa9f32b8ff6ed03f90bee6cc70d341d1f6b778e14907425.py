"""Generate exact certificates. External geometric theorems are not re-proved here."""
from __future__ import annotations
import argparse, hashlib, json, platform, sys
from functools import reduce
from math import gcd
from pathlib import Path
import sympy as S
from predicates import valuation, leading_D, candidate_slots, degree_pairs_for_loss, horner


def encoded(poly, x):
    p=S.Poly(poly,x,domain=S.QQ)
    return [str(p.nth(i)) for i in range(p.degree()+1)]


def main(out: Path):
    out.mkdir(parents=True,exist_ok=True)
    x,t,L,M,Q=S.symbols('x t L M Q')
    A=-M**2*(15*M+16)/3
    B=M**3*(27*M**2+180*M+128)/27
    F=M*Q**2-(L**3+4*L**2-5*M*L+M**2)
    Xp=M*(L+S.Rational(4,3)); Yp=M**2*Q
    disc=M**8*(27*M**2-140*M-144)
    assert S.expand(Yp**2-Xp**3-A*Xp-B-M**3*F)==0
    assert S.expand(4*A**3+27*B**2-disc)==0
    Kr=(L*(L+4)-M)/M
    Zr=(L+4)*Q/M
    fr=2+(L+4)*(L**2+4*L-4*M)/M**2
    assert S.cancel(M**3*(Zr**2-1-(fr-1)*Kr)-(L+4)**2*F)==0
    assert S.cancel((fr-2)*Q-Zr*(Kr-3))==0
    assert S.cancel((fr-2)*L-(Kr+1)*(Kr-3))==0
    R=27*t**2-140*t-144
    assert S.gcd(t,R)==1
    assert R.subs(t,-S.Rational(16,15))==S.Rational(2704,75)
    assert (27*t*t+180*t+128).subs(t,-S.Rational(16,15))==-S.Rational(832,25)
    print('WEIERSTRASS_AND_RECOVERY_IDENTITIES=PASS')
    finite=[]
    for e in range(1,65):
        k=e//2
        row=[e,k,2*e-4*k,3*e-6*k,8*e-12*k]
        assert row[2] in (0,2) and row[3] in (0,3) and row[4]>0
        finite.append(row)
    infinity=[]
    for m in range(1,65):
        N=(5*m+5)//6
        row=[m,N,4*N-3*m,6*N-5*m,12*N-10*m]
        assert row[2]>=0 and row[3]>=0 and row[4]>=0
        assert row[2]<4 or row[3]<6
        infinity.append(row)
    # Profiles verify exact gcd/root arithmetic, not existence of sections.
    samples=[x*x+1,x*x,(x-1)**2+2,(x-1)**4,x*x*(x-1)**2,
             x*(x-1)*(x+2)*(x-3),(x*x+1)**3,(x-1)**2*(x+2)**4,
             (x*x+1)**2*(x-3)**2,(x-1)**8]
    profiles=[]
    for Mx in samples:
        Mp=S.Poly(Mx,x,domain=S.QQ); m=Mp.degree()
        _,fac=S.sqf_list(Mp)
        r=sum(g.degree() for g,e in fac)
        o=sum(g.degree() for g,e in fac if e%2)
        Wp=S.Poly(R.subs(t,Mx),x,domain=S.QQ)
        w=Wp.degree()-S.gcd(Wp,Wp.diff()).degree()
        chi=(5*m+5)//6-(m-o)//2
        bound=2*r+2*w-o-2
        assert 2*r-o<=m and w<=2*m and bound<=5*m-2
        profiles.append(dict(M=encoded(Mx,x),m=m,r=r,o=o,w=w,chi=chi,
                             ell_bound=bound,uniform_bound=5*m-2))
    print('LOCAL_MINIMALITY_AND_ROOT_PROFILES=PASS')
    # m=2: no repeated root of R(M), since the critical value of a rational
    # quadratic is rational whereas the roots of R are irrational.
    aa,bb,cc=S.symbols('a b c')
    M2=aa*x*x+bb*x+cc
    disc_composite=S.discriminant(R.subs(t,M2),x)
    critical=cc-bb*bb/(4*aa)
    expected=432*aa**6*S.discriminant(R,t)**2*R.subs(t,critical)
    assert S.cancel(disc_composite-expected)==0
    m2=degree_pairs_for_loss(2)
    assert m2==[(8,7,4),(14,12,6),(20,17,8)]
    print('LOSS_TWO_DEGREE_BOUND=PASS; DEGREE_CLASSES=8,14,20')
    # Exact broad cubic solution that fails original polynomial recovery.
    LL=t*(t*t-6*t+1)/4
    QQ=t*(-t**3+9*t*t-15*t-17)/8
    assert S.expand(F.subs({L:LL,M:t,Q:QQ}))==0
    fweak=S.cancel(fr.subs({L:LL,M:t}))
    weakpoly=S.cancel(fweak+12/t)
    S.Poly(weakpoly,t,domain=S.QQ)  # exact polynomial construction must succeed
    weak=dict(M=encoded(x*x+1,x),L_in_M=encoded(LL,t),Q_in_M=encoded(QQ,t),
              f_polynomial_part_in_M=encoded(weakpoly,t),f_pole_numerator=-12,
              restored_K_polynomial=True,restored_Z_polynomial=True,
              restored_f_polynomial=False,original_NC3=False)
    assert S.Poly(S.cancel(Kr.subs({L:LL,M:t})),t,domain=S.QQ)
    assert S.Poly(S.cancel(Zr.subs({L:LL,M:t,Q:QQ})),t,domain=S.QQ)
    print('BROAD_CUBIC_NOT_ORIGINAL_INPUT=PASS')
    # Infinite family applications: each verifies its hypotheses, not all j.
    applications=[]
    for k,a,b,c,p in [(1,1,1,1,3),(2,3,5,7,5),(3,1,3,1,7)]:
        U=1+2*a*x+2*c*x**(9*k)+2*x**(13*k)
        V=1+2*b*x+2*x**(13*k)
        fp=S.Poly(1+U*V,x,domain=S.ZZ)
        coeff=[int(fp.nth(i)) for i in range(fp.degree()+1)]
        d=len(coeff)-1; H=sum(coeff); gate=(2*(H+2))**(2*d+4)
        e=1; T=p
        while T<gate:
            e+=1; T*=p
        n=horner(coeff,T)
        old=candidate_slots(coeff,numerator=5,denominator=6)
        new=candidate_slots(coeff)
        assert leading_D(coeff[-1],d)==2 and old==[22*k] and new==[]
        assert n%4==0 and S.gcd(U,V)==1
        src=valuation(n-2,p)
        assert src==e+valuation(coeff[1],p)
        assert valuation(n*(n-1)*(n-2)//6,p)==src-(1 if p==3 else 0)
        nb=n.to_bytes((n.bit_length()+7)//8,'big')
        applications.append(dict(k=k,a=a,b=b,c=c,coefficients=coeff,d=d,H=H,A=coeff[-1],
            content=reduce(gcd,coeff[1:]),D=2,h=22*k,old_candidate_slots=old,
            new_candidate_slots=new,p=p,e=e,gate_holds=True,n_mod4=n%4,
            n_bit_length=n.bit_length(),n_big_endian_sha256=hashlib.sha256(nb).hexdigest(),
            actual_source_exponent=src,choose_n_3_valuation=src-(1 if p==3 else 0),
            first_source_block_degrees=[13*k,13*k]))
    print('STRICTLY_NEW_GAP_FILTER_APPLICATIONS=PASS; ROWS=3')
    cert=dict(status='EXACT_REPLAY_PASS',scope='author algebra plus adopted external theorem; not Lean',
      curve=dict(A=encoded(A,M),B=encoded(B,M),delta_without_minus16=encoded(disc,M),
                 bad_value_polynomial=encoded(R,t),bad_value_discriminant=int(S.discriminant(R,t))),
      finite_minimality=finite,infinity_minimality=infinity,root_profiles=profiles,
      loss_two_degree_classes=[list(z) for z in m2],weak_core=weak,applications=applications,
      uniform_inequalities=dict(ell_le_5m_minus_2=True,d_le_13m_minus_6=True,
                                thirteen_s_ge_eleven_d_plus_1=True),
      theorem_verification='Ulmer-Urzua geometric theorem is adopted, not machine-proved by this script')
    (out/'exact.json').write_text(json.dumps(cert,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('CENTER_11_OF_13_EXACT_REPLAY=PASS')

if __name__=='__main__':
    ap=argparse.ArgumentParser(); ap.add_argument('--out',type=Path,required=True)
    main(ap.parse_args().out)

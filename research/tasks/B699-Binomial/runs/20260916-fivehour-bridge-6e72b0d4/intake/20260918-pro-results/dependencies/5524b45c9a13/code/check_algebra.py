#!/usr/bin/env python3
"""Exact symbolic identities for the second-defect construction.
Requires SymPy.  No finite samples are substituted for the identities.
"""
import argparse,json
from pathlib import Path
import sympy as s

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    x,E,T,A,la,mu,g=s.symbols('x E T A la mu g', nonzero=True)
    rho=E*T
    z=(x*T-A)/E**2
    H=(2*x+E)/(la*mu)
    C=(4*z*x+4*z*E+T)/(la**2*mu**2)
    n=2*mu*C*H+2
    S=4*z*x+6*z*E+3*T
    f=8*T*T*x**3+4*T*(3*rho-4*A)*x**2+(6*rho**2-21*A*rho+8*A*A)*x+E*(rho-3*A)**2
    checks={}
    def ck(name,expr):
        ok=s.cancel(expr)==0
        if not ok: raise AssertionError((name,s.factor(expr)))
        checks[name]=True
    ck('norm_and_C',(x*C-z*H*H-la).subs(A,la**3*mu**2))
    ck('second_recovery',(A*n-4*x*S-2*(rho-3*A)).subs(A,la**3*mu**2))
    npoly=16*T*x**3+8*(3*rho-2*A)*x*x+12*E*(rho-2*A)*x+2*E*E*(rho-3*A)
    ck('n_cubic',(n*A*E*E-npoly).subs(A,la**3*mu**2))
    # Original same-input Q supplies delta^2; check exact clearing of all denominators.
    delta2=(la*mu*mu*C*C-z*(n-1))/(la*g*g)
    ck('delta_cubic',(E**3*la*A*g*g*delta2-f).subs(A,la**3*mu**2))
    disc_expected=-16*A*A*T**4*E**2*(27*rho**2-70*A*rho-36*A*A)
    ck('cubic_discriminant',s.discriminant(f,x)-disc_expected)
    ck('rational_singular_discriminant',s.Integer(70)**2+4*27*36-4*13**3)
    u=s.symbols('u',integer=True,positive=True)
    tail={}
    for l,m in [(1,1),(1,3),(3,1)]:
        av=l**3*m**2
        zz=u-av;hh=(2*u+1)/s.Integer(l*m)
        cc=(zz*hh**2+l)/u
        nn=s.factor(2*m*cc*hh+2)
        dd=s.factor((l*m*m*cc*cc-zz*(nn-1))/l)
        cc0=(4*u*u+(4-4*av)*u+1-4*av)/s.Integer(l*l*m*m)
        ck(f'tail_C_{l}_{m}',cc-cc0)
        tail[f'{l},{m}']={'C':str(s.factor(cc)),'n':str(nn),'delta_squared':str(dd)}
        if (l,m)==(1,1):
            ck('tail_11_factor',nn-4*(u+1)*(4*u*u-2*u-1))
        if (l,m)==(3,1):
            ck('tail_31_n',nn-s.Rational(4,27)*(4*u**3-102*u*u-159*u-40))
        if (l,m)==(1,3):
            ck('tail_13_n',nn-s.Rational(4,9)*(4*u**3-30*u*u-51*u-13))
            ck('tail_13_delta',dd-s.Rational(1,9)*(8*u**3-132*u*u+465*u+676))
    # Congruences are universal polynomial residue identities, a complete period of size 8.
    residue=[]
    for r in (1,3,5,7):
        dp=(8*r**3-132*r*r+465*r+676)%8
        np=(4*r**3-30*r*r-51*r-13)%8
        assert dp==r
        residue.append({'u_mod8':r,'9_delta2_mod8':dp,'9n_over4_mod8':np})
    assert residue[0]['9n_over4_mod8']==6
    for r in (1,3,5,7):
        assert (4*r**3-102*r*r-159*r-40)%2==1
    checks['all_tail_congruence_classes']=True
    out={'status':'PASS_EXACT_IDENTITIES','implementation':'SymPy symbolic rational-polynomial reduction',
         'sympy_version':s.__version__,'identities':checks,'tail_formulae':tail,
         'complete_mod8_classes':residue,
         'finite_height_expression':{'M':'rho+81','H_bound':'512*M^8','B_bound':'12^17172*(512*M^8)^4050',
                                    'log_n_bound':'4*B_bound','integer_n_bound':'2^(8*B_bound)'},
         'scope':'Identities and finite congruences only; not a proof of the external integral-point theorem.'}
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'identity_count':len(checks),'output':str(args.output)},ensure_ascii=False))
if __name__=='__main__':main()

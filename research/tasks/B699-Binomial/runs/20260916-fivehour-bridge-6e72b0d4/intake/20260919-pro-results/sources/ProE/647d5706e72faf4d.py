#!/usr/bin/env python3
"""Exact symbolic certificates only. No input/prime/exponent search."""
from pathlib import Path
import argparse, json, sympy as s
VARS = ['x','y','n','E','F','D','P','H','Q','S','g','xi','lam','mu','w','t','v','q','h','j']
SYMS = dict(zip(VARS, s.symbols(' '.join(VARS))))
globals().update(SYMS)
cases = {}
def add(name, expr, positive=False):
    poly=s.Poly(s.expand(expr),*[SYMS[z] for z in VARS],domain=s.ZZ)
    terms=[[list(m),int(c)] for m,c in poly.terms() if c]
    terms.sort(key=lambda a:a[0])
    cases[name]={'terms':terms,'positive':positive}
add('weighted_quartic',27*(x+y)**4-256*x**3*y)
add('finite_shift',(n+5)*(n-1)**2*(n-2)-n**4)
add('finite_shift_positive',((n+5)*(n-1)**2*(n-2)-n**4).subs(n,x+16),True)
add('moment_clear',w*g**3*xi*S**2*(lam*E*F)**2*(2*mu*D*Q*H)-2*lam**2*mu*Q*(g*E*S)**2*(g*F*P)*(F*H*xi))
add('source_minimum',13*(125+x)-1215,True)
add('width_budget',13*(5+x)**4-1215,True)
# Exact consequence of original n recovery and full K factorization; no new C^2 equation.
nu=lam*t-g**2*P
E1=n*v-lam*t**2*q**2+g**2*P
E2=g*xi*(n-2)-2*mu*D*q*v
E3=h*q-v-lam*t
E4=v-lam*t+g**2*P
add('K_recovery_combination',g*xi*E1-v*E2-g*xi*E4+g*xi*E3)
add('remaining_polynomial',P*q*(3*t-P)**2-3*t**2*q**2+6*t-P)
# A sign obstruction in a precisely declared relaxation, not NC3 examples.
for d,tag in ((7,'plus'),(11,'minus')):
    tv=12*v+7; pv=tv+4; qv=16*v+d; uv=3*tv-pv
    nv=pv*qv*uv+2; sig=tv*qv**2; tau=nv-sig
    fv=s.expand(nv*uv-3*tv**2*qv**2+pv)
    add('shell_G_'+tag,fv)
    add('shell_G_sign_'+tag,(fv if tag=='plus' else -fv).subs(v,x+1),True)
    add('shell_low_width_'+tag,(nv-qv**3).subs(v,x+1),True)
    add('shell_high_width_'+tag,(qv**4-nv).subs(v,x+1),True)
    add('shell_legal_tau_'+tag,(tau-4).subs(v,x+1),True)
    add('shell_endpoint_order_'+tag,(sig-tau).subs(v,x+1),True)
# Actual Psi coefficient normalization is homogeneous; use six times the raw coefficients.
L=n*(n-1)*(n-2); bb=3*j*(n-1)*(n-2); cc=3*j*(j-1)*(n-2); dd=j*(j-1)*(j-2)
I=bb**2-3*L*cc
add('Psi_n_recovery',n*I-3*L*(bb-cc))
add('Psi_j_recovery',j*I-bb*(bb-cc))
add('Psi_d_recovery',3*(n-2)*dd-cc*(j-2))
mods={}
for d,tag,vexpr in ((7,'plus',531*h),(11,'minus',333*h+5)):
    tv=12*vexpr+7; pv=tv+4; qv=16*vexpr+d; uv=3*tv-pv; nv=pv*qv*uv+2
    co=s.Poly(s.expand(nv-1),h,domain=s.ZZ)
    mods[tag]={'modulus':9,'coefficients_ascending':[int(co.nth(i)) for i in range(co.degree()+1)],'residue':6}
obj={'version':1,'variables':VARS,'cases':cases,'shell_mod9':mods,
     'scope':'symbolic identities and declared relaxed sign shells only; no finite NC3 search'}
p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args()
a.out.parent.mkdir(parents=True,exist_ok=True)
a.out.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
print(json.dumps({'symbolic_cases':len(cases),'positive_cases':sum(c['positive'] for c in cases.values()),'polynomial_congruences':len(mods),'sympy':s.__version__},sort_keys=True))

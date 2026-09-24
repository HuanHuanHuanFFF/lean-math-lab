#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from pathlib import Path
import sympy as S

A,B,c,h,d,v,W,U,X,E,O,K,T,a,b,z=S.symbols('A B c h d v W U X E O K T a b z')
Q=d+v;P=Q+h*v;nu=(h*d-Q)/2
norm=v*nu**2-P*Q**2+1
f=3*(5*B-80*A-c)**2-4*(4*A*c+15)**2
w=5*f+42*c**2-18000
V=w**2-97200*c**2+194400000
checks=[]
def zero(label,expr):
    if S.expand(expr)!=0:raise AssertionError(label)
    checks.append(label)
def divisible(label,expr,m):
    cs=S.Poly(S.expand(expr),*sorted(expr.free_symbols,key=str)).coeffs() if expr.free_symbols else [expr]
    if not all(t.is_Integer and int(t)%m==0 for t in cs):raise AssertionError(label)
    checks.append(label)

zero('Pd-Q2=2vnu',P*d-Q**2-2*v*nu)
zero('source_inverse_identity',P*(d*nu-2*Q**2)-Q**2*nu+2-2*norm)
j=(P+nu)*Q**2;k=(Q**2+v*nu)*P;n=P*Q*nu+2
zero('original_jk_sum_is_not_new_equation',j+k-n+2*norm)
zero('original_jk_product_is_not_new_equation',j*k-P*Q**2*(n-1)+P*Q**2*norm)
divnorm=nu**2-W-(h+3)*d**2-(2*h+3)*d*v-(h+1)*v**2
zero('integer_cancellation_before_mod',v*divnorm-norm-(d**3-1-v*W))
divisible('twoadic_w_polynomial',w.subs({A:2*a,B:4*b})-(9*c**2+8*b*c-4),16)
divisible('threeadic_A_divisible',w.subs(A,3*a)-6*((2*B-c)**2+c**2),9)
divisible('threeadic_A_unit_reduction',w.subs({B:3*b,c:-A+3*z},simultaneous=True)-A**4,3)
divisible('fiveadic_unit',V-4*c**4,5)
divisible('fiveadic_f_when_5_divides_c',f.subs(c,5*z),25)
divisible('fiveadic_w_when_v5c1',w.subs(c,5*z)-50*z**2,125)
divisible('fiveadic_V_over625',S.expand(V.subs(c,5*z)/625)-(4*z**4-3*z**2),5)
divisible('fiveadic_w_when_25_divides_c',w.subs(c,25*z),125)
divisible('fiveadic_V_when_25_divides_c',V.subs(c,25*z)-194400000,15625)
zero('square_comparison_x_ge4',7*(z+4)**2-18*(z+4)-25-(7*z**2+38*z+15))
Ntheta=(K*T**2*U-147*O)**2-3*(K*T**2*X-49*E)**2
zero('true_theta_norm_with_cross_term',Ntheta-(K**2*T**4*(U**2-3*X**2)+294*K*T**2*(X*E-U*O)-7203*(E**2-3*O**2)))

out={'status':'PASS','check_count':len(checks),'checks':checks,'sympy_version':S.__version__,
     'evidence_level':'exact polynomial verification, not Lean or an independent mathematical review'}
ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
args.out.write_text(json.dumps(out,sort_keys=True,indent=2)+'\n')
print('ROUND27_SYMBOLIC=PASS; CHECKS='+str(len(checks)))

#!/usr/bin/env python3
"""Symbolic identities only; uniform inequalities are in PROOFS.md."""
import sympy as S

d,v,H,A,h,y,B=S.symbols('d v H A h y B',nonzero=True)
Q=d+v
hp=(4*H+Q)/d
P=Q+hp*v
n=2*P*Q*H+2
F=4*d*v*H**2-4*v*Q**2*H-(Q**4-d)
L=(3*d+4*v)*Q**5-2*d*d*v
R=(Q**10-12*Q**7+15*d*Q**6-4*d*d*Q**5
   -4*d*Q**3+12*d*d*Q*Q-12*d**3*Q+4*d**4)
M=H*Q**3*(d+4*v)+Q**5-d*v
assert S.factor(d*(v*(2*H)**2-P*Q**2+1)-F)==0
assert S.factor(d*d*n-2*M-2*Q*F)==0
assert S.factor(d*d*R-4*v*M*(d*M-L)+Q**6*(d+4*v)**2*F)==0
print('POWER_IDENTITIES=PASS')

nu=S.symbols('nu')
nu_expr=(h*d-(d+v))/2
Y_expr=d*nu_expr-(d+v)**2
assert S.factor(h-(3+5*v/d+2*(v/d)**2+2*Y_expr/d**2))==0
norm=v*Y_expr**2-((d+v)**5-d*d)
source=v*nu_expr**2-(d+v+h*v)*(d+v)**2+1
assert S.factor(norm-d*d*source)==0
print('SAME_INPUT_NORM_H=PASS')

z=S.symbols('z')
g=(1+z)**S.Rational(5,2)
assert S.simplify(S.diff(g,z,5)-S.Rational(45,32)*(1+z)**S.Rational(-5,2))==0
assert S.simplify(S.diff(g,z,6)+S.Rational(225,64)*(1+z)**S.Rational(-7,2))==0
T4=sum(S.binomial(S.Rational(5,2),k)*z**k for k in range(5))
T5=T4+S.Rational(3,256)*z**5
r=A/S.sqrt(3)
H4=S.simplify(3+5*r+2*r*r+2*r*r*T4.subs(z,1/r))
H5=S.simplify(3+5*r+2*r*r+2*r*r*T5.subs(z,1/r))
J4=S.simplify(12*H4-16*A*A-81)
expected=40*S.sqrt(3)*A+15*S.sqrt(3)/(2*A)-S.Rational(45,16)/A**2
assert S.simplify(J4-expected)==0
assert S.simplify(12*(H5-H4)-27*S.sqrt(3)/(32*A**3))==0
C0=S.sqrt(3)*(40*A+S.Rational(15,2)/A)
assert S.simplify(C0*C0-4800*A*A-1800-S.Rational(675,4)/A**2)==0
print('TAYLOR_AND_MOD16_GAP_IDENTITIES=PASS')

JA=12*h-16*A*A-81
JB=16*A*d+120*y+27*B-4*B*h
relation=S.expand(B*JA+3*JB-(48*A+360*y))
assert S.factor(relation+16*A*(A*B-3*(d-1)))==0
print('TWO_GRID_COUPLING=PASS')
print('ROUND20_SYMBOLIC_VERIFY=PASS')

#!/usr/bin/env python3
"""Exact algebraic cross-checks. The proof does not infer universality from samples."""
import sympy as s
from finite_recovery import coefficients
h,t,m,v,Q,z,M=s.symbols('h t m v Q z M')
F=4*Q**3+(-h*h+6*h-1)*v*Q**2+2*h*(h-1)*v*v*Q-h*h*v**3-4
A,B,C=coefficients(h,t,m)
assert s.expand(m**3*F.subs(Q,1+(1+t/m)*v)-v*(A*v*v+B*v+C))==0
for tt in range(1,6):
    a,b,c=coefficients(h,tt,3)
    assert s.expand(a-A.subs({t:tt,m:3}))==0
    assert s.expand(b-B.subs({t:tt,m:3}))==0
    assert s.expand(c-C.subs({t:tt,m:3}))==0
# Same original-coordinate recovery: no new (n,j) is substituted.
P=Q+h*v
nu=(h*(Q-v)-Q)/2
E=P+nu; FF=Q*Q+v*nu; n=P*Q*nu+2
core=v*nu*nu-P*Q*Q+1
assert s.expand(E*FF-(n-1)+core)==0
assert s.expand(E*Q*Q+FF*P-n+2*core)==0
# Positive shifted forms for the inequalities used to bound h and coefficients.
assert s.expand((4*(m+1)**2+2*(m+1)+3)-(4*m*m+10*m+9))==0
assert s.expand((9*m*m-(4*m*m+10*m+9)).subs(m,3+z))==5*z*z+20*z+6
T=4*M*M+2*M+3
assert s.expand(T*T-(4*M*M+2*M)*T-11*M*M-(M+3)**2)==0
# C/m^3 < -h^2+6h+35, h>=15.
assert s.expand((h*h-6*h-35).subs(h,15+z))==z*z+24*z+100
assert s.expand((3*h*h-34*h-102).subs(h,15+z))==3*z*z+56*z+63
# Countermodel family only satisfies the new divisibility exterior, not the core norm.
x=s.symbols('x')
d=x*x+x+1
vv=x**3-1;qq=vv+x;hh=4*d*d+1
pp=qq+hh*vv;nn=(hh*x-qq)/2
R=32*x**9+72*x**8+176*x**7+209*x**6+280*x**5+180*x**4+166*x**3+16*x**2+28*x-27
assert s.factor(4*(vv*nn*nn-pp*qq*qq+1)-(x-1)*(x*x+x+1)*R)==0
assert s.expand(R.subs(x,1+z)).is_polynomial(z)
assert all(c>0 for c in s.Poly(s.expand(R.subs(x,1+z)),z).all_coeffs())
print('RECOVERY_POLYNOMIAL_IDENTITY=PASS')
print('GENERAL_RELATIVE_BOUND_IDENTITIES=PASS')
print('SAME_INPUT_COORDINATE_RECOVERY=PASS')
print('UNBOUNDED_EXTERIOR_COUNTERMODEL_DEFECT=PASS')
print('SYMPY_VERSION='+s.__version__)

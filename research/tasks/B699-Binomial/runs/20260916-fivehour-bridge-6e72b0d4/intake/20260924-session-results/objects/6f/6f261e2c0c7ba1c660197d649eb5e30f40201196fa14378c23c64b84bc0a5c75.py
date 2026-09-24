#!/usr/bin/env python3
from sympy import symbols, sqrt, expand, simplify

n,U,X = symbols('n U X')
r3=sqrt(3)
r5=sqrt(5)
alpha_t=U+X*r3

# (alpha^t)^2 + 1 = 2 U alpha^t modulo U^2-3X^2=1
expr=expand(alpha_t**2 + 1 - 2*U*alpha_t)
expr_reduced=simplify(expr.subs(U**2,3*X**2+1))
assert expr_reduced==0

# quadratic factor
assert expand((n-(3+r5))*(n-(3-r5))) == n**2-6*n+4
assert expand((n-3)**2-5) == n**2-6*n+4

# d,y Pell identity modulo U^2-3X^2=1
d=(3*X-1)/2
y=U/2
pell_expr=expand(d**2+d+1-3*y**2)
pell_reduced=simplify(pell_expr.subs(U**2,3*X**2+1))
assert pell_reduced==0

print('SYMBOLIC_IDENTITIES=PASS')

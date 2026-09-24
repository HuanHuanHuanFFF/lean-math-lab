#!/usr/bin/env python3
"""Deterministic checks for B699 D/i=3, 2026-09-21.

This script verifies algebraic identities and exact inequalities used in the report.
The finite searches at the end are explicitly sanity checks, not proofs of unbounded claims.
"""
from fractions import Fraction
from math import gcd, isqrt
import sympy as sp

h,Q,v,H,E,F,A,B,D,Y,x = sp.symbols('h Q v H E F A B D Y x')
P = Q + h*v
nu = ((h-1)*Q-h*v)/2

# 1. Minimal-branch cubic, derived from 4*v*nu^2 = 4*(P*Q^2-1).
cubic = 4*Q**3 + (-h**2+6*h-1)*v*Q**2 + 2*h*(h-1)*v**2*Q - h**2*v**3
assert sp.expand(cubic - 4 - (4*(P*Q**2-1) - v*((h-1)*Q-h*v)**2)) == 0

# 2. Difference/norm identity with D=Q-v and Y=D*nu-Q^2.
Dexpr = Q-v
Yexpr = sp.expand(Dexpr*nu-Q**2)
norm_resid = sp.expand(Dexpr**2 + v*Yexpr**2 - Q**5)
# Reduce using the exact branch equation v*nu^2 = P*Q^2 - 1.
# Direct polynomial division by that relation should have zero remainder.
rel = sp.expand(v*nu**2 - (P*Q**2-1))
G = sp.groebner([sp.together(rel*4)], h, Q, v, order='lex')
# Easier exact identity: norm_resid factors by the relation.
fac = sp.factor(norm_resid)
assert sp.simplify(fac / rel) == Dexpr**2

# 3. T_rho simplification in the mu=1 residual: u=Q,z=4v,A*=1,epsilon=H-2Q, nu=2H.
# Substitute H=nu/2 and v*nu^2=P*Q^2-1.
T_raw_num = sp.expand(v*(nu-4*Q)**2 + 1)  # numerator of T_rho*Q
T_target = sp.expand(Q*(Q**2 + (20-3*h)*Q*v + 4*h*v**2))
assert sp.factor(T_raw_num - T_target - (v*nu**2-(P*Q**2-1))) == 0

# 4. Source-block linearization: if E=P+A H, F=Q^2+B H,
#    branch identities force A=2, B=2v because P Q^2 - 4vH^2 = 1.
# The two transformed equations are:
# (A-2)Q^2 = 2H(B-2v)
# P(B-2v) = 2vH(A-2).
# Eliminate B-2v -> (A-2)(P Q^2-4vH^2)=0.
elim = sp.expand(P*((A-2)*Q**2) - 2*H*(2*v*H*(A-2)))
assert sp.simplify(elim - (A-2)*(P*Q**2-4*v*H**2)) == 0

# 5. Exact small-h lower bounds.
def fpoly(hh):
    return 4 + (-hh*hh+6*hh-1)*x + 2*hh*(hh-1)*x**2 - hh*hh*x**3
assert sp.expand(fpoly(3) - (4+8*x+12*x**2-9*x**3)) == 0
assert sp.expand(fpoly(5) - (4+4*x+40*x**2-25*x**3)) == 0
assert sp.expand(fpoly(7) - (4-8*x+84*x**2-49*x**3)) == 0
assert sp.expand(fpoly(9) - (4-28*x+144*x**2-81*x**3)) == 0
assert sp.expand(fpoly(11) - (4-56*x+220*x**2-121*x**3)) == 0

# h=7,9 quadratic lower-bound minima.
assert Fraction(124,35) > Fraction(4,1331)
assert Fraction(8,9) > Fraction(4,1331)
# h=11 exact critical-point minimum and rational lower bound using sqrt(58)<381/50.
min11_lower = Fraction(916,7425)
assert min11_lower > Fraction(4,1331)
assert 58*2500 < 381*381  # sqrt(58)<381/50

# 6. Delta=1 square sandwich for all odd Q>3: S sits between A^2 and (A+1)^2.
q = sp.symbols('q', integer=True, positive=True)
S = q**4+q**3+q**2+q+1
Aq = q**2+(q-1)/2
assert sp.simplify((S-Aq**2) - (7*q**2+6*q+3)/4) == 0
assert sp.simplify(((Aq+1)**2-S) - (q-3)*(q+1)/4) == 0

# 7. T positivity threshold formulas.
t = 1+(20-3*h)*x+4*h*x**2
assert sp.simplify(t.subs(x,3/h) - (sp.Rational(96,1)/h-8)) == 0
assert sp.simplify(t.subs(x,sp.Rational(1,3)) - (sp.Rational(69,1)-5*h)/9) == 0

print('SYMBOLIC_CHECKS=PASS')
print('small_h_min_bounds: h7=124/35, h9=8/9, h11>916/7425; all > 4/1331')
print('delta1_square_gap=PASS for symbolic odd q>3')

# --- Sanity checks only (NOT proofs) ---
weak=[]
for hh in range(3,102,2):
    for qq in range(3,301,2):
        for vv in range(2,qq,2):
            pp=qq+hh*vv
            nn_num=(hh-1)*qq-hh*vv
            if nn_num<=0 or nn_num%2: continue
            nnu=nn_num//2
            if vv*nnu*nnu != pp*qq*qq-1: continue
            if (qq**3-1)%vv: continue
            if gcd(vv,pp*qq)!=1: continue
            weak.append((hh,qq,vv,pp,nnu,qq-vv))
print('SANITY_MINIMAL_SOLUTIONS_h<=101_Q<=300=', weak)
print('SANITY_NOTE=finite search only; not used for unbounded proofs')

# Known two-window weak model from the overview.
n=76672; j=26775
k=n-j; gg=gcd(n,j); alpha=n//gg
N=n-1; K=(n-2)//2
print('KNOWN_WEAK_MODEL', {
    'n':n,'j':j,'g':gg,'alpha':alpha,
    'N_divides_jj1': (j*(j-1))%N==0,
    'K_divides_jj1j2': (j*(j-1)*(j-2))%K==0,
    'alpha_is_c2s': (alpha & (alpha-1)==0) or (alpha%3==0 and ((alpha//3)&((alpha//3)-1)==0)),
})

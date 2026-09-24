#!/usr/bin/env python3
import sympy as s

d,v=s.symbols('d v')
Q=d+v
L=(3*d**6+19*d**5*v+50*d**4*v**2+70*d**3*v**3+55*d**2*v**4
   -2*d**2*v+23*d*v**5+4*v**6)
R=(Q**10-12*Q**7+15*d*Q**6-4*d**2*Q**5-4*d*Q**3
   +12*d**2*Q**2-12*d**3*Q+4*d**4)
L_short=(3*d+4*v)*Q**5-2*d**2*v
identity=v*L**2+d**3*R-Q**6*(d+4*v)**2*(Q**5-d**2)
assert s.expand(L-L_short)==0
assert s.expand(identity)==0
S=v**4+5*d*v**3+10*d**2*v**2+10*d**3*v+5*d**4+s.symbols('W')*d**2
assert s.expand(S-(((Q**5-d**5)/v)+s.symbols('W')*d**2))==0
print('PASS symbolic: L short form, discriminant identity, square-target expansion')

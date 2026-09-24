#!/usr/bin/env python3
import sympy as sp
x,y,q=sp.symbols('x y q')
# Class A terminal
FA=5225472*y**6+4478976*y**5+1399680*y**4+193536*y**3+11340*y**2+216*y+2
assert all(int(c)%4==0 for c in sp.Poly(FA-2,y).all_coeffs())
# Class B endpoints and exact weak second-source quotients
FB=2916*y**6+10935*y**5+15309*y**4+9612*y**3+2430*y**2+108*y+2
J0=y*(3*y+2)*(6*y+7)*(108*y**3+189*y**2+81*y+1)
J1=(27*y**3+54*y**2+27*y+1)*(36*y**3+75*y**2+40*y+2)
A0=(6*y+7)*(72*y**2+42*y-1)*(27*y**3+54*y**2+27*y+1)*(54*y**3+81*y**2+27*y-1)*(108*y**3+189*y**2+81*y+1)
A1=(9*y**2+12*y+1)*(27*y**3+54*y**2+27*y+1)*(108*y**3+189*y**2+81*y+1)*(324*y**4+1107*y**3+1296*y**2+561*y+47)
assert sp.expand(54*J0*(J0-1)*(J0-2)-2*A0*(FB-2))==0
assert sp.expand(54*J1*(J1-1)*(J1-2)-2*A1*(FB-2))==0
assert sp.Poly(A0,y,modulus=3).degree()==0 and int(sp.Poly(A0,y,modulus=3).LC())%3==1
assert sp.Poly(A1,y,modulus=3).degree()==0 and int(sp.Poly(A1,y,modulus=3).LC())%3==2
# Frozen 1+1+1 elimination factors: exact rational-root audit.
factors=[
3*q-1,23*q+4,q-1,q,q-2,
q**2-2*q+17,3*q**2-q+1,3*q**2+28*q-4,57*q**2-72*q+16,
q**3+9*q**2+3*q+3,
18*q**4-75*q**3+110*q**2-52*q+8,
413*q**7-4529*q**6+19025*q**5-37936*q**4+35746*q**3-12844*q**2-432*q+576,
216*q**8-648*q**7+2151*q**6-2998*q**5+1135*q**4-184*q**3+512*q**2-224*q+32,
59049*q**14+78732*q**13-288684*q**12+8829000*q**11-28582200*q**10+40309848*q**9-37023480*q**8+24205472*q**7-8700640*q**6+1938816*q**5-815952*q**4+100064*q**3-133488*q**2+25920*q-1728]
roots=set()
for f in factors:
    roots.update(sp.polys.polytools.ground_roots(sp.Poly(f,q)).keys())
assert roots=={sp.Rational(0),sp.Rational(1),sp.Rational(2),sp.Rational(1,3),sp.Rational(-4,23)}
# surviving rational candidates violate gcd(U,R)=1
U13=2*(x-1)*(x**2-4*x+1); R13=x*(x-1)*(x-sp.Rational(1,3))
Um=2*x*(529*x**2-460*x-150)/529; Rm=x*(x-1)*(23*x+4)/23
assert sp.degree(sp.gcd(sp.Poly(U13,x),sp.Poly(R13,x)))==1
assert sp.degree(sp.gcd(sp.Poly(Um,x),sp.Poly(Rm,x)))==1
# q=2 separate contradiction
s=sp.symbols('s')
assert sp.resultant(16*s**2-172*s+375,s*(28*s-45),s)!=0
# Bad-certificate rejection
assert sp.expand(54*J0*(J0-1)*(J0-2)-2*(A0+3)*(FB-2))!=0
print('PASS independent endpoint/certificate checker')

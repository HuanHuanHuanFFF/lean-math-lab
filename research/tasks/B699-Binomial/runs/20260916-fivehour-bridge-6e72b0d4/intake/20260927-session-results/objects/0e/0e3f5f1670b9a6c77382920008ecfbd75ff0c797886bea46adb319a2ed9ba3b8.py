import sympy as s
z,b=s.symbols('z b', nonzero=True)
r=s.sqrt(3)
y=(z+z**-1)/4
d=r*(z-z**-1)/4-s.Rational(1,2)
v=3*(d-1)*y/b
W=b*y
S=s.expand(v**4+5*d*v**3+10*d**2*v**2+10*d**3*v+5*d**4+d**2*W)
cs={4:s.expand(v**2).coeff(z,4)}
P=cs[4]*z**4
for i in range(3,-1,-1):
 cs[i]=s.factor(s.expand(S-P**2).coeff(z,4+i)/(2*cs[4]))
 P+=cs[i]*z**i
print('COEFFS',flush=True)
for i,c in cs.items():print(i,c,flush=True)
Pc=s.expand(P)
conj=lambda c:s.expand(c).xreplace({r:-r})
T=cs[0]+sum(cs[i]*z**i+conj(cs[i])*z**-i for i in range(1,5))
R=s.expand(S-T**2)
print('T constant anti',s.simplify(cs[0]-conj(cs[0])),flush=True)
print('residual coeffs S-T^2',flush=True)
for i in range(8,-9,-1):
 c=s.factor(R.coeff(z,i))
 if c!=0:print(i,c,flush=True)
print('v4 top',cs[4],flush=True)
T0=v**2+s.Rational(5,2)*d*v+s.Rational(15,8)*d**2+s.Rational(5,16)*b*y-s.Rational(5,384)*b**2
print('T-T0',s.factor(s.expand(T-T0)),flush=True)
print('numerator T0',s.factor(384*b**2*s.expand(T0)),flush=True)
dd,yy=s.symbols('d y')
vv=3*(dd-1)*yy/b
SS=vv**4+5*dd*vv**3+10*dd**2*vv**2+10*dd**3*vv+5*dd**4+dd**2*b*yy
TT=vv**2+s.Rational(5,2)*dd*vv+s.Rational(15,8)*dd**2+s.Rational(5,16)*b*yy-s.Rational(5,384)*b**2
RR=s.rem(s.expand((SS-TT**2)*147456*b**2),3*yy**2-dd**2-dd-1, yy)
print('residual reduced',s.factor(RR),flush=True)
print('residual divide b?',s.Poly(RR,dd,yy),flush=True)

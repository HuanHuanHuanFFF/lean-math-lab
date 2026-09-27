"""Optional discovery/cross-check using SymPy. Not required for offline replay.
Uses symbolic triangular square-root extraction rather than the stored table.
Run: python evidence/discover_sympy.py
"""
import sympy as s
z,eta=s.symbols('Z eta', nonzero=True)
k=s.sqrt(3);lam=2+k;lbar=2-k
X=(z-z**-1)/(2*k);U=(lam*z+lbar/z)/2
V=(z+1/z)/2;y=(lam*z*z+lbar/z**2)/4
d=-s.Rational(1,2)+k*(lam*z*z-lbar/z**2)/4
v=eta*X*y;W=9*U*y/eta
S=s.expand(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W)
lead=s.simplify(s.expand(v**2).coeff(z,6));coeff={6:lead}
for j in range(1,7):
    power=12-j
    old=sum(coeff[i]*coeff[h] for i in coeff for h in coeff if i+h==power)
    coeff[6-j]=s.factor(s.radsimp((S.coeff(z,power)-old)/(2*lead)))
print('SymPy version:',s.__version__)
for i,c in coeff.items():
    print('c',i,'rational=',s.factor(s.expand(c).coeff(k,0)),
          'sqrt3=',s.factor(s.expand(c).coeff(k,1)))
P=sum(c*z**i for i,c in coeff.items())
assert all(s.simplify(s.expand(S-P**2).coeff(z,j))==0 for j in range(6,13))
b0=s.factor(s.expand(coeff[0]).coeff(k,1))
assert s.simplify(b0+45*(4*eta**2+27)/(256*eta**4))==0
# Direct same-origin square-recovery algebra, before substituting Pell parameters.
D,v0,nu=s.symbols('d v nu');Q=D+v0;Y=D*nu-Q**2
Fnu=D*v0*nu**2-2*v0*Q**2*nu-Q**4+D
assert s.expand(v0*Y**2-Q**5+D**2-D*Fnu)==0
print('PASS symbolic top cancellation, nonzero irrational constant formula, and same-input recovery identity')

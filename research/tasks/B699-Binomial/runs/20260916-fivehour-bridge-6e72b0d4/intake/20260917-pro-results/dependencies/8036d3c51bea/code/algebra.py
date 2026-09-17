"""Sparse integral polynomial identities, no CAS dependency."""
import json,sys
from pathlib import Path
N=5
class Poly:
 def __init__(self,terms=None):self.t={k:v for k,v in (terms or {}).items() if v}
 @staticmethod
 def c(n):return Poly({(0,)*N:n})
 @staticmethod
 def var(i):
  e=[0]*N;e[i]=1;return Poly({tuple(e):1})
 def __add__(self,o):
  if not isinstance(o,Poly):o=Poly.c(o)
  d=self.t.copy()
  for k,v in o.t.items():d[k]=d.get(k,0)+v
  return Poly(d)
 __radd__=__add__
 def __neg__(self):return Poly({k:-v for k,v in self.t.items()})
 def __sub__(self,o):return self+-o if isinstance(o,Poly) else self+(-o)
 def __rsub__(self,o):return -self+o
 def __mul__(self,o):
  if not isinstance(o,Poly):o=Poly.c(o)
  d={}
  for a,x in self.t.items():
   for b,y in o.t.items():
    k=tuple(a[i]+b[i] for i in range(N));d[k]=d.get(k,0)+x*y
  return Poly(d)
 __rmul__=__mul__
 def __pow__(self,e):
  r=Poly.c(1)
  for _ in range(e):r=r*self
  return r
A,u,y,q,T=[Poly.var(i) for i in range(N)];r=u*(A-u)
checks=[]
def check(name,p):
 assert not p.t,name
 checks.append(name)
R=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
check('cubic_by_quadratic',6*(y+u)*(y+u-A)*(y+u-2*A)-(2*y+6*u-4*A)*(3*y*(y-A)-q)-R)
# Separate five-variable substitution: A,u,delta,h,T.
delta=Poly.var(2);h=Poly.var(3);ys=u+T*delta;qs=3*r-T*h
Rs=6*r*(2*A-u-3*ys)+2*qs*(ys+3*u-2*A)
L=12*r*delta+2*h*(T*delta+4*u-2*A)
check('full_T_residual',Rs+T*L)
check('B1_sharp_cubic',4*A**3-27*u*(A-u)**2-(A-3*u)**2*(4*A-3*u))
# Generic A,u,N,y first-window clearing.
NN=Poly.var(4);yy=Poly.var(2)
check('first_window_clearing',(u*NN+yy)*(u*NN+yy-A)-yy*(yy-A)-u*NN*(u*NN+2*yy-A))
B=Poly.var(0);Xnum=825*B**2-31*B-4
# Multiply all rational expressions through by eight.
check('compatible_family_first',3*(3+55*B)*(55*B-5)-(11*(825*B**2-30*B-4)-1))
check('compatible_family_threshold',Xnum-8*(24*B**2)-(633*B**2-31*B-4))
check('family_threshold_shift',633*(B+4)**2-31*(B+4)-4-(633*B**2+5033*B+10000))
# Clearing denominator 3T in the B=1 scalar comparison.
check('B1_margin',9*T**2-8*T*(T-1)-9*(T-1)-(T**2-T+9))
D=Poly.var(1)
check('positive_B2_margin',2*(3*T*D**2-3)-(9*T*D)-(3*T*D*(2*D-3)-6))
out=Path(sys.argv[1]);out.mkdir(parents=True,exist_ok=True)
(out/'algebra.json').write_text(json.dumps({'exact_integral_polynomial_identities':checks,'count':len(checks)},sort_keys=True,indent=2)+'\n')
print('PASS',len(checks),'exact identities')

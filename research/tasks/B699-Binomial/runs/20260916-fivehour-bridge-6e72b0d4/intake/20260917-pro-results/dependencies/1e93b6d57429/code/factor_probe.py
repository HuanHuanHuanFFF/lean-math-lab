from pathlib import Path
import sympy as s,json,itertools
from scipy.optimize import linprog
from fractions import Fraction
base=Path(__file__).resolve().parents[1]
x,y=s.symbols('x y')
Q=10*x**4+4*x**3*y-54*x**3+15*x**2*y**2-45*x**2*y+90*x**2+4*x*y**3-45*x*y**2+99*x*y-58*x+10*y**4-54*y**3+90*y**2-58*y+12
B=x*x+x*y-4*x+y*y-4*y+3
polys=[x-a for a in range(4)]+[y-a for a in range(4)]+[x-y,B,Q]
def order(F,a,b):
 p=s.Poly(F.subs({x:x+a,y:y+b}, simultaneous=True),x,y)
 return min(sum(m) for m,c in p.terms())
pts=[(r,b,r-b) for r in [1,3,4] for b in (range(r+1) if r!=4 else range(1,4))]
deg=[s.Poly(f,x,y).total_degree() for f in polys]
A=[]
for r,a,b in pts:
 row=[-order(f,a,b) for f in polys]+[int(rr==r) for rr in [1,3,4]]
 A.append(row)
f=len(polys)
res=linprog([0]*f+[-1]*3,A_ub=A,b_ub=[0]*len(A),A_eq=[deg+[0]*3],b_eq=[1],bounds=(0,None),method='highs')
print(res.message, -res.fun)
print([(str(p),str(Fraction(float(t)).limit_denominator(10000))) for p,t in zip(polys,res.x) if t>1e-8])
print('w',[str(Fraction(float(t)).limit_denominator(10000)) for t in res.x[f:]])
for p in [B,Q]:
 print('orders',str(p),[(r,a,b,order(p,a,b)) for r,a,b in pts])
 print('shift signs',set(s.sign(c) for c in s.Poly(s.expand(p.subs({x:x+6,y:y+6}, simultaneous=True)),x,y).coeffs()))

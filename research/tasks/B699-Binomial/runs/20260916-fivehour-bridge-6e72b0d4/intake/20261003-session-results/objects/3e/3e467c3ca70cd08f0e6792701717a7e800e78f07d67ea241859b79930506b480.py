from common import *
import sympy as sp
from candidate_forms import N,X,W,P0,lam
u,t=sp.symbols('u t')
A=sp.expand(P0+lam*(N-3)*(N-5)*W)
rec=json.loads((ROOT/'certificates/geometry2022/rational_exception.json').read_text())
assert sp.expand(sp.sympify(rec['H'],locals={'N':N,'X':X}).subs(sp.Symbol('a0'),14400*lam)-A)==0
points=[]
for r in range(3,9):
 for s in range(r//2+1):
  w=2 if 2*s==r else 1
  local=sp.Poly(A.subs({N:r+u,X:s*(r-s)+(s*u if w==2 else 0)+t}),u,t)
  layers={}
  for (i,j),c in local.terms():layers.setdefault(i+w*j,[]).append([i,j,str(c)])
  gcd=sp.Poly(0,lam);seen=[]
  for weight,rows in sorted(layers.items()):
   for i,j,c in rows:gcd=sp.gcd(gcd,sp.Poly(c,lam));seen.append([i,j,c])
   # gcd a nonzero monomial means its only possible zero is lambda=0.
   if len(gcd.terms())==1:
    points.append({'r':r,'s':s,'weight_X_local':w,'upper_order':weight,'coefficients_through_bound':seen,'gcd':str(gcd.monic().as_expr())});break
  else:raise AssertionError('no upper bound')
out={'family':'A35','parameter_domain':'lambda in Q minus {0}; lambda=0 is reducible P0','polynomial':str(A),'degree_X':4,'weighted_degree':8,'points':points}
(ROOT/'certificates/A35_source_bounds.json').write_text(json.dumps(out,indent=2)+'\n')
print('bounds',[p['upper_order'] for p in points], 'complete rational affine family verified')

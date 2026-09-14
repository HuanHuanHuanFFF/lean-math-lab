from pathlib import Path
import json
from fractions import Fraction as F
from math import comb,gcd
from functools import reduce
import sympy as sp
R=Path(__file__).resolve().parents[1]
x=json.loads((R/'evidence/high_degree_probe.json').read_text());old=json.loads((R/'inputs/positions/B699-ProA-i9-quadratic-position-20260913/evidence/relaxation_witnesses.json').read_text());cells=[(r,b,r-b) for r in range(9) for b in range(r+1)]
results=[]
for rec in x['records']:
 monoms=rec['monomials'];support=[i for i,x in enumerate(rec['positive_shifted_coefficients_float']) if x>1e-7]
 rows=[]
 for i in rec['selected']:
  r,b,c=cells[i]; rows.append([sp.Rational(b-9,16)**monoms[k][0]*sp.Rational(c-b,16)**monoms[k][1] for k in support])
 rows.append([int(monoms[k][1]==0) for k in support]);rhs=sp.Matrix([0]*len(rec['selected'])+[1]);M=sp.Matrix(rows)
 try:
  sol,params=M.gauss_jordan_solve(rhs);sol=sol.subs({p:0 for p in params})
 except ValueError:
  results.append({'positions':rec['positions'],'degree':rec['degree'],'status':'REJECT_EXACT_INCONSISTENT'});continue
 if any(v<0 for v in sol):
  results.append({'positions':rec['positions'],'degree':rec['degree'],'status':'REJECT_NEGATIVE_COEFFICIENT'});continue
 D=sp.ilcm(*[sp.denom(v)/sp.gcd(sp.denom(v),1) for v in sol]);coef={tuple(monoms[k]):sp.Rational(v) for k,v in zip(support,sol) if v}
 # integer ordinary polynomial F(X,Y) with X=j, Y=n-j
 X,Y=sp.symbols('X Y');expr=sum(v*((X-9)/16)**u*((Y-X)/16)**w for (u,w),v in coef.items());expr=sp.Poly(sp.expand(expr),X,Y);den=sp.ilcm(*[sp.denom(v) for v in expr.coeffs()]);gg=reduce(gcd,[int(v*den) for v in expr.coeffs()]);expr=sp.Poly(expr.as_expr()*den/gg,X,Y)
 terms=[[int(p[0]),int(p[1]),int(v)] for p,v in expr.terms()];orders=[]
 for r,b,c in cells:
  order=0
  while order<=rec['degree']:
   if any(sum(z*comb(u,dx)*comb(v,order-dx)*b**(u-dx)*c**(v-order+dx) for u,v,z in terms if u>=dx and v>=order-dx) for dx in range(order+1)):break
   order+=1
  orders.append(order)
 w=next(w for w in old['witnesses'] if w['positions']==rec['positions']);score=sum(F(z)*d for z,d in zip(w['cell_masses'],orders));degree=expr.total_degree();positive=sp.Poly(sp.expand(expr.as_expr().subs({X:sp.Symbol('x')+9,Y:sp.Symbol('x')+sp.Symbol('y')+9})),sp.Symbol('x'),sp.Symbol('y'))
 okay=all(v>=0 for v in positive.coeffs()) and any(v>0 and p[1]==0 for p,v in positive.terms())
 out={'positions':rec['positions'],'requested_degree':rec['degree'],'degree':degree,'status':'EXACT_SEPARATING' if score>degree and okay else 'EXACT_NOT_SEPARATING','score':str(score),'poly':terms,'orders':orders,'positive_shifted':okay,'expression':str(expr.as_expr())};results.append(out);print(out['positions'],degree,out['status'],float(score),out['expression'])
(R/'evidence/high_degree_exact.json').write_text(json.dumps({'records':results},indent=2))

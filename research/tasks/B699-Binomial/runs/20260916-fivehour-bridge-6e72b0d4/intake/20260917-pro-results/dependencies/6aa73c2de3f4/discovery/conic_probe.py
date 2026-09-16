from pathlib import Path
import sympy as sp
from itertools import combinations
from math import gcd,lcm
from functools import reduce
from fractions import Fraction
import numpy as np,json,time
from scipy.optimize import linprog
x,y=sp.symbols('x y')
mon=[1,x,y,x*x,x*y,y*y]

def normalize(f):
 P=sp.Poly(f,x,y); den=lcm(*[sp.denom(v) for v in P.coeffs()]); cs=[int(c*den) for c in P.coeffs()];gc=reduce(gcd,cs);return sp.Poly(P.as_expr()*den/gc,x,y)

def order(P,p):
 return min(a+b for (a,b),c in sp.Poly(P.as_expr().subs({x:x+p[0],y:y+p[1]}, simultaneous=True),x,y).terms() if c)
for miss in [0,1]:
 st=time.time();ps=[(b,r-b) for r in [1,3,4] for b in range(r+1) if (r,b)!=(3,miss)]; pset=set(ps)
 atoms={}
 for pts in combinations(ps,5):
  mat=sp.Matrix([[sp.sympify(m).subs({x:xx,y:yy}) for m in mon]for xx,yy in pts]); ns=mat.nullspace()
  if len(ns)!=1: continue
  f=sum(m*c for m,c in zip(mon,ns[0]));p=normalize(f)
  for fac,e in sp.factor_list(p.as_expr())[1]:
   P=normalize(fac)
   atoms[str(P.as_expr())]=P
 for P in [sp.Poly(x,x,y),sp.Poly(y,x,y),sp.Poly(x-y,x,y)]:atoms[str(P.as_expr())]=P
 records=[]
 for key,P in atoms.items():
  expr=P.as_expr();T=order(P,(0,0));deg=P.total_degree()
  shift=sp.Poly(expr.subs({x:x+6,y:y+x+6},simultaneous=True),x,y)
  pos=(all(c>=0 for c in shift.coeffs())or all(c<=0 for c in shift.coeffs())) and shift.coeff_monomial(1)!=0
  homogeneous=T==deg
  c0=P.coeff_monomial(1)
  safec=T==0 and 0<abs(c0)<=6
  safehom=deg==1 and homogeneous and abs(P.coeff_monomial(x)-P.coeff_monomial(y))<=9
  if not(pos or safec or safehom):continue
  records.append({'poly':key,'degree':deg,'T':T,'orders':[order(P,p) for p in ps],'safe':'positive'if pos else'g-small'if safec else'slope'})
 n=len(records)
 aub=[]
 for z,(xx,yy) in enumerate(ps):
  r=xx+yy
  aub.append([-rec['orders'][z]for rec in records]+[int(t==r) for t in (1,3,4)])
 res=linprog([r['degree'] for r in records]+[0,0,0],A_ub=aub,b_ub=[0]*len(ps),A_eq=[[0]*n+[1]*3],b_eq=[1],bounds=(0,None),method='highs')
 selected=[dict(r,weight=str(Fraction(float(v)).limit_denominator(100000)))for r,v in zip(records,res.x)if v>1e-8]
 result={'missing':miss,'atoms':len(atoms),'safe_atoms':n,'optimum':res.fun,'rows':res.x[-3:].tolist(),'selected':selected,'seconds':time.time()-st}
 print(json.dumps(result,ensure_ascii=False),flush=True)
 open(str(Path(__file__).with_name(f'conics{miss}.json')),'w').write(json.dumps(result,indent=2))

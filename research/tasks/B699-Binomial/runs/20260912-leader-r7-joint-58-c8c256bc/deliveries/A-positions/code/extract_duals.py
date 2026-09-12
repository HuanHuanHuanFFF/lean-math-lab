from pathlib import Path
from fractions import Fraction as F
from math import gcd
from itertools import combinations
import numpy as np
from scipy.optimize import linprog
import json
R=Path(__file__).resolve().parents[1]
lp=json.loads((R/'evidence/all_lines_probe.json').read_text())
cp=json.loads((R/'evidence/conics_probe.json').read_text())
cells=[(r,b,r-b) for r in range(9) for b in range(r+1)]
polys=[];AA=[];degrees=[]
for a,b,c,ids in lp['lines']:
 # F(j,n-j) = (a+b)j + a(n-j)-c
 q=[-c,a+b,a,0,0,0]
 z=np.zeros(48);z[ids]=1;AA.append(z);degrees.append(1);polys.append({'coefficients':q,'multiplicities':[int(i in ids) for i in range(45)],'degree':1})
for q0 in cp['polynomials']:
 q=q0[:6];ids=q0[6]
 z=np.zeros(48);z[ids]=1;AA.append(z);degrees.append(2);polys.append({'coefficients':q,'multiplicities':[int(i in ids) for i in range(45)],'degree':2})
results=[]
for r,s in [(1,4),(2,3)]:
 Aeq=[]
 for a in range(9):
  eq=np.zeros(48)
  for k,(aa,bb,cc) in enumerate(cells):
   if a==aa:eq[k]=1
  if a==0:eq[45]=1
  if a==r:eq[46]=1
  if a==s:eq[47]=1
  Aeq.append(eq)
 obj=np.zeros(48);obj[46:48]=1
 res=linprog(obj,A_eq=Aeq,b_eq=np.ones(9),A_ub=AA,b_ub=degrees,bounds=[(0,None)]*45+[(0,1)]*3,method='highs')
 assert res.success
 lam=[F(float(x)).limit_denominator(10**6) for x in res.eqlin.marginals]
 nu=[F(float(x)).limit_denominator(10**6) for x in res.upper.marginals]
 inds=[k for k,x in enumerate(res.ineqlin.marginals) if x<-1e-9]
 dualpolys=[{**polys[k],'mu':str(F(float(res.ineqlin.marginals[k])).limit_denominator(10**6))} for k in inds]
 # Exact dual c >= A^T lambda+G^T mu+nu
 for k in range(48):
  v=sum(lam[a]*int(Aeq[a][k]) for a in range(9))+sum(F(t['mu'])*int(AA[idx][k]) for t,idx in zip(dualpolys,inds))+nu[k]
  assert v<=int(obj[k]),(r,s,k,v,obj[k])
 L=sum(lam)+sum(F(t['mu'])*t['degree'] for t in dualpolys)+sum(nu)
 B=11*sum(max(lam[a],F(0)) for a in range(9) if a not in(0,r,s))+sum(-F(t['mu'])*(sum(abs(v) for v in t['coefficients'])-1).bit_length() for t in dualpolys)+20
 rec={'positions':[r,s],'lambda':[str(v) for v in lam],'nu':[str(v) for v in nu],'polynomials':dualpolys,'L':str(L),'gamma':str(2-L),'constant_bits':str(B),'constant_bits_ceil':-(-B.numerator//B.denominator)}
 results.append(rec)
 print(r,s,'gamma',2-L,'B',B,'constraints',len(dualpolys),'lambda',lam,'nu',[(k,v) for k,v in enumerate(nu) if v])
 for t in dualpolys:print(' ',t['coefficients'],t['mu'], 'deg',t['degree'])
(R/'evidence/quadratic_dual_certificates.json').write_text(json.dumps({'status':'EXACT_DUAL_CANDIDATES_FOR_INFINITE_PROOF','certificates':results},indent=2))

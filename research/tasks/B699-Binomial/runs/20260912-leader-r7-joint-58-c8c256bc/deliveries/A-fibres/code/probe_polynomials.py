"""DISCOVERY ONLY. Polynomial nonvanishing is not assumed proved here."""
from pathlib import Path
import json,itertools,math,time
from fractions import Fraction as F
import numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1]
pts=[(r,s) for r in range(9) for s in range(r+1)]
M=np.array([[r*r,r*s,s*s,r,s,1] for r,s in pts],dtype=np.int64)
row=np.array([[int(r==a) for r,s in pts] for a in range(9)],dtype=float)
polys={}
def add(c):
 c=tuple(map(int,c));g=math.gcd(*c)
 if not g:return False
 c=tuple(v//g for v in c)
 if next(v for v in c if v)<0:c=tuple(-v for v in c)
 if c in polys:return False
 z=np.flatnonzero(M@np.array(c)==0)
 deg=2 if any(c[:3]) else 1
 if len(z)<2:return False
 polys[c]=(z,deg)
 return True
for (r,s),(a,b) in itertools.combinations(pts,2):add((0,0,0,s-b,a-r,r*b-s*a))

def solve(r,s):
 # row r,s masses are free; six remaining nonzero rows have total 1.
 eq=[row[a] for a in range(9) if a not in (r,s)]
 beq=[0 if a==0 else 1 for a in range(9) if a not in(r,s)]
 Au=[];Bu=[]
 for z,d in polys.values():
  a=np.zeros(45);a[z]=1;Au.append(a);Bu.append(d)
 obj=-(row[r]+row[s])
 return linprog(obj,A_eq=eq,b_eq=beq,A_ub=Au,b_ub=Bu,bounds=(0,None),method='highs')

def conics(x):
 # Candidate conics through five positive nodes. Integer rounded cofactors
 # are validated at all five nodes before use (discovery, not rank proof).
 support=np.flatnonzero(x>1e-8)
 comb=list(itertools.combinations(support,5))
 count=0
 for start in range(0,len(comb),4000):
  indices=np.array(comb[start:start+4000]); mats=M[indices].astype(float)
  coeff=[]
  for k in range(6):
   minor=np.delete(mats,k,axis=2)
   coeff.append(((-1)**k)*np.rint(np.linalg.det(minor)).astype(np.int64))
  cs=np.stack(coeff,axis=1)
  vals=M@cs.T
  mask=(vals==0)
  sums=x@mask
  for k in np.flatnonzero((sums>2+1e-8)&np.any(cs!=0,axis=1)):
   ids,c=indices[k],cs[k]
   if np.any(M[ids]@c): continue
   count+=add(c)
 return count,len(comb)

out=[];start=time.monotonic()
def save():
 (R/'evidence/polynomial_discovery.json').write_text(json.dumps({'status':'DISCOVERY_ONLY_NONVANISHING_NOT_PROVED','seconds':time.monotonic()-start,'polynomial_count':len(polys),'polynomials':[{'coefficients':c,'zeros':z.tolist(),'degree':d} for c,(z,d) in polys.items()],'rows':out},indent=2)+'\n')
for r,s in [(3,1),(3,2),(1,2),(2,1),(1,3),(1,4),(4,1),(2,3)]:
 hist=[]
 for it in range(6):
  res=solve(r,s)
  if not res.success:
   hist.append({'iteration':it,'lp_status':str(res.message)});break
  new,tested=conics(res.x)
  hist.append({'iteration':it,'objective':-float(res.fun),'new_conics':int(new),'candidate_5sets':int(tested),'support':int(sum(res.x>1e-8))})
  print(r,s,hist[-1],flush=True)
  out_tmp={'r3':r,'r7':s,'history':hist[:],'last_primal':[str(F(float(v)).limit_denominator(10**7)) for v in res.x]}
  out.append(out_tmp);save();out.pop()
  if new==0:break
 out.append({'r3':r,'r7':s,'history':hist,'last_primal':None if not res.success else [str(F(float(v)).limit_denominator(10**7)) for v in res.x]})
(R/'evidence/polynomial_discovery.json').write_text(json.dumps({'status':'DISCOVERY_ONLY_NONVANISHING_NOT_PROVED','seconds':time.monotonic()-start,'polynomial_count':len(polys),'polynomials':[{'coefficients':c,'zeros':z.tolist(),'degree':d} for c,(z,d) in polys.items()],'rows':out},indent=2)+'\n')
print('DONE',len(polys),time.monotonic()-start)

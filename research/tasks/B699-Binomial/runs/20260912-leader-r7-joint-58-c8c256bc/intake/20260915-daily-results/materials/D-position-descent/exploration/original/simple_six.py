from itertools import combinations
from fractions import Fraction
from math import lcm
import numpy as np,json
from scipy.optimize import linprog
from pathlib import Path

def solve(d,H):
 pts=[(b,r-b) for r in range(d) for b in range(r+1)]
 R=sorted(set(range(d))-set(H))
 # d variables axes, one F, |R| rowweights
 A=np.zeros((len(pts),d+1+len(R)))
 for i,(b,c) in enumerate(pts):
  A[i,b]-=1;A[i,c]-=1
  A[i,d]=-int(b*b+c*c-3*b-3*c+2==0)
  if b+c in R:A[i,d+1+R.index(b+c)]=1
 eq=np.zeros((1,A.shape[1]));eq[0,d+1:]=1
 res=linprog([2]*(d+1)+[0]*len(R),A_ub=A,b_ub=[0]*len(pts),A_eq=eq,b_eq=[1],bounds=(0,None),method='highs')
 w=[Fraction(float(v)).limit_denominator(10000) for v in res.x]
 if sum(2*x for x in w[:d+1])>=1:return None
 L=lcm(*(x.denominator for x in w));w=[int(x*L) for x in w]
 rows={r:w[d+1+i] for i,r in enumerate(R) if w[d+1+i]}
 for b,c in pts:
  assert w[b]+w[c]+w[d]*int(b*b+c*c-3*b-3*c+2==0)>=rows.get(b+c,0)
 return {'d':d,'H':H,'axes':w[:d],'quad':w[d],'row_weights':rows,'gap':sum(rows.values())-2*sum(w[:d+1])}
ans=[]
for H in combinations(range(6),2):
 c=solve(6,H)
 if c:ans.append(c)
print(json.dumps(ans,indent=2))
Path('/mnt/data/prod_20260915_work/exploration/simple_six_certificates.json').write_text(json.dumps(ans,indent=2))

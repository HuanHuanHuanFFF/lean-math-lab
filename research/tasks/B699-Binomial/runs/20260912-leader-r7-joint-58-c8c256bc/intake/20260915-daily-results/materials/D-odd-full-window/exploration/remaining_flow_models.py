from pathlib import Path
import json,itertools
from fractions import Fraction
import numpy as np
from scipy.optimize import linprog
root=Path(__file__).resolve().parents[1]
scope={}
exec(open(root/'exploration/build_full_certificates.py').read().split('out=[];relative={}')[0],scope)
result={'meaning':'Exact low-degree rational relaxation models only. Not integer NC inputs, not counterexamples, not a global impossibility theorem.','pools':{},'models':[]}
remaining={5:[(0,1),(0,2),(0,3)],7:[(0,1,2),(0,1,3),(0,1,4),(0,1,5),(0,1,6),(0,2,3),(0,2,4),(0,2,5),(0,2,6),(0,3,4)]}
for m,hs in remaining.items():
 pts,fs=scope['pool'](m,m);result['pools'][str(m)]=[{'degree':deg,'coeffs':f,'zeros':inds,'nonzero':reason} for deg,f,inds,reason in fs]
 for H in hs:
  rows=[r for r in range(m) if r not in H]
  A=[];B=[]
  for deg,f,inds,reason in fs:
   a=[0]*len(pts)
   for i in inds:a[i]=1
   A.append(a);B.append(deg)
  for r in rows:A.append([-int(x+y==r) for x,y in pts]);B.append(-1)
  sol=linprog([0.]*len(pts),A_ub=np.array(A),b_ub=B,bounds=[(0,0) if x+y in H else (0,None) for x,y in pts],method='highs')
  assert sol.success,(m,H,sol.message)
  xx=[Fraction(float(x)).limit_denominator(10000000) for x in sol.x]
  assert all(sum(Fraction(a)*x for a,x in zip(aa,xx))<=b for aa,b in zip(A,B))
  result['models'].append({'m':m,'H':H,'values':[str(x) for x in xx],'checked_inequalities':len(A)})
  print(m,H,len(A),max(x.denominator for x in xx))
(root/'exploration/remaining_flow_models.regenerated.json').write_text(json.dumps(result,separators=(',',':'))+'\n')

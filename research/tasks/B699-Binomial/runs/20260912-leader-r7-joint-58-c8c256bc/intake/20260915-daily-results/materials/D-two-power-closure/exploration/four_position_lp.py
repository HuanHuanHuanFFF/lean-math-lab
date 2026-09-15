import numpy as np,json
from itertools import combinations
from fractions import Fraction
from scipy.optimize import linprog
from math import lcm
out=[]
for Htail in combinations(range(1,8),3):
 H=(0,)+Htail;rows=[r for r in range(8) if r not in H]
 # a_0..a_7, q, w_r. degree cap 1, maximize sum w -degree
 c=np.array([2.]*9+[-1.]*len(rows))
 A=[];B=[]
 for r in rows:
  for b in range(r+1):
   v=[0.]*(9+len(rows));v[b]-=1;v[r-b]-=1
   if b*b+(r-b)**2-3*r+2==0:v[8]-=1
   v[9+rows.index(r)]=1;A.append(v);B.append(0.)
 A.append([2.]*9+[0.]*len(rows));B.append(1.)
 res=linprog(c,A_ub=np.array(A),b_ub=np.array(B),bounds=(0,None),method='highs')
 if res.fun< -1e-8:
  v=[Fraction(float(x)).limit_denominator(100000) for x in res.x];L=lcm(*(x.denominator for x in v));v=[int(x*L) for x in v]
  delta=sum(v[9:])-2*sum(v[:9]);print(H,delta,v,flush=True)
  out.append({'H':H,'a':v[:8],'q':v[8],'w':dict(zip(rows,v[9:])),'delta':delta})
open('/mnt/data/B699-ProD-next-work/exploration/four_lp.json','w').write(json.dumps(out,indent=2))

#!/usr/bin/env python3
"""Integer-programming discovery only. Exact exponents/polynomials are accepted
separately; no MIP bound, numerical optimality, or infeasibility is a proof."""
import json,sys,math
from pathlib import Path
from collections import Counter
import numpy as np
from scipy.optimize import milp,Bounds,LinearConstraint
from accept_core import packpoly
RR=range(3,9)
def multiply(A,B):
 C={}
 for (a,b),x in A.items():
  for (c,d),y in B.items():C[a+c,b+d]=C.get((a+c,b+d),0)+x*y
 return {k:v for k,v in C.items() if v}
def product_kernel(c):
 q=c['q'];pts=[(r,v,row.count(v)) for r,row in zip(RR,c['roots']) for v in [s*(r-s) for s in range(r//2+1)]]
 mat=[]
 for r,v,m in pts:mat.append([int(s==r) for s in RR]+[int(v==t*(r-t)) for t in range(9)])
 co=np.array([1.]*6+[2.]*9)
 ans=milp(c=co,integrality=np.ones(15),bounds=Bounds([1]*6+[0]*9,[2*q]*15),constraints=LinearConstraint(np.array(mat),[m for r,v,m in pts],np.inf),options={'time_limit':20.})
 if ans.x is None:return {'status':'NO_DISCOVERY_WITNESS','message':ans.message}
 x=[round(v) for v in ans.x];degree=sum(x[:6])+2*sum(x[6:]);valid=degree<=2*q and min(x[:6])>=1 and min(x[6:])>=0 and all(sum(a*b for a,b in zip(row,x))>=m for row,(r,v,m) in zip(mat,pts))
 result={'status':'EXACT_EXPONENT_WITNESS' if valid else 'NO_WITHIN_DEGREE_WITNESS','vertical_exponents':x[:6],'source_line_exponents':x[6:],'degree':degree,'target':2*q}
 if valid:
  Q={(0,0):1}
  for r,v in zip(RR,x[:6]):
   for _ in range(v-1):Q=multiply(Q,{(1,0):1,(0,0):-r})
  for t,v in enumerate(x[6:]):
   for _ in range(v):Q=multiply(Q,{(0,1):1,(1,0):-t,(0,0):t*t})
  result['Q_polynomial']=packpoly(Q)
 return result
if __name__=='__main__':
 src,out=map(Path,sys.argv[1:]);ob=json.loads(src.read_text());ans=[]
 for ex in ob['exceptions']:
  z={'index':ex['index'],**product_kernel(ex['record'])};print('KERNEL_PRODUCT',z['index'],z['status'],z.get('degree'),z.get('vertical_exponents'),z.get('source_line_exponents'),flush=True);ans.append(z)
 out.write_text(json.dumps(ans,sort_keys=True,separators=(',',':'))+'\n')

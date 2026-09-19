from pathlib import Path
from math import comb
import json
root=Path(__file__).resolve().parents[1]
data=json.loads((root/'sources/frozen_i5_kernels.json').read_text())
def order(terms,x,y):
 D=max(a+b for a,b,c in terms)
 for total in range(D+1):
  for u in range(total+1):
   v=total-u
   t=sum(c*comb(a,u)*comb(b,v)*x**(a-u)*y**(b-v) for a,b,c in terms if a>=u and b>=v)
   if t:return total,[u,v,t]
 raise ValueError('zero polynomial')
for key,v in data.items():
 print('KERNEL',key,'norm',v['l1'])
 for r in [0,1,2,3,4,5]:
  print('row',r,[order(v['terms'],b,r-b) for b in range(r+1)])

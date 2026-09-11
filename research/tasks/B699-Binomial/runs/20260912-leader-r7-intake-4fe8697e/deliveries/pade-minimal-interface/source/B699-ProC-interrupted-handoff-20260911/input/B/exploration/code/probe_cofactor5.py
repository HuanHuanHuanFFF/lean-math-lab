#!/usr/bin/env python3
"""Optional finite probe only: no theorem inferred from its absence of failures."""
import json
from pathlib import Path

def v(n,p):
 e=0
 while n%p==0:n//=p;e+=1
 return e
first=[];maxrat=(0,1,None);num=0
for e in range(2,513):
 for a,b in [(e,0),(e,1),(0,e),(1,e)]:
  N=5*2**a*3**b
  for r in range(4):
   n=N+r;U=2**(sum(v(n-s,2) for s in range(4))-3)*3**(sum(v(n-s,3) for s in range(4))-1)
   num+=1
   if U>e*n and len(first)<8:first.append({'a':a,'b':b,'r':r,'n':str(n),'U':str(U),'e':e})
   if U*maxrat[1]>maxrat[0]*e*n:maxrat=(U,e*n,[a,b,r])
res={'status':'finite_diagnostic_not_an_infinite_bound','rows':num,'exponents':[2,512],
     'U_gt_e_n_examples':first,'max_U_over_e_n':{'num':str(maxrat[0]),'den':str(maxrat[1]),'parameters':maxrat[2]}}
p=Path(__file__).resolve().parents[1]/'outputs/cofactor5-diagnostic.json'
p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(res,indent=2)+'\n');print(json.dumps(res))

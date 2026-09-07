from pathlib import Path
import json
from fractions import Fraction as Q
from math import comb
HERE=Path(__file__).resolve().parent
rows=json.loads((HERE.parents[1]/'round5/main/contact_search.json').read_text())['rows']
L=Q(83894387,10000000);U=Q(83894390,10000000)
for slots in ([1,2,3],[3,4,5]):
 r=next(r for r in rows if r['slots']==slots);u,v=r['auxiliaries'];p={}
 for scale,vec in ((323,u),(12 if slots==[1,2,3] else -12,v)):
  for a,b,c in vec['terms']:p[a,b]=p.get((a,b),0)+scale*c
 bounds=[]
 for k in range(6):
  cs=[sum(c*comb(a,j)*L**(a-j) for (a,b),c in p.items() if a+b==k and a>=j) for j in range(min(k,4)+1)]
  lo=cs[0]+sum(min(c,0)*(U-L)**j for j,c in enumerate(cs) if j)
  hi=cs[0]+sum(max(c,0)*(U-L)**j for j,c in enumerate(cs) if j)
  bounds.append((lo,hi))
 lo,hi=bounds[5]
 for k,(x,y) in enumerate(bounds[:5]):lo+=min(x,0)/50000**(5-k);hi+=max(y,0)/50000**(5-k)
 print(slots,float(lo),float(hi))

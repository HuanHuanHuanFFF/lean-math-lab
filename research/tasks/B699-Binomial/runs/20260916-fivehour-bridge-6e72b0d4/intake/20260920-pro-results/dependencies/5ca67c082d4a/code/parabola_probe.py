from fractions import Fraction as F
from itertools import combinations,product
from collections import Counter
import json,pathlib
pts=[(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)]
polys={}
for trip in combinations(pts,3):
 if len({r for r,v in trip})<3:continue
 cf=[F(0)]*3
 for r,v in trip:
  u,w=[r0 for r0,v0 in trip if r0!=r];den=(r-u)*(r-w)
  for i,c in enumerate([u*w,-u-w,1]):cf[i]+=F(v*c,den)
 key=tuple(cf)
 if key not in polys:polys[key]=[i for i,(r,v) in enumerate(pts) if sum(cf[k]*r**k for k in range(3))==v]
hist=Counter(map(len,polys.values())); print('support hist',hist)
for p,ii in polys.items():
 if len(ii)>=5:print([str(c) for c in p],[pts[i] for i in ii])
new=[(cf,ii) for cf,ii in polys.items() if len(ii)>=4 and cf[2]!=0]
ROOT=pathlib.Path(__file__).resolve().parents[1]
f=ROOT/'evidence/nf13_h8_gates.json'
if f.exists():
 gates=json.loads(f.read_text())['records'];ct=Counter();ex=[]
 for ix,c in enumerate(gates):
  mm=[Counter(row)[v] for r,row in zip(range(3,9),c['roots']) for r0,v in pts if r0==r]
  for cf,ii in new:
   if sum(mm[i] for i in ii)>2*c['q']:ct[str(cf)]+=1;ex.append(ix);break
 print('excluded',len(ex),ct.most_common(8))
(ROOT/'evidence/parabola_probe.json').write_text(json.dumps({'test_curves':[[[[c.numerator,c.denominator] for c in cf],ii] for cf,ii in new],'hist':dict(hist),'h8_excluded':len(ex) if f.exists() else None},sort_keys=True))

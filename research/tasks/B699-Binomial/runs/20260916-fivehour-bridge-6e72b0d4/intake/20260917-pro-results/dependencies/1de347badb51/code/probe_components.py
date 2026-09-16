from itertools import combinations
from math import gcd
from functools import reduce
from fractions import Fraction
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
w={1:55,2:55,3:137,4:110,5:91,6:78,7:68,8:61};mu=[27,24,19,13]+[0]*5
pts={(s,r-s):w[r]-mu[s]-mu[r-s] for r in range(1,9) for s in range(r+1)}
sym=[(x,y) for x,y in pts if x<=y]
def det3(a):
 return a[0][0]*(a[1][1]*a[2][2]-a[1][2]*a[2][1])-a[0][1]*(a[1][0]*a[2][2]-a[1][2]*a[2][0])+a[0][2]*(a[1][0]*a[2][1]-a[1][1]*a[2][0])
cs=set()
for ps in combinations(sym,3):
 A=[[(x+y)**2,x+y,x*y,1] for x,y in ps]
 c=tuple((-1)**i*det3([[a[j] for j in range(4) if i!=j] for a in A]) for i in range(4))
 g=reduce(gcd,c)
 if not g:continue
 c=tuple(v//abs(g) for v in c)
 if next(v for v in c if v)!=abs(next(v for v in c if v)):c=tuple(-v for v in c)
 cs.add(c)
loads=[]
for a,b,c,d in cs:
 deg=2 if a or c else 1
 score=0;points=[]
 for (u,v),m in pts.items():
  if a*(u+v)**2+b*(u+v)+c*u*v+d:continue
  order=2 if 2*a*(u+v)+b+c*v==0 and 2*a*(u+v)+b+c*u==0 else 1
  score+=m*order;points.append([u,v,m,order])
 if score>=deg*384-12:
  loads.append({'coeff':[a,b,c,d],'score':score,'degree':deg,'excess':score-deg*384,'points':points})
loads.sort(key=lambda d:-d['excess'])
out={'degree':384,'symmetric_conic_count':len(cs),'near_boundary':loads}
(ROOT/'evidence/conic_probe.json').write_text(json.dumps(out,indent=2))
print('symmetric conics',len(cs),'best',[(r['coeff'],r['score'],r['excess']) for r in loads[:15]])

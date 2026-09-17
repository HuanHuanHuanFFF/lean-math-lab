import json,itertools,math
from pathlib import Path
root=Path(__file__).parent
points=[(b,r-b) for r in range(7) for b in range(r+1)]
lines={}
for (x,y),(u,v) in itertools.combinations(points,2):
 a=y-v;b=u-x;c=x*v-u*y;g=math.gcd(a,b,c);a,b,c=a//g,b//g,c//g
 if a<0 or(a==0 and b<0):a,b,c=-a,-b,-c
 co=(a,b,c);lines[co]=[i for i,(x,y)in enumerate(points)if a*x+b*y+c==0]
outputs=[]
for H,D,w in [([0,2,6],25,[12,6,4,4]),([0,2,5],31,[15,7,6,4]),([0,2,4],50,[24,12,8,7])]:
 rs=[r for r in range(7)if r not in H];wi=[w[rs.index(x+y)]if x+y in rs else 0 for x,y in points]
 deg=D;factors=[]
 while True:
  tests=sorted([(sum(wi[i]for i in ind)-deg,co)for co,ind in lines.items()],reverse=True)
  if tests[0][0]<=0:break
  excess,co=tests[0];factors.append(co);deg-=1
  for i in lines[co]:wi[i]=max(wi[i]-1,0)
  if deg<0:break
 print('H',H,'degree',D,'resdegree',deg,'factors',factors,'resfat',[(p,t)for p,t in zip(points,wi)if t], 'nconds',sum(t*(t+1)//2 for t in wi),'nmons',(deg+1)*(deg+2)//2,flush=True)
 rec=dict(H=H,D=D,weights=dict(zip(rs,w)),resdegree=deg,factors=[list(c)for c in factors],respoints=[dict(point=list(p),weight=t)for p,t in zip(points,wi)if t]);outputs.append(rec)
(root/'peel_interpolation.json').write_text(json.dumps(outputs,indent=2))

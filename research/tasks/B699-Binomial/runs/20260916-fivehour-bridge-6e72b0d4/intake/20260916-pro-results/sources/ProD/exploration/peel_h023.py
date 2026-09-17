import itertools,math,json
from pathlib import Path
pts=[(b,r-b) for r in [1,4,5,6] for b in range(r+1)]
lines={}
for (x,y),(u,v) in itertools.combinations(pts,2):
 a,b,c=y-v,u-x,x*v-u*y;g=math.gcd(a,b,c);a,b,c=a//g,b//g,c//g
 if a<0 or(a==0 and b<0):a,b,c=-a,-b,-c
 co=a,b,c;lines[co]=[i for i,(x,y)in enumerate(pts)if a*x+b*y+c==0]
rows=[]
for D,weights in [(311,{1:155,4:62,5:51,6:44}),(314,{1:157,4:62,5:52,6:44})]:
 wi=[weights[sum(p)] for p in pts];deg=D;fac=[]
 while True:
  cand=sorted([(sum(wi[i]for i in ix)-deg,co)for co,ix in lines.items()],reverse=True)
  if cand[0][0]<=0:break
  e,co=cand[0];fac.append(co);deg-=1
  for i in lines[co]:wi[i]=max(0,wi[i]-1)
  if deg<0:break
 print('D',D,'remaining',deg,'factors',fac,'count',sum(w*(w+1)//2 for w in wi),'monomials',(deg+1)*(deg+2)//2)
 rows.append(dict(D=D,weights=weights,degree_remaining=deg,forced_lines=fac,points=[list(p)+[w]for p,w in zip(pts,wi)]))
Path(__file__).with_suffix('.json').write_text(json.dumps(rows,indent=2))

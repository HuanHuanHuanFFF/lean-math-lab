from pathlib import Path
from math import gcd,ceil
from itertools import combinations
import json

def norm(a,b,c):
 g=gcd(gcd(abs(a),abs(b)),abs(c));a,b,c=a//g,b//g,c//g
 if a<0 or(a==0 and b<0):a,b,c=-a,-b,-c
 return a,b,c

def peel(D,ww,miss):
 ps=[(b,r-b,ww[r])for r in (1,3,4)for b in range(r+1)if(r,b)!=(3,miss)]
 pts=[(x,y) for x,y,w in ps];ws=[w for x,y,w in ps];lines={}
 for (x,y),(u,v)in combinations(pts,2):
  line=norm(y-v,u-x,x*v-u*y)
  lines[line]=[idx for idx,(a,b) in enumerate(pts)if line[0]*a+line[1]*b+line[2]==0]
 factors={}
 while 1:
  candidates=[(sum(ws[idx]for idx in v)-D,k,v)for k,v in lines.items() if sum(ws[idx]for idx in v)>D]
  if not candidates:break
  _,line,inds=max(candidates)
  D-=1
  for idx in inds:ws[idx]=max(0,ws[idx]-1)
  factors[line]=factors.get(line,0)+1
  if D<0: break
 return D,[(x,y,w)for (x,y),w in zip(pts,ws)if w],[(a,b,c,e)for(a,b,c),e in factors.items()]

cases=[]
for D in range(3,75):
 opts=[]
 for w1 in range(1,D):
  for w3 in range(1,D+1-w1):
   w4=D+1-w1-w3
   conds=w1*(w1+1)+3*w3*(w3+1)//2+5*w4*(w4+1)//2
   if conds<(D+1)*(D+2)//2:opts.append((conds,w1,w3,w4))
 if opts:
  print('firstD',D, 'opts',len(opts),sorted(opts)[:3]);break
for miss in [0,1]:
 for _,w1,w3,w4 in sorted(opts)[:4]:
  D2,ps,fac=peel(D,{1:w1,3:w3,4:w4},miss)
  ans={'missing':miss,'D':D,'weights':{1:w1,3:w3,4:w4},'reducedD':D2,'points':ps,'factors':fac}
  cases.append(ans);print(json.dumps(ans))
open(str(Path(__file__).with_name('peeled.json')),'w').write(json.dumps(cases,indent=2))

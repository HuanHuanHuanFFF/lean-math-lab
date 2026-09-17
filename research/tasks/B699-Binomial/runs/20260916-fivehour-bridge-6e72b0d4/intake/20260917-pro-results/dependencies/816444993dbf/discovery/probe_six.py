import math, json, sys, time
import numpy as np
from pathlib import Path
BASE=Path(__file__).resolve().parent
# independent small rank routine
p=1000003

def weights(rs,D):
 dp={0:(0,[])}
 for r in rs:
  nxt={}
  for a,(cost,ws) in dp.items():
   for w in range(D+2-a):
    v=(cost+(r+1)*w*(w+1)//2,ws+[w])
    if a+w not in nxt or v[0]<nxt[a+w][0]: nxt[a+w]=v
  dp=nxt
 return dp[D+1]

def rank(A):
 A=np.array(A,dtype=np.int64)%p;nr,nc=A.shape;rr=0
 for c in range(nc):
  inds=np.flatnonzero(A[rr:,c])
  if not len(inds):continue
  t=rr+int(inds[0]);A[[rr,t]]=A[[t,rr]]
  A[rr,c:]=A[rr,c:]*pow(int(A[rr,c]),-1,p)%p
  ids=np.flatnonzero(A[rr+1:,c])+rr+1
  A[ids,c:]=(A[ids,c:]-A[ids,c,None]*A[rr,None,c:])%p
  rr+=1
  if rr==nr:break
 return rr
rs=[1,3,4,5]
out=[];t0=time.monotonic()
for D in range(5,27):
 cost,ws=weights(rs,D); ex=[(a,b)for a in range(D+1)for b in range(D+1-a)]
 rows=[]
 for r,w in zip(rs,ws):
  for x in range(r+1):
   y=r-x
   for u in range(w):
    for v in range(w-u):
     rows.append([math.comb(a,u)*math.comb(b,v)*pow(x,a-u,p)*pow(y,b-v,p)%p if a>=u and b>=v else 0 for a,b in ex])
 rk=rank(rows);rec=dict(D=D,rs=rs,ws=ws,rows=len(rows),cols=len(ex),rank=rk,nullity=len(ex)-rk)
 out.append(rec);print(rec,flush=True)
 if rk<len(ex):break
open(BASE/'six_probe.json','w').write(json.dumps(out,indent=2))
print('seconds',time.monotonic()-t0,flush=True)

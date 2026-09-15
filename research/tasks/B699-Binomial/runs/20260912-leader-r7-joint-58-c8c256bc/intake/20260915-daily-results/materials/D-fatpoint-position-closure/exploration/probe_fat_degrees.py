import json,math,time
from pathlib import Path
import numpy as np
root=Path(__file__).parent
p=1000003
def weights(rs,D):
 dp={0:(0,[])}
 for r in rs:
  dd={}
  for a,(cost,v)in dp.items():
   for w in range(D+2-a):
    cc=cost+(r+1)*w*(w+1)//2
    if a+w not in dd or cc<dd[a+w][0]:dd[a+w]=(cc,v+[w])
  dp=dd
 return dp[D+1][1]
def rank_mod(a):
 A=np.array(a,dtype=np.int64)%p;nr,nc=A.shape;r=0
 for c in range(nc):
  ix=np.flatnonzero(A[r:,c])
  if len(ix)==0:continue
  q=r+int(ix[0]);A[[r,q]]=A[[q,r]]
  A[r,c:]=(A[r,c:]*pow(int(A[r,c]),-1,p))%p
  ix=np.flatnonzero(A[r+1:,c])+r+1
  if len(ix):A[ix,c:]=(A[ix,c:]-A[ix,c,None]*A[r,None,c:])%p
  r+=1
  if r==nr:break
 return r
out=[]
for H in [(0,2,3),(0,2,4),(0,2,5),(0,2,6)]:
 rs=[r for r in range(7)if r not in H];print('H',H,flush=True);t0=time.time()
 for D in range(5,32):
  ws=weights(rs,D);exps=[(a,b)for a in range(D+1)for b in range(D+1-a)];rows=[]
  for rr,w in zip(rs,ws):
   for x in range(rr+1):
    y=rr-x
    for i in range(w):
     for t in range(w-i):
      rows.append([math.comb(a,i)*math.comb(b,t)*pow(x,a-i,p)*pow(y,b-t,p)%p if a>=i and b>=t else 0 for a,b in exps])
  rk=rank_mod(rows)
  if rk<len(exps):
   rec=dict(H=H,D=D,rs=rs,weights=ws,rank=rk,ncols=len(exps),nrows=len(rows));out.append(rec);print('FOUND',rec,'secs',time.time()-t0,flush=True);break
  if D in [10,20,30]:print(' no kernel thru',D,'secs',round(time.time()-t0,1),flush=True)
(root/'fat_degree_probe.json').write_text(json.dumps(out,indent=2))

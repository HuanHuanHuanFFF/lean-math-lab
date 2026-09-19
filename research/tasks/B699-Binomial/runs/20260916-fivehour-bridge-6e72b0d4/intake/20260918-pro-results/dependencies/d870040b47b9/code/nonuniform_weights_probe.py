from pathlib import Path
from collections import Counter
import json,math,time
root=Path(__file__).parents[1];pts=[(r,s*(r-s))for r in range(3,9)for s in range(r//2+1)]
def dim(d):return sum(d-2*b+1 for b in range(d//2+1))
def ordinary(m):return m*(m+1)//2
def diag(m):return sum(m-2*h for h in range((m-1)//2+1)) if m else 0
cache={}
def solve(counts,diags):
 key=(tuple(counts),tuple(diags))
 if key in cache:return cache[key]
 dp={(0,0):(0,[])}
 for i,(z,dd)in enumerate(zip(counts,diags)):
  opts=[(m,z*ordinary(m)-dd*(ordinary(m)-diag(m)),m*((i+3)//2+1-z))for m in range(18)]
  opts=[x for x in opts if x[1]<156];nd={}
  for (cost,w),(loss,ms)in dp.items():
   for m,c,l in opts:
    if cost+c>=156:continue
    k=(cost+c,w+m);v=(loss+l,ms+[m])
    if k not in nd or v[0]<nd[k][0]:nd[k]=v
  dp=nd
 best=None
 for (cost,w),(loss,ms)in dp.items():
  d=next(x for x in range(24)if dim(x)>cost)
  if w<=d:continue
  # Exact safe bound b=12000, initial source h+18, 1680<2^11.
  margin=14000001*(w-d)-(12000+11*w+loss*(1244000+18))
  if margin>0 and (best is None or margin>best['margin']):best={'d':d,'weights':ms,'conditions':cost,'columns':dim(d),'W':w,'loss':loss,'margin':margin}
 cache[key]=best;return best
out=[]
for line in (root/'evidence/eval14_lowrank.txt').read_text().splitlines():
 mask=int(line.split()[0]);cs=[sum(mask>>i&1 for i,(r,v)in enumerate(pts)if r==rr)for rr in range(3,9)];dd=[sum((mask>>i&1) and 4*v==r*r for i,(r,v)in enumerate(pts)if r==rr)for rr in range(3,9)]
 sol=solve(cs,dd);out.append({'mask':mask,'counts':cs,'diags':dd,'solution':sol})
(root/'evidence/nonuniform_weights.json').write_text(json.dumps(out,indent=2));print('cases',len(out),'profiles',len(cache),'success',sum(x['solution'] is not None for x in out))
for x in out:
 if not x['solution']:print('FAIL',x['mask'],x['counts'],x['diags'])
for x in out[:4]:print(x)

"""Unfinished follow-up discovery: q2 only at its middle root. No n,j scan."""
from math import isqrt
from pathlib import Path
from fractions import Fraction
import json,heapq,time
R=Path(__file__).resolve().parents[1]

def basis_count(D):
 if D<0:return 0
 return (D//2+1)*(D-D//2+1)

def cost(r,w,mu):
 if r==2:
  m=max(0,w-2*mu[1])
  return basis_count(m-1)
 z=0
 for s in range(r//2+1):
  m=max(0,w-(mu[s] if s<len(mu) else 0)-(mu[r-s] if r-s<len(mu) else 0))
  z+=basis_count(m-1) if 2*s==r else m*(m+1)//2
 return z

def best_free(maxW,mu):
 cs={r:[cost(r,w,mu) for w in range(maxW+1)] for r in range(3,9)}
 heap=[(cs[r][1]-cs[r][0],r,1) for r in cs];heapq.heapify(heap)
 weights={r:0 for r in cs};total=0;ret=[(0,tuple(weights.values()))]
 for _ in range(maxW):
  c,r,w=heapq.heappop(heap);weights[r]=w;total+=c
  ret.append((total,tuple(weights.values())))
  if w<maxW:heapq.heappush(heap,(cs[r][w+1]-cs[r][w],r,w+1))
 return ret

start=time.time();configs=[]
# Explicit bounded family of boundary multiplicities; not exhaustive templates.
for a in range(0,15):
 for b in range(max(0,a-5),a+1):
  for c in range(max(0,b-5),b+1):
   for d in range(max(0,c-4),c+1):
    if a+b+c+d>45:continue
    configs.append((a,b,c,d))
# compare both p3/p7 placements via conservative minimum of cut profiles
candidates=[];best=None;tested=0
for ii,mu in enumerate(configs):
 degreeZ=2*sum(mu);bound=150
 seq=best_free(bound,mu)
 for delta in [1,2,3,4]:
  # A3 at r1, A7 r2. Check finite pairs of extra row weights.
  pairs=[]
  for v1 in range((delta*10000)//3187+1,32):
   for v2 in range((delta*1000)//109+1,40):
    lam=min(3187*v1,540*v1+386*v2,1090*v2)
    if lam>10000*delta:
     rowcost=cost(1,v1,mu)+cost(2,v2,mu)
     pairs.append((rowcost,v1,v2,lam))
  if not pairs:continue
  pair=min(pairs)
  for D in range(max(12,degreeZ+2),bound+1):
   fc,fw=seq[D-delta]
   cols=basis_count(D-degreeZ)
   rows=fc+pair[0];gap=cols-rows;tested+=1
   rec={'D':D,'delta':delta,'mu':mu,'weights':list(fw),'w1':pair[1],'w2':pair[2],'lambda10000':pair[3],'cols':cols,'rows':rows,'gap':gap}
   if best is None or gap>best['gap']:best=rec
   if gap>=2:candidates.append(rec)
 if ii%300==0:print('configs',ii,'of',len(configs),'best',best,'hits',len(candidates),'sec',round(time.time()-start,2),flush=True)
 if candidates:break
out={'tested_configurations':ii+1,'config_total':len(configs),'degree_max':150,'examined':tested,'best':best,'positive':candidates,'seconds':time.time()-start}
(R/'evidence/middle_mask_dimension_probe.json').write_text(json.dumps(out,indent=2))
print(json.dumps(out)[:4000])

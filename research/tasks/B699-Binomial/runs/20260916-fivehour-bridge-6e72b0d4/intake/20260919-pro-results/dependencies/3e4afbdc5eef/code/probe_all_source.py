from itertools import combinations_with_replacement, product
from collections import Counter,defaultdict
import json,time
from pathlib import Path
R=tuple(range(3,9)); V={r:tuple(s*(r-s) for s in range(r//2+1)) for r in R}
import argparse
ap=argparse.ArgumentParser();ap.add_argument("--e",type=int,default=10);args=ap.parse_args();E=args.e
root=Path(__file__).resolve().parents[1]
lists={}; buckets={}
for r in R:
 li=[];bu=defaultdict(list)
 for rt in combinations_with_replacement(V[r],E):
  s=sum(rt); q=(rt,s,(s*s-sum(x*x for x in rt))//2,len(set(rt)))
  li.append(q);bu[s].append(q)
 lists[r]=li;buckets[r]=bu
out=[]; stats=Counter();tl=time.monotonic(); hist=Counter(); survivors=[]
for aa,bb,cc in product(lists[3],lists[4],lists[5]):
 u,v,w=aa[1],bb[1],cc[1]
 ss=(u-3*v+3*w,3*u-8*v+6*w,6*u-15*v+10*w)
 if any(s not in buckets[r] for r,s in zip((6,7,8),ss)):continue
 for tail in product(*(buckets[r][s] for r,s in zip((6,7,8),ss))):
  rows=(aa,bb,cc)+tail;stats['sum']+=1
  if sum(q[3] for q in rows)>=14:stats['z14']+=1
  if sum(a*b[2] for a,b in zip((-1,5,-10,10,-5,1),rows)):continue
  stats['e2']+=1
  roots=tuple(q[0] for q in rows);out.append(roots)
  lineS=tuple(sum(Counter(vals)[t*(r-t)] for r,vals in zip(R,roots)) for t in range(5))
  hist[max(lineS)]+=1
  if max(lineS)<=2*E:survivors.append((len(out)-1,lineS))
result={'e':E,'gate_stats':dict(stats),'max_line_hit_hist':dict(sorted(hist.items())),'after_line_test':len(survivors),'seconds':time.monotonic()-tl}
(root/('evidence/all_source_gate'+str(E)+'.json')).write_text(json.dumps({'summary':result,'records':out},separators=(',',':')))
(root/('evidence/all_source_residuals'+str(E)+'.json')).write_text(json.dumps(survivors,separators=(',',':')))
print(json.dumps(result,indent=2))

#!/usr/bin/env python3
"""Route diagnostic only: new q=14,15 saturation root gates and genus-cost test.
No theorem is asserted by this script, no unknown G matrix is constructed.
"""
from itertools import combinations_with_replacement,product
from collections import Counter,defaultdict
from pathlib import Path
import json,time,argparse
R=Path(__file__).resolve().parents[1]
def run(q):
 begin=time.monotonic();rows=range(3,9);ls={};bs={};last=defaultdict(list)
 for r in rows:
  ll=[];bb=defaultdict(list);V=tuple(s*(r-s) for s in range(r//2+1))
  for rt in combinations_with_replacement(V,q):
   co=Counter(rt);S=sum(rt);E=(S*S-sum(v*v for v in rt))//2;delta=sum(e*(e-1)//2 for e in co.values())
   a=(rt,S,E,len(co),tuple(co[t*(r-t)] for t in range(5)),delta);ll.append(a);bb[S].append(a)
   if r==8:last[S,E].append(a)
  ls[r]=ll;bs[r]=bb
 counts=Counter();hist=Counter();surv=[];md=None
 for a,b,c in product(ls[3],ls[4],ls[5]):
  u,v,w=a[1],b[1],c[1];S=(u-3*v+3*w,3*u-8*v+6*w,6*u-15*v+10*w)
  if S[0] not in bs[6] or S[1] not in bs[7] or S[2] not in bs[8]:continue
  baseE=a[2]-5*b[2]+10*c[2]
  for d,e in product(bs[6][S[0]],bs[7][S[1]]):
   need=baseE-10*d[2]+5*e[2]
   for f in last.get((S[2],need),()):
    rr=(a,b,c,d,e,f);counts['complete_gates']+=1
    if sum(x[3] for x in rr)<14:continue
    counts['z14_gates']+=1
    score=[sum(x[4][i] for x in rr) for i in range(5)]
    if max(score)>2*q:counts['line_forced']+=1;continue
    counts['line_residual']+=1;de=sum(x[5] for x in rr);hist[de]+=1;md=de if md is None else min(md,de)
    if de>(q-1)**2:counts['genus_cost_exceeds_arithmetic_genus']+=1;continue
    counts['unresolved']+=1
    surv.append({'roots':[x[0] for x in rr],'line_scores':score,'delta_lower':de})
 out={'q':q,'status':'DIAGNOSTIC_NOT_A_SAT_THEOREM','counts':dict(counts),'genus_candidate':(q-1)**2,'delta_histogram':dict(sorted(hist.items())),'records_not_excluded_by_test':surv,'seconds':round(time.monotonic()-begin,3)}
 (R/f'evidence/sat{6*q}_genus_diagnostic.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
 print('GENUS_PROBE',q,dict(counts),'mindelta',md,'seconds',out['seconds'],flush=True)
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--q',type=int,default=14);a=p.parse_args();run(a.q)

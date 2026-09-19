#!/usr/bin/env python3
"""Discovery-only exact saturated root-sum/second-sum gate; no NC models asserted."""
from itertools import combinations_with_replacement,product
from collections import defaultdict
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]
rows=[list(sorted({s*(r-s) for s in range(r//2+1)})) for r in range(3,9)]
patterns=[];by_sum=[]
for V in rows:
    pats=[];groups=defaultdict(list)
    for roots in combinations_with_replacement(V,4):
        c=[1]
        for v in roots:
            nxt=[0]*(len(c)+1)
            for i,a in enumerate(c):nxt[i]-=v*a;nxt[i+1]+=a
            c=nxt
        pat={'roots':roots,'sum':sum(roots),'z':len(set(roots)),'coefficients':c}
        pats.append(pat);groups[pat['sum']].append(pat)
    patterns.append(pats);by_sum.append(groups)
raw=1
for pats in patterns: raw*=len(pats)
cnts={'raw':raw,'first_three':0,'sum_matched':0,'z_ge14':0,'second_sum_matched':0}
kept=[];start=time.time()
for A,B,C in product(*patterns[:3]):
    cnts['first_three']+=1
    sums=[A['sum'],B['sum'],C['sum']]
    diff1=sums[1]-sums[0];diff2=sums[2]-2*sums[1]+sums[0]
    extrap=[sums[0]+t*diff1+t*(t-1)//2*diff2 for t in (3,4,5)]
    for last in product(*(by_sum[i][extrap[i-3]] for i in range(3,6))):
        cnts['sum_matched']+=1
        pats=(A,B,C)+last
        if sum(p['z'] for p in pats)<14:continue
        cnts['z_ge14']+=1
        if sum(w*p['coefficients'][2] for w,p in zip((-1,5,-10,10,-5,1),pats))!=0:continue
        cnts['second_sum_matched']+=1
        kept.append([list(p['roots']) for p in pats])
res={'counts':cnts,'rows':rows,'kept_root_shapes':kept,'seconds':time.time()-start}
(ROOT/'evidence/saturated_gate_discovery.json').write_text(json.dumps(res,indent=2))
print(cnts,'seconds',res['seconds'])

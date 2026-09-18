#!/usr/bin/env python3
"""Exact NEW source/X/vertical budget after SAT54, no historical table imports.
All bounds refer to the ORIGINAL K152 polynomial, adopted frozen proof interface.
Conditional SAT60 rows are diagnostics only, never promoted to a theorem.
"""
from __future__ import annotations
import json,math
from pathlib import Path
from collections import Counter
from itertools import product
ROWS=tuple(range(3,9)); GAMMA=(2,2,2,1,1,1)

def require(ok,msg):
 if not ok:raise AssertionError(msg)
def dump(path,obj):path.write_text(json.dumps(obj,separators=(',',':'))+'\n')

def source_rows():
 # Reconstruct from the defining P and V0 of K152.
 pw={0:27,1:24,2:19,3:13}
 rw={3:137,4:110,5:91,6:78,7:68,8:61}
 vw={3:20,4:16,5:13,6:11,7:10,8:9}
 raw={}; L={}
 for r in ROWS:
  off=[];diag=None
  for s in range(r//2+1):
   m=rw[r]-pw.get(s,0)-pw.get(r-s,0)-vw[r]
   require(m>0,'nonpositive residual jet')
   if 2*s==r:diag=m
   else:off.append(m)
  raw[r]={'off':off,'diag':diag}
  L[r]=[sum(max(m-v,0) for m in off)+((max(diag-v,0)+1)//2 if diag is not None else 0) for v in range(306)]
 require([L[r][0] for r in ROWS]==[151,152,151,152,149,151],'raw source interface mismatch')
 require(all(L[r][v+1]<=L[r][v] for r in ROWS for v in range(305)),'source loss not monotone')
 return raw,L

def build_table(L,vmax,hmin):
 # Exact min-plus convolution. States use exactly total V, not <=V.
 tab={};costtab={};inf=10**10
 for h in range(hmin,153):
  dp=[0]+[inf]*vmax
  for r,g in zip(ROWS,GAMMA):
   options=[(v,g*L[r][v]) for v in range(vmax+1) if L[r][v]<=h]
   new=[inf]*(vmax+1)
   for v,cost in options:
    for s in range(vmax-v+1):
     if dp[s]!=inf:
      new[s+v]=min(new[s+v],dp[s]+cost)
   dp=new
  costtab[h]=[None if v==inf else v for v in dp]
  tab[h]=[None if v==inf else 9*h-v for v in dp]
 return tab,costtab

def compositions(K):
 # e,d,c,b order differs from lexicographic class order in output.
 for e in range(K+1):
  for d in range(K-e+1):
   for c in range(K-e-d+1):
    for b in range(K-e-d-c+1):yield K-e-d-c-b,b,c,d,e

def solve(K,free_weight,tab,vmax,hmin):
 require(free_weight>=12,'unsupported free class')
 nvec=nq=0;feasible=[];hist=Counter()
 for a,b,c,d,e in compositions(K):
  nvec+=1;w=7*a+8*b+10*c+12*d+free_weight*e;need=2*b+2*c+d
  if w>305:continue
  for V in range(306-w):
   h=(305-V-a)//2
   require(V<=vmax and hmin<=h<=152,'DP bounds omit possible configuration')
   nq+=1;cap=tab[h][V]
   if cap is not None and need<=cap:
    feasible.append([a,b,c,d,e,V,h,need,cap]);hist[a]+=1
 require(nvec==math.comb(K+4,4),'incomplete compositions')
 return {'K':K,'free_weight':free_weight,'count_vectors':nvec,'queries':nq,'feasible_records':len(feasible),'by_positive_excess':dict(hist),'feasible':feasible}

def direct_low_v_check(L,costtab):
 # Independent exhaustive six-composition check at small total V; not the full DP proof.
 calls=0
 def comps(n,k):
  if k==1:
   yield (n,);return
  for v in range(n+1):
   for tail in comps(n-v,k-1):yield (v,)+tail
 for h in (145,146,147,148,149,150,151,152):
  for V in range(7):
   best=None
   for vs in comps(V,6):
    costs=[L[r][v] for r,v in zip(ROWS,vs)]
    if any(x>h for x in costs):continue
    cost=sum(g*x for g,x in zip(GAMMA,costs));best=cost if best is None else min(best,cost)
   require(best==costtab[h][V],'small-V brute force differs from DP');calls+=1
 return calls

def check_budgets(outdir:Path):
 raw,L=source_rows()
 # Includes the explicitly CONDITIONAL K19 check only, no higher geometric claim.
 minK=19;vmax=305-7*minK;hmin=3*minK
 tab,cost=build_table(L,vmax,hmin)
 direct=direct_low_v_check(L,cost)
 actual=[solve(21,20,tab,vmax,hmin),solve(20,20,tab,vmax,hmin)]
 require(actual[0]['feasible_records']==0,'SAT54 cost does not exclude 21')
 require(actual[1]['feasible_records']==63,'K20 relaxed baseline differs')
 require(all(row[0]==0 for row in actual[1]['feasible']),'EDGE20 positive-excess obstruction')
 conditional=[solve(20,22,tab,vmax,hmin),solve(19,22,tab,vmax,hmin)]
 # Excess bound: informational consistency check of frozen XEX3.
 ex=[]
 for h in range(153):
  vs=[next(v for v in range(306) if L[r][v]<=h) for r in ROWS]
  ex.append({'h':h,'minimal_vertical_by_row':vs,'upper_excess':305-2*h-sum(vs)})
 require(max(x['upper_excess'] for x in ex)==3,'frozen excess mismatch')
 dump(outdir/'source_capacity.json',{'rows':raw,'gamma':GAMMA,'vmax':vmax,'hmin':hmin,'capacity':tab})
 dump(outdir/'joint_budget.json',{'status':'NO_21_COMPONENT_SUBSET','weights':[7,8,10,12,20],'Gamma':[0,2,2,1,0],'actual':actual,'conditional_SAT60_NOT_PROVED':conditional,'independent_smallV_comparisons':direct})
 dump(outdir/'excess_check.json',ex)
 thin=lambda x:{k:v for k,v in x.items() if k!='feasible'}
 return {'status':'NO_21_COMPONENT_SUBSET','actual':[thin(x) for x in actual],'conditional_SAT60_NOT_PROVED':[thin(x) for x in conditional],'independent_smallV_comparisons':direct,'table_vmax':vmax,'table_hmin':hmin}

if __name__=='__main__':
 import argparse,time
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
 require(args.out.is_absolute() and not args.out.exists(),'new absolute output directory required');args.out.mkdir(parents=True)
 t=time.monotonic();report=check_budgets(args.out);dump(args.out/'summary.json',report)
 print(json.dumps(report,indent=2));print('SECONDS',round(time.monotonic()-t,3))

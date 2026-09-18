#!/usr/bin/env python3
"""Source/X/vertical budget functions adopted and generalized for NF35, no historical table imports.
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

def compose(K,n):
 if n==1:
  yield (K,);return
 for a in range(K+1):
  for tail in compose(K-a,n-1):yield (a,)+tail

def generalized_solve(K,weights,gammas,tab,vmax,hmin):
 nvec=nq=0;feasible=[];hist=Counter()
 for cs in compose(K,len(weights)):
  nvec+=1;a=cs[0];w=sum(x*y for x,y in zip(weights,cs));need=sum(x*y for x,y in zip(gammas,cs))
  if w>305:continue
  for V in range(306-w):
   h=(305-V-a)//2
   require(V<=vmax and hmin<=h<=152,'budget lookup out of bounds')
   nq+=1;cap=tab[h][V]
   if cap is not None and need<=cap:
    feasible.append({'counts':cs,'V':V,'h':h,'need':need,'capacity':cap});hist[a]+=1
 require(nvec==math.comb(K+len(weights)-1,len(weights)-1),'count vector completeness')
 return {'K':K,'weights':weights,'Gamma':gammas,'count_vectors':nvec,'queries':nq,'feasible_records':len(feasible),'by_positive_excess':dict(hist),'feasible':feasible}

def run_actual(outdir):
 raw,L=source_rows();minK=19;vmax=305-7*minK;hmin=3*minK
 tab,cost=build_table(L,vmax,hmin);ncheck=direct_low_v_check(L,cost)
 ws=(7,8,10,12,14,20);gs=(0,2,2,2,1,0)
 answers=[generalized_solve(K,ws,gs,tab,vmax,hmin) for K in (20,19)]
 require(answers[0]['feasible_records']==0,'NF35 did not give COVER19')
 dump(outdir/'source_capacity.json',{'source':raw,'gamma':GAMMA,'vmax':vmax,'hmin':hmin,'capacity':tab})
 dump(outdir/'joint_budget.json',{'status':'NO_20_COMPONENT_SUBSET','results':answers,'small_V_checks':ncheck})
 # New cost-only implication. The geometry SAT60 is NOT proved in this package.
 cond=generalized_solve(19,(7,8,10,12,14,22),gs,tab,vmax,hmin)
 require(cond['feasible_records']==1,'single-Gamma conditional boundary changed')
 tests=[]
 for rec in cond['feasible']:
  h,V=rec['h'],rec['V'];mins=[next(v for v in range(306) if L[r][v]<=h) for r in ROWS]
  slack=V-sum(mins);require(0<=slack<=3,'unexpected common vertical slack')
  allocations=[]
  for adds in compose(slack,6):
   vs=[x+y for x,y in zip(mins,adds)];ds=[h-L[r][v] for r,v in zip(ROWS,vs)]
   allocations.append({'v':vs,'ordinary_capacity':sum(ds),'delta':ds})
  ordinary_need=sum(rec['counts'][1:5]);ordinary_cap=max(x['ordinary_capacity'] for x in allocations)
  require(ordinary_need>ordinary_cap,'SAT60 plus ordinary-budget does not give 18')
  tests.append({'record':rec,'ordinary_need':ordinary_need,'ordinary_maximum_capacity':ordinary_cap,'all_allocations':allocations})
 conditional={'status':'SAT60_NOT_PROVED_COST_IMPLICATION_ONLY','single_Gamma':cond,'additional_ordinary_checks':tests,'residual_records':0}
 dump(outdir/'conditional_sat60_ordinary.json',conditional)
 thin=lambda a:{k:v for k,v in a.items() if k!='feasible'}
 return {'status':'NO_20_COMPONENT_SUBSET','results':[thin(a) for a in answers],'small_V_checks':ncheck,
         'conditional_SAT60_NOT_PROVED':{'single_Gamma_records':1,'ordinary_budget_remaining_records':0,'ordinary_need':15,'ordinary_capacity':11}}

if __name__=='__main__':
 import argparse,time
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
 require(args.out.is_absolute() and not args.out.exists(),'need new absolute output path');args.out.mkdir(parents=True)
 t=time.monotonic();res=run_actual(args.out);dump(args.out/'summary.json',res);print(json.dumps(res,indent=2));print('SECONDS',round(time.monotonic()-t,3))

#!/usr/bin/env python3
"""Complete, self-contained SAME-G weighted-diagonal ledger. Standard library.
Only new finite obligations; frozen source coefficients are reconstructed from
K152's P, V0, row orders, not from an imported old program.
"""
from __future__ import annotations
import math,json,time,argparse
from collections import Counter
from pathlib import Path
from itertools import product
ROOT=Path(__file__).resolve().parents[1]
def require(ok,msg):
 if not ok:raise AssertionError(msg)
def dump(p,x):p.write_text(json.dumps(x,separators=(',',':'),sort_keys=True)+'\n')
def compositions(n,k):
 if k==1:yield (n,);return
 for a in range(n+1):
  for t in compositions(n-a,k-1):yield (a,)+t

def source_data():
 ps=[27,24,19,13]+[0]*5;ws=[137,110,91,78,68,61];vs=[20,16,13,11,10,9];data=[]
 for r,w,v in zip(range(3,9),ws,vs):
  off=[];diag=0
  for s in range(r//2+1):
   m=w-ps[s]-ps[r-s]-v;require(m>0,'source order nonpositive')
   if 2*s==r:diag=m
   else:off.append(m)
  data.append({'r':r,'off':off,'weighted_diagonal':diag})
 return data

def L(row,v):
 ordinary=sum(max(x-v,0) for x in row['off'])
 if row['weighted_diagonal']:ordinary+=(max(row['weighted_diagonal']-v,0)+1)//2
 return ordinary

def states():
 src=source_data();require([L(r,0) for r in src]==[151,152,151,152,149,151],'original source mismatch')
 out=[];baselines=[]
 for h in range(153):
  mm=[]
  for row in src:
   v=0
   while L(row,v)>h:v+=1
   require(v==0 or L(row,v-1)>h,'vertical minimum not minimal');mm.append(v)
  slack=305-2*h-sum(mm);baselines.append({'h':h,'min_v':mm,'slack':slack})
  if slack<0:continue
  for z in range(slack+1):
   for extra in compositions(z,6):
    vv=[x+y for x,y in zip(mm,extra)];dd=[h-L(row,v) for row,v in zip(src,vv)];E=305-2*h-sum(vv)
    require(min(dd)>=0 and E>=0,'invalid complete state')
    parity=[max(row['weighted_diagonal']-v,0)%2 if row['weighted_diagonal'] else 0 for row,v in zip(src,vv)]
    out.append({'h':h,'v':vv,'delta':dd,'E':E,'parity':parity})
 require(len(out)==len({(s['h'],tuple(s['v'])) for s in out}),'duplicated vertical state')
 require(max(s['slack'] for s in baselines)==3,'new source surplus bound')
 require(len(out)==2035,'source-state completeness count')
 return src,baselines,out

def maximum_for_state(s,mid=10,free=16):
 h,E,d,p=s['h'],s['E'],s['delta'],s['parity'];best=-1;witnesses=[];tests=0;single_tests=0
 for a in range(min(E,h//3)+1):
  for x3,x4,x5 in product(*(range(d[i]+1) for i in range(3))):
   x=x3+x4+x5
   # Frozen NF23 exact tangent signatures; NF29 and the new NF53 family are dominated by type r3.
   dd=[d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,
       (2*d[3]+p[3]-x)//2,d[4],d[5]]
   if min(dd)<0:continue
   T=sum(dd);X=h-3*a-4*x
   if X<0:continue
   single_tests+=1
   for b in range(min(T//2,X//4)+1):
    for c in range(min(T-2*b,(X-4*b)//mid)+1):
     f=(X-4*b-mid*c)//free;K=a+x+b+c+f;tests+=1
     rec={'positive':a,'single_345':[x3,x4,x5],'double':b,'middle':c,'free':f,'remaining_delta':dd,'X_lower':3*a+4*x+4*b+mid*c+free*f}
     if K>best:best=K;witnesses=[]
     if K==best:witnesses.append(rec)
 return best,witnesses,tests,single_tests

def run(out):
 begin=time.monotonic();src,base,ss=states();maxK=-1;worst=[];per_state=[];tests=0;singles=0
 for ix,s in enumerate(ss):
  K,recs,t,x=maximum_for_state(s);tests+=t;singles+=x;per_state.append({'index':ix,'maximum':K,'first_witness':recs[0]})
  if K>maxK:maxK=K;worst=[]
  if K==maxK:worst.extend({'state_index':ix,'state':s,'counts':r} for r in recs)
 require(maxK==13,'cover13 not established')
 positive=Counter(r['counts']['positive'] for r in worst)
 # Store an explicit direct original-budget check for every maximum witness.
 for r in worst:
  s,c=r['state'],r['counts'];a=c['positive'];xs=c['single_345'];x=sum(xs)
  require(a<=s['E'] and c['X_lower']<=s['h'],'maximum witness inconsistent')
  require(2*c['double']+c['middle']<=sum(c['remaining_delta']),'ordinary capacity witness')
 result={'status':'PASS_NEW_GENUS_TANGENCY_COVER13_LEDGER','cover':maxK,'complete_vertical_states':len(ss),'feasible_h':sum(b['slack']>=0 for b in base),'max_vertical_surplus':max(b['slack'] for b in base),'max_total_ordinary_capacity':max(sum(s['delta']) for s in ss),'single_signature_queries':singles,'final_integer_queries':tests,'maximum_relaxation_records':len(worst),'maximum_by_positive_excess':dict(positive),'edge13_requires_zero_excess':not any(k>0 for k in positive)}
 dump(out/'source_states.json',{'source_orders':src,'vertical_minima_all_h':base,'states':ss})
 dump(out/'ledger_state_maxima.json',per_state);dump(out/'ledger_edge13.json',worst);dump(out/'ledger_summary.json',result)
 print('LEDGER',result,'seconds',round(time.monotonic()-begin,3),flush=True)
 return result

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True);run(a.out)

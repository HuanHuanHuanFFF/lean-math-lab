#!/usr/bin/env python3
"""New joint source-deficit ledger for the SAME frozen K152 polynomial.
No curve coefficients and no original (n,j) values are enumerated. Integer only.
Reconstructs the frozen source orders and checks NEW price profiles, including
ordinary deficit localization supplied by frozen NF23/NF29/NF35.
"""
from __future__ import annotations
import json,math,time
from collections import Counter
from pathlib import Path
ROWS=tuple(range(3,9));GAMMA=(2,2,2,1,1,1)
def require(ok,msg):
 if not ok:raise AssertionError(msg)
def dump(p,x):p.write_text(json.dumps(x,separators=(',',':'))+'\n')
def compositions(total,k):
 if k==1:
  yield (total,);return
 for a in range(total+1):
  for tail in compositions(total-a,k-1):yield (a,)+tail

def sources():
 pw={0:27,1:24,2:19,3:13};roww=(137,110,91,78,68,61);vertical=(20,16,13,11,10,9)
 data=[];loss=[]
 for r,w,nu in zip(ROWS,roww,vertical):
  off=[];diag=None
  for s in range(r//2+1):
   val=w-pw.get(s,0)-pw.get(r-s,0)-nu
   require(val>0,'invalid frozen residual order')
   if 2*s==r:diag=val
   else:off.append(val)
  data.append({'r':r,'off':off,'diagonal_weighted':diag})
  loss.append([sum(max(x-v,0) for x in off)+(max(diag-v,0)+1)//2 if diag is not None else sum(max(x-v,0) for x in off) for v in range(306)])
 require([row[0] for row in loss]==[151,152,151,152,149,151],'source row mismatch')
 return data,loss

def capacity(loss,vmax,hmin):
 out={};INF=10**12
 for h in range(hmin,153):
  dp=[0]+[INF]*vmax
  for ll,g in zip(loss,GAMMA):
   nxt=[INF]*(vmax+1)
   for s,base in enumerate(dp):
    if base==INF:continue
    for v in range(vmax-s+1):
     if ll[v]<=h:
      val=base+g*ll[v]
      if val<nxt[s+v]:nxt[s+v]=val
   dp=nxt
  out[h]=[None if x==INF else 9*h-x for x in dp]
 return out

def vector_checks(K,weights,gammas,cap,loss,vmax,hmin,nf41=False):
 nvec=nquery=allocations=0;gamma_rows=[];survivors=[];by_positive=Counter();maxslack=0
 for cs in compositions(K,len(weights)):
  nvec+=1;a=cs[0];w=sum(c*d for c,d in zip(cs,weights));need=sum(c*d for c,d in zip(cs,gammas))
  if w>305:continue
  for V in range(306-w):
   h=(305-V-a)//2;require(0<=V<=vmax and hmin<=h<=152,'uncovered h/V')
   nquery+=1;budget=cap[h][V]
   if budget is None or need>budget:continue
   mins=[next(v for v,x in enumerate(ll) if x<=h) for ll in loss];slack=V-sum(mins)
   require(slack>=0,'inconsistent vertical DP');maxslack=max(maxslack,slack)
   # No arbitrary truncation of this simplex is allowed.
   # Its full size is finite and exactly specified by the current actual record.
   row={'counts':cs,'V':V,'h':h,'Gamma_need':need,'Gamma_capacity':budget};gamma_rows.append(row)
   best=None;tested=0
   for extra in compositions(slack,6):
    tested+=1;allocations+=1;vs=[x+y for x,y in zip(mins,extra)];ds=[h-ll[v] for ll,v in zip(loss,vs)]
    require(all(x>=0 for x in ds),'negative row capacity')
    if sum(g*x for g,x in zip(GAMMA,ds))<need:continue
    if nf41:
     a,b,c,d,dd,e,f=cs;low=b+c+d+dd;others=b+d+dd
    else:a,b,c,d,e,f=cs;low=b+c+d;others=b+d
    # Cheap low-degree factors have exactly one ordinary deficit.
    # B,D (and conditional NF41) can be cheap only in rows3/4/5; C only row3.
    cheap_upper=min(low,sum(ds[:3]),others+ds[0])
    ordinary_need=e+2*low-cheap_upper
    if sum(ds)>=ordinary_need:
     best={'record':row,'v':vs,'delta_capacity':ds,'ordinary_need':ordinary_need};break
   if best is not None:survivors.append(best);by_positive[a]+=1
   else:row['all_vertical_allocations_rejected']=tested
 require(nvec==math.comb(K+len(weights)-1,len(weights)-1),'incomplete count simplex')
 return {'K':K,'weights':weights,'Gamma_prices':gammas,'count_vectors':nvec,'hV_queries':nquery,'Gamma_records':len(gamma_rows),'joint_records':len(survivors),'vertical_allocations_tested':allocations,'maximum_extra_vertical_slack':maxslack,'by_positive_excess':dict(by_positive),'Gamma_record_details':gamma_rows,'survivors':survivors}

def direct_tests(cap,loss):
 n=0
 for h in range(145,153):
  for V in range(8):
   best=None
   for vs in compositions(V,6):
    ds=[h-ll[v] for ll,v in zip(loss,vs)]
    if any(x<0 for x in ds):continue
    val=sum(g*d for g,d in zip(GAMMA,ds));best=val if best is None else max(best,val)
   require(best==cap[h][V],'independent small-simplex check differs');n+=1
 return n

def run(out,max_e=13,cover=16,include_next=True):
 t=time.monotonic();raw,L=sources();vmax=305-7*cover;hmin=3*cover;cap=capacity(L,vmax,hmin)
 ntest=direct_tests(cap,L);free=2*(max_e+1);ws=(7,8,10,12,14,free);gs=(0,2,2,2,1,0)
 main=vector_checks(cover+1,ws,gs,cap,L,vmax,hmin);edge=vector_checks(cover,ws,gs,cap,L,vmax,hmin)
 require(main['joint_records']==0,'proposed global cover not established')
 require(all(int(a)==0 for a in edge['by_positive_excess']),'positive-excess edge remains')
 dump(out/'source_capacity.json',{'raw':raw,'V_max':vmax,'h_min':hmin,'Gamma':GAMMA,'capacity':cap})
 dump(out/'cover_main.json',main);dump(out/'cover_edge.json',edge)
 result={'status':'PASS_SAME_G_COVER_'+str(cover),'max_saturation_e':max_e,'cover':cover,'edge_requires_zero_excess':True,'direct_DP_checks':ntest,'main':{k:v for k,v in main.items() if k not in ('Gamma_record_details','survivors')},'edge':{k:v for k,v in edge.items() if k not in ('Gamma_record_details','survivors')}}
 if include_next:
  # Purely CONDITIONAL next gates. Geometry is not asserted by this calculation.
  candidates={}
  for label,ws1,gs1,nf in [
   ('SAT84',(7,8,10,12,14,30),gs,False),
   ('NF41_tail',(7,8,10,12,14,16,28),(0,2,2,2,2,1,0),True),
   ('NF41_and_SAT84',(7,8,10,12,14,16,30),(0,2,2,2,2,1,0),True)]:
   ans=vector_checks(cover,ws1,gs1,cap,L,vmax,hmin,nf41=nf)
   dump(out/f'conditional_{label}.json',{'status':'GEOMETRY_NOT_PROVED_CONDITIONAL_LEDGER_ONLY','condition':label,'result':ans})
   candidates[label]={k:v for k,v in ans.items() if k not in ('Gamma_record_details','survivors')}
  result['conditional_next_gates_NOT_PROVED']=candidates
 result['seconds']=round(time.monotonic()-t,3);dump(out/'ledger_summary.json',result)
 return result

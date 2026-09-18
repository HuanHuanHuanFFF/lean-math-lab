#!/usr/bin/env python3
"""CONDITIONAL costs only. No NF35, SAT60, or SAT66 geometry is proved here."""
import json,math,argparse
from pathlib import Path
from collections import Counter
from joint_budget import require,dump

def compositions(n,k):
 if k==1:
  yield (n,);return
 for v in range(n+1):
  for rest in compositions(n-v,k-1):yield (v,)+rest

def run(tablefile,outfile):
 data=json.loads(tablefile.read_text());tab={int(k):v for k,v in data['capacity'].items()};vm=data['vmax'];hm=data['hmin']
 cases=[
 ('NF35_ONLY_UNPROVED',(7,8,10,12,14,20),(0,2,2,2,1,0)),
 ('NF35_AND_SAT60_BOTH_UNPROVED',(7,8,10,12,14,22),(0,2,2,2,1,0)),
 ('SAT60_AND_SAT66_BOTH_UNPROVED',(7,8,10,12,24),(0,2,2,1,0)),
 ]
 allreports=[];K=20
 for label,w,g in cases:
  nr=0;nq=0;feas=[];ha=Counter()
  for vec in compositions(K,len(w)):
   nr+=1;minimum=sum(a*b for a,b in zip(vec,w));need=sum(a*b for a,b in zip(vec,g));a=vec[0]
   if minimum>305:continue
   for V in range(306-minimum):
    h=(305-V-a)//2;require(V<=vm and hm<=h<=152,'conditional table truncation');nq+=1;cap=tab[h][V]
    if cap is not None and need<=cap:feas.append([*vec,V,h,need,cap]);ha[a]+=1
  require(nr==math.comb(K+len(w)-1,len(w)-1),'incomplete conditional compositions')
  allreports.append({'status':label,'K':K,'weights':w,'Gamma':g,'vectors':nr,'queries':nq,'feasible_records':len(feas),'feasible':feas,'by_positive_excess':dict(ha)})
 dump(outfile,{'status':'CONDITIONAL_ROUTE_DIAGNOSTICS_ONLY','cases':allreports})
 print(json.dumps([{k:v for k,v in row.items() if k!='feasible'} for row in allreports],indent=2))
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--table',required=True,type=Path);ap.add_argument('--out',required=True,type=Path);args=ap.parse_args()
 require(not args.out.exists(),'output already exists');run(args.table,args.out)

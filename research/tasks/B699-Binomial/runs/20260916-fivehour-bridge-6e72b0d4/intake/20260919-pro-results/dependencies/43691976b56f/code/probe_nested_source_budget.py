#!/usr/bin/env python3
"""New diagnostic: retain the nested allowed one-defect source sets.
Uses frozen NF23/NF29 and new NF35-tail. Separate vertical optima initially;
passing records are only a relaxation, NOT a G or an NC9 construction.
"""
from source_budget import *
import sys,time
ROOT=Path(__file__).resolve().parents[1]

def table_for_gamma(L,gamma,vmax,hmin):
 inf=10**8;out={}
 for h in range(hmin,153):
  dp=[0]+[inf]*vmax
  for r,g in zip(ROWS,gamma):
   opts=[(v,g*L[r][v]) for v in range(vmax+1) if L[r][v]<=h]
   nxt=[inf]*(vmax+1)
   for v,cost in opts:
    for s in range(vmax-v+1):
     if dp[s]<inf:nxt[s+v]=min(nxt[s+v],dp[s]+cost)
   dp=nxt
  out[h]=[None if x==inf else sum(gamma)*h-x for x in dp]
 return out

def main():
 raw,L=source_rows();vmax=172;hmin=57
 rows=json.loads((ROOT/'verification/acceptance/joint_budget.json').read_text())['results'][1]['feasible']
 measures=[('ordinary',(1,1,1,1,1,1),(0,1,1,1,1,0)),('third',(2,1,1,1,1,1),(0,1,2,1,1,0))]
 survivors=rows;report=[]
 for name,g,prices in measures:
  tab=table_for_gamma(L,g,vmax,hmin);surv=[];removed=[]
  for rec in survivors:
   cs=rec['counts'];need=sum(x*y for x,y in zip(cs,prices));cap=tab[rec['h']][rec['V']]
   rr={**rec,'new_measure':name,'new_need':need,'new_cap':cap}
   (surv if cap is not None and need<=cap else removed).append(rr)
  print(name,'before',len(survivors),'removed',len(removed),'after',len(surv),flush=True)
  report.append({'name':name,'gamma':g,'prices':prices,'removed':removed,'survivors':surv});survivors=surv
 dump(ROOT/'evidence/nested_source_probe.json',{'status':'RELAXED_DIAGNOSTIC','steps':report,'survivors':survivors})
 print('FINAL',len(survivors),survivors[:2],flush=True)
if __name__=='__main__':main()

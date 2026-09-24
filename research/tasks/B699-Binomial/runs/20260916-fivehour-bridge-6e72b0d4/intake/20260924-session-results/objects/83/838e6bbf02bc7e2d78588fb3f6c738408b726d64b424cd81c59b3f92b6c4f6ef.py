#!/usr/bin/env python3
import sys,json
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'baseline'))
import ledger_core as L, moment_core as M, research_round as R
D=(1,3,5)

def signatures(k1_upto=36,k2_31=False):
 raw=[]
 for x in L.base_signatures():
  if x[2]=='saturated25_28_kappa':
   upto=31 if k2_31 else 30
   for a in range(3):
    for b in range(a,3):
     c=[0]*6;c[D[a]]+=1;c[D[b]]+=1
     raw.append((25,tuple(c),f'sat25_{upto}_kappa2',(0,)*6,tuple(c)))
  elif x[2]=='free_degree_ge29':
   start=32 if k2_31 else 31
   if k1_upto>=start:
    for idx in D:
     c=[0]*6;c[idx]=1
     raw.append((start,tuple(c),f'sat{start}_{k1_upto}_kappa1',(0,)*6,tuple(c)))
   raw.append((k1_upto+1,(0,)*6,f'free_degree_ge{k1_upto+1}',(0,)*6,(0,)*6))
  else: raw.append(x)
 return L.pareto(raw)[0]

def evaluate(raw):
 state_ok={s:False for s in L.STATES}; qs=[]
 for q in L.QUERIES:
  A=R.aggregate_map(raw,q['remaining'],q['cap'],q['available'],False)
  good=[]
  for (DD,KK),(deg,path) in A.items():
   rm=M.row_model(L.STATES[q['state']],q['winner'],list(DD),list(KK))
   if M.first_second_moment(rm)['compatible']:good.append(deg)
  best=min(good) if good else None
  ok=best is not None and best<=q['available']
  state_ok[q['state']] |= ok
  qs.append(dict(state=q['state'],special_S5=q['winner'],minimum_X=best,available_X=q['available'],survives=ok))
 return [s for s,v in state_ok.items() if v],qs
stages=[]
for u in range(36,43):
 rem,qs=evaluate(signatures(u,False))
 stages.append(dict(stage=f'KSAT_through_{u}',remaining_states=rem,queries=qs))
rem,qs=evaluate(signatures(42,True))
stages.append(dict(stage='KSAT37_42_plus_KSAT2_31',remaining_states=rem,queries=qs))
res=dict(status='PASS_STAGEWISE_PAYOFF',stages=stages)
Path(sys.argv[1]).write_text(json.dumps(res,indent=2)+'\n')
print(json.dumps(res,indent=2))

import json,sys
from functools import lru_cache
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'baseline'))
import cover
FROZEN=json.load(open(ROOT/'sources/E0_nine_survivors_after_KSAT30.json'))
D=(1,3,5);INF=10**9

def pareto(raw):
 raw=sorted(set(raw)); kept=[]
 for a in raw:
  if any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept):continue
  kept.append(a)
 assert all(any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept) for a in raw)
 return raw,kept

def solver(items):
 @lru_cache(None)
 def f(n,cap):
  if n==0:return 0
  ans=INF
  for e,c,*_ in items:
   if all(c[i]<=cap[i] for i in range(6)):
    z=f(n-1,tuple(cap[i]-c[i] for i in range(6)))
    if z<INF:ans=min(ans,e+z)
  return ans
 return f

def old_signatures():
 raw=[]
 for x in cover.signatures()[0]:
  if x[2]=='free_degree_ge29':
   for q in (29,30):
    for idx in D:
     c=[0]*6;c[idx]=1;raw.append((q,tuple(c),f'sat{q}_kappa',(0,)*6,tuple(c)))
   raw.append((31,(0,)*6,'free_degree_ge31',(0,)*6,(0,)*6))
  else:raw.append(x)
 return pareto(raw)

def new_signatures():
 raw=[]
 for x in cover.signatures()[0]:
  if x[2]=='saturated25_28_kappa':
   for a in range(3):
    for b in range(a,3):
     c=[0]*6;c[D[a]]+=1;c[D[b]]+=1
     raw.append((25,tuple(c),'sat25_30_kappa2',(0,)*6,tuple(c)))
  elif x[2]=='free_degree_ge29':
   for idx in D:
    c=[0]*6;c[idx]=1
    raw.append((31,tuple(c),'sat31_36_kappa1',(0,)*6,tuple(c)))
   raw.append((37,(0,)*6,'free_degree_ge37',(0,)*6,(0,)*6))
  else:raw.append(x)
 return pareto(raw)

def run(dst):
 dst=Path(dst);dst.mkdir(parents=True,exist_ok=False)
 # Reconstruct all terminal queries of the frozen complete 98-state frontier.
 oldraw,oldkept=old_signatures();cover.RAW=oldraw;cover.ITEMS=oldkept;cover.minimum_degree=solver(oldkept)
 packs=[];query_count=0
 for z in FROZEN:
  st={k:z[k] for k in ['h','v','E','d','p']}
  rec=cover.state_check(st,9,False)
  assert rec['winners']
  query_count+=len(rec['exact_queries']);packs.append((st,rec['exact_queries']))
 assert len(packs)==98 and query_count==527
 # Apply only stronger fees. No state outside the frozen 98 can re-enter.
 raw,kept=new_signatures();f=solver(kept);fr=solver(list(reversed(raw)))
 survivors=[]
 for st,queries in packs:
  wins=[]
  for qi,q in enumerate(queries):
   cap=tuple(q['capacity']);n=q['remaining_count'];need=f(n,cap)
   if need<=q['available_X']:
    wins.append({'query_index':qi,'minimum_X':need,'available_X':q['available_X'],
                 'slack':q['available_X']-need,'special':q['special'],
                 'capacity':q['capacity'],'trace_rows':q['trace_rows']})
  if wins:survivors.append({'state':st,'winner_count':len(wins),'winners':wins})
 assert len(survivors)==6
 hs=sorted({x['state']['h'] for x in survivors});assert min(hs)==133
 assert max(sum(x['state']['v']) for x in survivors)==39
 result={'status':'PASS_K2SAT25_30_KSAT31_36_SAME_G_LEDGER',
         'frozen_complete_E0_frontier_states':98,'terminal_queries_reconstructed':query_count,
         'nine_factor_E0_states':6,'positive_E_nine_states':0,
         'positive_E_basis':'frozen_EDGE9','minimum_nine_h':133,
         'maximum_nine_vertical_sum':39,'nine_h_values':hs,
         'raw_signature_count':len(raw),'pareto_signature_count':len(kept),
         'COVER8_proved':False}
 (dst/'ledger_result.json').write_text(json.dumps(result,indent=2)+'\n')
 (dst/'six_survivors.json').write_text(json.dumps(survivors,indent=2)+'\n')
 print(result['status'],json.dumps(result,sort_keys=True))
if __name__=='__main__':run(sys.argv[1])

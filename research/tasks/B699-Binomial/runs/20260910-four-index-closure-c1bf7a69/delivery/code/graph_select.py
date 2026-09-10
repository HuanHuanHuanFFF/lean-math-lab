from pathlib import Path
import sys,itertools,json,time
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'baseline/low/code'));from graph_diagnostic import EXPLICIT
PS=[2,3,5,7,11,13,17,19,23]
NEW={(2,17):330,(3,17):100,(3,19):110,(7,19):130,(11,19):180,(17,19):190,(5,23):200,(11,23):110}

def optimum(ps,edges,weights):
 best=10**100;win=None;vis=0
 def go(rem,order,vals,cost):
  nonlocal best,win,vis
  vis+=1
  if not rem:
   if cost<best:best=cost;win=[order,vals]
   return
  idx=len(order);base=vals[-1] if vals else 0
  # sorted optimistic costs accelerates branch-and-bound; only exact integers.
  trials=[]
  for p in rem:
   v=max([base]+[edges.get(tuple(sorted([p,q])),0) for q in order])
   trials.append((v,p))
  for v,p in sorted(trials):
   lower=cost+v*sum(weights[idx:])
   if lower>=best:continue
   go(tuple(q for q in rem if q!=p),order+[p],vals+[v],cost+weights[idx]*v)
 go(tuple(ps),[],[],0)
 return best,win,vis

def assess(edges):
 ans=[]
 for i in [19,22,24,25]:
  ps=[p for p in PS if p<i];t=len(ps);s=i-t
  sg=optimum(ps,edges,[1]*t)
  wg=optimum(ps,edges,[2*s-a for a in range(t)])
  base=s*(i-3*t-1)//2
  ans.append(dict(i=i,sigma=sg,weighted=wg,gain=wg[0]+1000*base))
 return ans
if __name__=='__main__':
 edges=EXPLICIT|NEW;rows=assess(edges)
 print('FULL',rows,flush=True)
 needed=dict(NEW)
 for edge in NEW:
  e=EXPLICIT|{k:v for k,v in needed.items() if k!=edge};r=assess(e)
  if all(x['gain']>0 for x in r):needed.pop(edge);print('DROP',edge,[(x['i'],x['sigma'][0],x['gain']) for x in r],flush=True)
  else:print('KEEP',edge,[(x['i'],x['sigma'][0],x['gain']) for x in r],flush=True)
 final=assess(EXPLICIT|needed)
 out=dict(needed=[[p,q,w] for (p,q),w in needed.items()],final=final,full=rows)
 (ROOT/'outputs/graph_select.json').write_text(json.dumps(out,indent=2));print('FINAL',out,flush=True)

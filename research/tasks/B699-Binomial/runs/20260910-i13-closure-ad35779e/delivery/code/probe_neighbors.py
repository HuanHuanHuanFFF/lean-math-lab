"""Additional finite-seed diagnostic only: float cut design + exact graph.
No analytical cuts in this file are accepted automatically.
"""
from pathlib import Path
import sys,json
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'input/unpacked/asymmetric-pade/B699-asymmetric-Pade/code'))
from probe_dynamic_cuts import build_candidates,rows_at_height
sys.path.insert(0,str(ROOT/'code'))
from probe_weighted_asymmetric import solve,nondominated,prime
if __name__=='__main__':
 cand=build_candidates();out=[]
 for h in [8192,65536,1048576]:
  rows=rows_at_height(cand,h-1)
  for i in [12,14,15,18,20]:
   ps=[p for p in range(2,i) if prime(p)];t=len(ps)
   es=nondominated([r for r in rows if r['p']<i and r['q']<i]);ans=[]
   for s in range((i+1)//2,i):
    w=[2*s-a for a in range(i)];base=1000*(sum(w)-s*(s+1)-sum(w[:t]))
    v=solve(ps,es,lambda z,w=w:sum(a*b for a,b in zip(w[:t],sorted(z))))
    ans.append({'s':s,'gain':base+v['min'],'witness':v['witness']})
   best=max(ans,key=lambda v:v['gain']);item={'i':i,'Y_height_bits':h-1,'best':best,'cuts':[e[4] for e in es]};out.append(item)
   print(i,h,len(es),best,flush=True)
 (ROOT/'outputs/neighbor_diagnostic.json').write_text(json.dumps(out,indent=2)+'\n')

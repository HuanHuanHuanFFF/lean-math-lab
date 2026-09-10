import itertools,math,json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
rows=json.load(open(ROOT/'outputs/seed_probe.json'))['rows']
E={tuple(r['best']['pair']):max(0,math.floor(1000*r['best']['lambda'])-1) for r in rows if r['best']}
def opt(ps,weights=None):
 best=10**9;winner=None
 for order in itertools.permutations(ps):
  z=[]
  for p in order:
   z.append(max([0]+z[-1:]+[E.get(tuple(sorted([p,q])),0) for q in order[:len(z)]]))
  val=sum(z) if weights is None else sum(a*b for a,b in zip(z,weights))
  if val<best:best=val;winner=(order,z)
 return best,winner
if __name__=='__main__':
 out=[]
 for i in [16,19,22,25]:
  t0=time.time();ps=[p for p in [2,3,5,7,11,13,17,19,23] if p<i];s=i-len(ps)
  x=opt(ps);y=opt(ps,[2*s-a for a in range(len(ps))]);base=(i-len(ps))*(i-3*len(ps)-1)//2
  z=dict(i=i,graph=x,weighted=y,base=base,weighted_gap=base+y[0]/1000,seconds=time.time()-t0);out.append(z);print(z,flush=True)
 (ROOT/'outputs/extended_graph_probe.json').write_text(json.dumps(dict(status='DIAGNOSTIC NEW EDGES NOT YET CERTIFIED',edges=[[a,b,c] for (a,b),c in E.items()],rows=out),indent=2))

"""Floating diagnostic only: keep the seed-power asymmetry in BFT's proof."""
import math,itertools,json
from pathlib import Path
# oriented (p,q,k0,l0,a,b,c,d,L1,m0,published symmetric lambda)
ROWS=[(3,2,2,3,1,1,25,17,1.5540,582,.285),(2,5,7,3,1,1,5,4,1.3098,50,.258),
(2,7,3,1,1,1,3,2,1.5395,138,.259),(2,11,7,2,1,1,5,4,1.3098,50,.059),
(2,13,9,2,1,3,3,2,1.5395,138,.054),(3,5,3,2,1,1,4,3,1.4170,153,.216),
(7,3,2,5,5,1,5,3,1.5454,86,.038),(3,11,5,2,1,2,7,5,1.4135,74,.329),
(13,3,3,7,1,1,7,6,1.2219,53,.231),(5,7,2,2,2,1,8,5,1.5407,53,.227),
(5,11,3,2,1,1,5,4,1.3098,50,.199),(13,5,1,2,2,1,5,3,1.5454,86,.163),
(7,13,3,2,1,2,7,5,1.4135,74,.098),(13,11,1,1,1,1,3,2,1.5395,138,.037)]

def optimize(rows,primes):
 best=1e9;win=None;assign=None
 for bits in range(1<<len(rows)):
  z={p:0 for p in primes}
  for k,(p,q,ap,aq) in enumerate(rows):
   w=(q,aq) if bits&(1<<k) else (p,ap)
   z[w[0]]=max(z[w[0]],w[1])
  total=sum(z.values())
  if total<best:best=total;win=z;assign=bits
 return best,win,assign

def main():
 out=[]
 for p,q,k,l,a,b,c,d,L,m0,lam in ROWS:
  logs=[k*math.log(p),l*math.log(q)];lm=max(logs)
  ap,aq=[1-(1-lam)*u/lm for u in logs]
  out.append((p,q,ap,aq));print(p,q,ap,aq)
 ans=optimize(out,[2,3,5,7,11,13]);print('FULL ASYMMETRIC',ans)
 data={'asymmetric_edges':out,'optimum':ans,'status':'heuristic until proof and interval checks'}
 Path(__file__).resolve().parents[1].joinpath('results/asymmetric_graph_probe.json').write_text(json.dumps(data,indent=2)+'\n')
if __name__=='__main__':main()

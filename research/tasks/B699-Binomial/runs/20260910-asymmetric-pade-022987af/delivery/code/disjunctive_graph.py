"""Exact branch-and-bound for rational (integer-scaled) asymmetric vertex cuts.
Input edge (p,q,a,b) means z_p>=a OR z_q>=b. No real arithmetic.
The finite branch tree is exhaustive: if an edge is violated, every feasible
extension must raise one endpoint to its threshold. No heuristic-only pruning.
"""
from functools import lru_cache

def solve(primes,edges):
 ps=tuple(primes);idx={p:j for j,p in enumerate(ps)}
 ee=tuple((idx[p],idx[q],a,b) for p,q,a,b in edges if p in idx and q in idx)
 maximum=[0]*len(ps)
 for p,q,a,b in ee:maximum[p]=max(maximum[p],a);maximum[q]=max(maximum[q],b)
 best=sum(maximum);winner=tuple(maximum);calls=pruned=0;visited=set()
 def rec(z):
  nonlocal best,winner,calls,pruned
  calls+=1;total=sum(z)
  if total>=best:pruned+=1;return
  if z in visited:return
  visited.add(z)
  bad=[(min(a-z[p],b-z[q]),p,q,a,b) for p,q,a,b in ee if z[p]<a and z[q]<b]
  if not bad:best=total;winner=z;return
  _,p,q,a,b=max(bad)
  if a-z[p]>b-z[q]:p,q,a,b=q,p,b,a
  for vertex,target in [(p,a),(q,b)]:
   zz=list(z);zz[vertex]=target;rec(tuple(zz))
 rec((0,)*len(ps))
 assert all(winner[p]>=a or winner[q]>=b for p,q,a,b in ee)
 return {'minimum_numerator':best,'witness':dict(zip(ps,winner)),'nodes':calls,'pruned':pruned,'unique_states':len(visited),'edges':len(ee)}

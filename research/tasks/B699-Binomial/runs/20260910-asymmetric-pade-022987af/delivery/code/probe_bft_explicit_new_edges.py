"""Floating design search, no certified conclusions."""
import sys,json,itertools
from pathlib import Path
from probe_bft_asym_cuts import vals
PS=[2,3,5,7,11,13,17,19,23]

def main():
 out=[];zero={p:0 for p in PS}
 for p,q in itertools.combinations(PS,2):
  if q<=13:continue
  best=None
  for k in range(1,15):
   if p**k>10000000:break
   for ell in range(1,15):
    if q**ell>10000000:break
    for a in range(1,7):
     for b in range(1,7):
      D=a*p**k-b*q**ell
      if not D or abs(D)>.3*min(a*p**k,b*q**ell):continue
      v=vals(p,q,k,ell,a,b,D,zero) if D>0 else vals(q,p,ell,k,b,a,-D,zero)
      if v and (best is None or v['score']>best['score']):best=v
  print(p,q,best,flush=True)
  if best:out.append(best)
 Path(__file__).resolve().parents[1].joinpath('results/new_explicit_asym_edge_probe.json').write_text(json.dumps(out,indent=2)+'\n')
if __name__=='__main__':main()

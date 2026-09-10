"""Diagnostic: search cuts against a chosen relaxation minimizer."""
import itertools,json,sys
from pathlib import Path
from probe_bft_asym_cuts import vals

def search(ps,Z):
 out=[]
 for pp,qq in itertools.combinations(ps,2):
  best=None
  for k in range(1,17):
   if pp**k>100000000:break
   for l in range(1,17):
    if qq**l>100000000:break
    for a in range(1,11):
     for b in range(1,11):
      D=a*pp**k-b*qq**l
      if not D or abs(D)>.3*min(a*pp**k,b*qq**l):continue
      r=vals(pp,qq,k,l,a,b,D,Z) if D>0 else vals(qq,pp,l,k,b,a,-D,Z)
      if r and (best is None or r['score']>best['score']):best=r
  if best:out.append(best)
  print(pp,qq,best,flush=True)
 return out

def main():
 Z={2:.2733,3:.3295,5:.3612,7:0,11:0}
 data=search(list(Z),Z)
 Path(__file__).resolve().parents[1].joinpath('results/target_i13_asym_cut_probe.json').write_text(json.dumps(data,indent=2)+'\n')
if __name__=='__main__':main()

"""Finite FLOATING parameter design search for asymmetric Padé cofactor cuts.
Uses the explicit L1/m0 table of BFT Prop. 5.1. Candidate outputs are not
mathematical certificates; verify_pair_intervals.py must certify chosen rows.
"""
import itertools,json,math,time
from pathlib import Path
from probe_bft_asym_cuts import vals
PS=[2,3,5,7,11,13,17,19,23]

def main():
 start=time.monotonic();out=[];Z={p:0 for p in PS}
 for pp,qq in itertools.combinations(PS,2):
  frontier=[];tested=0
  for k in range(1,17):
   if pp**k>100000000:break
   for l in range(1,17):
    if qq**l>100000000:break
    for a in range(1,11):
     for b in range(1,11):
      if math.gcd(a,b)>1:continue
      D=a*pp**k-b*qq**l
      if not D or abs(D)>.3*min(a*pp**k,b*qq**l):continue
      tested+=1
      r=vals(pp,qq,k,l,a,b,D,Z) if D>0 else vals(qq,pp,l,k,b,a,-D,Z)
      if r is None:continue
      w=(r['ap'],r['aq']) if r['p']==pp else (r['aq'],r['ap'])
      if any(v[0]>=w[0]-1e-12 and v[1]>=w[1]-1e-12 for v,_ in frontier):continue
      frontier=[(v,row) for v,row in frontier if not(w[0]>=v[0]-1e-12 and w[1]>=v[1]-1e-12)]
      frontier.append((w,r))
  print(pp,qq,'tested',tested,'pareto',len(frontier),[(tuple(round(t,5) for t in w),(r['p'],r['q'],r['k0'],r['l0'],r['a'],r['b'])) for w,r in frontier],flush=True)
  out += [r for _,r in frontier]
 data={'scope':{'max_base_power':100000000,'max_exponent':16,'coefficients':10,'grid':'20 entries from BFT Prop 5.1','distance_filter':'abs(aP-bQ)<=0.3 min(aP,bQ)'},'rows':out,'seconds':time.monotonic()-start,'certified':False}
 Path(__file__).resolve().parents[1].joinpath('results/pareto_asym_probe.json').write_text(json.dumps(data,indent=2)+'\n')
if __name__=='__main__':main()

"""Exact conditional graph only: any newly appended Diophantine cut is UNPROVED."""
from pathlib import Path
from itertools import combinations
import json,sys,math
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code/vendor'))
from probe_weighted_asymmetric import solve,nondominated

def test(i,p,q,w,base):
 ps=[2,3,5,7];es=nondominated(base+[dict(p=p,q=q,wp=w,wq=w,hypothesis_only=True)]);opts=[]
 for s in range((i+1)//2,i):
  weights=[2*s-a for a in range(i)];b=10000*(sum(weights)-s*(s+1)-sum(weights[:4]));a=solve(ps,es,lambda z:sum(w*x for w,x in zip(weights[:4],sorted(z))));opts.append(dict(s=s,net=b+a['min'],minimum=a['min'],witness=a['witness']))
 best=max(opts,key=lambda z:z['net']);cols=[]
 for a,b in combinations(range(4),2):
  z=solve(ps,es,lambda z:sum(z)+max(0,10000-z[a]-z[b]));cols.append(dict(pair=[ps[a],ps[b]],minimum=z['min'],witness=z['witness']))
 chi=min(z['minimum'] for z in cols);choices=[]
 for r in range(i):
  for s in range(1,i):
   lam=2*s-r;ell=i-1-r;E=s*(s+1)+ell*(ell+1)//2
   if lam>0:choices.append((10000*(lam*(i-4)-E)+lam*chi,r,s))
 de,r,s=max(choices)
 return dict(passed=best['net']>0 and de>0,weighted=best,collision_min=chi,collision_delta=de,r=r,s=s)

def main():
 base=json.loads((R/'input/cuts.json').read_text())['cuts'];results=[]
 for p,q in combinations([2,3,5,7],2):
  top=test(9,p,q,5000,base)
  if not top['passed']:results.append(dict(pair=[p,q],result='NO_SINGLE_SYMMETRIC_EDGE_AT_OR_BELOW_HALF_IN_THIS_MODEL',at_half=top));continue
  lo=1;hi=5000
  while lo<hi:
   mid=(lo+hi)//2
   if test(9,p,q,mid,base)['passed']:hi=mid
   else:lo=mid+1
  good=test(9,p,q,lo,base);bad=test(9,p,q,lo-1,base);assert good['passed'] and not bad['passed']
  results.append(dict(pair=[p,q],first_grid_weight=lo,denominator=10000,pass_case=good,preceding_failure=bad))
 # Two additional edges, both at a common grid weight. This remains conditional.
 pairlist=list(combinations([2,3,5,7],2));two=[]
 def test_two(first,second,w):
  p,q=second
  augmented=base+[dict(p=first[0],q=first[1],wp=w,wq=w,hypothesis_only=True)]
  return test(9,p,q,w,augmented)
 for first,second in combinations(pairlist,2):
  at_half=test_two(first,second,5000)
  if not at_half['passed']:continue
  lo=1;hi=5000
  while lo<hi:
   mid=(lo+hi)//2
   if test_two(first,second,mid)['passed']:hi=mid
   else:lo=mid+1
  yes=test_two(first,second,lo);no=test_two(first,second,lo-1)
  assert yes['passed'] and not no['passed']
  two.append(dict(pairs=[first,second],first_common_weight=lo,denominator=10000,pass_case=yes,preceding_failure=no))
 two.sort(key=lambda row:row['first_common_weight'])
 out=dict(status='CONDITIONAL_GRAPH_ONLY_NO_NEW_I9_HEIGHT',i=9,all_Y_requirement='Any proposed new cut needs a separately proved explicit common threshold for all real Y, all exponents, cofactors and shifts <=8, including zero.',rows=results,two_edge_designs=two)
 (R/'evidence/next_i9_interfaces.json').write_text(json.dumps(out,indent=2)+'\n')
 for row in results:print(row,flush=True)
 print('TWO_EDGE_BEST',two[0] if two else None,flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()

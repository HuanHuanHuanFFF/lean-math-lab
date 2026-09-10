"""Exact finite sensitivity calculation; the added edge is NOT proved here."""
from pathlib import Path
import json,sys
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code'))
from probe_weighted_asymmetric import solve,nondominated
if __name__=='__main__':
 data=json.loads((ROOT/'outputs/weighted_asymmetric_probe.json').read_text())
 row=next(r for r in data['rows'] if r['i']==18);ps=row['primes'];es=nondominated(row['cuts'])
 objective=lambda z:sum(w*x for w,x in zip([24,23,22,21,20,19,18],sorted(z)))
 def result(eta):return solve(ps,es+[(11,17,eta,eta,{})],objective)
 lo=0;hi=600
 while hi-lo>1:
  m=(lo+hi)//2
  if result(m)['min']>24000:hi=m
  else:lo=m
 out={'status':'CONDITIONAL_GRAPH_ONLY','i':18,'unproved_extra_edge':{'p':11,'q':17,'weights':[hi,hi],'denominator':1000},
      'weighted_min_with_edge':result(hi),'one_unit_weaker_edge':result(lo),'base':-24000,'old_accepted_cuts':row['cuts'],
      'explanation':'This does not certify the extra cofactor inequality or a height; it computes a precise next sufficient input for the distinct-position branch.'}
 (ROOT/'outputs/next_condition.json').write_text(json.dumps(out,indent=2)+'\n')
 print('extra edge eta',hi,'weighted',out['weighted_min_with_edge']['min'],'previous',out['one_unit_weaker_edge']['min'])

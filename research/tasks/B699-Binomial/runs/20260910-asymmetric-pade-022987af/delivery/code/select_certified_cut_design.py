"""Integer graph selection from FLOAT-generated proposals. Selecting is exact;
analytic validity of proposal weights must be certified separately."""
import json,math
from pathlib import Path
from disjunctive_graph import solve
ROOT=Path(__file__).resolve().parents[1]
old=json.loads((ROOT/'results/asymmetric_best_explicit_seed_probe.json').read_text())
new=json.loads((ROOT/'results/new_explicit_asym_edge_probe.json').read_text())
rows=old+[r for r in new if sorted([r['p'],r['q']]) in [[2,17],[11,19],[17,19]]]
for r in rows:r['wp']=math.floor(r['ap']*1000)-1;r['wq']=math.floor(r['aq']*1000)-1
ps=[2,3,5,7,11,13,17,19]
def edges(rr):return [(r['p'],r['q'],r['wp'],r['wq']) for r in rr]
def criteria(rr):
 e=edges(rr)
 return all(solve(ps[:k],e)['minimum_numerator']>=s for k,s in [(4,680),(6,1010),(8,1330)])
print('full',[(k,solve(ps[:k],edges(rows))) for k in [4,6,8]])
# Greedy edge removal; a design choice only, not used by the analytic verifier.
for r in rows[:]:
 candidate=[x for x in rows if x is not r]
 if criteria(candidate):
  rows=candidate;print('remove',r['p'],r['q'])
print('retained',[(r['p'],r['q'],r['wp'],r['wq']) for r in rows])
print('results',[(k,solve(ps[:k],edges(rows))) for k in [4,6,8]])
(ROOT/'results/selected_cut_design.json').write_text(json.dumps(rows,indent=2)+'\n')
if not criteria(rows):raise RuntimeError('failed criteria')

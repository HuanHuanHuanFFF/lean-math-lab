"""Use symmetry of the proved carry-interval lower bound, not an assumption
that the original polynomial coefficient gcd itself is symmetric."""
from pathlib import Path
from fractions import Fraction as F
import sys,json,itertools
R=Path(__file__).resolve().parents[1];S=R/'adopted/pro-a'
sys.path[:0]=[str(S/'code'),str(S/'code/vendor'),str(R/'code')]
from design_certified_content import rates
from select_i10 import profile
from probe_weighted_asymmetric import nondominated
z=json.loads((R/'evidence/i10_selected_design.json').read_text());cs=z['cuts'];ps=json.loads((R/'evidence/probe_moderate.json').read_text())['frontiers'];seeds={tuple(r[k] for k in ['p','q','k0','l0','a','b']) for r in ps}
specs={tuple(r[k] for k in ['e','d','f','g']) for r in cs if r['content_source']=='NEW_UNPROVED_G'};pool=[r for r in cs if r['content_source']!='new_general_content']
for e,d,f,g in specs:
 for ee,dd,ff in set(itertools.permutations((e,d,f))):
  for seed in seeds:
   r=rates(seed,ee,dd,ff,float(F(g)))
   if r:
    r.update(content_source='NEW_UNPROVED_G',g=g,m0=0,content_canonical=sorted([e,d,f]));r['wp']-=7;r['wq']-=7
    if min(r['wp'],r['wq'])>0:pool.append(r)
print('FULL',profile(pool),len(pool),flush=True)
current=[r for r in cs if r['content_source']!='new_general_content']
for it in range(30):
 b=profile(current);print('STEP',it,b,flush=True)
 if b['net']>1000:break
 x=dict(zip([2,3,5,7],b['witness']));r=max(pool,key=lambda r:min(r['wp']-x[r['p']],r['wq']-x[r['q']]))
 if min(r['wp']-x[r['p']],r['wq']-x[r['q']])<=0:break
 print('ADD',r,flush=True);current=[r[4] for r in nondominated(current+[r])]
changed=True
while changed:
 changed=False
 for k in range(len(current)):
  if profile(current[:k]+current[k+1:])['net']>750:current=current[:k]+current[k+1:];changed=True;break
b=profile(current);print('FINAL',b,'cuts',len(current),flush=True)
(R/'evidence/i10_design_with_oldG.json').write_text((R/'evidence/i10_selected_design.json').read_text());z.update(cuts=current,profile=b);(R/'evidence/i10_selected_design.json').write_text(json.dumps(z,indent=2)+'\n')

"""A rational witness for the insufficiency of one specific asymptotic relaxation.
Not an integer counterexample, and not a barrier to methods retaining arithmetic.
"""
from source_paths import frozen,R
import json
z={2:3632,3:1035,5:3927,7:671};scale=10000
old=[(3,2,2847,3231),(3,2,4125,1202),(3,2,858,3731),(2,5,2580,2617),
 (2,7,2731,3198),(7,2,1063,3632),(2,7,4448,561),(5,3,3645,2409),
 (5,3,1338,4084),(7,3,3187,386),(7,3,1663,1035),(5,7,3610,2274),
 (5,7,4280,671),(5,7,3927,1486),(5,7,1026,4312)]
rows=json.loads((frozen('A')/'input/cuts.json').read_text())['cuts']
new=[(r['p'],r['q'],r['wp'],r['wq']) for r in rows if r['p'] in z and r['q'] in z]
cuts=sorted(set(old+new));assert len(cuts)==20
for p,q,a,b in cuts:assert z[p]>=a or z[q]>=b
assert sum(z.values())<13000
weights=[]
for s in range(1,9):
 w=[max(0,2*s-a) for a in range(9)];actual=sum(a*b for a,b in zip(w[:4],sorted(z.values())))
 allowed=scale*(s*(s+1)+sum(w[:4])-sum(w));assert actual<=allowed
 weights.append({'s':s,'objective_scaled':actual,'allowed_scaled':allowed})
out={'status':'PASS_EXACT_RELAXATION_WITNESS_NOT_ORIGINAL_COUNTEREXAMPLE','z_scaled':z,'scale':scale,
     'cut_count':len(cuts),'cuts':cuts,'sum_z_scaled':sum(z.values()),'scalar_allowed_scaled':13000,
     'weighted_window_obligations':weights,
     'meaning':'These fixed cut weights and scalar/window exponent inequalities admit a positive-slack feasible point; changing only effective m0 does not create an asymptotic contradiction. No global impossibility claim.'}
(R/'evidence/i9/method_boundary.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k not in ('cuts','weighted_window_obligations')}),flush=True)

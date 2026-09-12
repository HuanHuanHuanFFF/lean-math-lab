from pathlib import Path
from datetime import datetime,timezone
import copy, hashlib, importlib.util, json, sys
OUT=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('minimum_gain_plan',OUT/'check_retained_gain.py')
mod=importlib.util.module_from_spec(spec);sys.modules[spec.name]=mod;spec.loader.exec_module(mod)
r=json.loads((OUT/'retained-gain-results.json').read_text())
base=copy.deepcopy(mod.original)
for old,new in zip(base['rows'],r['retained_gain']['rows']):
    assert old['seed']==new['seed']
    old['D_threshold_m0']=new['D_threshold_m0'];old['D_tracks']=new['D_tracks']
mod.tune.base=base
plan=mod.tune.examine(r['retained_gain']['minimum_integer_B'],True)
assert plan['feasible'] and all(x['diagnostic_Delta']>0 for x in plan['collision_diagnostics'])
for row in plan['rows']:
    row.pop('D_tracks')
    row['D_tracks_reference']='retained-gain-results.json#/retained_gain/rows (matching seed)'
plan.update({'utc':datetime.now(timezone.utc).isoformat(),'status':'exact finite-selector certificate data, not Lean accepted',
 'r':3,'s':7,'lambda':11,'E':84,'all_orientations':32,
 'source_retained_gain_sha256':hashlib.sha256((OUT/'retained-gain-results.json').read_bytes()).hexdigest(),
 'worker_lean_invocations':0,'new_original_indices':[]})
(OUT/'MINIMUM_PLAN.json').write_text(json.dumps(plan,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:plan[k] for k in ['B','weights','S','Delta','global_height_margin_integer']},indent=2))

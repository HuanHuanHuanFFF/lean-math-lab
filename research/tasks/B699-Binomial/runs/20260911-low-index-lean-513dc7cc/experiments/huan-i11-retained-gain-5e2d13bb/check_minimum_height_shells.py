from pathlib import Path
from datetime import datetime,timezone
import hashlib, importlib.util, json, sys
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
SOURCE=RUN/'experiments/huan-i11-coverage-feasibility-5e2d13bb/structure_stats.py'
spec=importlib.util.spec_from_file_location('minimum_height_gain_shells',SOURCE)
mod=importlib.util.module_from_spec(spec);sys.modules[spec.name]=mod;spec.loader.exec_module(mod)
r=json.loads((OUT/'retained-gain-results.json').read_text())
old=mod.run(r['baseline_discarded_gain']['minimum_integer_B'],30,50000,500000)
new=mod.run(r['retained_gain']['minimum_integer_B'],30,50000,500000)
assert new['pair_offset_loop_upper_bound_after_shell_pruning']<=old['pair_offset_loop_upper_bound_after_shell_pruning']
payload={'utc':datetime.now(timezone.utc).isoformat(),'status':'same pure conservative shell counts at the two unrounded minimum heights; no CRT',
 'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
 'retained_gain_results_sha256':hashlib.sha256((OUT/'retained-gain-results.json').read_bytes()).hexdigest(),
 'discarded_gain_minimum':old,'retained_gain_minimum':new,
 'unrounded_step_reduction':old['pair_offset_loop_upper_bound_after_shell_pruning']-new['pair_offset_loop_upper_bound_after_shell_pruning'],
 'worker_lean_invocations':0,'CRT_pairs_enumerated':0}
(OUT/'minimum-height-shells.json').write_text(json.dumps(payload,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:{x:payload[k][x] for x in ['B','shell_overlap_pair_upper_bound','pair_offset_loop_upper_bound_after_shell_pruning','resource_actual']} for k in ['discarded_gain_minimum','retained_gain_minimum']},indent=2))

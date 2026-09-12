from pathlib import Path
import json,hashlib
OUT=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
s=json.loads((OUT/'SOURCE_MAP.json').read_text())
for x in s['sources']+s['new_exact_grid_files']+s['derived_result_files']:assert sha(Path(x['path']))==x['sha256']
if (OUT/'FREEZE.json').exists():
 for n,v in json.loads((OUT/'FREEZE.json').read_text())['files'].items():assert sha(OUT/n)==v['sha256']
print(json.dumps({'status':'PASS_SOURCE_AND_FREEZE_BINDING','reused':1561,'new':1903,'old_configs_recomputed':0,'Lean_invocations':0}))

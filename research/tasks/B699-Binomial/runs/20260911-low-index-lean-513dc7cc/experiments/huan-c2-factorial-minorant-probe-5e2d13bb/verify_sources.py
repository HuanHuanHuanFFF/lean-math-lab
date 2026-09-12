from pathlib import Path
import json,hashlib
OUT=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
s=json.loads((OUT/'SOURCE_MAP.json').read_text())
for x in s['mathematical_sources']+s['accepted_arithmetic_files']+[s['runtime']['simplex_source']]:
 assert sha(Path(x['path']))==x['sha256']
if (OUT/'FREEZE.json').exists():
 for n,v in json.loads((OUT/'FREEZE.json').read_text())['files'].items():assert sha(OUT/n)==v['sha256']
print(json.dumps({'status':'PASS_SOURCE_AND_FROZEN_BYTES','mathematical_sources':len(s['mathematical_sources']),'Lean_invocations':0}))

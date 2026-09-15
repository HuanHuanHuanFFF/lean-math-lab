"""Administrative byte freeze for the H29 extension; no proof execution."""
import hashlib
import json
from pathlib import Path
from datetime import datetime, timezone

run=Path(__file__).resolve().parents[2]
names=[
    'notes/cubic/07-h29-route.md',
    'experiments/cubic/stage07_positive_infinity.py',
    'experiments/cubic/stage07-positive-infinity-20260915T203216Z.json',
    'experiments/cubic/verify_stage07_positive_infinity.py',
    'experiments/cubic/stage07-positive-infinity-independent-20260915T203439Z.json',
    'experiments/cubic/freeze_stage07.py',
]
files=[]
for name in names:
    blob=(run/name).read_bytes()
    files.append({'path':name,'bytes':len(blob),'sha256':hashlib.sha256(blob).hexdigest()})
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','files':files,
     'scope':'Paper H29 branch transfer plus two strict RF/normal-distance certificates; no Lean. Parent accepts mathematical content independently.',
     'dependencies':['notes/cubic/02-FROZEN.json','notes/cubic/05-06-FROZEN.json'],
     'file_count':len(files),'total_bytes':sum(f['bytes'] for f in files)}
dest=run/'notes/cubic/07-FROZEN.json'
assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'path':str(dest),'file_count':len(files),'total_bytes':out['total_bytes'],
                  'sha256':hashlib.sha256(dest.read_bytes()).hexdigest()}))

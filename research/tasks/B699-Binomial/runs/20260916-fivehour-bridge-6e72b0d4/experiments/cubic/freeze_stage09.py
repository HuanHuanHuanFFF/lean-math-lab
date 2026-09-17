"""Freeze generic RF derivation and exact height-Bézout packet."""
import hashlib,json
from pathlib import Path
from datetime import datetime,timezone
run=Path(__file__).resolve().parents[2]
names=['notes/cubic/09-generic-tools.md','experiments/cubic/stage09_generic_height.py',
       'experiments/cubic/stage09-generic-height-20260915T205103Z.json','experiments/cubic/freeze_stage09.py']
files=[]
for name in names:
    data=(run/name).read_bytes()
    files.append({'path':name,'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
dest=run/'notes/cubic/09-FROZEN.json'
assert not dest.exists()
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','files':files,
     'scope':'Single-real-root positive RF formula plus six exact generic height errors; no new MW basis or exponent bound.'}
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'files':len(files),'total_bytes':sum(f['bytes'] for f in files),
                  'sha256':hashlib.sha256(dest.read_bytes()).hexdigest()}))

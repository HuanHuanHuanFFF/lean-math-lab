"""Freeze signed-D transfer and its exact bottom check."""
import hashlib,json
from pathlib import Path
from datetime import datetime,timezone
run=Path(__file__).resolve().parents[2]
names=['notes/cubic/08-signed-D-transfer.md','experiments/cubic/stage08_signed_transfer.py',
       'experiments/cubic/stage08-signed-transfer-20260915T204204Z.json','experiments/cubic/freeze_stage08.py']
files=[]
for name in names:
    data=(run/name).read_bytes()
    files.append({'path':name,'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
dest=run/'notes/cubic/08-FROZEN.json'
assert not dest.exists()
out={'utc':datetime.now(timezone.utc).isoformat(),'files':files,'owner':'/root/nc3',
     'scope':'Signed-D transfer and small bottoms; final infinite exclusion conditional on parent signed exponent-period certificate.',
     'dependencies':['notes/cubic/02-FROZEN.json','notes/cubic/05-06-FROZEN.json','notes/cubic/07-FROZEN.json']}
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'files':len(files),'total_bytes':sum(f['bytes'] for f in files),
                  'sha256':hashlib.sha256(dest.read_bytes()).hexdigest()}))

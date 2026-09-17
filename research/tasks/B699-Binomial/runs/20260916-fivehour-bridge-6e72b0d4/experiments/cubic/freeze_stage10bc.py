"""Freeze intrinsic area and explicit original-index return-map addenda."""
import hashlib,json
from pathlib import Path
from datetime import datetime,timezone
run=Path(__file__).resolve().parents[2]
names=['notes/cubic/10b-intrinsic-period-area.md','notes/cubic/10c-reflection-return-map.md',
       'experiments/cubic/stage10b_quartic_area.py','experiments/cubic/stage10b-quartic-area-20260915T212619Z.json',
       'experiments/cubic/freeze_stage10bc.py']
files=[]
for name in names:
    data=(run/name).read_bytes();files.append({'path':name,'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
dest=run/'notes/cubic/10bc-FROZEN.json';assert not dest.exists()
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','files':files,
     'scope':'Intrinsic primitive period area and exact auxiliary reflection return map; supplements unchanged stage10.'}
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'files':len(files),'total_bytes':sum(x['bytes'] for x in files),
                  'sha256':hashlib.sha256(dest.read_bytes()).hexdigest()}))

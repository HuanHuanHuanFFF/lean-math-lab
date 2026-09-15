"""Freeze three-high tower and high-region recovery data for independent review."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
here=Path(__file__).resolve().parent;run=here.parents[1]
names=['i8_threehigh_engine.py','i8_threehigh_q7_family.py','i8_threehigh_q7_family.json',
       'i8_threehigh_extend18.py','i8_threehigh_extended18.json','i8_threehigh_consume.py',
       'i8_threehigh_consumer_h0_7.json','i8_threehigh_consumer_h8.json','i8_threehigh_freeze_data.py']
names += [f'i8_threehigh_tower_q{q}.json' for q in (2,3,5,7)]
def info(p):
    d=p.read_bytes();return {'bytes':len(d),'sha256':hashlib.sha256(d).hexdigest()}
files=[{'path':'experiments/cubic/'+n,**info(here/n)} for n in names]
deps=['experiments/cubic/exact_lll3.py','reviews/geometry/i8-unit-route-three-high-cells.json',
      'reviews/geometry/i8-unit-route-h8-optional.json','reviews/geometry/i8-unit-route-manifest.json',
      'notes/arithmetic/08-window-unit-proof.md','notes/arithmetic/11-i8-affine-three-log-proof.md']
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','files':files,
     'file_count':len(files),'total_bytes':sum(f['bytes'] for f in files),
     'dependencies':[{'path':n,**info(run/n)} for n in deps],
     'scope':'Four exact homogeneous towers, intercept18 positive-triple enumeration, 72+10 original-cell high-end recovery. No LLL label is used as proof.'}
dest=run/'reviews/cubic/i8-threehigh-data-manifest.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'files':len(files),'total_bytes':out['total_bytes'],**info(dest)}))

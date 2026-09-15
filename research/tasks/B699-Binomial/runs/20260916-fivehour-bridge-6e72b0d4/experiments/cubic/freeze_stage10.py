"""Byte freeze of the complete five-curve analytic and certificate packet."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
run=Path(__file__).resolve().parents[2];exp=run/'experiments/cubic'
names=[
    'notes/cubic/10-uniform-analytic-contract.md','notes/cubic/10-certificates-and-height-addendum.md',
    'experiments/cubic/stage10_models.py','experiments/cubic/stage10_intervals.py',
    'experiments/cubic/stage10_rf.py','experiments/cubic/stage10_lattice.py',
    'experiments/cubic/stage10_contract.py','experiments/cubic/stage10_check_intervals.py',
    'experiments/cubic/verify_stage10.py','experiments/cubic/freeze_stage10.py',
]
for pattern,count in [('stage10-rf-k*-*.json',5),('stage10-lattice-k*-*.json',5),
                      ('stage10-independent-k*-*.json',5),('stage10-contract-*.json',1)]:
    found=sorted(exp.glob(pattern));assert len(found)==count,(pattern,len(found))
    names.extend(str(p.relative_to(run)).replace('\\','/') for p in found)
def info(p):
    data=p.read_bytes();return {'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()}
files=[{'path':n,**info(run/n)} for n in names]
dependencies=[
    'experiments/main/b3_five_curve_mw.m',
    'experiments/main/b3_five_curve_mw-output-20260915T205232Z.txt',
    'experiments/main/b3_five_curve_mw-receipt-20260915T205232Z.json',
    'experiments/geometry/b3_height_matrices.json',
    'experiments/geometry/b3_height_manifest.json',
    'experiments/geometry/b3_tail_manifest.json',
]
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','files':files,
     'file_count':len(files),'total_bytes':sum(f['bytes'] for f in files),
     'adopted_external_run_files':[{'path':n,**info(run/n)} for n in dependencies],
     'scope':'Five-curve paper analytic contract, all strict RF/area and 30 two-round distance certificates, and different author implementation. Independent AI acceptance is separate.',
     'no_Lean':True}
dest=run/'notes/cubic/10-FROZEN.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'files':len(files),'total_bytes':out['total_bytes'],**info(dest)}))

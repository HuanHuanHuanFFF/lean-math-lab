"""Freeze the arbitrary-loss paper, primary-source receipts, and all-parameter checks."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
run=Path(__file__).resolve().parents[2];repo=run.parents[4]
names=[
    'notes/cubic/11-general-loss-height.md','experiments/cubic/stage11_fetch_masser.py',
    'experiments/cubic/stage11-masser-source-receipt.json','experiments/cubic/stage11_render_source.py',
    'experiments/cubic/stage11-masser-page-receipt.json','experiments/cubic/stage11_general_loss.py',
    'experiments/cubic/stage11-general-loss-20260915T214150Z.json',
    'experiments/cubic/verify_stage11_general_loss.py',
    'experiments/cubic/stage11-general-loss-independent-20260915T214455Z.json',
    'experiments/cubic/freeze_stage11.py',
]
def info(path):
    data=path.read_bytes();return {'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()}
files=[{'path':n,**info(run/n)} for n in names]
source_dir=repo/'.tools/replay/6e72b0d4-cubic/sources'
sources=[source_dir/'Masser-2024-binary-cubic.pdf']
for p in (1,9,12):
    sources.extend([source_dir/f'Masser-2024-page-{p:02d}.png',source_dir/f'Masser-2024-page-{p:02d}.txt'])
old=repo/'research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/intake/20260915-daily-results/materials/B-normalized-three-neighbor-and-square-rows/notes/PROOFS.md'
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','files':files,
     'file_count':len(files),'total_bytes':sum(f['bytes'] for f in files),
     'adopted_old_proof':{'path':str(old.relative_to(repo)).replace('\\','/'),**info(old)},
     'primary_source_cache':[{'path':str(p.relative_to(repo)).replace('\\','/'),**info(p)} for p in sources],
     'scope':'All square NC3 canonical losses satisfy log n <= 2*(960*b^3)^600000; author paper and two exact polynomial implementations. Independent AI acceptance remains separate; b is unbounded.'}
dest=run/'notes/cubic/11-FROZEN.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'files':len(files),'total_bytes':out['total_bytes'],**info(dest)}))

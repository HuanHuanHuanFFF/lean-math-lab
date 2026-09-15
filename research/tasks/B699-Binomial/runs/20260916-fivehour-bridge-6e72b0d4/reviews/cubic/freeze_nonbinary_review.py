"""Freeze the independent nonbinary/full-neighbor/row-return review."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
here=Path(__file__).resolve().parent;run=here.parents[1]
names=['reviews/cubic/nonbinary-and-row-return.md','reviews/cubic/verify_nonbinary_normalized.py',
       'reviews/cubic/nonbinary-normalized-check.json','reviews/cubic/freeze_nonbinary_review.py']
def info(p):
    data=p.read_bytes();return {'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()}
out={'utc':datetime.now(timezone.utc).isoformat(),'reviewer':'/root/nc3',
     'files':[{'path':n,**info(run/n)} for n in names],
     'fixed_parent_sources':[{'path':n,**info(run/n)} for n in
       ['experiments/main/b3_remaining_small_cases.py','experiments/main/b3_remaining_small_cases.json']],
     'scope':'Independent direct nonbinary b3 finite certificate; paper reconstruction of full-neighbor lemma and both prime-power square-row returns. No Lean.'}
dest=here/'nonbinary-review-manifest.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),**info(dest)}))

"""Freeze the independent SQ source and normalized-support review."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
here=Path(__file__).resolve().parent;run=here.parents[1]
names=['reviews/cubic/SQ-and-normalized-support-review.md','reviews/cubic/verify_sq_source.py',
       'reviews/cubic/SQ-source-check.json','reviews/cubic/freeze_sq_review.py']
files=[]
for name in names:
    data=(run/name).read_bytes();files.append({'path':name,'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
out={'utc':datetime.now(timezone.utc).isoformat(),'reviewer':'/root/nc3','files':files,
     'scope':'Targeted independent acceptance of old SQ and new all-square omega(N)>=4 corollary; no new discovery claim for SQ, no Lean.'}
dest=here/'SQ-review-manifest.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'sha256':hashlib.sha256(dest.read_bytes()).hexdigest(),
                  'file_count':len(files),'total_bytes':sum(f['bytes'] for f in files)}))

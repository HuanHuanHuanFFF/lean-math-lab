#!/usr/bin/env python3
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parents[1]
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(1<<20),b''):h.update(b)
 return h.hexdigest()
rows=[]
for p in sorted(ROOT.rglob('*')):
 if not p.is_file():continue
 rel=p.relative_to(ROOT).as_posix()
 if rel in {'MANIFEST.json','SHA256SUMS.txt'}:continue
 rows.append({'path':rel,'bytes':p.stat().st_size,'sha256':sha(p)})
obj={'status':'PASS_MANIFEST_GENERATED','file_count':len(rows),'total_bytes':sum(x['bytes'] for x in rows),'files':rows}
(ROOT/'MANIFEST.json').write_text(json.dumps(obj,indent=2,ensure_ascii=False)+'\n')
with (ROOT/'SHA256SUMS.txt').open('w') as f:
 for x in rows:f.write(f"{x['sha256']}  {x['path']}\n")
 f.write(f"{sha(ROOT/'MANIFEST.json')}  MANIFEST.json\n")
print(json.dumps({k:obj[k] for k in ['status','file_count','total_bytes']},indent=2))

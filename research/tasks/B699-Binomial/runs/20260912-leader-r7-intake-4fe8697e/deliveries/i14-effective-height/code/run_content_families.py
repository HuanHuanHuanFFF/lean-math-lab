"""Serial complete generation; each completed family is a recoverable checkpoint."""
from pathlib import Path
import json,subprocess,time,hashlib
D=Path(__file__).resolve().parents[1]
specs=json.loads((D/'input/selected_content_specs.json').read_text())['families'];out=[];st=time.monotonic()
for sp in specs:
 key='_'.join(str(sp[k]) for k in ['e','d','f']);meta=D/f'evidence/content_finite_{key}.json';blocks=D/f'evidence/content_finite_{key}.blocks';cat=D/f'input/content_catalog_{key}.txt'
 cmd=[str(D/'bin/hybrid_content_generate'),str(cat),str(D/'cache/primes'),str(blocks),str(meta)]
 # Existing completed prototype is checked by the same full independent receiver later.
 if not (meta.exists() and blocks.exists()):
  with (D/f'logs/finite_{key}.log').open('w') as log:subprocess.run(cmd,stdout=log,stderr=log,check=True)
 obj=json.loads(meta.read_text());assert obj['M']==sp['M']
 first=blocks.open().readline().split();assert first[:3]==['B699_HYBRID_G_V1',str(sum(sp[k] for k in ['e','d','f'])),str(sp['M'])]
 row={**sp, **obj, 'file':blocks.name, 'sha256':hashlib.sha256(blocks.read_bytes()).hexdigest(), 'catalog_sha256':hashlib.sha256(cat.read_bytes()).hexdigest()};out.append(row)
 (D/'evidence/content_generation_progress.json').write_text(json.dumps(dict(status='COMPLETE' if len(out)==len(specs) else 'PARTIAL',completed=len(out),total=len(specs),rows=out,seconds=time.monotonic()-st),indent=2)+'\n')
 print('DONE',key,'m0',row['m0'],'blocks',row['blocks'],'s',row['seconds'],flush=True)
(D/'evidence/content_finite_summary.json').write_text(json.dumps(out,indent=2)+'\n')

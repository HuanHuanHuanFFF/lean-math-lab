"""Create and verify a recoverable ZIP; run after substantive updates."""
from pathlib import Path
import hashlib,json,zipfile
root=Path(__file__).resolve().parent
manifest={str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest()
          for p in sorted(root.rglob('*')) if p.is_file() and p.name!='SHA256.json'
          and '__pycache__' not in p.parts}
(root/'SHA256.json').write_text(json.dumps(manifest,indent=2)+'\n')
path=root.parent/'B699-n4j-web-research.zip'
with zipfile.ZipFile(path,'w',compression=zipfile.ZIP_DEFLATED) as z:
 for p in sorted(root.rglob('*')):
  if p.is_file() and '__pycache__' not in p.parts:
   z.write(p,str(p.relative_to(root)))
with zipfile.ZipFile(path) as z:
 assert z.testzip() is None
 for name in ['HANDOFF.md','derivation.md','attempts.md','sources.md']:
  assert len(z.read(name))>100
 print(json.dumps({'zip':str(path),'bytes':path.stat().st_size,
                   'entries':len(z.namelist()),'testzip':'OK'}))

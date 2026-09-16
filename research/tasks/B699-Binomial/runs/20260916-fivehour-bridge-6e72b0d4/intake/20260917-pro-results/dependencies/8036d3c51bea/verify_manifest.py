import json,hashlib,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def verify():
 data=json.loads((ROOT/'MANIFEST.json').read_text())
 for rel,expect in data['files'].items():
  p=ROOT/rel
  if not p.is_file() or p.stat().st_size!=expect['bytes'] or digest(p)!=expect['sha256']:
   raise RuntimeError('manifest mismatch: '+rel)
 return len(data['files'])
if __name__=='__main__':print('PASS manifest',verify(),'static files')

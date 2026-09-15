"""Verify static evidence bytes; this is integrity, not a mathematical proof."""
import hashlib,json
from pathlib import Path
root=Path(__file__).resolve().parent
m=json.loads((root/'MANIFEST.json').read_text())
for r in m['files']:
 p=root/r['path'];assert p.is_file(),r['path']
 assert p.stat().st_size==r['bytes'],r['path']
 assert hashlib.sha256(p.read_bytes()).hexdigest()==r['sha256'],r['path']
print(json.dumps({'status':'PASS','static_files':len(m['files'])}))

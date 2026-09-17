"""Check the frozen ordinary-file hashes (manifest itself is excluded)."""
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parents[1]
data=json.loads((ROOT/'MANIFEST.json').read_text())
for item in data['files']:
    p=ROOT/item['path']
    assert p.is_file(),item['path']
    b=p.read_bytes()
    assert len(b)==item['bytes'],item['path']
    assert hashlib.sha256(b).hexdigest()==item['sha256'],item['path']
print('PASS_MANIFEST',len(data['files']))

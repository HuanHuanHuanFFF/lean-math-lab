"""Verify every static file in this evidence package. Logs are excluded."""
import hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parent
EXCLUDED={'MANIFEST.json'}
def tracked(root=ROOT):
    out={}
    for p in sorted(root.rglob('*')):
        if not p.is_file(): continue
        rel=p.relative_to(root)
        if rel.as_posix() in EXCLUDED or rel.parts[0]=='replay' or '__pycache__' in rel.parts:continue
        out[rel.as_posix()]={'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
    return out
def verify(root=ROOT):
    expected=json.loads((root/'MANIFEST.json').read_text())
    actual=tracked(root)
    if actual!=expected['files']:
        bad=[k for k in sorted(set(actual)|set(expected['files'])) if actual.get(k)!=expected['files'].get(k)]
        raise ValueError('manifest mismatch: '+', '.join(bad[:20]))
    return {'status':'PASS','static_files':len(actual)}
if __name__=='__main__':print(json.dumps(verify(),sort_keys=True))

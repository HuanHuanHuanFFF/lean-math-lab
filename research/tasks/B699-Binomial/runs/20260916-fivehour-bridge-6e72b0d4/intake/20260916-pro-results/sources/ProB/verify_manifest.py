"""Check exact static-file inventory and SHA-256, excluding run-time replay logs."""
import hashlib,json,sys
from pathlib import Path

def excluded(relative):
    return relative=='MANIFEST.json' or relative.startswith('replay/') or '__pycache__' in Path(relative).parts or relative.endswith('.pyc')

def snapshot(root):
    return {p.relative_to(root).as_posix():{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
       for p in sorted(root.rglob('*')) if p.is_file() and not excluded(p.relative_to(root).as_posix())}

def verify(root):
    want=json.loads((root/'MANIFEST.json').read_text())['files'];got=snapshot(root)
    if want!=got:
        missing=sorted(set(want)-set(got));extra=sorted(set(got)-set(want))
        changed=sorted(p for p in set(want)&set(got) if want[p]!=got[p])
        raise ValueError(f'static mismatch: missing={missing}, extra={extra}, changed={changed}')
    return {'status':'PASS','static_files':len(got)}

if __name__=='__main__':
    print(json.dumps(verify(Path(__file__).resolve().parent)))

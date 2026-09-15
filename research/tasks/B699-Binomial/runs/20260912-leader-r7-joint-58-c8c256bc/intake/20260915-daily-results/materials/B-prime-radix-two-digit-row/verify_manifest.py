"""Verify only the static, frozen research payload; replay logs are dynamic."""
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def snapshot(root):
    return {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()
            and p.name!='MANIFEST.json' and 'replay' not in p.relative_to(root).parts
            and '__pycache__' not in p.relative_to(root).parts}
def verify(root=ROOT):
    expected=json.loads((root/'MANIFEST.json').read_text())['files']
    got=snapshot(root)
    if got!=expected:raise ValueError('static manifest mismatch')
    return got
if __name__=='__main__':print(json.dumps({'status':'PASS','static_files':len(verify())}))

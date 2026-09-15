from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parent

def verify(root=ROOT):
    manifest=json.loads((root/'MANIFEST.json').read_text())
    for r in manifest['files']:
        p=root/r['path']
        if not p.is_file() or p.stat().st_size!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:
            raise ValueError('Manifest mismatch: '+r['path'])
    return len(manifest['files'])

if __name__=='__main__':print(json.dumps({'status':'PASS','static_files':verify()}))

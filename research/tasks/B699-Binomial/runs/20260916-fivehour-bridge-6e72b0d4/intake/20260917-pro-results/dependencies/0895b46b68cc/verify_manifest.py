import hashlib,json,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def verify():
    manifest=json.loads((ROOT/'MANIFEST.json').read_text())
    for item in manifest['files']:
        p=ROOT/item['path'];b=p.read_bytes()
        if len(b)!=item['bytes'] or hashlib.sha256(b).hexdigest()!=item['sha256']:
            raise ValueError('modified or missing file: '+item['path'])
    source=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for item in source:
        b=(ROOT/item['package_path']).read_bytes()
        if len(b)!=item['bytes'] or hashlib.sha256(b).hexdigest()!=item['sha256']:
            raise ValueError('source changed: '+item['package_path'])
    return len(manifest['files'])
if __name__=='__main__':
    print(json.dumps(dict(status='PASS',static_files=verify(),sources=5)))

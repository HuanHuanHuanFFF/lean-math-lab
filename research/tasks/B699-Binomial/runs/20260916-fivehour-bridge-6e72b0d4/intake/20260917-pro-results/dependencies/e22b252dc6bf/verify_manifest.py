from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parent

def verify():
    rows=json.loads((ROOT/'MANIFEST.json').read_text())['files']
    for r in rows:
        p=ROOT/r['path']
        if not p.is_file() or len(p.read_bytes())!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:
            raise SystemExit('MANIFEST FAIL: '+r['path'])
    for r in json.loads((ROOT/'SOURCE_MAP.json').read_text()):
        p=ROOT/r['copy']
        if hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:raise SystemExit('SOURCE FAIL: '+r['copy'])
    print('MANIFEST PASS',len(rows),'files')
    return len(rows)
if __name__=='__main__':verify()

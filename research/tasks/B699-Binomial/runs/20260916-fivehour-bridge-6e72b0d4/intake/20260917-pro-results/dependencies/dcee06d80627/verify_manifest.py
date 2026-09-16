from pathlib import Path
import json,hashlib,sys
ROOT=Path(__file__).resolve().parent

def digest(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()

def verify(root=ROOT):
    m=json.loads((root/'MANIFEST.json').read_text());bad=[]
    for name,item in m['files'].items():
        p=root/name
        if not p.is_file() or p.stat().st_size!=item['bytes'] or digest(p)!=item['sha256']:bad.append(name)
    if bad:raise ValueError('manifest mismatch: '+', '.join(bad))
    return {'status':'PASS','static_files':len(m['files'])}
if __name__=='__main__':
    try:print(json.dumps(verify(),sort_keys=True))
    except Exception as e:print(str(e),file=sys.stderr);raise SystemExit(1)

"""Byte identity only. Does not run, re-prove or accept old mathematics."""
import hashlib,json,os,zipfile
from pathlib import Path
R=Path(__file__).resolve().parents[1];OUT=Path(os.environ.get('B699_RUN_OUTPUT',str(R))).resolve();(OUT/'logs').mkdir(parents=True,exist_ok=True)
def digest(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()
p=json.loads((R/'sources/PARENT.json').read_text());zpath=R/p['copy']
assert zpath.stat().st_size==p['bytes'] and digest(zpath)==p['sha256']
rows=json.loads((R/'sources/ADOPTED_MEMBERS.json').read_text())
with zipfile.ZipFile(zpath) as z:
    for row in rows:
        b=z.read(row['member']);assert len(b)==row['size']
        assert hashlib.sha256(b).hexdigest()==row['sha256']
        assert (R/row['copy']).read_bytes()==b
out={'status':'PASS_ADOPTED_BYTES_ONLY','parent_sha256':p['sha256'],'adopted_members':len(rows),'historical_math_replays':0,'meaning':'Hashes establish byte identity, not validity of frozen mathematics.'}
(OUT/'logs/source_bytes.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))

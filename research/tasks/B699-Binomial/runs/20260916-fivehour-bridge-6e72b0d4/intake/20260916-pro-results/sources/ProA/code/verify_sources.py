#!/usr/bin/env python3
"""Hash and byte provenance only, NOT mathematical review of old evidence."""
from pathlib import Path
import hashlib,json,zipfile,argparse,time
ROOT=Path(__file__).resolve().parents[1]
def digest(path):
    h=hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda:f.read(2**20),b''):h.update(block)
    return h.hexdigest()
def run():
    start=time.perf_counter();m=json.loads((ROOT/'sources/ADOPTED_MEMBERS.json').read_text());p=ROOT/m['parent_local']
    assert p.stat().st_size==m['parent_bytes'] and digest(p)==m['parent_sha256']
    with zipfile.ZipFile(p) as z:
        for a in m['adopted_members']:
            b=(ROOT/a['local']).read_bytes()
            assert len(b)==a['bytes'] and hashlib.sha256(b).hexdigest()==a['sha256']
            assert b==z.read(a['parent_member'])
    o=m['overview'];assert (ROOT/o['local']).stat().st_size==o['bytes'] and digest(ROOT/o['local'])==o['sha256']
    return {'status':'PASS_SOURCE_BYTES_ONLY','parent_sha256':m['parent_sha256'],'old_selected_members_checked':len(m['adopted_members']),'overview_bytes_checked':True,'historical_mathematical_replays':0,'seconds':time.perf_counter()-start}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path);args=ap.parse_args();r=run()
    if args.out:args.out.parent.mkdir(parents=True,exist_ok=True);args.out.write_text(json.dumps(r,indent=2)+'\n')
    print(json.dumps(r,indent=2))

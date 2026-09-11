"""Check included source snapshots; optional byte-for-byte archive recovery."""
import argparse, hashlib, io, json, zipfile
from pathlib import Path
ROOT = Path(__file__).resolve().parents[1]
def sha(data): return hashlib.sha256(data).hexdigest()
def main(out, original_dir=None):
    records=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for r in records:
        if sha((ROOT/r['copy']).read_bytes())!=r['sha256']:
            raise ValueError('source copy hash mismatch: '+r['copy'])
    raw=ROOT/'originals/previous-exact-content.zip'
    if sha(raw.read_bytes()) != records[0]['archive_sha256']:
        raise ValueError('previous original ZIP hash mismatch')
    with zipfile.ZipFile(raw) as z:
        if z.testzip() is not None: raise ValueError('previous original ZIP CRC')
        for r in records[:2]:
            if z.read(r['member'])!=(ROOT/r['copy']).read_bytes():
                raise ValueError('previous original member mismatch')
    if original_dir is not None:
        cache={}
        for r in records:
            f=original_dir/r['archive']
            if r['archive'] not in cache:
                data=f.read_bytes()
                if len(data)!=r['archive_bytes'] or sha(data)!=r['archive_sha256']:
                    raise ValueError('source archive hash mismatch: '+str(f))
                cache[r['archive']]=data
            with zipfile.ZipFile(io.BytesIO(cache[r['archive']])) as z:
                if 'nested_member' in r:
                    data=z.read(r['nested_member'])
                    if sha(data)!=r['nested_sha256']: raise ValueError('nested archive hash')
                    with zipfile.ZipFile(io.BytesIO(data)) as zz: member=zz.read(r['member'])
                else: member=z.read(r['member'])
            if member!=(ROOT/r['copy']).read_bytes(): raise ValueError('archive/copy bytes differ')
        print('Optional original-archive recovery: all six members match.', flush=True)
    result={'source_copies_checked':len(records),'included_original_zip_bytes':raw.stat().st_size,
            'included_original_zip_sha256':sha(raw.read_bytes()),
            'included_original_members_compared':2,'status':'PASS'}
    out.parent.mkdir(parents=True,exist_ok=True)
    out.write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print(json.dumps(result,sort_keys=True))
if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--out',type=Path,required=True);a.add_argument('--original-dir',type=Path)
    v=a.parse_args();main(v.out,v.original_dir)

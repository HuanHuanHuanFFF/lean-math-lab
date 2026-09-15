#!/usr/bin/env python3
import argparse,hashlib,json,zipfile
from pathlib import Path

def digest(b):return hashlib.sha256(b).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);out=Path(ap.parse_args().out)
    root=Path(__file__).resolve().parents[1];m=json.loads((root/'sources/SOURCE_MAP.json').read_text());p=root/m['archive'];b=p.read_bytes()
    assert len(b)==m['bytes'] and digest(b)==m['sha256']
    with zipfile.ZipFile(p) as z:
        assert z.testzip() is None
        for r in m['members']:
            b=z.read(r['zip_member']);assert len(b)==r['bytes'] and digest(b)==r['sha256']
            assert b==(root/r['local_path']).read_bytes()
    data={'status':'PASS','original_archive_sha256':m['sha256'],'original_archive_bytes':m['bytes'],
          'adopted_text_members':len(m['members']),'historical_acceptance_replayed':False}
    (out/'source_check.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n');print(json.dumps(data,sort_keys=True))
if __name__=='__main__':main()

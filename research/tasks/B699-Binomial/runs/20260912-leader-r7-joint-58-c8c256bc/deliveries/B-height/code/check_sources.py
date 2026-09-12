import argparse,json,hashlib,zipfile
from pathlib import Path

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output');a=ap.parse_args()
    root=Path(__file__).resolve().parents[1];spec=json.loads((root/'SOURCES.json').read_text());arc=spec['archive'];p=root/arc['file']
    raw=p.read_bytes();assert len(raw)==arc['bytes'] and hashlib.sha256(raw).hexdigest()==arc['sha256']
    with zipfile.ZipFile(p) as z:
        assert z.testzip() is None
        for r in spec['members']:
            b=z.read(r['member']);assert b==(root/r['copy']).read_bytes() and len(b)==r['bytes']
            assert hashlib.sha256(b).hexdigest()==r['sha256']
    result={'status':'PASS','archive_sha256':arc['sha256'],'archive_bytes':arc['bytes'],'verified_member_count':len(spec['members']),
            'external_proof':'web original pages read; not rerun or Lean checked','old_experiments_rerun':False}
    Path(a.output).write_text(json.dumps(result,indent=2)+'\n');print('PASS original archive and',len(spec['members']),'member byte mappings')
if __name__=='__main__':main()

import argparse,hashlib,json,zipfile
from pathlib import Path
from exact import require,write_json
ROOT=Path(__file__).resolve().parents[1]
def run():
    meta=json.loads((ROOT/'sources/INTAKE.json').read_text());rows=[]
    for item in meta['originals']:
        p=ROOT/item['copied_as'];digest=hashlib.file_digest(p.open('rb'),'sha256').hexdigest()
        require(digest==item['sha256'] and p.stat().st_size==item['bytes'],'source bytes changed')
        with zipfile.ZipFile(p) as z:
            require(z.testzip() is None,'source ZIP CRC');count=len(z.infolist())
        rows.append(dict(alias=item['alias'],sha256=digest,bytes=p.stat().st_size,members=count))
    mapping=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text()); member_count=0
    for item in mapping['archives']:
        with zipfile.ZipFile(ROOT/item['archive']) as z:
            for entry in item['adopted_members']:
                b=z.read(entry['member'])
                require(len(b)==entry['bytes'] and hashlib.sha256(b).hexdigest()==entry['sha256'],'source member changed')
                member_count+=1
    return dict(status='PASS',originals=rows,source_members=member_count,scope='Transport integrity only; no historical mathematical programs rerun. Pro-A proof not adopted.')
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();r=run();write_json(a.out,r);print('source ZIPs unchanged:',len(r['originals']))

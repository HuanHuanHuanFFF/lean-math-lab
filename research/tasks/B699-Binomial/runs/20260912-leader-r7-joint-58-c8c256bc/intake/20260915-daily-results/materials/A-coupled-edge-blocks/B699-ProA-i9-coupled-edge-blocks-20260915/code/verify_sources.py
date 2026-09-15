"""Stream only the adopted original proof members; never execute historical code."""
from pathlib import Path
import json,zipfile,tempfile,hashlib,shutil,time
R=Path(__file__).resolve().parents[1]

def digest(path):
    h=hashlib.sha256()
    with open(path,'rb') as f:
        for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
    return h.hexdigest()

def main():
    t=time.monotonic();info=json.loads((R/'sources/INPUT.json').read_text())
    source=R/info['archive_member'];assert digest(source)==info['sha256']
    data=json.loads((R/'sources/RECOVERY_MAP.json').read_text());reads=0;bytes_read=0
    with tempfile.TemporaryDirectory(prefix='b699-A-source-bytes-') as tmp:
        cache={():source}
        for item in data['found']:
            chain=item['chain'][1:];prefix=()
            for name in chain:
                new=prefix+(name,)
                if new not in cache:
                    out=Path(tmp)/(hashlib.sha256(repr(new).encode()).hexdigest()+'.bin')
                    with zipfile.ZipFile(cache[prefix]) as z:
                        zi=z.getinfo(name)
                        if zi.file_size>80_000_000:raise ValueError('unexpected large adopted member')
                        with z.open(zi) as inp,open(out,'wb') as dest:
                            shutil.copyfileobj(inp,dest,1024*1024)
                        reads+=1;bytes_read+=zi.file_size
                    cache[new]=out
                prefix=new
            assert digest(cache[prefix])==item['sha256']==digest(R/item['local'])
    out={'status':'PASS_ADOPTED_SOURCE_BYTES','input_sha256':info['sha256'],
         'proofs_recovered_and_matched':len(data['found']),'unique_selected_members_read':reads,
         'selected_member_bytes_streamed':bytes_read,'historical_code_executed':False,
         'seconds':time.monotonic()-t}
    (R/'logs/source_verification.json').write_text(json.dumps(out,indent=2));print(json.dumps(out))
if __name__=='__main__':main()

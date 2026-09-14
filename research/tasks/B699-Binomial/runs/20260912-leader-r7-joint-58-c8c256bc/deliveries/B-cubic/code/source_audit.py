"""Audit exact adopted bytes. Optional archive verification never replays old mathematics."""
import argparse,hashlib,json,zipfile
from pathlib import Path

def run(root,archives=None):
    mapping=json.loads((root/'sources/SOURCE_MAP.json').read_text());checked=[];cache={}
    for m in mapping:
        p=root/m['path'];data=p.read_bytes();h=hashlib.sha256(data).hexdigest()
        if h!=m['sha256']:raise ValueError('modified source '+m['path'])
        checked.append({'path':m['path'],'sha256':h,'bytes':len(data)})
        if archives:
            name=m['archive']
            if name not in cache:
                candidates=[Path(d)/name for d in archives]
                path=next((p for p in candidates if p.is_file()),None)
                if path is None:raise FileNotFoundError(name)
                raw=path.read_bytes();hh=hashlib.sha256(raw).hexdigest()
                if hh!=m['archive_sha256']:raise ValueError('archive hash mismatch '+name)
                cache[name]={'sha256':hh,'bytes':len(raw),'path':path}
            with zipfile.ZipFile(cache[name]['path']) as z:
                if z.read(m['member'])!=data:raise ValueError('member byte mismatch '+m['member'])
    r={'status':'PASS','source_files':checked,'count':len(checked),
       'scope':'14 exact adopted texts; no upstream mathematical experiments replayed'}
    if archives:r['archives']={k:{a:b for a,b in v.items() if a!='path'} for k,v in cache.items()}
    return r
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);p.add_argument('--out',type=Path,required=True)
    p.add_argument('--archives',nargs='+');a=p.parse_args();r=run(a.root,a.archives)
    a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: %d adopted source bytes; original archives %s'%(r['count'],'verified' if a.archives else 'not required for local reproduction'))

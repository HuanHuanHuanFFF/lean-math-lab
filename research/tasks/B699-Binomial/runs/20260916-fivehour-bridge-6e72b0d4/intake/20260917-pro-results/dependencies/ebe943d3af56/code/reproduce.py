"""Run this round's checks in a NEW directory. Never runs historical code."""
from pathlib import Path
import argparse,json,time,hashlib,zipfile,io,sys,platform
from verify import verify
from diagnostics import run as diagnostics
from mutations import run as mutations
ROOT=Path(__file__).resolve().parents[1]

def source_check():
    doc=json.loads((ROOT/'evidence/source_manifest.json').read_text())
    raw=(ROOT/doc['archive']).read_bytes()
    assert hashlib.sha256(raw).hexdigest()==doc['sha256'] and len(raw)==doc['bytes']
    count=0
    for item in doc['members']:
        data=raw
        for member in item['archive_chain']:
            with zipfile.ZipFile(io.BytesIO(data)) as z:data=z.read(member)
        assert data==(ROOT/item['stored']).read_bytes()
        assert hashlib.sha256(data).hexdigest()==item['sha256'] and len(data)==item['bytes']
        count+=1
    return {'status':'PASS_SOURCE_BYTES_ONLY','source_texts':count,'archive_bytes':len(raw),
            'old_code_executed':False}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);args=ap.parse_args()
    out=Path(args.out)
    if not out.is_absolute():raise ValueError('absolute output path required')
    out.mkdir(parents=True,exist_ok=False)
    start=time.perf_counter();data=json.loads((ROOT/'evidence/new_certificate.json').read_text())
    results={}
    for name,fn in [('new_obligations',lambda:verify(data)),('diagnostics',diagnostics),
                    ('mutations',lambda:mutations(data)),('source_bytes',source_check)]:
        st=time.perf_counter();res=fn();res['seconds']=time.perf_counter()-st
        (out/(name+'.json')).write_text(json.dumps(res,indent=2));results[name]=res
    summary={'status':'PASS_COMPLETE_NEW_COMPONENT_OBSTRUCTIONS_REPLAY',
             'seconds':time.perf_counter()-start,'python':sys.version.split()[0],
             'platform':platform.platform(),'results':results,
             'no_lean_no_history_replay_no_kernel_recovery':True}
    (out/'summary.json').write_text(json.dumps(summary,indent=2))
    print(json.dumps({'status':summary['status'],'seconds':summary['seconds'],
                      'out':str(out),'rejected':results['mutations']['rejected']}))
if __name__=='__main__':main()

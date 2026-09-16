"""Replay new obligations only, keeping every output outside frozen inputs."""
from pathlib import Path
import argparse,hashlib,json,time,zipfile
from verify import verify
from diagnostics import diagnostics
from mutations import mutation_tests
ROOT=Path(__file__).resolve().parents[1]

def source_check():
    m=json.loads((ROOT/'evidence/source_manifest.json').read_text());i=m['input'];p=ROOT/i['path']
    assert p.stat().st_size==i['bytes'] and hashlib.sha256(p.read_bytes()).hexdigest()==i['sha256']
    with zipfile.ZipFile(p) as z:
        for x in m['members']:
            b=(ROOT/x['path']).read_bytes()
            assert len(b)==x['bytes'] and hashlib.sha256(b).hexdigest()==x['sha256']
            assert b==z.read(x['archive_member'])
    return {'status':'PASS_SOURCE_BYTES','archive_sha256':i['sha256'],'selected_members':len(m['members']),'boundary':'byte provenance only, not historical mathematical acceptance'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    out=a.out.resolve();out.mkdir(parents=True,exist_ok=True)
    if (out/'summary.json').exists():raise SystemExit('Refusing to overwrite existing replay summary')
    t=time.perf_counter();cert=json.loads((ROOT/'evidence/new_certificate.json').read_text());results={}
    for name,fn in [('source_bytes',source_check),('new_obligations',lambda:verify(cert)),('diagnostics',diagnostics),('mutations',lambda:mutation_tests(cert))]:
        st=time.perf_counter();v=fn();v['wall_seconds']=time.perf_counter()-st;results[name]=v
        (out/(name+'.json')).write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
    summary={'status':'PASS_COMPLETE_NEW_BRANCH_MIXED_QUARTIC_REPLAY','seconds':time.perf_counter()-t,'phases':{k:{'status':v['status'],'seconds':v['wall_seconds']} for k,v in results.items()},'historical_math_replayed':False,'Lean':False,'unknown_original_kernel_recovered':False}
    (out/'summary.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n');print(json.dumps(summary,ensure_ascii=False))
if __name__=='__main__':main()

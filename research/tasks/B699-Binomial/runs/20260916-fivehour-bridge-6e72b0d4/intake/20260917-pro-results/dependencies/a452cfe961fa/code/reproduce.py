#!/usr/bin/env python3
"""Run only this round's checks in an empty temporary output directory."""
from pathlib import Path
import argparse,datetime,hashlib,json,subprocess,sys,tempfile,time,resource
ROOT=Path(__file__).resolve().parents[1]

def manifest_check():
    m=json.loads((ROOT/'MANIFEST.json').read_text())
    for e in m['files']:
        b=(ROOT/e['path']).read_bytes()
        if len(b)!=e['bytes'] or hashlib.sha256(b).hexdigest()!=e['sha256']:
            raise AssertionError(('static file changed',e['path']))
    return {e['path']:e['sha256'] for e in m['files']}

def main():
    p=argparse.ArgumentParser();p.add_argument('--record',default='replay/local');args=p.parse_args()
    log=Path(args.record)
    if not log.is_absolute():log=ROOT/log
    log.mkdir(parents=True,exist_ok=True)
    before=manifest_check();start=time.perf_counter()
    result={'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'python':sys.version,'commands':[],'historical_suites_rerun':False}
    with tempfile.TemporaryDirectory(prefix='b699-two-digit-') as d:
        for i,name in enumerate(['check_symbolic.py','generate_checks.py','check_independent.py']):
            cmd=[sys.executable,'-S','-B',str(ROOT/'code'/name),d];s=time.perf_counter()
            run=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True)
            (log/f'{i+1:02d}-{name}.stdout.txt').write_text(run.stdout)
            (log/f'{i+1:02d}-{name}.stderr.txt').write_text(run.stderr)
            result['commands'].append({'argv':cmd,'returncode':run.returncode,'seconds':time.perf_counter()-s,'stdout':f'{i+1:02d}-{name}.stdout.txt','stderr':f'{i+1:02d}-{name}.stderr.txt'})
            if run.returncode:
                (log/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
                raise SystemExit('FAILED '+name+'; see logs')
        expected={x.name for x in (ROOT/'outputs').glob('*.json')}
        actual={x.name for x in Path(d).glob('*.json')}
        assert actual==expected,(actual,expected)
        checks=[]
        for name in sorted(expected):
            old=(ROOT/'outputs'/name).read_bytes();new=(Path(d)/name).read_bytes()
            assert new==old,('different mathematical output',name)
            checks.append({'file':name,'bytes':len(new),'sha256':hashlib.sha256(new).hexdigest(),'identical':True})
        result['outputs']=checks
    after=manifest_check();assert after==before
    result.update({'status':'PASS','static_files_verified':len(before),'static_before_after_equal':True,'seconds':time.perf_counter()-start,'max_child_rss_kib':resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,'scope':'New paper and exact regression checks only; not Lean, independent research or human review.'})
    (log/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print('PASS reproduction:',len(result['commands']),'commands,',len(result['outputs']),'byte-identical outputs,',len(before),'static files')
if __name__=='__main__':main()

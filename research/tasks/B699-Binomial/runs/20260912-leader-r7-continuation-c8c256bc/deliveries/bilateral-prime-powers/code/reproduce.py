#!/usr/bin/env python3
"""Rebuild only this research round, in an empty temporary directory."""
import argparse,datetime,hashlib,json,os,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def check_static():
    rows=json.loads((ROOT/'MANIFEST.json').read_text())['files']
    snap={}
    for r in rows:
        p=ROOT/r['path'];assert p.is_file() and p.stat().st_size==r['bytes'],r['path']
        h=digest(p);assert h==r['sha256'],r['path'];snap[r['path']]=h
    return snap

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');args=ap.parse_args()
    record=(ROOT/args.record).resolve();record.mkdir(parents=True,exist_ok=True)
    before=check_static();start=time.monotonic()
    result={'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'python':sys.version,'status':'RUNNING','commands':[],'comparisons':[]}
    (record/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    with tempfile.TemporaryDirectory(prefix='b699-r7-check-') as tmp:
        t=Path(tmp)
        specs=[('generate.py',['--output',str(t/'square_certificate.json')]),
               ('check_independent.py',['--input',str(t/'square_certificate.json'),'--output',str(t/'independent.json')]),
               ('algebra_checks.py',['--output',str(t/'algebra.json')]),
               ('check_mutations.py',['--input',str(t/'square_certificate.json'),'--output',str(t/'mutations.json')]),
               ('check_sources.py',['--output',str(t/'sources.json')])]
        for i,(script,a) in enumerate(specs,1):
            cmd=[sys.executable,'-S',str(ROOT/'code'/script),*a];t0=time.monotonic()
            run=subprocess.run(cmd,capture_output=True,text=True,cwd=ROOT,env=env)
            log=f'{i:02d}-{script}.log';(record/log).write_text(run.stdout+run.stderr)
            result['commands'].append({'script':script,'argv':['python3','-S','code/'+script,*[x.replace(tmp,'<empty-temp>') for x in a]],
                                       'exit_code':run.returncode,'seconds':time.monotonic()-t0,'log':log})
            (record/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
            if run.returncode:
                result['status']='FAILED';(record/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
                raise SystemExit(f'Failed: {script}; see {record/log}')
        for name in ['square_certificate.json','independent.json','algebra.json','mutations.json','sources.json']:
            same=(t/name).read_bytes()==(ROOT/'outputs'/name).read_bytes()
            result['comparisons'].append({'file':name,'byte_identical':same,'sha256':digest(t/name)})
            assert same,name
    after=check_static();assert before==after
    result.update(status='PASS',static_files=len(before),static_before_after_identical=True,
                  seconds=time.monotonic()-start,finished_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
    (record/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':'PASS','commands':len(result['commands']),'byte_identical_outputs':len(result['comparisons']),
                      'seconds':result['seconds'],'static_files':len(before)},sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise SystemExit('Do not use -O.')
    main()

"""Replay only new checks into a fresh temporary output directory; retain real logs."""
from pathlib import Path
import argparse,datetime,hashlib,json,platform,subprocess,sys,tempfile,time
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def verify():
    rows=json.loads((ROOT/'MANIFEST.json').read_text())['files']
    for e in rows:
        p=ROOT/e['path']
        if not p.is_file() or p.stat().st_size!=e['bytes'] or sha(p)!=e['sha256']:
            raise ValueError('static mismatch '+e['path'])
    return {e['path']:e['sha256'] for e in rows}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');args=ap.parse_args()
    record=ROOT/args.record;record.mkdir(parents=True,exist_ok=True)
    before=verify();start=time.time()
    report={'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'python':sys.version,'platform':platform.platform(),'commands':[],'comparisons':[],
            'scope':'five new checks; no upstream evidence-chain rerun; no Lean or external reviewer'}
    plan=[('algebra.py','algebra'),('check_content.py','content'),('check_consumers.py','consumers'),
          ('independent.py','independent'),('bad_inputs.py','bad_inputs')]
    try:
        with tempfile.TemporaryDirectory(prefix='b699-content-replay-') as tmp:
            out=Path(tmp)
            for no,(script,name) in enumerate(plan,1):
                cmd=[sys.executable,'-S','-B',str(ROOT/'code'/script)]
                if name=='independent':cmd.append(str(out))
                cmd.append(str(out/(name+'.json')))
                log=record/f'{no:02}-{script}.log';t=time.time()
                with log.open('wb') as f:
                    proc=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,cwd=ROOT,check=False)
                report['commands'].append({'command':cmd,'returncode':proc.returncode,'seconds':time.time()-t,'log':str(log.relative_to(ROOT))})
                if proc.returncode:raise RuntimeError('check failed: '+script)
                generated=out/(name+'.json');frozen=ROOT/'outputs'/(name+'.json')
                equal=generated.read_bytes()==frozen.read_bytes()
                report['comparisons'].append({'file':'outputs/'+name+'.json','byte_identical':equal,'sha256':sha(generated)})
                if not equal:raise RuntimeError('mathematical output mismatch: '+name)
        after=verify();report['static_before_after_equal']=before==after
        report['static_files']=len(before);report['status']='PASS'
    except Exception as ex:
        report['status']='FAIL';report['error']=repr(ex)
        raise
    finally:
        report['seconds']=time.time()-start
        (record/'reproduction.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    print('PASS new replay',len(plan),'commands;',len(before),'static files;',round(report['seconds'],3),'seconds')
if __name__=='__main__':main()

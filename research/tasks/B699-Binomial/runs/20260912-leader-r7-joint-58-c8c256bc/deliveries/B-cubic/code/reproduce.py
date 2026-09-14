"""Run NEW checks in an empty temporary directory, retaining actual logs and output bytes."""
from __future__ import annotations
import argparse,datetime,hashlib,importlib.util,json,shutil,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def load_guard():
    spec=importlib.util.spec_from_file_location('static_guard',ROOT/'verify_manifest.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);return m.verify

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def run(record):
    guard=load_guard();before=guard();record.mkdir(parents=True,exist_ok=True)
    start=time.perf_counter();receipt={'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'commands':[],
        'source_before':before,'upstream_math_replayed':False,'lean_executed':False}
    with tempfile.TemporaryDirectory(prefix='b699-v4-new-') as t:
        out=Path(t)
        plan=[('algebra.py','algebra.json',[]),('residuals.py','residuals.json',[]),
              ('families.py','families.json',[]),('projections.py','projections.json',[]),
              ('independent.py','independent.json',['--dir',str(out)]),
              ('bad_inputs.py','bad_inputs.json',['--dir',str(out)]),
              ('source_audit.py','source_audit.json',[])]
        for idx,(script,name,extra) in enumerate(plan,1):
            cmd=[sys.executable,'-S','-B','code/'+script,*extra,'--out',str(out/name)]
            ts=time.perf_counter();r=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True)
            log=record/f'{idx:02d}-{Path(script).stem}.log';log.write_text(r.stdout+r.stderr)
            entry={'command':cmd,'returncode':r.returncode,'seconds':time.perf_counter()-ts,
                   'log':log.name,'log_sha256':sha(log)}
            receipt['commands'].append(entry)
            if r.returncode:
                receipt['status']='FAIL';(record/'reproduction.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
                raise RuntimeError('new check failed: '+script)
        compares=[];(record/'actual_outputs').mkdir(exist_ok=True)
        for _,name,_ in plan:
            expected=ROOT/'outputs'/name;actual=out/name
            equal=expected.read_bytes()==actual.read_bytes()
            compares.append({'file':name,'bytes':actual.stat().st_size,'expected_sha256':sha(expected),
                             'actual_sha256':sha(actual),'identical':equal})
            shutil.copyfile(actual,record/'actual_outputs'/name)
            if not equal:raise ValueError('non-reproducible mathematical output: '+name)
        receipt['comparisons']=compares
    after=guard()
    if before!=after:raise ValueError('static source changed during replay')
    receipt.update(status='PASS',source_after=after,static_sources_unchanged=True,
                   all_outputs_byte_identical=True,total_seconds=time.perf_counter()-start,
                   finished_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
    (record/'reproduction.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    print('PASS: %d commands, %d byte-identical outputs, %d unchanged static files'%(len(receipt['commands']),len(receipt['comparisons']),before['files']))
    return receipt
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--record',type=Path,default=Path('replay/local'));a=p.parse_args()
    dest=a.record if a.record.is_absolute() else ROOT/a.record;run(dest)

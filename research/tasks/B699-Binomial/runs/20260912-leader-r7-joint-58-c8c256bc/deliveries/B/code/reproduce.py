#!/usr/bin/env python3
"""Rebuild only the new mathematics in an empty temporary output directory."""
import argparse,hashlib,importlib.util,json,os,platform,subprocess,sys,tempfile,time
from pathlib import Path
from datetime import datetime,timezone
ROOT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('delivery_verify',ROOT/'verify_manifest.py')
mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)

def dump(path,obj):path.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
def utc():return datetime.now(timezone.utc).isoformat()

def main():
    p=argparse.ArgumentParser();p.add_argument('--record',default='replay/local');a=p.parse_args()
    record=(ROOT/a.record).resolve() if not Path(a.record).is_absolute() else Path(a.record).resolve()
    if record==ROOT or 'replay' not in record.parts: raise ValueError('Use a record path under a replay directory')
    record.mkdir(parents=True,exist_ok=True)
    result={'status':'RUNNING','started_utc':utc(),'python':sys.version,'platform':platform.platform(),
            'commands':[],'comparisons':[],'fresh_output_directory':True,
            'scope':'7 NEW commands only; no historical mathematical verifiers or Lean run'}
    outrecord=record/'reproduction.json';start=time.perf_counter()
    result['before']=mod.verify();dump(outrecord,result)
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1';env['PYTHONHASHSEED']='0'
    with tempfile.TemporaryDirectory(prefix='b699-three-quotient-') as temp:
        out=Path(temp)/'outputs';out.mkdir()
        plan=[('generate_modular.py',['--out',str(out/'modular9.json')]),
              ('check_modular.py',['--certificate',str(out/'modular9.json'),'--out',str(out/'modular9-check.json')]),
              ('normal_forms.py',['--out',str(out/'normal-forms.json')]),
              ('symbolic.py',['--out',str(out/'symbolic.json')]),
              ('consumers.py',['--out',str(out/'consumers.json')]),
              ('mutations.py',['--certificate',str(out/'modular9.json'),'--out',str(out/'mutations.json')]),
              ('check_sources.py',['--out',str(out/'sources.json')])]
        for i,(script,args) in enumerate(plan,1):
            command=[sys.executable,'-S','-B',str(ROOT/'code'/script)]+args
            logfile=record/f'{i:02d}-{Path(script).stem}.log';t=time.perf_counter()
            with logfile.open('w',encoding='utf-8') as log:
                proc=subprocess.run(command,cwd=ROOT,env=env,stdout=log,stderr=subprocess.STDOUT)
            result['commands'].append({'index':i,'command':command,'returncode':proc.returncode,
                                       'seconds':time.perf_counter()-t,'log':logfile.name})
            dump(outrecord,result)
            if proc.returncode:
                result['status']='FAIL';result['finished_utc']=utc();dump(outrecord,result)
                raise RuntimeError('New check failed: '+script)
            print(f'{i}/{len(plan)} {script}: PASS',flush=True)
        expected={p.name for p in (ROOT/'outputs').glob('*.json')}
        actual={p.name for p in out.glob('*.json')}
        if expected!=actual:raise ValueError('Math output-set mismatch')
        for name in sorted(expected):
            original=(ROOT/'outputs'/name).read_bytes();fresh=(out/name).read_bytes()
            row={'file':name,'bytes':len(fresh),'sha256':hashlib.sha256(fresh).hexdigest(),'byte_identical':fresh==original}
            result['comparisons'].append(row)
            if not row['byte_identical']:
                result['status']='FAIL';dump(outrecord,result);raise ValueError('Frozen output mismatch: '+name)
    result['after']=mod.verify()
    if result['before']!=result['after']:raise ValueError('Static source changed during replay')
    result.update(status='PASS',finished_utc=utc(),seconds=time.perf_counter()-start,identical_outputs=len(result['comparisons']))
    dump(outrecord,result);print(json.dumps({'status':'PASS','commands':len(plan),'identical_outputs':len(expected),'seconds':result['seconds']},sort_keys=True))

if __name__=='__main__':
    main()

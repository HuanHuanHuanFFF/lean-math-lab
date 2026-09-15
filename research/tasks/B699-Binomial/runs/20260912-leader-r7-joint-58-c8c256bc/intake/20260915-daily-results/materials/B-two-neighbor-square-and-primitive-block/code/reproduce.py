#!/usr/bin/env python3
"""Replay only new work in an empty output directory, then compare exact bytes."""
import argparse,datetime,hashlib,json,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT))
from verify_manifest import verify

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main(record):
    record=record if record.is_absolute() else ROOT/record
    record.mkdir(parents=True,exist_ok=True)
    started=datetime.datetime.now(datetime.timezone.utc).isoformat()
    before=verify(ROOT)
    commands=[]
    with tempfile.TemporaryDirectory(prefix='b699-new-two-block-') as temp:
        out=Path(temp)/'outputs';out.mkdir()
        steps=[('generate.py',['--out',str(out)]),
               ('check_certificate.py',['--input',str(out),'--out',str(out)]),
               ('identities.py',['--out',str(out)]),
               ('regressions.py',['--out',str(out)]),
               ('bad_inputs.py',['--input',str(out),'--out',str(out)])]
        allok=True
        for idx,(name,args) in enumerate(steps,1):
            cmd=[sys.executable,'-S','-B',str(ROOT/'code'/name),*args]
            log=record/f'{idx:02d}-{name}.log';t0=time.monotonic()
            with log.open('w') as f:
                completed=subprocess.run(cmd,cwd=ROOT,stdout=f,stderr=subprocess.STDOUT,check=False)
            commands.append({'command':cmd,'exit_code':completed.returncode,'seconds':time.monotonic()-t0,'log':log.name})
            if completed.returncode:allok=False;break
        comparisons=[]
        if allok:
            expected=sorted(p.name for p in (ROOT/'outputs').glob('*.json'))
            actual=sorted(p.name for p in out.glob('*.json'))
            allok=expected==actual
            for name in sorted(set(expected)|set(actual)):
                a=ROOT/'outputs'/name;b=out/name
                equal=a.exists() and b.exists() and a.read_bytes()==b.read_bytes()
                comparisons.append({'file':name,'equal':equal,'sha256':sha(b) if b.exists() else None})
                allok &= equal
        after=verify(ROOT)
    result={'started_utc':started,'ended_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
      'status':'PASS' if allok and before==after else 'FAIL','commands':commands,'byte_comparisons':comparisons,
      'manifest_before':before,'manifest_after':after,'historical_acceptance_replayed':False,
      'lean_executed':False,'external_independent_review':False}
    (record/'reproduction.json').write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n')
    print(json.dumps({'status':result['status'],'commands':len(commands),'exact_outputs':len(comparisons),
         'command_seconds':sum(x['seconds'] for x in commands),'record':str(record/'reproduction.json')},ensure_ascii=False))
    if result['status']!='PASS':raise SystemExit(1)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--record',type=Path,default=Path('replay/local'));main(p.parse_args().record)

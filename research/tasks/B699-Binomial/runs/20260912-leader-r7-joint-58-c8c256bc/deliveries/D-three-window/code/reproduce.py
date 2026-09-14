#!/usr/bin/env python3
"""Regenerate all NEW mathematical outputs in an empty directory and compare exact bytes.
Write receipts outside the release root to preserve its manifest.
"""
from __future__ import annotations
import argparse,datetime,hashlib,json,os,platform,subprocess,sys,tempfile,time
from pathlib import Path
from check_manifest import verify
ROOT=Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main(record: Path):
    record.mkdir(parents=True,exist_ok=True)
    receipt={'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
             'python':platform.python_version(),'platform':platform.platform(),'commands':[],
             'lean_executed':False,'human_reviewed':False,'independent_researcher_reviewed':False,
             'finite_regressions_are_not_the_infinite_proof':True}
    if (ROOT/'MANIFEST.json').exists():receipt['manifest_before']=verify(ROOT)
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1');start=time.perf_counter()
    with tempfile.TemporaryDirectory(prefix='b699-three-window-') as tmp:
        out=Path(tmp)
        plan=[('generate.py',['--out',str(out/'rows.json')]),
              ('independent.py',['--certificate',str(out/'rows.json'),'--out',str(out/'independent.json'),'--limit','512']),
              ('obligations.py',['--out',str(out/'obligations.json'),'--limit','100000'])]
        for idx,(script,args) in enumerate(plan,1):
            command=[sys.executable,'-B',str(ROOT/'code'/script),*args];t=time.perf_counter()
            r=subprocess.run(command,cwd=ROOT,env=env,text=True,capture_output=True)
            log=record/f'{idx:02d}-{script}.log';log.write_text(r.stdout+r.stderr)
            receipt['commands'].append({'script':script,'returncode':r.returncode,'seconds':time.perf_counter()-t,
                                        'log':log.name,'log_sha256':sha(log)})
            if r.returncode:
                receipt['status']='FAIL';(record/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
                raise RuntimeError('check failed: '+script)
        comparisons=[]
        for name in ['rows.json','independent.json','obligations.json']:
            src=ROOT/'evidence'/name;new=out/name;same=src.read_bytes()==new.read_bytes()
            comparisons.append({'file':name,'bytes':new.stat().st_size,'expected_sha256':sha(src),
                                'actual_sha256':sha(new),'identical':same})
            if not same:raise RuntimeError('mathematical output not byte reproducible: '+name)
        receipt['comparisons']=comparisons
    if (ROOT/'MANIFEST.json').exists():receipt['manifest_after']=verify(ROOT)
    receipt.update(status='PASS_NEW_THREE_WINDOW_COMPLETE_REPLAY',all_outputs_byte_identical=True,
                   seconds=time.perf_counter()-start,finished_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
    (record/'receipt.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':receipt['status'],'seconds':receipt['seconds'],'byte_identical_outputs':3}))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--record',type=Path,required=True);a=p.parse_args();main(a.record.resolve())

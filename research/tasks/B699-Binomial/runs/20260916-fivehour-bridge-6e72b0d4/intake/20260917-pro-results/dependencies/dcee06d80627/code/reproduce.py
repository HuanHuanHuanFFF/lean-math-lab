"""Run only this round's evidence, in an empty temporary output directory."""
import argparse,datetime,hashlib,json,os,platform,subprocess,sys,tempfile,time,resource
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT))
from verify_manifest import verify,digest

def main(record):
    record=record.resolve();record.mkdir(parents=True,exist_ok=True)
    before=verify(ROOT);start=datetime.datetime.now(datetime.timezone.utc).isoformat();clock=time.monotonic()
    results=[];comp=[]
    with tempfile.TemporaryDirectory(prefix='b699-block-proof-') as td:
        output=Path(td)/'output'
        commands=[['build_evidence.py','--out',str(output)],
                  ['check_boundaries.py','--inputs',str(output),'--out',str(output)],
                  ['check_independent.py','--inputs',str(output),'--out',str(output)]]
        for number,c in enumerate(commands,1):
            cmd=[sys.executable,'-S','-B',str(ROOT/'code'/c[0]),*c[1:]]
            t=time.monotonic();run=subprocess.run(cmd,cwd=ROOT,capture_output=True,text=True)
            (record/f'{number:02d}.stdout.log').write_text(run.stdout)
            (record/f'{number:02d}.stderr.log').write_text(run.stderr)
            results.append({'command':cmd,'returncode':run.returncode,'seconds':time.monotonic()-t,
              'stdout':f'{number:02d}.stdout.log','stderr':f'{number:02d}.stderr.log'})
            if run.returncode:
                (record/'FAILED.json').write_text(json.dumps(results,indent=2))
                raise RuntimeError(f'command {number} failed; see logs')
        expected=sorted(p.name for p in (ROOT/'outputs').glob('*.json'))
        actual=sorted(p.name for p in output.glob('*.json'))
        if actual!=expected:raise RuntimeError('output filename coverage mismatch')
        for name in expected:
            a=digest(ROOT/'outputs'/name);b=digest(output/name)
            comp.append({'file':name,'sha256':a,'regenerated_sha256':b,'equal':a==b})
        if not all(a['equal'] for a in comp):raise RuntimeError('mathematical output mismatch')
    after=verify(ROOT)
    result={'status':'PASS','started_utc':start,'completed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
      'python':platform.python_version(),'platform':platform.platform(),'commands':results,'comparisons':comp,
      'manifest_before':before,'manifest_after':after,'wall_seconds':time.monotonic()-clock,
      'children_maxrss_kib_linux':resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,
      'scope':'New exact arithmetic and implementation checks only; not Lean, independent researcher, or universal proof verification.'}
    (record/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','commands':len(results),'outputs':len(comp),'seconds':result['wall_seconds'],'static_files':after['static_files']},sort_keys=True))
if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--record',type=Path,default=ROOT/'replay'/'local');v=a.parse_args();main(v.record)

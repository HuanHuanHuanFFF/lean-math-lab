"""Replay new mathematics in an empty output directory, preserve every real log.
Neither old experiments nor any Lean/compiler process is invoked.
"""
import argparse,hashlib,json,os,platform,resource,subprocess,sys,tempfile,time
from pathlib import Path
from datetime import datetime,timezone
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT))
from verify_manifest import verify

NAMES=['block_certificates.json','block_check.json','nonempty_light.json','units_height.json','consumers.json','seven_diagnostic.json','bad_inputs.json','source_check.json']

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');args=ap.parse_args()
    record=Path(args.record)
    if not record.is_absolute():record=ROOT/record
    record.mkdir(parents=True,exist_ok=True)
    manifest=verify();start=datetime.now(timezone.utc).isoformat();clock=time.monotonic();jobs=[];comparison=[]
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1';env['PYTHONHASHSEED']='0'
    with tempfile.TemporaryDirectory(prefix='b699-new-r7-') as tmp:
        out=Path(tmp)/'outputs';out.mkdir()
        commands=[
          ['generate_blocks.py',str(out)],
          ['check_blocks.py',str(out/'block_certificates.json'),str(out/'block_check.json')],
          ['nonempty_light.py',str(out/'nonempty_light.json')],
          ['units_and_height.py',str(out/'units_height.json')],
          ['symbolic_and_consumers.py',str(out/'consumers.json')],
          ['diagnose_seven.py',str(out/'seven_diagnostic.json')],
          ['bad_inputs.py',str(out),str(out/'bad_inputs.json')],
          ['check_sources.py',str(out/'source_check.json')]]
        for i,cmd in enumerate(commands,1):
            full=[sys.executable,'-S','-B',str(ROOT/'code'/cmd[0])]+cmd[1:];log=record/f'{i:02d}-{cmd[0]}.log';t=time.monotonic()
            with log.open('wb') as f:p=subprocess.run(full,cwd=ROOT,env=env,stdout=f,stderr=subprocess.STDOUT)
            jobs.append({'command':full,'returncode':p.returncode,'seconds':time.monotonic()-t,'log':log.name})
            if p.returncode!=0:raise RuntimeError(f'failed command {i}; see {log}')
        actual=sorted(p.name for p in out.iterdir() if p.is_file());assert actual==sorted(NAMES)
        for name in NAMES:
            b=(out/name).read_bytes();frozen=(ROOT/'outputs'/name).read_bytes()
            comparison.append({'file':name,'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest(),'byte_equal':b==frozen})
            assert b==frozen,('regenerated mathematical file differs',name)
    assert verify()==manifest
    result={'status':'PASS','started_utc':start,'finished_utc':datetime.now(timezone.utc).isoformat(),'seconds':time.monotonic()-clock,
            'python':platform.python_version(),'platform':platform.platform(),'commands':jobs,'mathematical_outputs':comparison,
            'static_file_count':len(manifest['files']),'sources_before_after_unchanged':True,
            'maximum_child_ru_maxrss_KiB':resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,
            'scope':'new finite/arithmetic checks only; paper theorem, external theorem and Lean not mechanically certified'}
    (record/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
    print('PASS',len(jobs),'commands;',len(comparison),'byte-identical mathematical outputs; immutable inputs; seconds',round(result['seconds'],3))
if __name__=='__main__':main()

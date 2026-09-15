"""Reproduce NEW checks only. --output keeps a release tree byte-for-byte unchanged."""
import argparse,json,os,subprocess,sys,time
from pathlib import Path
R=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser();p.add_argument('--output',type=Path);args=p.parse_args()
OUT=(args.output or R).resolve();(OUT/'logs').mkdir(parents=True,exist_ok=True)
env=os.environ.copy();env['B699_RUN_OUTPUT']=str(OUT);env['PYTHONDONTWRITEBYTECODE']='1'
stages=[];t0=time.perf_counter()
for name in ('verify_sources.py','receive.py','negative_tests.py','diagnostics.py'):
    t=time.perf_counter()
    proc=subprocess.run([sys.executable,str(R/'code'/name)],cwd=R,env=env,capture_output=True,text=True)
    (OUT/'logs'/f'{name}.stdout.txt').write_text(proc.stdout)
    (OUT/'logs'/f'{name}.stderr.txt').write_text(proc.stderr)
    stages.append({'script':name,'returncode':proc.returncode,'seconds':time.perf_counter()-t})
    if proc.returncode:
        print(proc.stderr,file=sys.stderr);raise SystemExit(proc.returncode)
out={'status':'PASS_COMPLETE_NEW_CYCLOTOMIC_ADJACENT_REPLAY','stages':stages,'seconds':time.perf_counter()-t0,'historical_math_replays':0,'lean':False,'external_independent_review':False,'output':str(OUT)}
(OUT/'logs/full_replay.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out))

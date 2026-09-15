"""Replays only this delivery's new exact obligations and finite diagnostics."""
from pathlib import Path
import subprocess,sys,time,json,os
ROOT=Path(__file__).resolve().parents[1]
def main():
 st=time.perf_counter();stages=[]
 for name in ['verify_sources','receive','negative_tests','diagnostics']:
  begin=time.perf_counter()
  env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
  p=subprocess.run([sys.executable,str(ROOT/'code'/f'{name}.py')],cwd=ROOT,text=True,capture_output=True,env=env)
  (ROOT/'logs'/f'{name}.stdout.txt').write_text(p.stdout)
  (ROOT/'logs'/f'{name}.stderr.txt').write_text(p.stderr)
  if p.returncode:
   raise RuntimeError(f'{name} failed: '+p.stderr[-2000:])
  stages.append({'name':name,'seconds':time.perf_counter()-begin,'returncode':p.returncode})
  print('PASS',name)
 out={'status':'PASS_COMPLETE_NEW_ROUGH_BASE_REPDIGIT_REPLAY','stages':stages,'seconds':time.perf_counter()-st,'historical_mathematical_replays':0,'discovery_searches_in_replay':0,'lean':False,'external_independent_review':False}
 (ROOT/'logs/full_replay.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()

"""Run the NEW local receiving path only, serially with bounded output."""
from pathlib import Path
import subprocess,sys,json,time
R=Path(__file__).resolve().parents[1]

def main():
 start=time.perf_counter();stages=[]
 for name in ('verify_sources','receive','diagnostics','check_boundary','negative_tests'):
  t=time.perf_counter()
  with (R/f'logs/{name}.stdout').open('w') as out,(R/f'logs/{name}.stderr').open('w') as err:
   p=subprocess.run([sys.executable,str(R/f'code/{name}.py')],cwd=R,stdout=out,stderr=err)
  stages.append({'stage':name,'returncode':p.returncode,'seconds':time.perf_counter()-t})
  if p.returncode:
   result={'status':'FAILED_NEW_REPLAY','stages':stages,'seconds':time.perf_counter()-start}
   (R/'logs/full_replay.json').write_text(json.dumps(result,indent=2))
   print(json.dumps(result));return p.returncode
 result={'status':'PASS_COMPLETE_NEW_TRIDIGIT_REPLAY','stages':stages,'seconds':time.perf_counter()-start,
         'historical_receivers_executed':0,'Lean_executed':False,'discovery_executed':False}
 (R/'logs/full_replay.json').write_text(json.dumps(result,indent=2));print(json.dumps(result));return 0
if __name__=='__main__':raise SystemExit(main())

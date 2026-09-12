#!/usr/bin/env python3
"""Rebuild all new mathematical outputs in an empty temporary directory."""
from pathlib import Path
import argparse,datetime,hashlib,json,os,resource,subprocess,sys,tempfile,time
ROOT=Path(__file__).resolve().parents[1]
FILES=['cube.json','tails.json','independent.json','algebra.json','bad_inputs.json']
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def static():
 m=json.loads((ROOT/'MANIFEST.json').read_text())
 for path,want in m['files'].items():
  p=ROOT/path
  if not p.is_file() or sha(p)!=want:raise ValueError('static hash mismatch: '+path)
 return m['files']
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');args=ap.parse_args()
 record=Path(args.record);record=record if record.is_absolute() else ROOT/record
 record.mkdir(parents=True,exist_ok=True)
 before=static();start=time.perf_counter();logs=[]
 with tempfile.TemporaryDirectory(prefix='b699-square-prime-power-') as tmp:
  out=Path(tmp)
  for num,script in enumerate(['generate.py','check_independent.py','check_algebra.py','check_bad_inputs.py'],1):
   cmd=[sys.executable,'-S',str(ROOT/'code'/script),str(out)]
   t=time.perf_counter();res=subprocess.run(cmd,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
   (record/f'{num:02d}-{script}.stdout.log').write_text(res.stdout)
   if res.stderr:(record/f'{num:02d}-{script}.stderr.log').write_text(res.stderr)
   logs.append({'command':cmd,'returncode':res.returncode,'seconds':time.perf_counter()-t,'stdout_log':f'{num:02d}-{script}.stdout.log','stderr_log':f'{num:02d}-{script}.stderr.log' if res.stderr else None})
   if res.returncode:raise RuntimeError(script+' failed; see saved logs')
  comparisons=[]
  for name in FILES:
   got=sha(out/name);expected=sha(ROOT/'outputs'/name)
   comparisons.append({'file':name,'actual_sha256':got,'frozen_sha256':expected,'identical':got==expected})
   if got!=expected:raise ValueError('mathematical output mismatch: '+name)
 after=static()
 data={'status':'PASS','timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'python':sys.version,'commands':logs,'mathematical_outputs':comparisons,'all_static_unchanged':before==after,'static_files_checked':len(before),'elapsed_seconds':time.perf_counter()-start,'child_maxrss_kib':resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,'scope':'four new finite checks only; no Lean and no rerun of historical large certificates'}
 (record/'reproduction.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
 print(json.dumps({k:data[k] for k in ['status','elapsed_seconds','child_maxrss_kib','static_files_checked']}))
if __name__=='__main__':main()

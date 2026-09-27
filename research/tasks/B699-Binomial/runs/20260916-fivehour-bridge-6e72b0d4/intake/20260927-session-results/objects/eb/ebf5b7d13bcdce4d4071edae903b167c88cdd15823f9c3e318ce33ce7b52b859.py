#!/usr/bin/env python3
"""Verify hashes, rebuild certificates, run the separated checker and raw probes."""
import argparse,datetime,hashlib,json,os,platform,shutil,subprocess,sys,tempfile
from pathlib import Path
BASE=Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def manifest(name):
 entries=[]
 for line in (BASE/name).read_text().splitlines():
  digest,rel=line.split('  ',1);p=(BASE/rel).resolve()
  assert p.is_relative_to(BASE.resolve()) and p.is_file(),rel
  assert sha(p)==digest,rel
  entries.append(rel)
 return entries

def main(receipt):
 env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
 checked=manifest('PAYLOAD.sha256')
 final_checked=manifest('SHA256SUMS') if (BASE/'SHA256SUMS').exists() else None
 all_files={str(p.relative_to(BASE)) for p in BASE.rglob('*') if p.is_file()}
 expected_payload={x for x in all_files if x not in {'PAYLOAD.sha256','SHA256SUMS'} and not x.startswith('replay/')}
 assert set(checked)==expected_payload,'payload coverage mismatch'
 if final_checked is not None:assert set(final_checked)==all_files-{'SHA256SUMS'},'final coverage mismatch'
 commands=[]
 def run(args,cwd=None):
  r=subprocess.run(args,capture_output=True,text=True,env=env,cwd=cwd)
  commands.append({'command':[str(x) for x in args],'returncode':r.returncode,'stdout':r.stdout,'stderr':r.stderr})
  if r.returncode:raise RuntimeError(r.stderr or r.stdout)
  return r
 with tempfile.TemporaryDirectory(prefix='b699-r6-rebuild-') as td:
  td=Path(td);out=td/'certificates'
  run([sys.executable,str(BASE/'scripts/discover.py'),'--out',str(out)])
  names=sorted(p.name for p in (BASE/'certificates').glob('*.json'))
  assert names==sorted(p.name for p in out.glob('*.json'))
  matches=[]
  for name in names:
   assert (BASE/'certificates'/name).read_bytes()==(out/name).read_bytes(),name
   matches.append({'file':name,'sha256':sha(out/name),'byte_identical':True})
  run([sys.executable,str(BASE/'scripts/accept.py'),'--certificates',str(out)])
  run([sys.executable,str(BASE/'scripts/mutation_test.py')])
  experiments=[]
  for filename,logname in [('menu_probe.py','menu_probe.json'),('fifth_source_probe.py','fifth_source_probe.json')]:
   x=td/filename;x.mkdir();(x/'experiments').mkdir();(x/'logs').mkdir()
   shutil.copy2(BASE/'experiments'/filename,x/'experiments'/filename)
   run([sys.executable,str(x/'experiments'/filename)])
   assert (x/'logs'/logname).read_bytes()==(BASE/'logs'/logname).read_bytes(),logname
   experiments.append({'file':logname,'byte_identical':True,'sha256':sha(x/'logs'/logname)})
  report={'status':'PASS','utc_completed':datetime.datetime.now(datetime.timezone.utc).isoformat(),'python':sys.version,'platform':platform.platform(),'payload_files_checked':len(checked),'final_manifest_files_checked':len(final_checked) if final_checked is not None else None,'certificate_files_rebuilt':len(names),'certificate_comparison':matches,'raw_experiments':experiments,'commands':commands,'evidence_grade':'deterministic same-author separated replay, not external review or Lean','repository_operations':False,'global_net_reduction':0}
 receipt.parent.mkdir(parents=True,exist_ok=True);receipt.write_text(json.dumps(report,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
 print(json.dumps({'status':'PASS','payload_files':len(checked),'certificate_files':len(names),'raw_experiments':2,'receipt':str(receipt)},ensure_ascii=False))
if __name__=='__main__':
 a=argparse.ArgumentParser();a.add_argument('--receipt',required=True,type=Path);args=a.parse_args();main(args.receipt)

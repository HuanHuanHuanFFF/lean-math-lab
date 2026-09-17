"""Replay only this round's five arithmetic checks, into an empty temp directory."""
import argparse,hashlib,json,subprocess,sys,tempfile,time,platform
from datetime import datetime,timezone
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def fingerprints():
 manifest=json.loads((ROOT/'MANIFEST.json').read_text())['files']
 result={}
 for rel,data in manifest.items():
  p=ROOT/rel
  h=sha(p)
  if h!=data['sha256'] or p.stat().st_size!=data['bytes']:raise RuntimeError('static mismatch '+rel)
  result[rel]=h
 return result

def main():
 pa=argparse.ArgumentParser();pa.add_argument('--record',default='replay/local');args=pa.parse_args()
 record=Path(args.record)
 if not record.is_absolute():record=ROOT/record
 record.mkdir(parents=True,exist_ok=True)
 before=fingerprints();beg=time.perf_counter();started=datetime.now(timezone.utc).isoformat()
 stages=[('algebra.py','algebra.json'),('verify_kernel.py','kernel.json'),('verify_rows.py','rows.json'),('independent.py','independent.json'),('bad_inputs.py','bad_inputs.json')]
 runs=[];same=[]
 with tempfile.TemporaryDirectory(prefix='b699-prefix-replay-') as td:
  out=Path(td)/'new-outputs';out.mkdir()
  for i,(script,filename) in enumerate(stages):
   cmd=[sys.executable,'-S','-B',str(ROOT/'code'/script),str(out)]
   tick=time.perf_counter()
   completed=subprocess.run(cmd,cwd=ROOT,text=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=300)
   logfile=record/f'{i+1:02d}-{script}.log';logfile.write_text(completed.stdout+completed.stderr)
   run={'command':cmd,'returncode':completed.returncode,'elapsed_seconds':time.perf_counter()-tick,'log':str(logfile.relative_to(record))}
   runs.append(run)
   if completed.returncode:
    (record/'failure.json').write_text(json.dumps({'runs':runs},indent=2));raise RuntimeError('stage failed '+script)
   expected=ROOT/'outputs/accept'/filename;actual=out/filename
   if actual.read_bytes()!=expected.read_bytes():raise RuntimeError('regenerated output differs: '+filename)
   same.append({'file':filename,'bytes':actual.stat().st_size,'sha256':sha(actual)})
  after=fingerprints()
  result={'status':'PASS','started_utc':started,'completed_utc':datetime.now(timezone.utc).isoformat(),
    'python':platform.python_version(),'elapsed_seconds':time.perf_counter()-beg,'runs':runs,'byte_identical_outputs':same,
    'before_after_static_hashes_equal':before==after,'static_files_checked':len(before),
    'old_evidence_chains_reexecuted':False,'lean_executed':False,'independent_authorship':False}
  (record/'reproduction.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
 print('PASS new replay:',len(runs),'commands;',len(same),'byte-identical outputs')
if __name__=='__main__':main()

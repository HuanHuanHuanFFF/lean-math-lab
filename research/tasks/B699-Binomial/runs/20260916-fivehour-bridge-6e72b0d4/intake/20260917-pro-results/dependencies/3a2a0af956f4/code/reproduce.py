"""One command for all new receiving checks; no discovery and no historical replay."""
from pathlib import Path
import argparse,subprocess,sys,json,hashlib,os,time
ROOT=Path(__file__).resolve().parents[1]
def main(out):
 out=Path(out).resolve();out.mkdir(parents=True,exist_ok=True);st=time.time()
 manifest=json.loads((ROOT/'sources/INPUT_PROVENANCE.json').read_text())
 for name,expected in manifest['included_files'].items():
  assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==expected,name
 env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',OPENBLAS_NUM_THREADS='1',OMP_NUM_THREADS='1')
 stages=[]
 for script in ['verify_new.py','diagnostics.py','mutation_tests.py']:
  t=time.time();cmd=[sys.executable,'-B',str(ROOT/'code'/script),'--out',str(out)]
  p=subprocess.run(cmd,cwd=ROOT,env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
  (out/(script+'.log')).write_text(p.stdout)
  stages.append({'command':cmd,'exit_code':p.returncode,'seconds':time.time()-t})
  if p.returncode:raise RuntimeError(f'{script} failed; see log in {out}')
 result={'status':'PASS_COMPLETE_NEW_H013_H012_D6_REPLAY','seconds':time.time()-st,'stages':stages,'source_files_checked':len(manifest['included_files']),'old_mathematics_replayed':False,'lean':False}
 (out/'full_replay.json').write_text(json.dumps(result,indent=2));print(json.dumps(result))
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();main(a.out)

#!/usr/bin/env python3
"""Reproduce only the new finite obligations and diagnostics; no historical replay."""
import argparse,hashlib,json,os,platform,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main(out):
 out.mkdir(parents=True,exist_ok=True);env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1');steps=[]
 def run(name,args):
  t=time.perf_counter();log=out/(name+'.log')
  with log.open('w') as f:r=subprocess.run([sys.executable,*args],stdout=f,stderr=subprocess.STDOUT,env=env,cwd=ROOT)
  steps.append({'step':name,'returncode':r.returncode,'seconds':time.perf_counter()-t,'log':log.name})
  print(json.dumps(steps[-1]),flush=True)
  if r.returncode:raise RuntimeError(f'{name} failed; see {log}')
 regenerated=out/'regenerated';outputs=out/'outputs'
 run('generate',[str(ROOT/'code/generate.py'),'--out',str(regenerated)])
 p=regenerated/'finite_certificate.json';q=ROOT/'evidence/finite_certificate.json'
 if p.read_bytes()!=q.read_bytes():raise ValueError('finite certificate regeneration differs')
 run('verify',[str(ROOT/'code/verify.py'),'--out',str(outputs)])
 run('diagnostics',[str(ROOT/'code/diagnostics.py'),'--out',str(outputs)])
 run('mutations',[str(ROOT/'code/mutations.py'),'--out',str(outputs)])
 matches=[{'file':'evidence/finite_certificate.json','sha256':sha(q),'byte_identical':True}]
 for name in ('acceptance.json','diagnostics.json','mutations.json'):
  a=outputs/name;b=ROOT/'outputs'/name
  if a.read_bytes()!=b.read_bytes():raise ValueError(name+' differs from release mathematical output')
  matches.append({'file':'outputs/'+name,'sha256':sha(a),'byte_identical':True})
 receipt={'status':'PASS_NEW_CHAIN_REPRODUCTION','steps':steps,'total_seconds':sum(x['seconds'] for x in steps),'matches':matches,'python':sys.version,'platform':platform.platform(),'scope':'New arithmetic, complete finite domains and checks only. No historical A/B/D chain, Lean, or independent mathematical review.'}
 (out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n')
 print('PASS_NEW_CHAIN_REPRODUCTION',flush=True)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args();main(a.out.resolve())

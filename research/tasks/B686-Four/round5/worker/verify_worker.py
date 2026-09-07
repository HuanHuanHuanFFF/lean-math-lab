"""Bounded dependency-first worker verification; logs and hashes are local deliverables."""
from pathlib import Path
import subprocess,os,re,json,hashlib,time,sys
from datetime import datetime,timezone
ROOT=Path(__file__).resolve().parents[5]
HERE=Path(__file__).resolve().parent
label=sys.argv[1]
inputs=[Path(x) for x in sys.argv[2:]]
seen=set();order=[]
def visit(p):
 p=ROOT/p if not p.is_absolute() else p
 if p in seen:return
 seen.add(p)
 for line in p.read_text().splitlines():
  if line.startswith('import research.'):
   module=line.split()[1].replace('«','').replace('»','')
   visit(Path(*module.split('.')).with_suffix('.lean'))
 order.append(p)
for p in inputs:visit(p)
env=os.environ.copy();env['LEAN_PATH']=str(ROOT)
results=[]
for p in order:
 rel=p.relative_to(ROOT);name=str(rel.with_suffix('')).replace('/','-')
 log=HERE/f'{label}-{name}.log'
 command=['bash','scripts/lean-work.sh','lake','env','lean',str(rel),'-o',str(rel.with_suffix('.olean'))]
 before=hashlib.sha256(p.read_bytes()).hexdigest();start=time.monotonic()
 try:
  r=subprocess.run(command,cwd=ROOT,env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=180,text=True)
  code=r.returncode;output=r.stdout
 except subprocess.TimeoutExpired as e:
  code=124;output=(e.stdout or b'').decode() if isinstance(e.stdout,bytes) else (e.stdout or '')
 log.write_text(output)
 after=hashlib.sha256(p.read_bytes()).hexdigest()
 results.append({'source':str(rel),'sha256_before':before,'sha256_after':after,'command':command,'environment':{'LEAN_PATH':str(ROOT)},'exit_code':code,'seconds':round(time.monotonic()-start,3),'log':str(log.relative_to(ROOT)),'guards':p.read_text().count('#guard_msgs')})
 (HERE/f'{label}-manifest.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),'results':results},indent=2)+'\n')
 print(rel,code,results[-1]['seconds'],flush=True)
 if code or before!=after:
  print(output[-4000:],flush=True);sys.exit(code or 3)
print('ALL PASS',len(results),flush=True)

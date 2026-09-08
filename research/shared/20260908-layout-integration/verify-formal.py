"""Replay the official verification steps when PowerShell is unavailable."""
from pathlib import Path
from datetime import datetime, timezone
import os,sys,json,hashlib,subprocess
root=next(p for p in Path(__file__).resolve().parents if (p/'lake-manifest.json').is_file())
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
out=root/'research/shared/20260908-layout-integration/verification'/('formal-'+stamp)
out.mkdir(parents=True,exist_ok=False)
env=os.environ.copy()
if (root/'.tools/elan/bin').is_dir():
 env['ELAN_HOME']=str(root/'.tools/elan')
 env['PATH']=str(root/'.tools/elan/bin')+os.pathsep+env.get('PATH','')
files=sorted(p for folder in ('Math','Tests','Examples') for p in (root/folder).rglob('*.lean'))
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
report={'kind':'official-equivalent-without-pwsh','scope':[str(p.relative_to(root)) for p in files],'source_sha256_before':{str(p.relative_to(root)):digest(p) for p in files},'records':[],'success':False}
commands=[('source-policy',[sys.executable,'scripts/check-lean-policy.py','--roots','Math','Tests','Examples']),('lean-version',['bash','scripts/lean-work.sh','lean','--version']),('build',['bash','scripts/lean-work.sh','lake','build'])]
commands += [(p.stem,['bash','scripts/lean-work.sh','lake','env','lean',str(p.relative_to(root))]) for p in files]
for idx,(label,cmd) in enumerate(commands):
 start=datetime.now(timezone.utc).isoformat()
 log=out/f'{idx:02d}-{label}.log'
 with log.open('w') as stream:r=subprocess.run(cmd,cwd=root,env=env,stdout=stream,stderr=subprocess.STDOUT)
 report['records'].append({'label':label,'command':cmd,'started_utc':start,'ended_utc':datetime.now(timezone.utc).isoformat(),'exit_code':r.returncode,'log':str(log.relative_to(root)),'log_sha256':digest(log)})
 (out/'evidence.json').write_text(json.dumps(report,indent=2)+'\n')
 print(label,'exit',r.returncode,flush=True)
 if r.returncode:
  print(log.read_text()[-5000:],flush=True)
  raise SystemExit(r.returncode)
report['source_sha256_after']={str(p.relative_to(root)):digest(p) for p in files}
assert report['source_sha256_before']==report['source_sha256_after']
report['success']=True
(out/'evidence.json').write_text(json.dumps(report,indent=2)+'\n')
print('Evidence:',out.relative_to(root),flush=True)

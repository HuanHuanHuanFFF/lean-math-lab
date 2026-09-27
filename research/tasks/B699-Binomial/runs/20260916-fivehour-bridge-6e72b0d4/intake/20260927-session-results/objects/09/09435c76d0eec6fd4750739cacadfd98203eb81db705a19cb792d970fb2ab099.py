from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
import subprocess,json,time
R=Path('/mnt/data/research_tail10');cases=[]
for q in [11,12]:
 for d8 in [0,1,2]:
  cases.append((f'tail8_q{q}_d{d8}',q,[0,0,0,0,0,d8],[0,0,0,0,0,4-2*d8]))
(R/'discovery/profiles_stage2.json').write_text(json.dumps(cases,indent=2))
def call(args,label):
 t=time.monotonic();p=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 (R/'probe'/f'{label}.log').write_text(p.stdout+p.stderr)
 print(label,'exit',p.returncode,'seconds',round(time.monotonic()-t,2),p.stdout.strip(),flush=True)
 if p.returncode:raise RuntimeError(p.stderr)
def one(case):
 name,q,d,k=case
 call([R/'bin/gates',q,*d,*k,R/'probe'/f'{name}.gates'],name+'_gates')
 call([R/'bin/jets',q,R/'probe'/f'{name}.gates',R/'probe'/f'{name}.32749.minors',R/'probe'/f'{name}.exceptions'],name+'_jets')
with ThreadPoolExecutor(max_workers=2) as ex:list(ex.map(one,cases))
print('STAGE2_PROBES_DONE',flush=True)

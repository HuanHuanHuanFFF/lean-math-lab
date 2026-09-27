from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
import subprocess,json,time
R=Path('/mnt/data/research_tail10');B=Path('/mnt/data/intake50/B699-ProA-T10-S5-FIXED4-FRONTIER50-20260926-evidence')
# Validate incoming archive's full 508-entry manifest, without replaying old mathematics.
import hashlib
cnt=0
for line in (B/'MANIFEST.sha256').read_text().splitlines():
 h,p=line.split('  ',1);assert hashlib.sha256((B/p).read_bytes()).hexdigest()==h,p;cnt+=1
print('BASELINE_MANIFEST_PASS',cnt,flush=True)
for p in ['frontier50.tsv','CONDITIONAL_T11_NOT_GLOBAL.txt','remaining_h117_conditional_cpp.txt','remaining50_weak_resource_records.json']:(R/'inputs'/p).write_bytes((B/'certificates/ledger'/p).read_bytes())
patterns=[(0,0,0,0,4,0),(0,0,0,0,2,2),(0,0,0,0,0,4)]
cases=[]
from itertools import product
for ci,c in enumerate(patterns):
 for vals in product(*(range(v//2+1) if (i+3)%2==0 else [v//2] for i,v in enumerate(c))):
  k=tuple(v-2*d for v,d in zip(c,vals));assert not any(k[i] for i in(0,2,4))
  cases.append((f'p{ci}_{len(cases)}',10,list(vals),list(k)))
(R/'discovery/profiles.json').write_text(json.dumps(cases,indent=2))
print('PROFILES',cases,flush=True)
def call(args,label):
 t=time.monotonic();p=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 (R/'probe'/f'{label}.log').write_text(p.stdout+p.stderr)
 print(label,'exit',p.returncode,'seconds',round(time.monotonic()-t,2),p.stdout.strip(),flush=True)
 if p.returncode:raise RuntimeError(p.stderr)
 return p.stdout
for name,source,flags in [('gates','six_gates.cpp',[]),('gates_alt','six_gates.cpp',['-DALT']),('jets','six_jets.cpp',[]),('receiver','receive_six.cpp',[]),('enum','enumerate_costs.cpp',[]),('fees','fees.cpp',[])]:call(['g++','-O3','-std=c++17',*flags,R/'code'/source,'-o',R/'bin'/name],'compile_'+name)
def one(case):
 name,q,d,k=case
 call([R/'bin/gates',q,*d,*k,R/'probe'/f'{name}.gates'],name+'_gates')
 call([R/'bin/jets',q,R/'probe'/f'{name}.gates',R/'probe'/f'{name}.32749.minors',R/'probe'/f'{name}.exceptions'],name+'_jets')
 return name
with ThreadPoolExecutor(max_workers=2) as ex:list(ex.map(one,cases))
print('ALL_PROBES_DONE',flush=True)

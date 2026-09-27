import sys,json,itertools,subprocess
from pathlib import Path
P=Path(__file__).resolve().parents[1]
rr=json.loads((P/'discovery/reuse_diagnostic.json').read_text())
pp={ (q,tuple(c))for r in rr for q,c in r['uncovered']}
prof=[]
for q,c in sorted(pp):
 for d in itertools.product(*(range(v//2+1)for v in c)):
  k=tuple(v-2*x for v,x in zip(c,d))
  if any(k[j]for j in (0,2,4)):continue
  name=f'ext{len(prof):02d}_q{q}';prof.append([name,q,d,k])
(P/'discovery/extra_profiles.json').write_text(json.dumps(prof,indent=2)+'\n')
for name,q,d,k in prof:
 f=P/'discovery/geometry'
 args=list(map(str,[P/'discovery/bin/gates',q,*d,*k,f/(name+'.gates')]))
 r=subprocess.run(args,check=True,capture_output=True,text=True);print(name,r.stdout.strip(),flush=True)
 args=list(map(str,[P/'discovery/bin/jets',q,f/(name+'.gates'),f/(name+'.minors'),f/(name+'.exceptions')]))
 r=subprocess.run(args,check=True,capture_output=True,text=True);print(name,r.stdout.strip(),flush=True)
 print('exceptions',(f/(name+'.exceptions')).read_text()[:500],flush=True)

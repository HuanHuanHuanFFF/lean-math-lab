from pathlib import Path
import json,subprocess,hashlib
from resource_model import OFF,DIAG
BASE=Path(__file__).resolve().parent;TMP=Path('D:/Temp/b699-r7-146a9702/quotient-traces');OUT=BASE/'quotient-global';OUT.mkdir(exist_ok=True)
families=[x['configuration'] for x in json.loads((BASE/'cubic-even-exact.json').read_text())['results'] if x['status']=='unresolved_family']
for fi,cfg in enumerate(families,1):
 points=[]
 for r,((kp,ms),off,diag) in enumerate(zip(cfg,OFF,DIAG),3):
  for s in range(r//2+1):
   wt=2 if 2*s==r else 1;L=max(diag-(2*ms[s]-kp),0) if wt==2 else max(off[s]-ms[s],0);points.append((r,s,wt,L))
 inp='149 298 257 0 21\n'+''.join(' '.join(map(str,p))+'\n' for p in points);name=f'global-f{fi}';pre=TMP/name;dest=OUT/name;dest.with_suffix('.input.txt').write_text(inp,encoding='utf-8')
 r=subprocess.run(['D:/Temp/b699-r7-146a9702/source_module.exe',str(pre)],input=inp,capture_output=True,text=True,timeout=60);assert r.returncode==0
 dest.with_suffix('.log').write_text(r.stdout+r.stderr,encoding='utf-8');d=json.loads(pre.with_suffix('.json').read_text());trace=pre.with_suffix('.trace.tsv');d.update(family=fi,trace_sha256=hashlib.sha256(trace.read_bytes()).hexdigest(),trace_bytes=trace.stat().st_size,trace_location='D:/Temp/b699-r7-146a9702/quotient-traces/'+trace.name)
 dest.with_suffix('.json').write_text(json.dumps(d,indent=2)+'\n');print(json.dumps({k:v for k,v in d.items() if k!='weights'}),flush=True)

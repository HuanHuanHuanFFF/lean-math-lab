from pathlib import Path
import json,subprocess,time
from resource_model import ROOT,OFF,DIAG
BASE=Path(__file__).resolve().parent
src=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/ce/cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4.cpp'
exe=Path('D:/Temp/b699-r7-146a9702/source_module.exe')
if not exe.exists():
 r=subprocess.run(['D:/CLion/CLion 2025.1.1/bin/mingw/bin/g++.exe','-O2','-std=c++17',str(src),'-o',str(exe)],capture_output=True,text=True,timeout=60)
 (BASE/'quotient-build.log').write_text(r.stdout+r.stderr,encoding='utf-8');assert r.returncode==0
states=json.loads((BASE/'positive-sensitivity.json').read_text())['states']
families=[r['configuration'] for r in json.loads((BASE/'cubic-even-exact.json').read_text())['results'] if r['status']=='unresolved_family']
st=next(s for s in states if s['idx']==1228)
reports=[]
for fi,cfg in enumerate(families,1):
 points=[]
 for rr,((kp,ms),off,diag,v) in enumerate(zip(cfg,OFF,DIAG,st['v']),3):
  for ss in range(rr//2+1):
   if 2*ss==rr: wt=2;order=max(diag-v-(2*ms[ss]-kp),0)
   else:wt=1;order=max(off[ss]-v-ms[ss],0)
   points.append((rr,ss,wt,order))
 inp=f"{st['h']-3} {2*(st['h']-3)} 257 0 21\n"+''.join(' '.join(map(str,p))+'\n' for p in points)
 prefix=BASE/f'quotient-1228-family{fi}'
 prefix.with_suffix('.input.txt').write_text(inp,encoding='utf-8')
 start=time.monotonic()
 try:
  r=subprocess.run([str(exe),str(prefix)],input=inp,capture_output=True,text=True,timeout=60)
  prefix.with_suffix('.log').write_text(r.stdout+r.stderr,encoding='utf-8')
  report=dict(family=fi,returncode=r.returncode,stdout=r.stdout.strip(),seconds=round(time.monotonic()-start,3))
 except subprocess.TimeoutExpired as e:
  report=dict(family=fi,status='timeout checkpoint; not a mathematical failure',seconds=round(time.monotonic()-start,3));prefix.with_suffix('.timeout.json').write_text(json.dumps(report)+'\n')
 reports.append(report);print(json.dumps(report),flush=True)
(BASE/'quotient-pilot-summary.json').write_text(json.dumps(reports,indent=2)+'\n')

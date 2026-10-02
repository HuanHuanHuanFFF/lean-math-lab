from pathlib import Path
import subprocess,json,time,itertools
R=Path(__file__).resolve().parents[1];o=R/'certificates/geometry';o.mkdir(exist_ok=True);profiles=[]
for q,fee in [(19,(0,0,0,0,0,3)),(25,(0,0,0,0,0,2))]:
 for dsks in itertools.product(*[[(c//2,0)] if r%2 else [(d,c-2*d) for d in range(c//2+1)] for r,c in zip(range(3,9),fee)]):
  ds,ks=zip(*dsks);i=len(profiles);p={'index':i,'q':q,'fee':fee,'delta':ds,'kappa':ks};profiles.append(p)
(R/'certificates/geometry/profiles_plan.json').write_text(json.dumps(profiles,indent=2)+'\n')
for p in profiles:
 i=p['index'];stem=o/f'g{i:02d}';args=[str(p['q']),*map(str,p['delta']),*map(str,p['kappa'])]
 for ex,suffix in [('root_gates','.txt'),('root_gates_alt','.alt')]:
  st=time.monotonic();print('START',i,ex,p['q'],p['delta'],p['kappa'],flush=True)
  s=subprocess.run([str(R/'work'/ex),*args,str(stem)+suffix],capture_output=True,text=True,check=True)
  print('DONE',i,ex,s.stdout.strip(),time.monotonic()-st,flush=True)
  (R/f'logs/g{i:02d}_{ex}.txt').write_text(s.stdout+s.stderr)
 A=Path(str(stem)+'.txt').read_text().splitlines();B=Path(str(stem)+'.alt').read_text().splitlines();assert len(A)==len(set(A)) and sorted(A)==sorted(B)
 p['configurations']=len(A);p['set_equal']=True
 (o/'profiles.json').write_text(json.dumps(profiles,indent=2)+'\n')

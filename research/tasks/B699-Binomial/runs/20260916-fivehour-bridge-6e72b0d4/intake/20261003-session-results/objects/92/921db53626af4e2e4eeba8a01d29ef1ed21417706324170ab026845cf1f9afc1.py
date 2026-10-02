"""Complete exact domains. All profiles are generated, both root orders and both primes.
An exception is retained and NEVER silently treated as empty.
"""
from pathlib import Path
import json,subprocess,time,itertools,hashlib
R=Path(__file__).resolve().parents[1];O=R/'certificates/geometry';O.mkdir(exist_ok=True)
domains=[(11,(0,0,0,0,2,2)),(18,(0,0,0,1,0,2))]
profiles=[]
for q,fee in domains:
 for dk in itertools.product(*[[(c//2,0)] if r%2 else [(d,c-2*d) for d in range(c//2+1)] for r,c in zip(range(3,9),fee)]):
  ds,ks=zip(*dk);profiles.append({'index':len(profiles),'q':q,'fee':fee,'delta':ds,'kappa':ks})
(O/'profiles_plan.json').write_text(json.dumps(profiles,indent=2)+'\n')
for z in profiles:
 i=z['index'];base=O/f'g{i:02d}';args=[str(z['q']),*map(str,z['delta']),*map(str,z['kappa'])];z['runs']=[]
 for ex,suffix in [('root_gates','.txt'),('root_gates_alt','.alt')]:
  st=time.monotonic();rr=subprocess.run([str(R/'work'/ex),*args,str(base)+suffix],capture_output=True,text=True,check=True)
  (R/f'logs/g{i:02d}_{ex}.log').write_text(rr.stdout+rr.stderr);print('ROOT',i,ex,rr.stdout.strip(),'secs',round(time.monotonic()-st,2),flush=True)
 A=Path(str(base)+'.txt').read_text().splitlines();B=Path(str(base)+'.alt').read_text().splitlines();assert len(A)==len(set(A)) and sorted(A)==sorted(B)
 z['configurations']=len(A);z['set_equal']=True
 for prime in [32749,32719]:
  st=time.monotonic();rr=subprocess.run([str(R/'work'/f'six_jets_p{prime}'),str(z['q']),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions'],capture_output=True,text=True,check=True)
  (R/f'logs/g{i:02d}_jets{prime}.log').write_text(rr.stdout+rr.stderr);print('JETS',i,prime,rr.stdout.strip(),'secs',round(time.monotonic()-st,2),flush=True)
  st=time.monotonic();rr=subprocess.run([str(R/'work'/f'receive_geometry_p{prime}'),str(z['q']),str(prime),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions'],capture_output=True,text=True,check=True)
  (R/f'logs/g{i:02d}_receive{prime}.log').write_text(rr.stdout+rr.stderr);print('RECEIVE',i,prime,rr.stdout.strip(),'secs',round(time.monotonic()-st,2),flush=True)
  z['runs'].append({'prime':prime,'received':True,'exceptions':Path(str(base)+f'.p{prime}.exceptions').read_text().splitlines()})
 (O/'profiles.json').write_text(json.dumps(profiles,indent=2)+'\n')
print('COMPLETE',sum(p['configurations'] for p in profiles),'exceptions',sum(len(x['exceptions']) for z in profiles for x in z['runs']),flush=True)

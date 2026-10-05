"""Full profiles for six exact domains; exceptions are retained, never skipped.
Can run a selected interval of profiles for checkpointing. No truncated search.
"""
from pathlib import Path
import json,subprocess,time,itertools,hashlib,sys,os
from concurrent.futures import ThreadPoolExecutor
R=Path(__file__).resolve().parents[1];O=R/'certificates/geometry';O.mkdir(exist_ok=True)
DOMAINS=[(5,(0,1,0,0,0,4)),(6,(0,1,0,0,0,4)),(14,(0,0,0,0,0,4)),(11,(0,0,0,0,4,0)),(18,(0,0,0,0,2,1)),(12,(0,0,0,0,2,2))]
def plans():
 out=[]
 for q,fee in DOMAINS:
  for dk in itertools.product(*[[(c//2,0)] if r%2 else [(d,c-2*d) for d in range(c//2+1)] for r,c in zip(range(3,9),fee)]):
   ds,ks=zip(*dk);out.append({'index':len(out),'q':q,'fee':fee,'delta':ds,'kappa':ks})
 return out
if __name__=='__main__':
 profiles=plans();a=int(sys.argv[1]) if len(sys.argv)>1 else 0;b=int(sys.argv[2]) if len(sys.argv)>2 else len(profiles)
 (O/'PLAN.json').write_text(json.dumps(profiles,indent=2)+'\n')
 for z in profiles[a:b]:
  i=z['index'];base=O/f'g{i:02d}';args=[str(z['q']),*map(str,z['delta']),*map(str,z['kappa'])]
  for ex,suffix in [('root_gates','.txt'),('root_gates_alt','.alt')]:
   st=time.monotonic();rr=subprocess.run([str(R/'work'/ex),*args,str(base)+suffix],capture_output=True,text=True,check=True)
   (R/f'logs/g{i:02d}_{ex}.log').write_text(rr.stdout+rr.stderr);print('ROOT',i,ex,rr.stdout.strip(),'secs',round(time.monotonic()-st,2),flush=True)
  A=Path(str(base)+'.txt').read_text().splitlines();B=Path(str(base)+'.alt').read_text().splitlines();assert len(A)==len(set(A)) and sorted(A)==sorted(B)
  def run_prime(prime):
   st=time.monotonic();rr=subprocess.run([str(R/'work'/f'six_jets_p{prime}'),str(z['q']),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions'],capture_output=True,text=True,check=True)
   (R/f'logs/g{i:02d}_jets{prime}.log').write_text(rr.stdout+rr.stderr);print('JETS',i,prime,rr.stdout.strip(),'secs',round(time.monotonic()-st,2),flush=True)
   rr=subprocess.run([str(R/'work'/f'receive_geometry_p{prime}'),str(z['q']),str(prime),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions'],capture_output=True,text=True,check=True)
   (R/f'logs/g{i:02d}_receive{prime}.log').write_text(rr.stdout+rr.stderr);print('RECEIVE',i,prime,rr.stdout.strip(),'secs',round(time.monotonic()-st,2),flush=True)
  with ThreadPoolExecutor(max_workers=min(2,max(1,int(os.environ.get('GEOMETRY_WORKERS','1'))))) as pool:
   list(pool.map(run_prime,[32749,32719]))
 print('COMPLETE selected profiles',a,b,flush=True)

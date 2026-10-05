"""One NEW exact domain, q=5, fee=(0,0,0,1,2,2). Both complete splits."""
from pathlib import Path
import json,subprocess,itertools,hashlib
R=Path(__file__).resolve().parents[1];O=R/'certificates/geometry';O.mkdir(exist_ok=True)
q=5;fee=(0,0,0,1,2,2);profiles=[]
for dk in itertools.product(*[[(c//2,0)] if r%2 else [(d,c-2*d) for d in range(c//2+1)] for r,c in zip(range(3,9),fee)]):
 ds,ks=zip(*dk);profiles.append({'index':len(profiles),'q':q,'fee':fee,'delta':ds,'kappa':ks})
assert len(profiles)==2;res=[]
for z in profiles:
 i=z['index'];base=O/f'g{i:02d}';args=[str(q),*map(str,z['delta']),*map(str,z['kappa'])]
 for ex,suffix in [('root_gates','.txt'),('root_gates_alt','.alt')]:
  rr=subprocess.run([str(R/'work'/ex),*args,str(base)+suffix],capture_output=True,text=True,check=True);(R/f'logs/g{i:02d}_{ex}.log').write_text(rr.stdout+rr.stderr);print(rr.stdout.strip(),flush=True)
 A=Path(str(base)+'.txt').read_text().splitlines();B=Path(str(base)+'.alt').read_text().splitlines();assert len(A)==len(set(A)) and sorted(A)==sorted(B)
 z['configurations']=len(A);z['K']=10;z['prime_receipts']=[]
 for prime in [32749,32719]:
  rr=subprocess.run([str(R/'work'/f'six_jets_p{prime}'),str(q),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions'],capture_output=True,text=True,check=True);(R/f'logs/g{i:02d}_jets{prime}.log').write_text(rr.stdout+rr.stderr);print(rr.stdout.strip(),flush=True)
  # Do not hide an affine residual. Stop and preserve exceptions for exact recovery.
  exc=Path(str(base)+f'.p{prime}.exceptions').read_text().strip()
  if exc: print('AFFINE RESIDUAL',exc,flush=True);raise RuntimeError('nonempty residual: recover before claiming emptiness')
  rr=subprocess.run([str(R/'work'/f'receive_geometry_p{prime}'),str(q),str(prime),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions'],capture_output=True,text=True,check=True);(R/f'logs/g{i:02d}_receive{prime}.log').write_text(rr.stdout+rr.stderr);print(rr.stdout.strip(),flush=True)
  z['prime_receipts'].append({'prime':prime,'received':True,'minor_count':len(Path(str(base)+f'.p{prime}.minors').read_text().splitlines()),'full_rank':True})
 res.append(z)
(O/'RECEIPT.json').write_text(json.dumps({'domain':[q,*fee],'complete':True,'all_splits':res,'root_configurations':sum(a['configurations'] for a in res),'all_full_rank':True,'parameter_scan':False},indent=2)+'\n')

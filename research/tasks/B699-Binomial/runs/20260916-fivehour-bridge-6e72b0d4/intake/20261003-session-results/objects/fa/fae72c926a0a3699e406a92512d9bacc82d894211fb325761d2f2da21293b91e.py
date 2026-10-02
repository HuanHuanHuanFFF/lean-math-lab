from common import *
import subprocess,time
O=ROOT/'certificates/geometry';O.mkdir(exist_ok=True)
domains=[(10,(0,0,0,2,0,2)),(10,(0,0,0,2,2,0))]
profiles=[]
for q,c in domains:
 for dk in itertools.product(*[[(v//2,0)] if r%2 else [(d,v-2*d) for d in range(v//2+1)] for r,v in zip(range(3,9),c)]):
  d,k=zip(*dk);i=len(profiles);stem=O/f'g{i:02d}';item={'index':i,'q':q,'fee':c,'delta':d,'kappa':k}
  for ex,suf in [('root_gates','.txt'),('root_gates_alt','.alt')]:
   cmd=[str(ROOT/'code'/ex),str(q),*map(str,d),*map(str,k),str(stem)+suf];rr=subprocess.run(cmd,capture_output=True,text=True,check=True);print(i,rr.stdout.strip(),flush=True)
  A=Path(str(stem)+'.txt').read_text().splitlines();B=Path(str(stem)+'.alt').read_text().splitlines();assert len(A)==len(set(A)) and sorted(A)==sorted(B);item['configurations']=len(A)
  for p,ex in [(32749,'six_jets'),(32719,'six_jets_p32719')]:
   cmd=[str(ROOT/'code'/ex),str(q),str(stem)+'.txt',str(stem)+f'.p{p}.minors',str(stem)+f'.p{p}.exceptions'];rr=subprocess.run(cmd,check=True,capture_output=True,text=True);print(i,p,rr.stdout.strip(),flush=True);item[f'exceptions_p{p}']=Path(str(stem)+f'.p{p}.exceptions').read_text().splitlines()
  profiles.append(item);(O/'profiles.json').write_text(json.dumps(profiles,indent=2)+'\n')

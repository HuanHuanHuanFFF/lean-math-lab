from pathlib import Path
import json,itertools,subprocess,time
R=Path(__file__).resolve().parents[1];G=R/'certificates/extra_geometry';G.mkdir(exist_ok=True)
work=json.loads((R/'discovery/additional_domains.json').read_text())['domains'];profiles=[]
for x in work:
 parts=[[(v//2,0)] if r%2 else [(d,v-2*d) for d in range(v//2+1)] for r,v in zip(range(3,9),x['fee'])]
 for pr in itertools.product(*parts):
  d,k=map(list,zip(*pr));profiles.append({'q':x['q'],'fee':x['fee'],'delta':d,'kappa':k,'purpose':'extra_low_domain'})
for i,x in enumerate(profiles):
 x['index']=i
 for suff,exe in [('.txt','root_gates'),('.alt','root_gates_alt')]:
  t=time.perf_counter();p=subprocess.run([str(R/'code'/exe),str(x['q']),*map(str,x['delta']),*map(str,x['kappa']),str(G/f'g{i:02}{suff}')],check=True,capture_output=True,text=True)
  x[suff]={'stdout':p.stdout.strip(),'seconds':time.perf_counter()-t}
 a=(G/f'g{i:02}.txt').read_text().splitlines();b=(G/f'g{i:02}.alt').read_text().splitlines();assert len(a)==len(set(a)) and sorted(a)==sorted(b);x['rows']=len(a);x['anchor_outputs_equal']=True
 for p,exe in [(32749,'six_jets'),(32719,'six_jets_32719')]:
  ans=subprocess.run([str(R/'code'/exe),str(x['q']),str(G/f'g{i:02}.txt'),str(G/f'g{i:02}.p{p}.minors'),str(G/f'g{i:02}.p{p}.exceptions')],check=True,capture_output=True,text=True)
  x[str(p)]=ans.stdout.strip()
 print(i,x['q'],x['fee'],x['delta'],x['kappa'],'rows',x['rows'],x['32749'],flush=True)
 (G/'profiles_progress.json').write_text(json.dumps(profiles[:i+1],indent=2)+'\n')
(G/'profiles.json').write_text(json.dumps(profiles,indent=2)+'\n');print('TOTAL',len(profiles),sum(x['rows'] for x in profiles),flush=True)

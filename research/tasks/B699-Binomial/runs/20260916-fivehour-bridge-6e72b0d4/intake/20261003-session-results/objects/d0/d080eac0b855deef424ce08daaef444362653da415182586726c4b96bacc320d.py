from pathlib import Path
import json,itertools,subprocess,time,sys
R=Path(__file__).resolve().parents[1];G=R/'certificates/geometry';G.mkdir(exist_ok=True)
missing=json.loads((R/'certificates/ledger_probe.json').read_text())['missing']
work=missing+[{'q':4,'fee':[0,2,2,1,0,0],'purpose':'Fstar_recovery'}]
profiles=[]
for item in work:
 q=item['q']; c=item['fee'];parts=[[(v//2,0)] if r%2 else [(d,v-2*d) for d in range(v//2+1)] for r,v in zip(range(3,9),c)]
 for pr in itertools.product(*parts):
  d,k=map(list,zip(*pr)); assert sum(d)<=3 and (sum(d)<=2 or max(d)<=1)
  profiles.append({'q':q,'fee':c,'delta':d,'kappa':k,'purpose':item.get('purpose','new_low_preimage')})
start=int(sys.argv[1]) if len(sys.argv)>1 else 0
if start:
 old=json.loads((G/'profiles_progress.json').read_text())
 assert len(old)>=start
 profiles[:start]=old[:start]
for ix,x in enumerate(profiles):
 if ix<start: continue
 x['index']=ix
 for suffix,exe in [('.txt','root_gates'),('.alt','root_gates_alt')]:
  out=G/f'g{ix:02}{suffix}'; cmd=[str(R/'code'/exe),str(x['q']),*map(str,x['delta']),*map(str,x['kappa']),str(out)]
  t=time.perf_counter();r=subprocess.run(cmd,check=True,capture_output=True,text=True)
  x[suffix]={'stdout':r.stdout.strip(),'seconds':time.perf_counter()-t}
 a=(G/f'g{ix:02}.txt').read_text().splitlines();b=(G/f'g{ix:02}.alt').read_text().splitlines()
 assert len(a)==len(set(a)) and sorted(a)==sorted(b)
 x['rows']=len(a);x['anchor_outputs_equal']=True
 print(ix,x['q'],x['fee'],x['delta'],x['kappa'],'rows',len(a),flush=True)
 (G/'profiles_progress.json').write_text(json.dumps(profiles[:ix+1],indent=2)+'\n')
(G/'profiles.json').write_text(json.dumps(profiles,indent=2)+'\n')
print('TOTAL',len(profiles),sum(x['rows'] for x in profiles),flush=True)

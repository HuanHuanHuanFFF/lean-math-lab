from pathlib import Path
import json,itertools,subprocess
root=Path(__file__).resolve().parents[1]
missing=json.loads((root/'certificates/old649_low_preimage_diagnostic.json').read_text())['missing']
profiles=[]
for rec in missing:
 q=rec['q']; c=rec['fee']
 parts=[[(v//2,0)] if r%2 else [(d,v-2*d) for d in range(v//2+1)] for r,v in zip(range(3,9),c)]
 for pr in itertools.product(*parts):
  d,k=zip(*pr); assert sum(d)<=2
  profiles.append({'q':q,'cost':c,'delta':d,'kappa':k})
(root/'certificates/geometry').mkdir(exist_ok=True)
for ix,v in enumerate(profiles):
 out=root/'certificates/geometry'/f'g{ix:02}.txt'
 cmd=[str(root/'code/six_gates'),str(v['q']),*map(str,v['delta']),*map(str,v['kappa']),str(out)]
 ans=subprocess.run(cmd,check=True,capture_output=True,text=True,timeout=20)
 v['index']=ix;v['rows']=len(out.read_text().splitlines());v['stdout']=ans.stdout.strip()
 print(ix,v['q'],v['cost'],v['delta'],v['kappa'],v['rows'],flush=True)
 (root/'certificates/geometry/profiles.json').write_text(json.dumps(profiles,indent=2)+'\n')

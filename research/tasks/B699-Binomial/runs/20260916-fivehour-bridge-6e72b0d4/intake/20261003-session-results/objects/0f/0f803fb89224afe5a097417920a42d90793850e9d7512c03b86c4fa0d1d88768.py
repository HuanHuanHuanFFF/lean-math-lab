from pathlib import Path
import json,subprocess
root=Path(__file__).resolve().parents[1];d=root/'certificates/geometry';profiles=json.loads((d/'profiles.json').read_text());results=[]
for a in profiles:
 i=a['index'];path=d/f'g{i:02}';args=[str(a['q']),*map(str,a['delta']),*map(str,a['kappa'])]
 r=subprocess.run([str(root/'code/six_gates_alt'),*args,str(path)+'.alt'],check=True,capture_output=True,text=True)
 x=Path(str(path)+'.txt').read_text().splitlines();y=Path(str(path)+'.alt').read_text().splitlines()
 assert len(x)==len(set(x)) and sorted(x)==sorted(y)
 rec={'profile':i,'anchor_sets_equal':True,'gates':len(x),'checks':[]}
 for p in [32749,32719]:
  mn=str(path)+('.minors' if p==32749 else '.32719.minors')
  if p==32719:
   er=str(path)+'.32719.exceptions'
   rr=subprocess.run([str(root/'code/six_jets_32719'),str(a['q']),str(path)+'.txt',mn,er],check=True,capture_output=True,text=True)
   assert Path(er).read_text()==Path(str(path)+'.exceptions').read_text()
  rr=subprocess.run([str(root/'code/receive_geometry'),str(a['q']),str(p),str(path)+'.txt',mn,'1' if i==1 else '-'],check=True,capture_output=True,text=True)
  rec['checks'].append({'p':p,'stdout':rr.stdout.strip()})
 results.append(rec);print(i,len(x),'PASS',flush=True)
 (d/'verification.json').write_text(json.dumps(results,indent=2)+'\n')

from pathlib import Path
import sys,json,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();out=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');tmp=Path('D:/Temp/b699-r7-fiftymin-20261005');tmp.mkdir(parents=True,exist_ok=True);p=tmp/'b-input.txt'
with p.open('w',newline='\n') as f:
 f.write('9\n')
 for name,F in (fs|gs).items():
  f.write(name+' '+str(len(F))+'\n')
  for e,c in sorted(F.items()):assert c.denominator==1;f.write(' '.join(map(str,[*e,int(c)]))+'\n')
r={'resource':rs.memory(),'source_provenance':prov,'input_bytes':p.stat().st_size,'input_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'polynomial_order':list((fs|gs))};(out/'input-receipt.json').write_text(json.dumps(r,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:v for k,v in r.items() if k!='source_provenance'}))

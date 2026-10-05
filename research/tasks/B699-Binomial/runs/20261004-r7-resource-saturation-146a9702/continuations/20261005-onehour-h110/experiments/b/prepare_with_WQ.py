from pathlib import Path
import sys,json,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();out=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110/experiments/b');prior=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');wd=json.loads((prior/'one-step-N-colon.json').read_text());qd=json.loads((out/'r2-member.json').read_text());W=rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in wd['W']});Q=rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in qd['Q']});ordered=[('P5',fs['P5']),('Q',Q),('V0',fs['V0']),('V4',fs['V4']),('V3',fs['V3']),('V2',fs['V2']),('V1',fs['V1']),('W',W)]+list(gs.items());p=32003;path=Path('D:/Temp/b699-r7-onehour-h110-20261005/b-with-WQ-32003.txt')
with path.open('w',newline='\n') as f:
 f.write('11\n')
 for name,F in ordered:
  data=[(e,int(c)%p) for e,c in sorted(F.items()) if int(c)%p];f.write(name+' '+str(len(data))+'\n')
  for e,c in data:f.write(' '.join(map(str,[*e,c]))+'\n')
code=(out/'packed_with_W.cpp').read_text().replace('n!=10','n!=11').replace('for(int j=0;j<7;j++)put(all[j]);','for(int j=0;j<8;j++)put(all[j]);');(out/'packed_with_WQ.cpp').write_text(code,encoding='utf-8');print({'input_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'input_bytes':path.stat().st_size,'order':[n for n,F in ordered],'resource':rs.memory()})

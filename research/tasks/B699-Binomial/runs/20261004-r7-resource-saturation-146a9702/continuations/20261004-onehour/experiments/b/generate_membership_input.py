from pathlib import Path
import importlib.util,json,time
ROOT=Path.cwd();RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
spec=importlib.util.spec_from_file_location('reg3_source',RUN/'experiments/b/reg3_source.py');src=importlib.util.module_from_spec(spec);spec.loader.exec_module(src)
fs,gs,prov=src.sources();u,y,r=src.u,src.y,src.r
D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2;h=r*u*(u-1)*y*(y-1)*D*gs['N']*gs['K'];target=h*h
st=src.stats(target);tmp=Path('D:/Temp/b699-r7-onehour-20261004');tmp.mkdir(parents=True,exist_ok=True)
p=tmp/'b-h2-membership.txt'
with p.open('w',newline='\r\n') as f:
 f.write(' '.join(map(str,st['degrees']+[st['total_degree'],len(fs)]))+'\n')
 for F in list(fs.values())+[target]:
  d=src.stats(F);f.write(' '.join(map(str,[d['total_degree']]+d['degrees']+[len(F)]))+'\n')
  for e,c in sorted(F.items()):f.write(' '.join(map(str,[*e,int(c)]))+'\n')
print(json.dumps({'resource':src.memory(),'target':st,'path':str(p),'bytes':p.stat().st_size}))

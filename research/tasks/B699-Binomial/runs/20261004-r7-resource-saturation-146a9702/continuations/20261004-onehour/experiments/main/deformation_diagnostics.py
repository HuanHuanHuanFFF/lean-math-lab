from pathlib import Path
import importlib.util,functools,json
import sympy as s
ROOT=Path.cwd();R=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';C=R/'continuations/20261004-onehour';p=R/'experiments/a/resource_model.py';sp=importlib.util.spec_from_file_location('m',p);m=importlib.util.module_from_spec(sp);sp.loader.exec_module(m);raw,_=m.signatures();ss=[x for x in m.all_states() if x['h']==107 and x['E']==0]
si=sorted(set((max(6,x[0]),)+x[1:] for x in raw));pa=[]
for x in si:
 if not any(all(a<=b for a,b in zip(y,x)) for y in pa):pa.append(x)
@functools.lru_cache(None)
def best(n,c):
 if not n:return 0
 return min((x[0]+best(n-1,tuple(b-a for a,b in zip(x[1:],c))) for x in pa if all(a<=b for a,b in zip(x[1:],c))),default=10**6)
rows=[dict(idx=x['idx'],cap=x['cap'],min_degree=best(7,x['cap'])) for x in ss]
lines=[]
for a in range(9):
 equations=[]
 for r in range(3,9):
  for t in range(r//2+1):
   x=t*(r-t)
   if x==a*(r-a):
    equations.append([1,r,r*r,x])
    if 2*t==r:equations.append([0,1,2*r,t])
 mat=s.Matrix(equations);lines.append(dict(a=a,matrix=equations,rank=mat.rank(),dimension=4-mat.rank()))
o=dict(scope='diagnostics only; q>=6 pricing does not eliminate these states',E0_h107=rows,source_line_dimensions=lines,all_survive=all(x['min_degree']<=107 for x in rows),minrange=[min(x['min_degree'] for x in rows),max(x['min_degree'] for x in rows)])
(C/'experiments/main/deformation-diagnostics.json').write_text(json.dumps(o,indent=2)+'\n');print('qfloor survivors',len(rows),'range',o['minrange'],'line dimensions',[x['dimension'] for x in lines])

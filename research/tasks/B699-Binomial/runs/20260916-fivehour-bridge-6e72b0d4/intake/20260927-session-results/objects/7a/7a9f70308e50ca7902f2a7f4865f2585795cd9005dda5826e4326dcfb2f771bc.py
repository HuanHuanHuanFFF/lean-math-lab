from pathlib import Path
import json,sys,subprocess
P=Path(__file__).resolve().parents[1];sys.path.insert(0,str(P/'code'))
from resource_core import load_sigs
from frozen_capacity import all_states
from research import write_queries,write_sigs,T
st=all_states();ids=[int(l.split()[0]) for l in(P/'inputs/frontier56.tsv').read_text().splitlines()[1:]]
r=load_sigs(P/'inputs/signatures619.txt');c=[(11,*a[1:])if a==T else a for a in r]
f=P/'discovery'
write_queries(f/'queries56.txt',ids,st);write_sigs(f/'conditional_T11.txt',c)
for b,src in [('fees','fees.cpp'),('grid','full_grid_dp.cpp'),('enum','enumerate_costs.cpp')]:
 subprocess.run(['g++','-O3','-std=c++17',str(P/'code'/src),'-o',str(f/'bin'/b)],check=True)
for label,sigs in [('old',P/'inputs/signatures619.txt'),('conditional',f/'conditional_T11.txt')]:
 p=subprocess.run([str(f/'bin/fees'),str(sigs),str(f/'queries56.txt'),str(f/(label+'_fees.txt'))],check=True,capture_output=True,text=True);print(label,p.stdout,flush=True)
selected=[]
for l in (f/'conditional_fees.txt').read_text().splitlines():
 i,h,e,*w=map(int,l.split());
 if e>h:selected.append(i)
write_queries(f/'selected_queries.txt',selected,st)
subprocess.run([str(f/'bin/grid'),str(P/'inputs/signatures619.txt'),str(f/'selected_queries.txt'),str(f/'original_grid_summary.tsv'),str(f/'original_grid.tsv')],check=True)
from itertools import product
M={}
for l in (f/'original_grid.tsv').read_text().splitlines()[1:]:
 i,n,*v=map(int,l.split())
 if n==7:M[i,tuple(v[:6])]=v[6]
known=set((q,tuple(c))for q,c in json.loads((P/'inputs/LOW_T35_registry.json').read_text())['pairs'])|{(10,T[1:])}
records=[]
for i in selected:
 C=st[i]['cap'];h=st[i]['h'];pre=[]
 for cost in product(*(range(T[j+1],C[j]+1,2 if j%2==0 else 1)for j in range(6))):
  rem=tuple(a-b for a,b in zip(C,cost));bound=h-M[i,rem]
  for q in range(4,min(10,bound)+1):pre.append((q,cost))
 new=set(pre)-known
 print(i,h,'preimages',len(pre),'uncovered',len(new),sorted(new),flush=True)
 records.append({'state':i,'h':h,'preimages':pre,'uncovered':sorted(new),'all_covered':not new})
(f/'reuse_diagnostic.json').write_text(json.dumps(records,indent=2)+'\n')

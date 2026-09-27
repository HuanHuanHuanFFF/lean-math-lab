from pathlib import Path
import sys,json,subprocess
from collections import Counter
R=Path('/mnt/data/research_tail10');sys.path.insert(0,str(R/'code'))
from resource_core import load_sigs,multisets,parse_cpp
from frozen_capacity import all_states
st=all_states();raw=load_sigs(R/'inputs/signatures619.txt');assert len(raw)==619
T=(4,0,0,2,1,0,0)
patterns=[(0,0,0,0,4,0),(0,0,0,0,2,2),(0,0,0,0,0,4)]
def update(raw):
 out=[];mapping=[]
 for i,a in enumerate(raw):
  start=len(out)
  if a[0]==10 and a[1:] in patterns:
   out.append((11,*a[1:]))
   for j in range(6):
    b=list(a);b[j+1]+=(2 if j in (0,2,4) else 1);out.append(tuple(b))
   print('REPLACE',i,a)
  else:out.append(a)
  mapping.append([i,list(range(start,len(out)))])
 return out,mapping
new,mp=update(raw);print('NEW_RAW',len(new))
for name,arr in [('new',new),('newT11',[(11,*x[1:])if x==T else x for x in new])]:
 p=R/'discovery'/f'{name}.txt';p.write_text(''.join(' '.join(map(str,x))+'\n'for x in arr))
 ids=[int(l.split()[0])for l in (R/'inputs/frontier50.tsv').read_text().splitlines()[1:]]
 q=R/'discovery/queries50.txt';q.write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids))
 z=subprocess.run([str(R/'bin/fees'),str(p),str(q),str(R/'discovery'/f'{name}_fees.txt')],capture_output=True,text=True,check=True)
 print(name,z.stdout,flush=True)
res={l.split()[0]:list(map(int,l.split())) for l in (R/'discovery/new_fees.txt').read_text().splitlines()}
r2={l.split()[0]:list(map(int,l.split())) for l in (R/'discovery/newT11_fees.txt').read_text().splitlines()}
removed=[]
for i in ids:
 r=(r2 if i in [1699,1701] else res)[str(i)]
 if r[2]>r[1]:removed.append(r[:3])
print('NET',removed)
for i in [1699,1701]:
 a=[(11,*x[1:]) if x==T else x for x in new]
 gs=multisets(a,st[i]['cap'],st[i]['h']);print('NEW_GROUPS',i,len(gs),Counter(sum(x[0] for x in g)for g in gs),flush=True)
 (R/'discovery'/f'{i}_new_groups.json').write_text(json.dumps(gs))
print('DONE')

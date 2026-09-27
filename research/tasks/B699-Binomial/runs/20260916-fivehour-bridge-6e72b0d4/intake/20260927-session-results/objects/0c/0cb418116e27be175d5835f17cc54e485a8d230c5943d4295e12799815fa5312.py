from pathlib import Path
import sys,subprocess,json
R=Path('/mnt/data/research_tail10');sys.path.insert(0,str(R/'code'))
from resource_core import load_sigs,multisets
from frozen_capacity import all_states
st=all_states();raw=load_sigs(R/'discovery/new.txt');target=(11,0,0,0,0,0,4);T=(4,0,0,2,1,0,0);new=[]
for i,x in enumerate(raw):
 if x==target:
  print('REPLACE',i,x);new.append((13,*x[1:]))
  for j in range(6):
   a=list(x);a[j+1]+=2 if j in(0,2,4) else 1;new.append(tuple(a))
 else:new.append(x)
assert len(new)==643
ids=[int(l.split()[0])for l in (R/'inputs/frontier50.tsv').read_text().splitlines()[1:]]
vals={}
for name,a in [('final_global',new),('final_T11',[(11,*x[1:])if x==T else x for x in new])]:
 p=R/'discovery'/f'{name}.txt';p.write_text(''.join(' '.join(map(str,x))+'\n'for x in a))
 z=subprocess.run(list(map(str,[R/'bin/fees',p,R/'discovery/queries50.txt',R/'discovery'/f'{name}_fees.txt'])),capture_output=True,text=True,check=True);print(z.stdout)
 vals[name]={int(l.split()[0]):list(map(int,l.split()))for l in (R/'discovery'/f'{name}_fees.txt').read_text().splitlines()}
removed=[];remaining=[]
for i in ids:
 z=vals['final_T11' if i in (1699,1701)else 'final_global'][i]
 if z[2]>z[1]:removed.append(z[:3])
 else:remaining.append(z[:3])
print('CORRECT_NET',removed,'count',len(removed));print('REMAINING',remaining)
lowest=min(x[1]for x in remaining);print('NEW_LOWEST',lowest)
for i,h,lo in remaining:
 if h!=lowest:continue
 gs=multisets(new,st[i]['cap'],h);print('LOW_GROUPS',i,len(gs),'min',lo,'C',st[i]['cap'],flush=True)
 (R/'discovery'/f'{i}_final_groups.json').write_text(json.dumps(gs))
print('DONE')

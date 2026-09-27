import json,itertools
from pathlib import Path
from collections import Counter
R=Path('/mnt/data/research_tail10');groups=json.loads((R/'discovery/1699_new_groups.json').read_text());cap=[0,0,4,1,0,22]
common=set(map(tuple,groups[0]));types=Counter()
for g in groups:common.intersection_update(map(tuple,g));types.update(set(map(tuple,g)))
print('ALL',len(groups),'saturated',sum([sum(x[j+1]for x in g)for j in range(6)]==cap for g in groups),'COMMON',common)
print('TYPES',types)
for n,g in enumerate(groups):
 print(n, sum(x[0] for x in g), Counter(map(tuple,g)), 'slack',[cap[j]-sum(x[j+1]for x in g)for j in range(6)])
for t,n in types.most_common():
 if n<len(groups):continue
 for e in range(t[0]+1,t[0]+10):
  vals=[sum(x[0]for x in g)+(e-t[0])*sum(tuple(x)==t for x in g)for g in groups]
  print('BUMP',t,e,'min',min(vals),'remaining',sum(x<=117 for x in vals))

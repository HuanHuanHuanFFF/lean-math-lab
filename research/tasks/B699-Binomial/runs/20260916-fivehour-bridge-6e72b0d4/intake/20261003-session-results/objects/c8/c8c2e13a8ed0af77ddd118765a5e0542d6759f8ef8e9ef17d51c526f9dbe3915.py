import json,pathlib
p=pathlib.Path('/mnt/data/r4_work/adopted_r3/B699-ProB-REG3-COMPAT-20261002-R3');d=json.loads((p/'certificates/generic.json').read_text());w=pathlib.Path('/mnt/data/r4_work')
for i in [4,3,2,1,0]:
 fs=[d['B5'],d['low'][str(i)]['stripped']]
 with (w/f'res{i}.in').open('w') as f:
  for ts in fs:
   print(len(ts),file=f)
   for m,c in ts:print(*m[:3],c,file=f)

import math,json,time
from pathlib import Path
out=Path('/mnt/data/b699-r8-next/outputs'); start=time.monotonic()
best=(100000,1,None); records=[]; dyadic=[]
for n in range(8,601):
 mn=None
 for j in range(4,n//2+1):
  k=n-j
  f=[math.comb(k,3),j*math.comb(k,2),math.comb(j,2)*k,math.comb(j,3)]
  H=math.gcd(*f);L=math.comb(n,3)//H
  if mn is None or L<mn[0]: mn=(L,j,H)
  if L< n and len(records)<35:records.append([n,j,L,H])
  if L*best[1]<best[0]*n:best=(L,n,j)
  if L&(L-1)==0:dyadic.append([n,j,L,H])
res={'n_max':600,'L_less_than_n_first35':records,'min_L_over_n':best,'dyadic_L':dyadic,'elapsed':time.monotonic()-start}
(out/'probe_i3.json').write_text(json.dumps(res,indent=2));print(json.dumps(res,indent=2))

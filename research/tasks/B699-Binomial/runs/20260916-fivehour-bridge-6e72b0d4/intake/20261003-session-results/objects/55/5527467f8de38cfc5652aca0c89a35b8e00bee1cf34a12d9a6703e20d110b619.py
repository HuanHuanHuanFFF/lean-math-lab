"""Freeze diagnostic input floors from the OLD catalogue, before current licences."""
from common import *
cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog104.json').read_text())}
z=STATES[1964];C=z['C'];h=z['h'];old=calc(C,RAW)
(ROOT/'work').mkdir(exist_ok=True)
for lic in [0,1,31]:
 ty=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  f=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not f:continue
  q=min(f);u=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
  while q<=u and (q,*c) in cat and not cat[q,*c]&~lic:q+=1
  if q<=u:ty.append((q,*c))
 (ROOT/f'work/types_1964_m{lic}.json').write_text(json.dumps(ty))
print('old104 floors regenerated; licence 1/31 are probes here, not the source of permission')

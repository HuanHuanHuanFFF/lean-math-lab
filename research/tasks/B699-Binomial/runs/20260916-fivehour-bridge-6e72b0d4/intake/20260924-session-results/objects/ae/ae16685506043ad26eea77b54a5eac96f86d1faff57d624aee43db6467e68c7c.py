import json
from pathlib import Path
from functools import lru_cache
p=Path('/mnt/data/research_current/B699-ProA-QUARTIC-COFACTOR-JETS-FRONTIER205-20260924-evidence')
raw=json.loads((p/'inputs/frozen_signatures.json').read_text());C=(0,3,4,3,4,10)
for stop in (16,17,18,19,20,21,23,24):
 items=[]
 for e,c,name,D,K in raw:
  if name in ['S4','S5'] or name.startswith('B22_plane'):continue
  if not all(a<=b for a,b in zip(c,C)):continue
  if name=='near16_24_early' and D[0]==0:
   items.append((stop+1,tuple(c)))
   for idx in(1,3,5):
    cc=c[:];cc[idx]+=1;items.append((e,tuple(cc)))
  else:items.append((e,tuple(c)))
 keep=[]
 for e,c in sorted(set(items)):
  if not any(ee<=e and all(a<=b for a,b in zip(cc,c)) for ee,cc in keep):keep.append((e,c))
 @lru_cache(None)
 def f(n,c):
  if not n:return 0
  return min((e+f(n-1,tuple(b-a for a,b in zip(cc,c))) for e,cc in keep if all(a<=b for a,b in zip(cc,c))),default=10**6)
 print(stop,f(8,C),len(keep),f.cache_info(),flush=True)

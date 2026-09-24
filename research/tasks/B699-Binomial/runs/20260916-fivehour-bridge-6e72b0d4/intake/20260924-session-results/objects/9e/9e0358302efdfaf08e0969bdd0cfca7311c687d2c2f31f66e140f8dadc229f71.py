import sys,json,pathlib
from functools import lru_cache
b=pathlib.Path('/mnt/data/next_round');sys.path.insert(0,str(b/'inputs'));import frozen_model as m
raw=m.raw_signatures(b/'inputs/frozen_signatures.json')
for st in json.loads((b/'inputs/states.json').read_text()):
 cap=tuple(st['cap']);arr=[x for x in raw if all(a<=bb for a,bb in zip(x[1],cap))]
 def get(items):
  @lru_cache(None)
  def f(n,c):
   if n==0:return 0
   return min((x[0]+f(n-1,tuple(a-bb for a,bb in zip(c,x[1])))for x in items if all(a<=bb for a,bb in zip(x[1],c))),default=10**9)
  return f(8,cap)
 low=[x for x in arr if x[0]==4]
 print(st['index'],'low types',set(x[2]for x in low),'no-special',get([x for x in arr if x[2] not in ['S4','S5','B22_plane0_k4','B22_plane0_k6']]),'no-all-e4',get([x for x in arr if x[0]!=4]),flush=True)

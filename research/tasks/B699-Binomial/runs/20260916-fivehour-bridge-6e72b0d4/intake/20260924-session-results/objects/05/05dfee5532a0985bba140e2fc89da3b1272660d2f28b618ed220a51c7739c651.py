import sys,json,pathlib
from functools import lru_cache
b=pathlib.Path('/mnt/data/next_round');sys.path.insert(0,str(b/'inputs'));import frozen_model as m
st=m.all_states()[1626];cap=tuple(st['cap']);R=m.raw_signatures(b/'inputs/frozen_signatures.json');special={'S4','S5','B22_plane0_k4','B22_plane0_k6'}
R=[x for x in R if x[2] not in special and all(a<=bb for a,bb in zip(x[1],cap))]
@lru_cache(None)
def f(n,c):
 if n==0:return 0
 return min((x[0]+f(n-1,tuple(a-bb for a,bb in zip(c,x[1])))for x in R if all(a<=bb for a,bb in zip(x[1],c))),default=10**9)
poss=[]
for x in R:
 need=x[0]+f(7,tuple(a-bb for a,bb in zip(cap,x[1])))
 if need<=111:
  poss.append(x);print(need,x)
print('POSSIBLE',len(poss),f.cache_info())
(b/'discovery/noquartic_possible.json').write_text(json.dumps(poss,indent=2))

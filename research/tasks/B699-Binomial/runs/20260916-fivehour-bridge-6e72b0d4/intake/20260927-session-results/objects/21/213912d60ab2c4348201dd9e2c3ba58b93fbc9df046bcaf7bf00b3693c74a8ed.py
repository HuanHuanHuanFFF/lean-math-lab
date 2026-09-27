from __future__ import annotations
from pathlib import Path
from functools import lru_cache
INF=10**6
def load_sigs(p):
 a=[tuple(map(int,l.split()))for l in p.read_text().splitlines()if l.strip()]
 assert all(len(x)==7 and x[0]>=4 and min(x[1:])>=0 and not any(x[i]%2 for i in (1,3,5))for x in a)
 return a

def multisets(raw,cap,h):
 # Complete sorted multisets, no Pareto deletion. Bellman merely prunes.
 items=sorted({x for x in raw if all(a<=b for a,b in zip(x[1:],cap))})
 @lru_cache(None)
 def lb(n,c):
  if not n:return 0
  ans=INF
  for x in items:
   rem=tuple(a-b for a,b in zip(c,x[1:]))
   if min(rem)>=0:ans=min(ans,x[0]+lb(n-1,rem))
  return ans
 result=[]
 def go(start,n,e,c,seq):
  if n==0:result.append(tuple(seq));return
  if e+lb(n,c)>h:return
  for i in range(start,len(items)):
   x=items[i]
   if e+n*x[0]>h:break
   rem=tuple(a-b for a,b in zip(c,x[1:]))
   if min(rem)>=0:go(i,n-1,e+x[0],rem,seq+[x])
 go(0,8,0,tuple(cap),[])
 assert len(result)==len(set(result));return sorted(result)

def parse_cpp(p):
 ans={}
 for line in p.read_text().splitlines():
  v=list(map(int,line.split()));assert len(v)==58
  sid,deg=v[:2];seq=tuple(tuple(v[2+7*k:9+7*k])for k in range(8))
  assert seq==tuple(sorted(seq)) and sum(x[0]for x in seq)==deg
  ans.setdefault(sid,[]).append(seq)
 for k in ans:assert len(ans[k])==len(set(ans[k]));ans[k].sort()
 return ans


#!/usr/bin/env python3
import json,sys
from functools import lru_cache
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'baseline'))
import ledger_core as L
sys.path.insert(0,str(HERE))
import ledger_cover8 as C
raw,kept=C.signatures()
INF=10**9

def solve(items):
 @lru_cache(None)
 def f(n,cap):
  if n==0:return 0
  ans=INF
  for e,c,*_ in items:
   if all(c[i]<=cap[i] for i in range(6)):
    z=f(n-1,tuple(cap[i]-c[i] for i in range(6)))
    if z<INF:ans=min(ans,e+z)
  return ans
 return f
f=solve(tuple(kept));g=solve(tuple(reversed(raw)))
rows=[]
for q in L.QUERIES:
 a=f(q['remaining'],q['cap']);b=g(q['remaining'],q['cap']);assert a==b
 rows.append(dict(state=q['state'],special_S5=q['winner'],remaining=q['remaining'],capacity=list(q['cap']),minimum_X=a,available_X=q['available'],deficit=a-q['available']))
 assert a>q['available']
res=dict(status='PASS_INDEPENDENT_COVER8_BELLMAN',raw_signature_count=len(raw),pareto_signature_count=len(kept),queries=rows,all_twelve_fail=True)
Path(sys.argv[1]).write_text(json.dumps(res,indent=2)+'\n')
print(json.dumps(res,indent=2))

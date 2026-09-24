from states import states
from ledger_probe import NEW
from fractions import Fraction as F
from pathlib import Path
from functools import lru_cache
import json,time
TYPES=[('B45',4,(0,3,2,0)),('B35',4,(2,1,2,0)),('B34',4,(2,3,0,0)),('B33R',4,(4,1,0,0)),('B33L',4,(4,0,0,1)),('S4',4,(0,3,0,1)),('S3',4,(2,1,0,1)),('S5',4,(0,0,2,1)),('M3',13,(2,0,0,0))]
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39));DIAG=(0,56,0,41,0,52)
def trace0(st):
 pts=[]
 for i in range(6):
  if st['d'][i]:continue
  r=i+3;v=st['v'][i];vals=[s*(r-s) for s in range(r//2+1)]
  mult=[max(a-v,0) for a in OFF[i]]
  if DIAG[i]:mult.append((max(DIAG[i]-v,0)+1)//2)
  assert sum(mult)==st['h']
  pts.append((r,sum(a*b for a,b in zip(vals,mult))))
 if len(pts)<4:return True
 tri=pts[:3]
 for r,S in pts[3:]:
  value=sum(F(y)*__import__('functools').reduce(lambda a,b:a*b,(F(r-x2,x-x2) for x2,y2 in tri if x2!=x),F(1)) for x,y in tri)
  if value!=S:return False
 return True

def one(st,types=TYPES):
 caps=tuple(2*x+p for x,p in zip(st['d'],st['p']));tail=caps[4]//2+caps[5]//2
 @lru_cache(None)
 def rec(i,h,c):
  if i==len(types):
   T=tail+sum(x//2 for x in c);n,w=NEW[T][h]
   return n,tuple((x,1) for x in w)
  name,cost,vec=types[i];limit=min([h//cost]+[c[j]//v for j,v in enumerate(vec) if v])
  best=(-1,())
  for k in range(limit+1):
   n,w=rec(i+1,h-k*cost,tuple(c[j]-k*vec[j] for j in range(4)))
   if n+k>best[0]:best=(n+k,(((name,k),)+w if k else w))
  return best
 out=rec(0,st['h'],caps[:4]);return out,rec.cache_info().currsize
if __name__=='__main__':
 records=[];start=time.monotonic();maxi=0;calls=0
 for no,st in enumerate(states()):
  if st['E']:continue
  (n,w),calls0=one(st);calls+=calls0
  if n>maxi:maxi=n;records=[]
  if n==maxi:records.append(dict(**st,total=n,witness=w,trace0=trace0(st)))
  if no%200==0:print(no,maxi,calls,round(time.monotonic()-start,2),flush=True)
 out={'max':maxi,'records':records,'types':TYPES,'calls':calls,'seconds':time.monotonic()-start}
 Path(__file__).with_name('strong_ledger.json').write_text(json.dumps(out,indent=2))
 print('RESULT',maxi,'states',len(records),'minh',min(x['h'] for x in records),'trace_states',sum(x['trace0'] for x in records),'trace_minh',min(x['h'] for x in records if x['trace0']), 'sec',out['seconds'],flush=True)
 print('witness',next(x for x in records if x['trace0']),flush=True)

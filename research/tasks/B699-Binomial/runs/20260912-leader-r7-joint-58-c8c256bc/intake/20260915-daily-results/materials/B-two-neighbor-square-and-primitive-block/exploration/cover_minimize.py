from math import isqrt
import json
from pathlib import Path

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def order(p):
 a=2%p;t=1
 while a!=1:a=a*2%p;t+=1
 return t
cache=[]
for p in range(3,400):
 if not prime(p):continue
 o=order(p)
 if 2520%o:continue
 bad=[]
 for e in range(o):
  x=pow(2,e,p);D=x+1
  if not any((12*u*(u-D)*(u-2*D)-(D-3*u)*(x*x-2))%p==0 for u in range(p)):bad.append(e)
 cache.append((p,o,set(bad)))
for L in [36,60,84,120,180,252,360,420,504,840,1260,2520]:
 rem={e for e in range(L) if e%6 in (1,5)};used=[]
 while rem:
  cand=[(len({e for e in rem if e%o in bad})/(p+1),p,o,bad) for p,o,bad in cache if L%o==0]
  score,p,o,bad=max(cand)
  if score==0:break
  killed={e for e in rem if e%o in bad};rem-=killed;used.append((p,len(killed)))
 print(L,'remaining',len(rem),'greedy',used)
# store all valid local exclusions for further exact certificate generation
Path(__file__).with_suffix('.json').write_text(json.dumps([[p,o,sorted(b)] for p,o,b in cache],indent=2))

from math import gcd
from itertools import combinations,permutations
from time import perf_counter
import json
from pathlib import Path
PS=(2,3,5,7)
HBOUNDS={(0,1,7):210,(0,2,6):143,(0,3,4):125,(0,3,5):71}
PERS=(8,9,25,49)
# No expensive row factorizations; exact prime powers only.
def vmax(n,p):
 best=1
 for h in range(8):
  x=n-h;z=1
  while x%p==0:x//=p;z*=p
  if z>best:best=z
 return best

def cover(n,H):
 for p,period in zip(PS,PERS):
  vals=[]
  for r in range(8):
   x=(n-r)%period
   if x==0:z=period
   else:
    z=1
    while x%p==0:x//=p;z*=p
   vals.append(z)
  if not any(vals[h]==max(vals) for h in H):return False
 return True

def pows(p,N):
 a=[];v=p
 while v<N:
  if p!=2 or v>=8:a.append(v)
  v*=p
 return a

def qig8(n):
 T=1
 for r in range(4):
  x=n-r
  for p in PS:
   while x%p==0:x//=p;T*=p
 return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def eight(n):
 T=1
 for r in range(8):
  x=n-r
  for p in PS:
   while x%p==0:x//=p;T*=p
 R=6*n**4-89*n**3+462*n*n-1072*n+960
 return T**6*(n-6)**2*R<5*3**8*2**47*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3

start=perf_counter();output={}
for H,E in HBOUNDS.items():
 t=perf_counter();N=2**E;powtab={p:pows(p,N) for p in PS}
 classes={z for z in range(88200) if cover(88200+z,H)}
 stats={'power_pairs':0,'position_cases':0,'range':0,'cover':0,'exact_pair':0,'square_modulus_survivors':0,'eight_survivors':0,'qig_survivors':0}
 cand=set();raw=set()
 for p,q in combinations(PS,2):
  for P in powtab[p]:
   for Q in powtab[q]:
    stats['power_pairs']+=1
    M=P*Q;inv=pow(P,-1,Q)
    for r,s in permutations(H,2):
     stats['position_cases']+=1
     n=r+P*((s-r)*inv%Q)
     if not 32768<=n<N:continue
     stats['range']+=1
     if n%88200 not in classes:continue
     stats['cover']+=1
     if (n-r)%(P*p)==0 or (n-s)%(Q*q)==0:continue
     # If the power is at most 7, another position may have higher valuation.
     if P<=7 and vmax(n,p)!=P:continue
     if Q<=7 and vmax(n,q)!=Q:continue
     stats['exact_pair']+=1
     if n in raw:continue
     raw.add(n)
     M4=1
     for pp in PS:M4*=vmax(n,pp)
     if M4<=n*n:continue
     stats['square_modulus_survivors']+=1
     if eight(n):continue
     stats['eight_survivors']+=1
     if qig8(n):continue
     stats['qig_survivors']+=1
     cand.add(n)
 print(H,E,'time',perf_counter()-t,'stats',stats,'candidates',len(cand),'max',max(cand,default=0),'sample',sorted(cand)[:15],flush=True)
 output[''.join(map(str,H))]={'H':H,'E':E,'stats':stats,'candidates':sorted(cand),'seconds':perf_counter()-t}
 Path('/mnt/data/B699-ProD-next-work/exploration/pair_probe.json').write_text(json.dumps(output,indent=2))
print('TOTAL',perf_counter()-start,flush=True)

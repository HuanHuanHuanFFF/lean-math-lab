from itertools import combinations,permutations
from time import perf_counter
from pathlib import Path
import json
D=Path('/mnt/data/B699-ProD-next-work');H=(0,4,5);PS=(2,3,5)
def cover(n):
 for p,L in [(2,8),(3,9),(5,25)]:
  vals=[]
  for r in range(6):
   z=(n-r)%L
   if z==0:v=L
   else:
    v=1
    while z%p==0:z//=p;v*=p
   vals.append(v)
  if max(vals)>max(vals[h] for h in H):return False
 return True
cls={x for x in range(1800) if cover(x+1800)}
print('classes',len(cls),flush=True)
def vmax(n,p):
 m=1
 for h in range(6):
  x=n-h;t=1
  while x%p==0:x//=p;t*=p
  m=max(m,t)
 return m
out={}
for m,N,T in [(6,46657,256),(7,5489031745,2**18)]:
 st=perf_counter();ps={}
 for p in PS:
  z=p;seq=[]
  while z<N:
   if p!=2 or z>=4:seq.append(z)
   z*=p
  ps[p]=seq
 stats={'power_pairs':0,'position_cases':0,'range':0,'cover':0,'exact_pair':0};can=set()
 for p,q in combinations(PS,2):
  for P in ps[p]:
   for Q in ps[q]:
    stats['power_pairs']+=1
    inv=pow(P,-1,Q)
    for r,s in permutations(H,2):
     stats['position_cases']+=1
     n=r+P*((s-r)*inv%Q)
     if not T<=n<N:continue
     stats['range']+=1
     if n%1800 not in cls:continue
     stats['cover']+=1
     if vmax(n,p)!=P or vmax(n,q)!=Q:continue
     stats['exact_pair']+=1
     M=vmax(n,2)*vmax(n,3)*vmax(n,5)
     if M*M>n**3:can.add(n)
 print('m',m,'N',N,'stats',stats,'candidates',len(can),'max',max(can,default=0),'sample',sorted(can)[:25],'time',perf_counter()-st,flush=True)
 out[m]={'N':N,'T':T,'stats':stats,'candidates':sorted(can)}
(D/'exploration/six_pair_probe.json').write_text(json.dumps(out,indent=2))

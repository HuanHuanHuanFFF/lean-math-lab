from math import gcd,lcm
from pathlib import Path
import json
D=json.loads(Path('/mnt/data/b699-r7-mixed/new/outputs/probe_small_cells.json').read_text())
def order2(m):
 z=2%m;k=1
 while z!=1:z=z*2%m;k+=1
 return k
out=[]
for r in D['families']:
 C,e,h,g,c=(r[k] for k in ['C','ell','h','g','c'])
 if gcd(C,e)>1: continue
 t=order2(C*C); L=lcm(360,t)
 sr=[]
 for a in r['survivors']:
  for s in range(a,L,360):
   n=c*g*pow(2,s,C*C)%(C*C)
   if n%C==2%C and (h*(n-1)*(n-2)-2*e*C)%(C*C)==0:
    sr.append(s)
 out.append(dict(r,period=L,final_survivors=sorted(sr)))
for C in [5,7,9,11,13]:
 arr=[r for r in out if r['C']==C]; ar=[r for r in arr if r['final_survivors']]
 print(C,len(arr),len(ar),[(r['w'],r['h'],r['g'],r['c'],r['period'],r['final_survivors'][:20]) for r in ar])
Path('/mnt/data/b699-r7-mixed/new/outputs/probe_local_square.json').write_text(json.dumps(out,indent=2))

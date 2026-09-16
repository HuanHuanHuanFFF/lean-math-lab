from itertools import product
from math import prod
from sympy.ntheory.modular import crt
from sympy import isprime,perfect_power,factorint
import json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
mods=[8,9,25,49];period=88200
classes=sorted({int(crt(mods,ps)[0]) for ps in product(range(3),repeat=4) if len(set(ps))==3})
def sp(x):
 s=1
 for p in [2,3,5,7]:
  while x%p==0:x//=p;s*=p
 return s

def flags(n,S):
 return [prod(S[:4])**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3,
 prod(S[:6])**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2,
 prod(S[:8])**6*(n-6)**2*(6*n**4-89*n**3+462*n*n-1072*n+960)<5*3**8*2**47*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3]
count=0;left=0;found=[];at=time.time()
for res in classes:
 for n in range(res,10**8+1,period):
  if n<18:continue
  count+=1;S=[sp(n-r) for r in range(9)]
  if any((n-r)==S[r] for r in range(9)):continue
  if any(flags(n,S)):continue
  left+=1
  for r in range(3,8):
   q=(n-r)//S[r]
   if isprime(q):found.append({'n':n,'r':r,'c':S[r],'P':q,'e':1,'small':S,'class':res});break
   pw=perfect_power(q)
   if pw and isprime(pw[0]):found.append({'n':n,'r':r,'c':S[r],'P':int(pw[0]),'e':int(pw[1]),'small':S,'class':res});break
 if found:break
out={'checked':count,'uncovered_scalar':left,'found':found[:5],'elapsed':time.time()-at,'domain_cap':10**8,'early_stop':bool(found)}
print(json.dumps(out,indent=2));open(ROOT/'outputs/strict-example-search.json','w').write(json.dumps(out,indent=2)+'\n')

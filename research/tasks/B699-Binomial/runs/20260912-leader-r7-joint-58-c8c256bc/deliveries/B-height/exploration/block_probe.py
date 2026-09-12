from math import gcd,lcm,isqrt
from pathlib import Path
import json,time

def order2(m):
 a=2%m;k=1
 while a!=1:a=a*2%m;k+=1
 return k

def sieve(n):
 a=bytearray(b'\1')*(n+1);a[0:2]=b'\0\0'
 for p in range(2,isqrt(n)+1):
  if a[p]:a[p*p::p]=b'\0'*((n-p*p)//p+1)
 return [i for i in range(3,n+1,2) if a[i]]
PS=sieve(4000); ORD={p:order2(p) for p in PS}; QR={p:{x*x%p for x in range(p)} for p in PS}
def ell_n(n):return 3 if n%9 in [4,5,7,8] else 1

def models(C,side):
 for ell in [1,3]:
  if C%3==0 and ell==3:continue
  w=ell*C
  for h in range(1,w if side=='outer' else (w+1)//2):
   if gcd(h,C)>1:continue
   if side=='outer':
    good64=any((w*y*y-8*h-w)%64==0 for y in range(1,64,2))
    odds={a for a in range(1,h+1,2) if h%a==0}
   else:
    good64=any((w*y*y+h)%64==0 for y in range(64))
    odds={a for a in range(1,isqrt(h)+1,2) if h%(a*a)==0}
   if not good64:continue
   if ell==1:odds|={3*a for a in odds.copy() if a%3}
   for m in sorted(odds):yield ell,h,m

def probe(C,side,T):
 mods=[p for p in PS if T%ORD[p]==0]
 roots={(w,p):{w*q%p for q in QR[p]} for w in [C,3*C] for p in mods}
 elim=[];left=[];count=0
 pwC=[pow(2,v,C*C) for v in range(T)];pw9=[pow(2,v,9) for v in range(T)]
 pws={p:[pow(2,v,p) for v in range(T)] for p in mods}
 for ell,h,m in models(C,side):
  w=ell*C
  for r in range(T):
   n9=m*pw9[r]%9;nC=m*pwC[r]%(C*C)
   if ell_n(n9)!=ell or (nC-2)%C:continue
   if (h*(nC-1)*(nC-2)-2*w)%(C*C):continue
   count+=1
   for p in mods:
    n=m*pws[p][r]%p
    rhs=(4*h*(n-1)*(n-2)+w)%p if side=='outer' else ((w-2*h)*n*n+6*h*n-4*h)%p
    if rhs not in roots[w,p]:elim.append((ell,h,m,r,p));break
   else:left.append((ell,h,m,r))
 return dict(C=C,side=side,T=T,models=list(models(C,side)),states=count,left=left,eliminations=elim,mods_used=sorted(set(x[-1] for x in elim)))

if __name__=='__main__':
 results=[]
 for C in [7,11,13,17,19,23,25,27,81]:
  T=lcm(6,order2(C*C))
  if T>3000:continue
  for side in ['outer','middle']:
   t=time.time();r=probe(C,side,T);results.append(r)
   print(C,side,T,'models',len(r['models']),'states',r['states'],'remaining',len(r['left']),'triples',sorted(set(tuple(x[:3]) for x in r['left'])),'sec',round(time.time()-t,2),flush=True)
 out=Path(__file__).with_suffix('.json');out.write_text(json.dumps(results,indent=2))

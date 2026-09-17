from pathlib import Path
from math import gcd, isqrt, comb
from collections import Counter
import json,time
BASE=Path(__file__).resolve().parents[1]
CAP=337_500_000; LOW=8192

def val(n,p):
 a=0
 while n and n%p==0:n//=p;a+=1
 return a

def small(n):
 d=1
 for p in [2,3]:
  while n%p==0:n//=p;d*=p
 if n%5==0 and n%25!=0:d*=5
 return d

def qig(n):
 T=1
 for r in range(4):T*=small(n-r)
 return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def h02(n):return n%72 in (18,56)
def factor(n):
 out=[];p=2
 while p*p<=n:
  if n%p==0:
   e=0
   while n%p==0:n//=p;e+=1
   out.append((p,e))
  p=3 if p==2 else p+2
 if n>1:out.append((n,1))
 return out

def valuation_bin(n,j,p):
 z=0
 while n:
  n//=p;j//=p; # can't independently compute k here
 return z

def vpchoose(n,j,p):
 k=n-j; z=0
 while n or j or k:
  n//=p;j//=p;k//=p;z+=n-j-k
 return z

def crt(a,M,b,Q):return a+M*((b-a)*pow(M,-1,Q)%Q),M*Q

def hasint(a,M,L,U):return a+max(0,(L-a+M-1)//M)*M<=U

def checkrow(n):
 blocks=[];fac=[]
 for r in range(5):
  fs=factor(n-r);fac.append(fs)
  for p,e in fs:
   if p>5 or (p==5 and e>=2):
    blocks.append((p**e,r,p,e))
 blocks.sort(reverse=True)
 curr=[(0,1)];ops=0; widths=[]
 for Q,r,p,e in blocks:
  nxt=[]
  for a,M in curr:
   for b in (range(1,4) if r==4 else range(r+1)):
    ops+=1
    c,N=crt(a,M,b,Q)
    if hasint(c,N,6,n//2):nxt.append((c,N))
  curr=nxt;widths.append(len(curr))
  if not curr:break
 # Expand true remaining interval only if small; this must not truncate.
 remain=[]; count=sum(max(0,(n//2-a)//M-max(0,(6-a+M-1)//M)+1) for a,M in curr)
 if count>100000:
  return {'n':n,'large_remaining_count':count,'classes':curr,'factors':fac,'widths':widths}
 for a,M in curr:
  j=a+max(0,(6-a+M-1)//M)*M
  while j<=n//2:
   witnesses=[p for Q,r,p,e in blocks if vpchoose(n,j,p)>0]
   remain.append([j,witnesses[0] if witnesses else None]);j+=M
 return {'n':n,'factors':fac,'widths':widths,'crt_ops':ops,'remaining':remain}

def main():
 t=time.monotonic();candidates=set(n for n in range(12,LOW) if h02(n));templates=[]
 for a in range(3,29):
  P=2**a
  for b in range(2,18):
   Q=3**b
   for r2,r3 in [(0,2),(2,0)]:
    n=r2+P*((r3-r2)*pow(P,-1,Q)%Q)
    if LOW<=n<CAP and h02(n) and 2**val(n-r2,2)==P and 3**val(n-r3,3)==Q:
     candidates.add(n);templates.append((a,b,r2,r3,n))
 accepted=sorted(n for n in candidates if qig(n));need=sorted(candidates-set(accepted))
 print('candidates',len(candidates),'qig',len(accepted),'need',len(need),'max',max(need,default=0),flush=True)
 results=[]
 for n in need:
  r=checkrow(n);results.append(r)
  print(n,'widths',r['widths'],'remaining',r.get('remaining',r.get('large_remaining_count')),flush=True)
 out={'CAP':CAP,'LOW':LOW,'templates':templates,'candidates':sorted(candidates),'qig':accepted,'rows':results,'seconds':time.monotonic()-t}
 (BASE/'outputs/finite-probe.json').write_text(json.dumps(out,indent=2))
 print('done',len(need),'seconds',time.monotonic()-t)
if __name__=='__main__':main()

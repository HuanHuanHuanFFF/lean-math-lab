from math import gcd,isqrt,comb
import json
from pathlib import Path

def small(n):return (3 if n%9 in (4,7) else 1,3 if n%9 in (5,8) else 1)
def divs(n):
 return sorted({x for d in range(1,isqrt(n)+1) if n%d==0 for x in (d,n//d)})
def src_shape(n,j):
 g=gcd(n,j); a=n//g
 while a%2==0:a//=2
 return a==1 or (a==3 and n%9 in (3,6))
records=[];counts={};raw=0
for side in ('a','b'):
 for f in (5,7):
  hit=set(); candidates=set()
  for la,mu in ((1,1),(3,1),(1,3)):
   A=la*f
   for q in range(1,(A+1)//2):
    num=(q*(A-q)*(A+q) if side=='a' else q*(A-q)*(2*A-q))//2
    for K in divs(num):
     raw+=1;n=2*mu*K+2
     if n<8 or n%8 or small(n)!=(la,mu) or (n-1)%(la*f):continue
     other=(n-1)//(la*f)
     j=(other*q+1 if side=='a' else other*q)
     if not 4<=j<n//2:continue
     N=(n-1)//la
     aa=gcd(N,j);bb=gcd(N,j-1)
     if (aa if side=='a' else bb)!=f or aa*bb!=N:continue
     if j*(j-1)*(j-2)%K:continue
     candidates.add((n,j))
     if src_shape(n,j):hit.add((n,j))
  counts[f'{side}{f}']={'W_candidates':len(candidates),'source_survivors':len(hit),'max_n':max((n for n,j in candidates),default=0)}
  records.extend({'side':side,'f':f,'n':n,'j':j,'shape':src_shape(n,j)} for n,j in sorted(candidates))
print('raw divisor visits',raw,'summary',counts)
print('survivors',[x for x in records if x['shape']])
p=Path(__file__).resolve().parents[1]/'verification'/'first_allocation_probe.json'
p.write_text(json.dumps({'raw_visits':raw,'summary':counts,'records':records},indent=2))

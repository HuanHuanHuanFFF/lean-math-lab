"""Bounded diagnostic only: search smooth content quotients, not B699 proof."""
from math import comb,gcd
from pathlib import Path
import json,time
primes=[2,3,5,7,11,13,17,19,23,29,31]
start=time.monotonic();cases=0;found=[];counts={}
for i in range(3,21):
 count=0
 for n in range(2*i+2,401):
  C=comb(n,i)
  for j in range(i+1,n//2+1):
   k=n-j;H=0
   for r in range(i+1):
    H=gcd(H,comb(j,r)*comb(k,i-r))
    if H==1:break
   L=C//H;x=L
   for p in primes:
    if p>=i:break
    while x%p==0:x//=p
   cases+=1
   if x==1:
    found.append({'n':n,'i':i,'j':j,'H':H,'L':L,'gcd':gcd(C,comb(n,j))});count+=1
 counts[i]=count
 print(i,count, 'time', round(time.monotonic()-start,2),flush=True)
result={'scope':{'n_max':400,'i_min':3,'i_max':20},'cases':cases,'smooth_quotients':found,'counts':counts,'seconds':time.monotonic()-start}
path=Path(__file__).resolve().parents[1]/'evidence/content_probe.json';path.write_text(json.dumps(result,indent=2));print('found',found[:12])

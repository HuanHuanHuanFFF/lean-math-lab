from math import gcd,isqrt,comb
import json,argparse
from pathlib import Path

def factors(n):
 d={};p=2
 while p*p<=n:
  while n%p==0:d[p]=d.get(p,0)+1;n//=p
  p=3 if p==2 else p+2
 if n>1:d[n]=d.get(n,0)+1
 return d

def divisors(d):
 a=[1]
 for p,e in sorted(d.items()):
  a=[x*p**i for x in a for i in range(e+1)]
 return a
parser=argparse.ArgumentParser();parser.add_argument("--out",required=True);args=parser.parse_args()
tested=0;hits=[]
for t in range(2,2001):
 fac={}
 for a,w in [(t-1,1),(t,2),(t+1,1)]:
  for p,e in factors(a).items():fac[p]=fac.get(p,0)+w*e
 total=t*t*(t*t-1)
 for a in divisors(fac):
  if a*a>total:continue
  b=total//a;n=a+b+2*t*t;j=a+t*t
  if n%4 or 2*j>n or j<4:continue
  tested+=1
  if 6*j*(j-1)*(j-2)%(n-2):continue
  k=n-j;H=gcd(gcd(comb(k,3),j*comb(k,2)),gcd(k*comb(j,2),comb(j,3)))
  L=comb(n,3)//H;g=gcd(n,j)
  hits.append(dict(t=t,a=a,b=b,n=n,j=j,g=g,alpha=n//g,L=L))
res=dict(scope='finite diagnostic only, t=2..2000; not a complete bound',tested=tested,hits=hits)
open(args.out,'w').write(json.dumps(res,indent=2)+'\n')
print({**{k:v for k,v in res.items() if k!='hits'},'hit_count':len(hits),'first':hits[:4]})

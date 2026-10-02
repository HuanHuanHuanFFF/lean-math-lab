"""Finite diagnostic only; all bounds are from this round's propositions."""
import math,json,time
from pathlib import Path
BASE=Path(__file__).resolve().parents[1]
ROWS=[(252,1,3,1,3,2),(704,1,1,3,2,0),(850,3,1,5,5,1),(954,1,3,1,3,1),(1100,1,1,15,5,2),(1552,3,1,1,2,0)]
HMAX=1024

def factor(x):
 d={};p=2
 while p*p<=x:
  if x%p==0:
   e=0
   while x%p==0:x//=p;e+=1
   d[p]=e
  p=3 if p==2 else p+2
 if x>1:d[x]=1
 return d

def divisors(n):
 a=[1]
 for p,e in factor(n).items():
  a=[x*p**k for x in a for k in range(e+1)]
 return sorted(a)

def rough(n):
 for p in [2,3,5]:
  while n%p==0:n//=p
 return n

def valuation(n,p):
 e=0
 while n%p==0:n//=p;e+=1
 return e

def choose_v(n,j,p):
 total=0;q=p
 while q<=n:
  total+=n//q-j//q-(n-j)//q;q*=p
 return total

def inspect(n,j):
 fails=[]
 for r in range(6):
  for p,e in factor(rough(n-r)).items():
   Q=p**e
   if j%Q>r:
    fails.append([r,p,e,j%Q,choose_v(n,6,p),choose_v(n,j,p)])
 return fails

t0=time.monotonic();cand=[];counts=[]
for a,s,t3,t5,p,u_max in ROWS:
 m=s*t3;kap=s*t3*t5
 top_all=(31+kap*HMAX*HMAX)//4
 alphas=set()
 if p==2:
  A=2
  while A<=top_all:alphas.add(A);A*=2
 else:
  A=1
  while A<=top_all:
   for u in range(u_max+1):
    if 2<=2**u*A<=top_all:alphas.add(2**u*A)
   A*=p
 alphas=sorted(alphas)
 cnt={'residue':a,'h_alpha_integer_T':0,'bounded_g':0,'row_match':0,'integer_epsilon':0}
 for h in range(1,HMAX+1):
  top=(31+kap*h*h)//4
  for al in alphas:
   if al>top:break
   T=s*al-h
   if T<=0 or T%4:continue
   T//=4;cnt['h_alpha_integer_T']+=1
   for g in divisors(T):
    if 4*g>m*h or g*al>top:continue
    cnt['bounded_g']+=1
    n=g*al
    if n%1800!=a:continue
    cnt['row_match']+=1
    tau=T//g
    e2=4*tau+h*al
    if e2%s:continue
    e2//=s;eps=math.isqrt(e2)
    if eps*eps!=e2 or eps>=al or (al-eps)%2:continue
    cnt['integer_epsilon']+=1
    beta=(al-eps)//2;j=g*beta
    if j<7 or math.gcd(n,j)!=g:continue
    assert (n-1)%s==0 and beta*(al-beta)==tau*((n-1)//s)
    cand.append({'n':n,'j':j,'g':g,'alpha':al,'epsilon':eps,'h':h,'tau':tau,'residue':a,'failures':inspect(n,j)})
 counts.append(cnt)
 print(cnt,flush=True)
cand.sort(key=lambda x:(x['n'],x['j']))
obj={'h_max':HMAX,'candidates':cand,'counts':counts,'unfailed':sum(not x['failures'] for x in cand)}
(BASE/'logs'/'h_probe.json').write_text(json.dumps(obj,indent=2)+'\n')
print('time',time.monotonic()-t0,'recovered',len(cand),'no failure',obj['unfailed']);print(cand[:30])

import json, math, time
from pathlib import Path
MAXN=600000
spf=list(range(MAXN+1))
for p in range(2,math.isqrt(MAXN)+1):
 if spf[p]==p:
  for k in range(p*p,MAXN+1,p):
   if spf[k]==k:spf[k]=p

def vp(x,p):
 e=0
 while x and x%p==0:x//=p;e+=1
 return e

def fac(x):
 out=[]
 while x>1:
  p=spf[x];u=1
  while x%p==0:x//=p;u*=p
  out.append(u)
 return out

def valbin(n,j,p):
 out=0;P=p
 while P<=n:out+=n//P-j//P-(n-j)//P;P*=p
 return out
counts=dict(first=0,near=0,contact=0,test_hit=0)
found=[];nears=[];T=time.time()
for n in range(16,MAXN+1):
 N=n-1
 qs=fac(N)
 if len(qs)==1:continue
 js=[0]
 for u in qs:
  d=(N//u)*pow(N//u,-1,u)
  js += [(j+d)%N for j in js[:]]
 q=n-5;S=1
 for p in (2,3,5):
  while q%p==0:q//=p;S*=p
 if q==1:continue
 for j in js:
  if j<7 or 2*j>n:continue
  counts['first']+=1
  U=j*(n-j)//N
  if (U-1)%q:continue
  R=(U-1)//q;Z=S-5*R
  counts['near']+=1
  d=math.gcd(q,abs(Z))
  if d==1 or Z==0:continue
  counts['contact']+=1
  for pe in fac(d):
   p=spf[pe]; e=vp(q,p);f=vp(Z,p);P=p**e
   sigma=j if (j-1)%P==0 else n-j
   assert (sigma-1)%P==0
   b=(sigma-1)//P;M=(n-5)//P
   rr=[];bb=b;mm=M
   for r in range(f):
    if bb%p>mm%p:rr.append(r)
    bb//=p;mm//=p
   hit=bool(rr);counts['test_hit']+=hit
   item=dict(n=n,j=j,p=p,e=e,f=f,U=U,S=S,q=q,R=R,Z=Z,M=M,b=b,hit_levels=rr,binom_v=valbin(n,j,p))
   found.append(item)
print(counts,len(found),'elapsed',time.time()-T,flush=True)
Path(__file__).resolve().parents[1].joinpath('logs/fifth_source_probe.json').write_text(json.dumps({'scope':{'n':[16,MAXN]},'counts':counts,'found':found},indent=2))
print(found[:10])

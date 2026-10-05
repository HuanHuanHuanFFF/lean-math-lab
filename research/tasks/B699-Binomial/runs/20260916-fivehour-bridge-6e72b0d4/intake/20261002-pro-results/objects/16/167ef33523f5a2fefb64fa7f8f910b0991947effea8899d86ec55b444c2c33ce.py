from math import gcd
from collections import Counter
import json,time,sys
ROWS=[(252,1,3,2),(704,1,2,0),(850,3,5,1),(954,1,3,1),(1100,1,5,2),(1552,3,2,0)]
def rough(x):
 for p in (2,3,5):
  while x%p==0:x//=p
 return x

def alphas(p,u,N):
 if p==2:
  x=2
  while x<=N:yield x;x*=2
 else:
  x=1
  while x<=N:
   for v in range(u+1):
    if (z:=x*2**v)<=N and z>=2:yield z
   x*=p

def run(L):
 st=time.time();count=Counter(); vals=[];rows=[]
 for a,s,p,u in ROWS:
  asc=sorted(alphas(p,u,s*L*L-4));rc=Counter();eg=[]
  for delta in range(1,L+1):
   top=s*delta*delta-4
   for alpha in asc:
    if alpha>top:break
    if alpha<=delta or (alpha-delta)%2:continue
    beta=(alpha-delta)//2
    if gcd(alpha,beta)>1:continue
    rc['alpha_delta']+=1
    maxh=top//alpha
    for h in range(s*alpha%4 or 4,maxh+1,4):
     rc['h']+=1
     den=s*delta*delta-h*alpha
     num=s*alpha-h
     if num<=0 or num%den:continue
     g=num//den;n=g*alpha;j=g*beta
     rc['integer_g']+=1
     if n%1800!=a or j<7:continue
     assert gcd(n,j)==g
     qs=[rough(n-r) for r in range(6)]
     assert qs[0] and j%qs[0]==0
     assert (j*(n-j))%qs[1]==0
     for r in range(2,6):
      rem=qs[r]
      for b in range(r+1):rem//=gcd(rem,j-b)
      if rem!=1:break
     else:r=6
     rc[f'fail{r}']+=1
     data=dict(a=a,delta=delta,alpha=alpha,h=h,t=den//4,g=g,n=n,j=j,d=g*delta,fail=r)
     vals.append(data)
     if len(eg)<3 or r>eg[-1]['fail']:eg.append(data)
  rows.append(dict(a=a,counts=dict(rc),examples=eg[:10]));count.update(rc)
 out=dict(limit=L,counts=dict(count),rows=rows,total=len(vals),maxn=max((v['n'] for v in vals),default=0),maxd=max((v['d'] for v in vals),default=0),examples=sorted(vals,key=lambda v:(v['fail'],v['d']),reverse=True)[:12],seconds=time.time()-st)
 print(json.dumps(out,ensure_ascii=False,indent=2))
 return out
if __name__=='__main__': run(int(sys.argv[1]))

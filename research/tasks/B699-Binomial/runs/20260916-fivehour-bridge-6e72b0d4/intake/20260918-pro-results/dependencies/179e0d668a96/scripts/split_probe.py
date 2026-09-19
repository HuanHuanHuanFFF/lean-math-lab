import math,json,time
from pathlib import Path
NMAX=10000
out=[];pairs=0;pos=0;t0=time.time()
for n in range(8,NMAX+1,4):
 for j in range(4,n//2+1):
  pairs+=1;k=n-j;A=(n-1)*(n-2);B=(n-2*j)**2-3*n+2
  if B<=0:continue
  pos+=1;S=A*B;r=math.isqrt(S)
  if r*r==S:
   la=3 if n%9 in [4,7] else 1;mu=3 if n%9 in [5,8] else 1
   g=math.gcd(n,j);NR=(n-1)//la;K=(n-2)//(2*mu)
   out.append(dict(n=n,j=j,sqrt=r,g=g,alpha=n//g,first=j*(j-1)%NR==0,second=j*(j-1)*(j-2)%K==0))
print('pairs',pairs,'positive',pos,'hits',len(out),'seconds',time.time()-t0)
print(out[:30])
Path(__file__).resolve().parents[1].joinpath('outputs/split_probe.json').write_text(json.dumps(dict(limit=NMAX,pairs=pairs,positive=pos,hits=out),indent=2))

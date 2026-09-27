import json, math, time
from pathlib import Path
def factorint(n):
 out={}; p=2
 while p*p<=n:
  while n%p==0:out[p]=out.get(p,0)+1;n//=p
  p+=1 if p==2 else 2
 if n>1:out[n]=out.get(n,0)+1
 return out
START=time.time(); cnt={'R':0,'splits':0,'b':0,'q_integral':0,'square_z':0,'positive_delta2':0,'square_delta':0}; out=[]; powers={i:3**i for i in range(1,41)}
for E in range(2,9):
 S=5**E; L=S//5
 for R in range(1,(S-1)//4+1,2):
  if R%5==0:continue
  d=L-R
  if not d:continue
  v=0
  while d%3==0:d//=3;v+=1
  if v%2:continue
  t=v//2; A=3**v; K=abs(d)//2
  if K==0:continue
  sign=1 if d>0 else -1
  # K=c|W|, both units mod30, therefore K unit mod30.
  if math.gcd(K,30)>1:continue
  cnt['R']+=1
  divs=[1]
  for p,e in factorint(K).items():divs += [x*int(p)**int(e) for x in divs[:]]
  for c in divs:
   W=sign*(K//c)
   if math.gcd(abs(W),R)>1:continue
   cnt['splits']+=1
   for b,B in powers.items():
    cnt['b']+=1
    if (c*B)%4!=1:continue
    q,rem=divmod(2*A*c*B-1,L)
    if rem or q<=1 or q%5==0:continue
    cnt['q_integral']+=1
    z2,rem=divmod(W+B*R,100*S*c)
    if rem or z2<=0:continue
    z=math.isqrt(z2)
    if z*z!=z2 or z%3==0 or math.gcd(z,abs(W))>1:continue
    cnt['square_z']+=1
    n=S*q+5; alpha=3**t*B; g=10*3**t*c
    delta2=alpha**2-40*(n-1)*z2
    if delta2<=0:continue
    cnt['positive_delta2']+=1
    delta=math.isqrt(delta2)
    ok=delta*delta==delta2
    cnt['square_delta']+=ok
    item=dict(E=E,R=R,t=t,c=c,W=W,b=b,q=q,z=z,n=n,g=g,alpha=alpha,delta2=delta2,square_delta=ok)
    out.append(item)
 print(E,cnt,'models',len(out), 'seconds',round(time.time()-START,1),flush=True)
Path(__file__).resolve().parents[1].joinpath('logs/menu_probe.json').write_text(json.dumps({'scope':{'E':[2,8],'b':[1,40]},'counts':cnt,'models':out},indent=2))

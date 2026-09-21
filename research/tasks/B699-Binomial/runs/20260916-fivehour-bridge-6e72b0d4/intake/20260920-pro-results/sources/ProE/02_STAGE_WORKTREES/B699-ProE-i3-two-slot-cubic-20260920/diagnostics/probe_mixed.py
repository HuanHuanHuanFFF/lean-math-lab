"""Falsification search in proved finite slices, not an unrestricted proof."""
import sympy as sp
from math import isqrt,gcd
import json,time

def iso(v):return 3 if v%3==0 and v%9 else 1

def records(m):
 for c,max_t in [(0,2*m*m),(1,m*m),(2,4*m*m)]:
  for t in range(1,max_t):
   if c==0:D=t*(4*t-m*m)*(t-m*m)
   elif c==1:D=t*(4*t+m*m)
   else:D=(t-4*m*m)*(4*t-15*m*m)*(t-3*m*m)
   if not D:continue
   for d in sp.divisors(abs(D)):
    for z in (1,3):
     R=int(d*z)
     if iso(R)!=z or (R+2)%m:continue
     P=(R+2)//m
     if P<3 or P%2==0:continue
     X=m*P-1;N=2*X*X-1;K=(X*X-1)//iso(X*X-1)
     if c==0:lin=2*m*R;const=-t*N
     elif c==1:lin=-2*m*R;const=t*N
     else:lin=-6*m*R;const=t*N-16*m**3*P+28*m*m
     dh=(lin//2)**2-const
     if dh<0:continue
     sq=isqrt(dh)
     if sq*sq!=dh:continue
     for b in set([-lin//2+sq,-lin//2-sq]):
      j=b*P+c
      if not 4<=j<=X*X or j*(j-1)%N:continue
      if j*(j-1)*(j-2)%K:continue
      slots=[]
      for side in (X-1,X+1):
       fs=sp.factorint(side//iso(side));ar=[[],[],[]]
       for p,e in fs.items():ar[j%int(p**e)].append(int(p**e))
       slots.append(ar)
      yield {'m':m,'P':P,'X':X,'j':j,'c':c,'t':t,'slots':slots,'g':gcd(2*X*X,j)}

if __name__=='__main__':
 out=[];st=time.time()
 for m in [5,7,9,11,13,15,17,19,21,23,25,27,29,31]:
  rec=list(records(m));out+=rec
  print(m,len(rec),rec[:2],round(time.time()-st,2),flush=True)
 open('/mnt/data/B699-ProE-i3-mixed-slot-20260920/logs/mixed_probe.json','w').write(json.dumps(out,indent=2))

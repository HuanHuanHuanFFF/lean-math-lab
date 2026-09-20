from math import isqrt
from sympy import divisors
import json,time
start=time.time();out=[]
for Q in range(3,20001,2):
 for v in divisors(Q**3-1):
  if v%2 or v>=Q: continue
  z=v*(Q**5-(Q-v)**2);d=isqrt(z)
  if d*d!=z:continue
  den=v*(Q-v)
  for sig in (1,-1):
   num=v*Q*Q+sig*d
   if num>0 and num%den==0:
    nu=num//den;P,rem=divmod(v*nu*nu+1,Q*Q)
    if rem or (P+2*nu)%Q:continue
    h=(P+2*nu)//Q
    if P!=Q+h*v:continue
    out.append(dict(Q=Q,v=v,nu=nu,P=P,h=h,n=P*Q*nu+2))
res={'purpose':'bounded falsification only; no infinite conclusion','Q_max':20000,'solutions':out,'seconds':time.time()-start}
json.dump(res,open('/mnt/data/B699-ProE-i3-next-exploration/probe.json','w'),indent=2)
print(res)

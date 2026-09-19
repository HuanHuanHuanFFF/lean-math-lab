from math import gcd,isqrt
import json
out=[]; tested=0
# Deliberately NO alpha restriction: detect exact recovery weak models only.
for d in (3,5,7,9,11,13,15,17,19):
 M=d*d+2*d-2
 for E in (1,M,d*M):
  T=d*M//E
  for z in range(1,15001):
   if (z*E*E+1)%T: continue
   u=(z*E*E+1)//T; g=1
   if u%2==0:continue
   H=2*u+E; C=4*z*u+4*z*E+T; n=2*C*H+2
   ds=C*C-z*(n-1)
   tested+=1
   if ds<=0:continue
   de=isqrt(ds)
   if de*de!=ds:continue
   j=(C-de)*H+1
   if not 4<=j<n//2 or gcd(n,j)!=1:continue
   la=3 if (n-1)%3==0 and (n-1)%9 else 1
   mu=3 if ((n-2)//2)%3==0 and ((n-2)//2)%9 else 1
   full=(la==mu==1 and j*(j-1)%(n-1)==0 and j*(j-1)*(j-2)%((n-2)//2)==0 and gcd((n-2)//2,j-1)==H)
   out.append(dict(d=d,M=M,eps=E,T=T,u=u,z=z,H=H,C=C,n=n,j=j,delta=de,full_source_windows=full))
   if len(out)>=8:break
  if len(out)>=8:break
 if len(out)>=8:break
print(json.dumps({'tested':tested,'models':out},indent=2))

import math,json,time
from pathlib import Path
import sympy as sp
start=time.time();records=[];maxratio=(0,None); count=0
for A in range(2,201):
 for u in range(1,A):
  if A==2*u:continue
  r=u*(A-u); C=abs(4*(A-2*u)*(2*A-u)*(A+u))
  for D in sp.divisors(C):
   t=D-u+2*A
   if t%3:continue
   y=t//3
   if y<=A+u:continue
   den=y+3*u-2*A
   if den<=0:continue
   qn=3*r*(3*y+u-2*A)
   if qn%den:continue
   q=qn//den
   nn=3*y*(y-A)
   if nn%q:continue
   n=nn//q+1
   zn=u*(n-1)+y
   if zn%A:continue
   z=zn//A
   if not (0<z<n):continue
   g=math.gcd(n,z); odd=g//(g&-g)
   count+=1
   if odd/A>maxratio[0]:maxratio=(odd/A,[A,u,y,q,n,z,g,odd])
   if odd>A:
    records.append([A,u,y,q,n,z,g,odd]);
print(json.dumps({'count':count,'odd_over_A':len(records),'maxratio':maxratio,'examples':records[:20],'seconds':time.time()-start}))
Path('/mnt/data/b699-window-next-20260916/outputs/zero_probe.json').write_text(json.dumps({'range_A':[2,200],'count':count,'maxratio':maxratio,'records':records},indent=2)+'\n')

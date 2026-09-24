"""Bounded falsification of automatic q2 recovery, not an unbounded proof."""
from math import gcd,isqrt
import json,time
from pathlib import Path
r=1;A=3;records=[];alllow=[];tests=0;start=time.time()
def coarse(x):
 for p in (2,3,5):
  while x%p==0:x//=p
 return x
for a in range(2,29):
 r+=(((40-r*r)//A)*pow(2*r,-1,3)%3)*A;A*=3
 zmax=isqrt((A*A-1)//(40*(2*A-1)))
 for z in range(1,zmax+1):
  if z%3==0:continue
  tests+=1
  delta=r*z%A
  if delta%2==0:delta=A-delta
  num=A*A-delta*delta+40*z*z;den=40*A*z*z
  if num%den:continue
  g=num//den
  if g<2:continue
  n=g*A;beta=(A-delta)//2;j=g*beta
  if gcd(n,j)!=g or not 7<=j<=n//2:continue
  low=8*g**4<n
  row=dict(a=a,z=z,g=g,n=n,j=j,delta=delta,tail=n%1800,low_mass=low)
  if low:alllow.append(row)
  if n%1800==1530:
   U=10*g*g*z*z;q2=coarse(n-2)
   row.update(q2_full=U*U*(U-1)%(q2*q2)==0,q5_near=(U-1)%coarse(n-5)==0)
   records.append(row)
result=dict(scope='falsification only; a=2..28, g>=2 implied z-range, no global inference',tests=tests,models_B=records,low_models_any_tail=alllow,elapsed=time.time()-start)
Path(__file__).resolve().parents[1].joinpath('outputs/probe_global_norm.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))

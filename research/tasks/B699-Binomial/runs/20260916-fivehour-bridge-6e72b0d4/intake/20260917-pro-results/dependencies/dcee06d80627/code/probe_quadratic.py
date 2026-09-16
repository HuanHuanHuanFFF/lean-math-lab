from fractions import Fraction as F
from itertools import product
from math import isqrt
import json

def interp(xs,ys):
 out=[F(0)]*3
 for i in range(3):
  others=[xs[j] for j in range(3) if j!=i]
  den=(xs[i]-others[0])*(xs[i]-others[1])
  z=ys[i]/den
  out[0]+=z*others[0]*others[1];out[1]-=z*sum(others);out[2]+=z
 return out

out=[]
for T,A,B,C in [(49,23,10,1),(49,23,36,14),(49,30,11,1),(49,30,19,3)]:
 d=T*T*(B*B-4*A*C)
 s1=isqrt(d+4*T*A);s2=isqrt(d+8*T*A)
 r1=[F(-T*B+s,T*2*A) for s in [-s1,s1]]
 r2=[F(-T*B+s,T*2*A) for s in [-s2,s2]]
 vals=[]
 for y1,y2,y3 in product(range(2),range(2),range(3)):
  cs=interp(r1+[r2[0]],list(map(F,[y1,y2,y3])))
  y4=sum(cs[h]*r2[1]**h for h in range(3))
  if y4 not in [0,1,2]:continue
  if cs[1]/(T*B)==cs[2]/(T*A):continue
  vals.append({'coeff':[str(a) for a in cs],'values':[y1,y2,y3,str(y4)],'nonnegative':all(a>=0 for a in cs),'dominated':all(0<=a<=b for a,b in zip(cs,[T*C,T*B,T*A]))})
 out.append({'N':[T,A,B,C],'nontrivial':vals})
print(json.dumps(out,indent=2))

from sympy.solvers.diophantine.diophantine import diop_DN
from math import gcd,isqrt
import json
from pathlib import Path

def vp(n,p):
 c=0
 while n and n%p==0:c+=1;n//=p
 return c

def canon(n,j):
 l=3 if vp(n-1,3)==1 else 1;m=3 if vp((n-2)//2,3)==1 else 1
 N=(n-1)//l;K=(n-2)//(2*m);g=gcd(n,j);H=gcd(K,j-1);C=K//H
 if j*(j-1)%N or j*(j-1)*(j-2)%K:return None
 a=j//g;b=(n-j)//g
 if a*b%(N*C):return None
 return {'n':n,'j':j,'g':g,'u':a*b//(N*C),'lambda':l,'mu':m,'H':H,'C':C,'alpha':n//g}
out=[];trials=0
for D in range(9,80,2):
 d=D*(D-8);target=16*(D+1)
 if isqrt(d)**2==d:continue
 unit=diop_DN(d,1)[0]
 seeds=diop_DN(d,target)
 for a,b in seeds:
  for sign in [-1,1]:
   x=int(a);y=int(sign*b)
   for idx in range(40):
    trials+=1
    if x>12 and (x-12)%(D-8)==0:
     n=(x-12)//(D-8);T=abs(y)
     if n%4==0 and n>=8 and T<n and (n-T)%2==0:
      j=(n-T)//2
      if j>=4:
       o=canon(n,j)
       if o and o['g']==2 and o['u']==1:
        out.append(dict(o,D=D,pell_seed=[int(a),int(sign*b)],unit=[int(a) for a in unit],pell_index=idx))
        break
    x,y=int(unit[0])*x+int(unit[1])*d*y,int(unit[1])*x+int(unit[0])*y
 if len(out)>5:break
path=Path(__file__).resolve().parents[1]/'outputs/pell_g2_probe.json'
path.write_text(json.dumps({'trials':trials,'hits':out},indent=2)+'\n')
print('trials',trials,'hits',len(out))
for o in out[:5]:print(o)

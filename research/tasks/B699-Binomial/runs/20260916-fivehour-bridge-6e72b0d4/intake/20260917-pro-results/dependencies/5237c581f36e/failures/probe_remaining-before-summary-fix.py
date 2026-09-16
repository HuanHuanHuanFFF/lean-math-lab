"""Bounded diagnostic only: remaining three-slot rows compatible with old ROW-3."""
from math import gcd
from pathlib import Path
import json,time
from common import prime,kernel_gate,subdigits
start=time.time();rows=[];tested=0
for p in range(5,258,2):
 if not prime(p):continue
 for e,f in [(2,1),(3,1),(3,2)]:
  T=p**f;x=p**e;limit=p**(2*e+1);m0=1
  while 3*T**3*m0**4<limit:
   if m0%p:
    v=2;z=m0*4
    while z<limit:
     n=T*z;tested+=1
     if n>3*(T*m0)**4:
      a,rr=divmod(z,x*x);b,c=divmod(rr,x)
      if 1<=a<p and 1<=b<p and 1<=c<p:
       gate=kernel_gate(T,a,b*x+c,x*x)
       alpha=[];W1=[]
       for u in range(a+1):
        for w in range(b+1):
         for t in range(c+1):
          j=T*(u*x*x+w*x+t)
          if not 4<=j<=n//2:continue
          g=gcd(n,j);al=n//g;o=al//(al&-al)
          if o not in [1,3] or (o==3 and n%9==0):continue
          alpha.append(j)
          if 3*j*(j-1)%(n-1)==0:W1.append(j)
       rows.append({'p':p,'e':e,'f':f,'a':a,'b':b,'c':c,'m0':m0,'v':v,'n':n,'new_gate':gate,'alpha_candidates':alpha,'W1_candidates':W1})
     z*=2;v+=1
   m0+=2
out={'scope':{'P_max':257,'exponent_pairs':[[2,1],[3,1],[3,2]],'uses_old_ROW3_for_filtering':True},'tested_factor_rows':tested,'rows':rows,'seconds':time.time()-start,'status':'completed_finite_probe_only'}
Path(__file__).parents[1].joinpath('outputs/remaining_probe.json').write_text(json.dumps(out,indent=2)+'\n')
print('probe',tested,'rows found',len(rows),'W1',sum(len(r['W1_candidates']) for r in rows),'seconds',out['seconds'])
print(json.dumps(rows[:3]))

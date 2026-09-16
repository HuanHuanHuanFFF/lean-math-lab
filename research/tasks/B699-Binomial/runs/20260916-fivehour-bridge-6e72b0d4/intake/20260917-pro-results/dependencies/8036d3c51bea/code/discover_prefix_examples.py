import json,time
from pathlib import Path
records=[];total=0;start=time.perf_counter()
for T in range(3,46,2):
 for A in range(1,T):
  for B in range(1,2*T+1):
   for u in range(1,A):
    r=u*(A-u);q=3*r%T
    if not q:continue
    for w in range(B+1):
     d=A*w-B*u
     if d<=0:continue
     total+=1;y=u+T*d
     num=3*y*(y-A)
     if num%q:continue
     n=num//q+1
     if n%T:continue
     ax=n//T-B
     if ax%A:continue
     X=ax//A
     if X<3*A*B*B:continue
     j=T*(u*X+w)
     if not 0<j<n or 3*j*(j-1)%(n-1):continue
     R=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
     assert R%T==0 and R<0 and -R<T*(n-2)
     assert 6*j*(j-1)*(j-2)%(n-2)!=0
     records.append(dict(T=T,A=A,B=B,X=X,u=u,w=w,n=n,j=j,q=q,R=R))
p=Path(__file__).resolve().parents[1]/'outputs/prefix_examples.json'
p.write_text(json.dumps({'domain':{'T':[3,45],'B':'1..2T','A':'1..T-1'},'tested_determinants':total,'count':len(records),'records':records,'seconds':time.perf_counter()-start},indent=2))
print('examined',total,'first survivors',len(records),'tail at least T',sum(r['B']>=r['T'] for r in records),'seconds',time.perf_counter()-start)
print([r for r in records if r['B']>=r['T']][:2])

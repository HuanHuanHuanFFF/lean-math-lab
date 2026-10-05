import json,time
from pathlib import Path
from sympy.polys.rings import ring
from sympy import QQ
import sympy as sp
w=Path('/mnt/data/r6_work');R,u,y=ring('u,y',QQ);g=json.load(open(w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json'))
def coeffs(ts):
 d=max(e[2]for e,c in ts);return [R.from_dict({tuple(e[:2]):QQ(c)for e,c in ts if e[2]==i})for i in range(d+1)]
P=coeffs(g['B5']);a=P[-1];print('lc',sp.factor(a.as_expr()),flush=True)
A5=8*u**3*y-5*(u-1)**2*(y-1)**3
ps=[]
for i in [4,3,2,1,0]:
 st=time.monotonic();src=json.load(open(w/f'rev_{i}.json'));f=coeffs(src['poly']);d=len(f)-1;q=[R.zero for _ in range(d-4)]
 for j in range(d,4,-1):
  lc=f[j];f=[v*a for v in f];q=[v*a for v in q];q[j-5]+=lc
  for k in range(6):f[j-5+k]-=lc*P[k]
 assert all(v==0 for v in f[5:]);f=f[:5];hist=[]
 for name,h in [('u',u),('y',y),('um',u-1),('ym',y-1),('A5',A5)]:
  n=0
  while all(not v.rem(h)for v in f):f=[v.exquo(h)for v in f];n+=1
  hist.append([name,n])
 ds=sp.ilcm(*[v.denominator for ff in f for v in ff.values()]);cc=sp.igcd(*[int(v*ds)for ff in f for v in ff.values()]);factor=QQ(cc,ds);f=[v/factor for v in f]
 ts=[]
 for k,F in enumerate(f):ts += [[list(e)+[k],str(c)]for e,c in F.items()]
 print(i,'terms',len(ts),'du dy',[max(e[j]for e,c in ts)for j in (0,1)],'total',max(sum(e)for e,c in ts),hist,'sec',time.monotonic()-st,flush=True)
 ob={'i':i,'terms':ts,'gates':hist,'scalar':str(factor),'source_deg':d};json.dump(ob,open(w/f'rr_{i}.json','w'));ps.append(ob)
json.dump(ps,open(w/'rreduced.json','w'))

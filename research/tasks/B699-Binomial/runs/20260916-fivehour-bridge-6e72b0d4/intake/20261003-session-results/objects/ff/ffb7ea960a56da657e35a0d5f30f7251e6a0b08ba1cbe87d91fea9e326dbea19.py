import json,time
from pathlib import Path
import sympy as sp
from sympy.polys.rings import ring
from sympy import QQ
w=Path('/mnt/data/r6_work');R,u,y,z=ring('u,y,z',QQ)
g=json.load(open(w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json'))
H=u*u-u*y*y+3*u*y-2*u+(y-1)**2;J=u*u+u*y*y-3*u*y+y
A=4*u*y*y*H; B=3*(u-1)*(y-1)**2*J
num=B*(z+1);den=A
polys={};records=[]
for name,terms in [('P5',g['B5'])]+[(f'G{i}',g['low'][str(i)]['stripped'])for i in [4,3,2,1,0]]+[('N',g['N']),('K',g['K'])]:
 st=time.monotonic();d=max(e[2]for e,c in terms)
 cf=[R.zero for _ in range(d+1)]
 for e,c in terms:cf[e[2]]+=QQ(c)*u**e[0]*y**e[1]
 # homogeneous Horner
 f=cf[d];dp=R.one
 for k in range(d-1,-1,-1):dp*=den;f=f*num+cf[k]*dp
 factors=[]
 for nam,v in [('u',u),('y',y),('um',u-1),('ym',y-1),('H',H),('J',J),('z',z),('zp',z+1)]:
  n=0
  while f and not f.rem(v):f=f.exquo(v);n+=1
  factors.append([nam,n])
 dc=sp.ilcm(*[cc.denominator for cc in f.values()]);cc=sp.igcd(*[int(v*dc)for v in f.values()]); f=f/QQ(cc,dc)
 ts=[[list(e),str(v)]for e,v in f.items()];json.dump({'name':name,'terms':ts,'factors':factors,'scalar':str(QQ(cc,dc)),'den_power':d},open(w/f'nc_{name}.json','w'))
 polys[name]=f
 print(name,len(f),'deg',max(sum(e)for e in f),'var',[max(e[k]for e in f)for k in range(3)],factors,round(time.monotonic()-st,2),flush=True)
 if name=='G0':
  for order in [(2,0,1),(0,2,1),(1,2,0)]:
   with open(w/('nc_'+''.join(map(str,order))+'.txt'),'w')as out:
    out.write('6\n')
    for key in ['P5','G4','G3','G2','G1','G0']:
     out.write(str(len(polys[key]))+'\n')
     for e,c in polys[key].items():out.write(' '.join(str(e[i])for i in order)+' '+str(c)+'\n')

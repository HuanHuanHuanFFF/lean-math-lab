import json,time,math
from pathlib import Path
from sympy.polys.rings import ring
from sympy import QQ
import sympy as sp
w=Path('/mnt/data/r6_work');R,u,y,r=ring('u,y,r',QQ)
load=lambda p:json.load(open(p))
sca=load(w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/R1_scale.json');gen=load(w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json');lift=load(w/'lift.json')
def unpack(ts):return R.from_dict({tuple(e[:3]):QQ(c)for e,c in ts})
a,b,c=[unpack(sca[k])for k in ['a','b','c']];N,K,P=[unpack(gen[k])for k in ['N','K','B5']]
def coeffs(ts):
 d=max(e[3]for e,c in ts)
 return [R.from_dict({tuple(e[:3]):QQ(c)for e,c in ts if e[3]==i})for i in range(d+1)]
results=[]
for src in lift:
 i=src['i']
 if i==6:continue
 st=time.monotonic();qs=coeffs(src['poly'])[::-1];D=len(qs)-1;f=qs.copy();k=0
 # multiply whole polynomial by c at each top degree and subtract lc * qrev shifted; keep quotients identity
 Q=[R.zero for _ in range(D-1)]
 for j in range(D,1,-1):
  lc=f[j];f=[ff*c for ff in f];Q=[qq*c for qq in Q];Q[j-2]+=lc
  f[j]-=lc*c;f[j-1]-=lc*b;f[j-2]-=lc*a;k+=1
 assert all(v==0 for v in f[2:]);A,B=f[1],f[0];H=A*K+B*N
 print('i',i,'raw linear',len(A),len(B),'combined',len(H),'deg',max(sum(e)for e in H)if H else 0,time.monotonic()-st,flush=True)
 stripped=[]
 for div in [u,y,r,u-1,y-1,N,K,unpack(sca['D'])]:
  ex=0
  while H and not H.rem(div):H=H.exquo(div);ex+=1
  stripped.append((str(div),ex))
 print('i',i,'aftergates',len(H),max(sum(e)for e in H)if H else 0,stripped,time.monotonic()-st,flush=True)
 # simplify quotient against P5, retaining exact remainder then peel gates again
 hp=sp.Poly(H.as_expr(),sp.symbols('r u y'))
 res={'i':i,'power':k,'raw_degree':D,'stripped':stripped,'poly':[[list(e),str(co)]for e,co in H.items()]}
 (w/f'rev_{i}.json').write_text(json.dumps(res));results.append(res)
(w/'reverse.json').write_text(json.dumps(results))

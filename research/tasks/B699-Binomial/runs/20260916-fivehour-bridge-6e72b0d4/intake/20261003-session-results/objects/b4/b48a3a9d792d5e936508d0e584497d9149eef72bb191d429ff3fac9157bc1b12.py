import json,pathlib,time,sys
from sympy.polys.rings import ring
from sympy import QQ
W=pathlib.Path('/mnt/data/r4_work');R,u,y=ring('u,y',QQ);i=int(sys.argv[1]);d=json.loads((W/f'E{i}_core.json').read_text());E=R.from_dict({tuple(m):QQ(c) for m,c in d['terms']});b=json.loads((W/'branch_factors.json').read_text());rec=[z for z in b['KN']['factors'] if z['degrees']==[9,10]][0];B=R.from_dict({tuple(m):QQ(c) for m,c in rec['terms']});J=u*u+u*y*y-3*u*y+y;A=8*u**3*y-5*(u-1)**2*(y-1)**3
t=time.time()
for name,F,power in [('J',J,1),('A5',A,1),('B9',B,8)]:
 for j in range(power):
  E=E.exquo(F);print(name,j+1,len(E),E.degrees(),time.time()-t,flush=True)
(W/f'U{i}_exact.json').write_text(json.dumps({'terms':[[list(m),str(c)] for m,c in E.items()]},separators=(',',':')))
print('DONE',flush=True)

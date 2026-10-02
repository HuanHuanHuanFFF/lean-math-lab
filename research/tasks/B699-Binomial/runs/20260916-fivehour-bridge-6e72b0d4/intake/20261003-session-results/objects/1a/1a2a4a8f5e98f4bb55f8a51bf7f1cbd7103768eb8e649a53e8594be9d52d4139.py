import json,pathlib,time
from sympy.polys.rings import ring
from sympy import QQ
W=pathlib.Path('/mnt/data/r4_work');d=json.loads((W/'adopted_r3/B699-ProB-REG3-COMPAT-20261002-R3/certificates/generic.json').read_text());R,u,y=ring('u,y',QQ)
A=8*u**3*y-5*(u-1)**2*(y-1)**3;J=u*u+u*y*y-3*u*y+y;F0=2*u*u*y*y-6*u*u*y+5*u*u+2*u*y-4*u+1
p1=R.from_dict({tuple(m[:2]):QQ(c) for m,c in d['B5'] if m[2]==1});c,fac=p1.factor_list();print('P5 r1 fac',c,[(len(g),g.degrees(),e) for g,e in fac],flush=True)
for name,G in [('J',J),('F0',F0)]:
 t=time.time();f=A.resultant(G);g=G.resultant(p1);co=f.gcd(g);print(name,'resultants degree',f.degree(),g.degree(),'gcd',co,'time',time.time()-t,flush=True)
 out={'variables':['u','y'],'A':[[list(m),str(c)] for m,c in A.items()],'G':[[list(m),str(c)] for m,c in G.items()],'p1':[[list(m),str(c)] for m,c in p1.items()],'f':[[list(m),str(c)] for m,c in f.items()],'g':[[list(m),str(c)] for m,c in g.items()],'gcd':[[list(m),str(c)] for m,c in co.items()]}
 (W/f'fiber_{name}.json').write_text(json.dumps(out,separators=(',',':')))

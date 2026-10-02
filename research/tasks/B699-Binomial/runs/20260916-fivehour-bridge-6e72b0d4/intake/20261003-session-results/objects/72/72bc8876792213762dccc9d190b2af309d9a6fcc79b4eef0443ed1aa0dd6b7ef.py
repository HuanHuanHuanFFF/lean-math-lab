import json,time,pathlib
from sympy.polys.rings import ring
from sympy import QQ
W=pathlib.Path('/mnt/data/r4_work');d=json.loads((W/'adopted_r3/B699-ProB-REG3-COMPAT-20261002-R3/certificates/generic.json').read_text());R,r,u,y=ring('r,u,y',QQ)
def po(ts):return R.from_dict({(m[2],m[0],m[1]):QQ(c) for m,c in ts})
K,N,F=po(d['K']),po(d['N']),po(d['B5']);D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2
out={}
for name,a,b in [('KN',K,N),('FD',F,D),('FN',F,N)]:
 t=time.time();res=a.resultant(b);print(name,len(res),res.degrees(),'seconds',time.time()-t,flush=True)
 c,fac=res.factor_list();print('fact',c,[(len(q),q.degrees(),e) for q,e in fac],time.time()-t,flush=True)
 out[name]={'scalar':str(c),'factors':[{'terms':[[list(m),str(c)] for m,c in q.items()],'power':e,'degrees':q.degrees()} for q,e in fac]}
 (W/'branch_factors.json').write_text(json.dumps(out,separators=(',',':')))

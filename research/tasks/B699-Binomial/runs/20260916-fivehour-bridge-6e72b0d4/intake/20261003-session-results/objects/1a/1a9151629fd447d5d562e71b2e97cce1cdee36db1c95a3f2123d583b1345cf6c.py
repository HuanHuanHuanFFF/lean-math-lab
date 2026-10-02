from pathlib import Path
import json,time
from sympy import QQ,factor_list
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text())
R,r,u,y=ring('r,u,y',QQ)
def load(n):return R.from_dict({(m[2],m[0],m[1]):QQ(c) for m,c in data[n]})
K,S=load('K'),load('S')
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
t=time.monotonic();rem=S.prem(K);print('prem elapsed',time.monotonic()-t,'terms',len(rem),'degree',rem.degrees(),flush=True)
t=time.monotonic();co,fac=rem.factor_list();print('factor elapsed',time.monotonic()-t,co,[(len(p),p.degrees(),e) for p,e in fac],flush=True)
for p,e in fac:
 if len(p)<150:print('factor',p,'exp',e,flush=True)
(out/'experiments/prem_r.json').write_text(json.dumps({'vars':['r','u','y'],'constant':str(co),'factors':[[pack(p),e] for p,e in fac],'prem':pack(rem)}))
print('RESULTANT begin',flush=True)
t=time.monotonic();res=K.resultant(S);print('RESULTANT elapsed',time.monotonic()-t,'terms',len(res),'degrees',res.degrees(),flush=True)
(out/'experiments/res_r.json').write_text(json.dumps({'vars':['u','y'],'terms':pack(res)}))
t=time.monotonic();co,fac=res.factor_list();print('RES FACTOR',time.monotonic()-t,co,[(len(p),p.degrees(),e) for p,e in fac],flush=True)
(out/'experiments/res_r_factors.json').write_text(json.dumps({'vars':['u','y'],'constant':str(co),'factors':[[pack(p),e] for p,e in fac]}))
for p,e in fac:
 if len(p)<150:print('RES factor',p,'exp',e,flush=True)

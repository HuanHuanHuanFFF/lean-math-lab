from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text());R,r,u,y,L=ring('r,u,y,L',QQ)
def load(n):return R.from_dict({(m[2],m[0],m[1],m[3]):QQ(c) for m,c in data[n]})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
K,S,a,b,c,Q3,D,CS,q=map(load,['K','S','a','b','c','Q3','D','Cstar','q'])
f=Q3.coeff_wrt(L,1);g=Q3.coeff_wrt(L,0)
T=((u-1)*S-b*K).exquo(a)
assert c*(f-q*c)-b*g==u*(u-1)*(D/2)**2*CS*T
print('T',len(T),T.degrees(),flush=True);co,fac=T.factor_list();print('factors',co,[(len(p),p.degrees(),e) for p,e in fac],flush=True)
for p,e in fac:
 if len(p)<150:print(p,e,flush=True)
(out/'experiments/T.json').write_text(json.dumps({'vars':['r','u','y','L'],'T':pack(T),'constant':str(co),'factors':[[pack(p),e] for p,e in fac]}))

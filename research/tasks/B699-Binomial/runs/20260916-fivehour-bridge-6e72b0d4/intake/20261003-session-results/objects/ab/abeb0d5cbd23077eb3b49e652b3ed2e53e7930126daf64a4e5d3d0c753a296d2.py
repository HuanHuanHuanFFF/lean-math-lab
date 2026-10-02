from pathlib import Path
import json,time
import sympy as s
from sympy import QQ
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text());pr=json.loads((out/'experiments/prem_r.json').read_text())
R,r,u,y=ring('r,u,y',QQ)
K=R.from_dict({(m[2],m[0],m[1]):QQ(c) for m,c in data['K']})
H=R.from_dict({tuple(m):QQ(c) for terms,e in pr['factors'] if len(terms)==469 for m,c in terms})
z=s.Symbol('z');cs=s.symbols('a0:4')+s.symbols('b0:3')
res_template=s.Poly(s.resultant(sum(cs[i]*z**i for i in range(4)),sum(cs[i+4]*z**i for i in range(3)),z),cs)
print('template terms',len(res_template.terms()),flush=True)
P,u1,y1=ring('u,y',QQ)
def cf(p,k):return P.from_dict({(m[1],m[2]):c for m,c in p.items() if m[0]==k})
vals=[cf(K,i) for i in range(4)]+[cf(H,i) for i in range(3)]
res=P.zero;t=time.monotonic()
for m,c in res_template.terms():
 term=P.ground_new(QQ(str(c)))
 for i,pow in enumerate(m):
  if pow:term*=vals[i]**pow
 res+=term
print('resultant seconds',time.monotonic()-t,'terms',len(res),'degree',res.degrees(),flush=True)
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
(out/'experiments/res_fast.json').write_text(json.dumps({'vars':['u','y'],'terms':pack(res)}))
t=time.monotonic();co,fac=res.factor_list();print('FACTORIZATION',time.monotonic()-t,'const',co,'factors',[(len(p),p.degrees(),e) for p,e in fac],flush=True)
(out/'experiments/res_fast_factors.json').write_text(json.dumps({'vars':['u','y'],'constant':str(co),'factors':[[pack(p),e] for p,e in fac]}))
for p,e in fac:
 if len(p)<120:print(p,'exp',e,flush=True)

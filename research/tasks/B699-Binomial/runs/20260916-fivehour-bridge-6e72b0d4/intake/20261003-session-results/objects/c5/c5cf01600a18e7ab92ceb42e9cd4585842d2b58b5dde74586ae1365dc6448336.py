from pathlib import Path
import json,time
import sympy as s
from sympy import QQ
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text());R,r,u,y=ring('r,u,y',QQ)
def load(n):return R.from_dict({(m[2],m[0],m[1]):QQ(c) for m,c in data[n]})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
K,A,EP=load('K'),load('a'),load('eprime');print('degrees',A.degrees(),EP.degrees(),flush=True)
rem=A.prem(K);co,fac=rem.factor_list();print('A prem',co,[(len(p),p.degrees(),e) for p,e in fac],flush=True)
H=next(p for p,e in fac if p.degree(r)>0)
z=s.Symbol('z');cs=s.symbols('a0:4')+s.symbols('b0:3');temp=s.Poly(s.resultant(sum(cs[i]*z**i for i in range(4)),sum(cs[i+4]*z**i for i in range(3)),z),cs)
P,up,yp=ring('u,y',QQ)
def cf(p,k):return P.from_dict({(m[1],m[2]):c for m,c in p.items() if m[0]==k})
vals=[cf(K,i) for i in range(4)]+[cf(H,i) for i in range(3)];res=P.zero
for m,c in temp.terms():
 term=P.ground_new(QQ(str(c)))
 for i,pow in enumerate(m):
  if pow:term*=vals[i]**pow
 res+=term
c,fa=res.factor_list();print('A resultant',c,[(len(p),p.degrees(),e) for p,e in fa],flush=True)
(out/'experiments/a_zero_projection.json').write_text(json.dumps({'vars':['u','y'],'constant':str(c),'factors':[[pack(p),e] for p,e in fa]}))
for p,e in fa:
 if len(p)<50:print(p,e,flush=True)

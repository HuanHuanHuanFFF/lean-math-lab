from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002')
data=json.loads((root/'certificates/scale.json').read_text());td=json.loads((out/'experiments/T.json').read_text())
R,r,u,y,L=ring('r,u,y,L',QQ)
def load(n):return R.from_dict({(m[2],m[0],m[1],m[3]):QQ(c) for m,c in data[n]})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
T=R.from_dict({tuple(m):QQ(c) for m,c in td['T']}).exquo(u-1)
A=T.coeff_wrt(r,1);B=-T.coeff_wrt(r,0)
for n,p in [('A',A),('B',B)]:print(n,p.factor_list(),flush=True)
# coefficient zero: reduced A and B
fa=A.factor_list()[1];fb=B.factor_list()[1]
Ar=next(p for p,e in fa if len(p)>3);Br=next(p for p,e in fb if len(p)>3)
P,uu,yy=ring('u,y',QQ)
def proj(p):return P.from_dict({(m[1],m[2]):c for m,c in p.items()})
Ar,Br=proj(Ar),proj(Br)
t=time.monotonic();res=Ar.resultant(Br);print('AB resultant',time.monotonic()-t,res.factor_list(),flush=True)
# substitute r=B/A clearing actual degree
K=load('K');ans=R.zero
for i in range(4):ans+=K.coeff_wrt(r,i)*B**i*A**(3-i)
co,fac=ans.factor_list();print('K subst factors',co,[(len(p),p.degrees(),e) for p,e in fac],flush=True)
for p,e in fac:
 if len(p)<120:print('factor',p,e,flush=True)
# all others current low substituted (scale still available)
result={'variables':['r','u','y','L'],'linear':pack(T),'A':pack(A),'B':pack(B),'K_substitution':pack(ans),'K_substitution_scalar':str(co),'K_substitution_factors':[[pack(p),e] for p,e in fac]}
(out/'certificates/exception_linear.json').write_text(json.dumps(result,separators=(',',':')))

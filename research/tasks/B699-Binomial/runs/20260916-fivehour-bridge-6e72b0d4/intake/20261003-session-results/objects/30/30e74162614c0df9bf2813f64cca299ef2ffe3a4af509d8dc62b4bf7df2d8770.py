from pathlib import Path
import json,time
from sympy import QQ,factor,Poly,symbols
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002')
data=json.loads((root/'certificates/scale.json').read_text())
R,y,u,r=ring('y,u,r',QQ)
def load(n):return R.from_dict({(m[1],m[0],m[2]):QQ(c) for m,c in data[n]})
K,S=load('K'),load('S');a=load('a')
print('K y coefficients',[factor(K.coeff_wrt(y,i).as_expr()) for i in range(3)],flush=True)
print('a factored',factor(a.as_expr()),flush=True)
t=time.monotonic();rem=S.prem(K);print('prem elapsed',time.monotonic()-t,'terms',len(rem),'degree',rem.degrees(),flush=True)
print('prem factor start',flush=True);print(factor(rem.as_expr()),flush=True)

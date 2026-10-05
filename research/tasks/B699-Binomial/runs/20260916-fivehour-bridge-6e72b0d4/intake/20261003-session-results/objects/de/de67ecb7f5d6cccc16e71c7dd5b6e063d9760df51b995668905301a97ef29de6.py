from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text())
R,u,y,r,L=ring('u,y,r,L',QQ)
def load(n):return R.from_dict({tuple(m):QQ(c) for m,c in data[n]})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
K,S,D=load('K'),load('S'),load('D');d0=D.coeff_wrt(r,0);d1=D.coeff_wrt(r,1)
for name,p in [('K',K),('a',load('a')),('S',S)]:
 n=p.degree(r);ans=R.zero
 for i in range(n+1):ans+=p.coeff_wrt(r,i)*(-d0)**i*d1**(n-i)
 c,fa=ans.factor_list();print(name,'at D=0 factors',c,[(len(q),q.degrees(),e) for q,e in fa],flush=True)
 for q,e in fa:
  if len(q)<30:print(q,'exp',e,flush=True)
# identity on a=0: eprime and K are generally related
A=load('a');ep=load('eprime');cs=load('Cstar');Q3=load('Q3');g=Q3.coeff_wrt(L,0)
print('K/eprime basic', (A*g-ep*load('c')-u*(u-1)*(D/2)**2*cs*K)==0,flush=True)

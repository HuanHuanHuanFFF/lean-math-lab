from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text());regs=json.loads((root/'certificates/regular.json').read_text())['R']
R,u,y,r,L=ring('u,y,r,L',QQ)
def load(n):return R.from_dict({tuple(m):QQ(c) for m,c in data[n]})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
D,F,C=load('D'),load('F'),load('C');N=L*F+C;DD=L*D
result={}
for i in range(4,-1,-1):
 t0=time.monotonic();terms=regs[str(i)]['terms'];dw=max(m[0] for m,c in terms);ans=R.zero
 for j in range(dw+1):
  ch=R.zero
  for (ww,uu,yy,ll,aa),co in terms:
   if ww==j:ch+=QQ(co)*u**uu*y**yy*r**aa*L**(ll+aa)
  ans+=N**j*DD**(dw-j)*ch
 lp=min(m[3] for m in ans);temp=ans.exquo(L**lp)
 gc,fp=temp.factor_list();print(i,'clearpower',dw,lp,'time',time.monotonic()-t0,'scalar',gc,'factors',[(len(p),p.degrees(),e) for p,e in fp],flush=True)
 result[str(i)]={'w_degree':dw,'L_power':lp,'scalar':str(gc),'factors':[[pack(p),e] for p,e in fp],'polynomial':pack(temp)}
 (out/'certificates/low.json').write_text(json.dumps({'variables':['u','y','r','L'],'low':result},separators=(',',':')))

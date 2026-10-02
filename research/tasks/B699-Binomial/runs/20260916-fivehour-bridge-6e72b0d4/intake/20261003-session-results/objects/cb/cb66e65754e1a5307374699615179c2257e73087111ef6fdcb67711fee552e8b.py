from pathlib import Path
import json,time
from fractions import Fraction
from sympy import QQ
from sympy.polys.rings import ring
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text());R,r=ring('r',QQ)
vals=sorted({Fraction(i,j) for i in range(-10,11) for j in range(1,7)}-{0,1})
records=[];t=time.monotonic();count=0
for u in vals:
 for y in vals:
  def ev(n):
   d={}
   for (uu,yy,rr,ll),c in data[n]:
    v=QQ(c)*QQ(str(u))**uu*QQ(str(y))**yy
    d[(rr,)]=d.get((rr,),QQ.zero)+v
   return R.from_dict(d)
  K,S=ev('K'),ev('S');g=K.gcd(S);count+=1
  if g.degree()>0:
   cf,fs=g.factor_list();print('base',u,y,'gcd degree',g.degree(),'factors',[str(f) for f,e in fs],flush=True)
   for f,e in fs:
    if f.degree()==1:
     rr=-f[(0,)]/f[(1,)];D=ev('D').evaluate(r,rr)
     rec={'u':str(u),'y':str(y),'r':str(rr),'D':str(D),'multiplicity':e}
     if D:print('NONZERO D',rec,flush=True)
     records.append(rec)
print('DONE',count,time.monotonic()-t,'records',len(records),flush=True)
(out/'experiments/grid.json').write_text(json.dumps({'count':count,'seconds':time.monotonic()-t,'records':records},indent=2))

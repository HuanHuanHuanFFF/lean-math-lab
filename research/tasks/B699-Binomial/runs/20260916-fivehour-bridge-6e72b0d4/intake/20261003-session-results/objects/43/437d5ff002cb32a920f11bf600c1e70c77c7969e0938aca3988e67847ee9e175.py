from pathlib import Path
import os
ROOT=Path(__file__).resolve().parents[2]
WORK=Path(os.environ['REG3_REGEN_DIR']).resolve()
WORK.mkdir(parents=True,exist_ok=True)
from pathlib import Path
import json,time
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
R,u,y=ring('u,y',QQ)
p=ROOT
j=json.loads((p/'inputs/R4_branch_factors.json').read_text());ts=next(z['terms']for z in j['KN']['factors']if z['degrees']==[9,10]);B=R.from_dict({tuple(m):QQ(c)for m,c in ts})
H=u*u-u*y*y+3*u*y-2*u+(y-1)**2
print('Res_H start',flush=True);z=B.resultant(H);fa=z.factor_list();print('Res_H degrees',[(f.degree(),e)for f,e in fa[1]],'small',[(str(f),e)for f,e in fa[1]if f.degree()<12],flush=True)
# mobius
out=R.zero
for (a,b),c in B.items():out+=c*(1-u)**(9-a)*(1-y)**(10-b)
print('mobius raw',len(out),out.degrees(),flush=True)
print(out.factor_list(),flush=True)
(WORK/'B9H.json').write_text(json.dumps({'resultant':[[list(e),str(c)]for e,c in sorted(z.items())],'scalar':str(fa[0]),'factors':[{'power':k,'terms':[[list(e),str(c)]for e,c in sorted(f.items())]}for f,k in fa[1]]}))

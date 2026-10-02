from pathlib import Path
import os
ROOT=Path(__file__).resolve().parents[2]
WORK=Path(os.environ['REG3_REGEN_DIR']).resolve()
WORK.mkdir(parents=True,exist_ok=True)
import json
from pathlib import Path
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
R,u,y=ring('u,y',QQ);V,v=ring('v',QQ)
J=u*u+u*y*y-3*u*y+y;A5=8*u**3*y-5*(u-1)**2*(y-1)**3
jn=2*u*y-3*u+1;jd=u-1
an=5*(y-1)**2*(u-1)-8*u*u;ad=2*u*(y-1)
rawJ=[jn**2-(1-4*u)*jd**2,2*(jn-jd)*jd*y-(jn+jd)**2]
rawA=[(y-1)*(an*an-10*ad*ad)+2*u*(2*an*ad-5*ad*ad), u*(2*an-5*ad)**2*ad-(an**3-30*an*ad**2+65*ad**3),y*(2*an-5*ad)*(an**2-10*ad**2)+5*(an-4*ad)**2*ad]
def ts(p):return [[list(m),str(c)]for m,c in sorted(p.items())]
obj={'J':{'branch':ts(J),'inverse_numerator':ts(jn),'inverse_denominator':ts(jd),'identities':[],'map':{'nu':ts(1-v*v),'du':ts(V(4)),'ny':ts((v+1)**2),'dy':ts(2*(v-1)),'gates':[ts(v-1),ts(v+1),ts(v*v+3)]}},'A5':{'branch':ts(A5),'inverse_numerator':ts(an),'inverse_denominator':ts(ad),'identities':[],'map':{'nu':ts(v**3-30*v+65),'du':ts((2*v-5)**2),'ny':ts(-5*(v-4)**2),'dy':ts((2*v-5)*(v*v-10)),'gates':[ts(v-4),ts(2*v-5),ts(v*v-10),ts(v**3-30*v+65)]}}}
for name,br,ids in [('J',J,rawJ),('A5',A5,rawA)]:
 for f in ids:
  q,r=divmod(f,br);assert not r
  obj[name]['identities'].append({'lhs':ts(f),'quotient':ts(q)})
  print(name,str(q))
(WORK/'coverage.json').write_text(json.dumps(obj,indent=2)+'\n')

from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];ed=json.loads((out/'certificates/exception_linear.json').read_text());rs=json.loads((out/'certificates/rsub.json').read_text())['data']
R,u,y=ring('u,y',QQ)
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
C=next(R.from_dict({(m[1],m[2]):QQ(c) for m,c in terms}) for terms,e in ed['K_substitution_factors'] if len(terms)==88)
A=next(R.from_dict({(m[0],m[1]):QQ(c) for m,c in terms}) for terms,e in rs['a']['factors'] if len(terms)>100)
print('C,A',C.degrees(),A.degrees(),flush=True)
t=time.monotonic();res=C.resultant(A);print('resultant secs',time.monotonic()-t,'degrees',res.degrees(),'terms',len(res),flush=True)
(out/'experiments/a_zero_resultant.json').write_text(json.dumps({'variables':['y'],'res':pack(res)}))
t=time.monotonic();co,fa=res.factor_list();print('factor secs',time.monotonic()-t,'scalar',co,'factors',[(len(p),p.degrees(),e) for p,e in fa],flush=True)
(out/'experiments/a_zero_terminal.json').write_text(json.dumps({'variables':['y'],'constant':str(co),'factors':[[pack(p),e] for p,e in fa]}))
for p,e in fa:
 if len(p)<10:print(p,e,flush=True)

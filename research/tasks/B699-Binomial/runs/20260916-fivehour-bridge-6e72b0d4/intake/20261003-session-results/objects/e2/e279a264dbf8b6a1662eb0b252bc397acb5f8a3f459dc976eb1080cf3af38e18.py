from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];rs=json.loads((out/'certificates/rsub.json').read_text())['data'];sp=json.loads((out/'certificates/finite_exception_specialization.json').read_text())
Q2=next(terms for terms,e in rs['Q2']['factors'] if any(m[2] for m,c in terms));Q4=next(terms for terms,e in rs['R4']['factors'] if any(m[2] for m,c in terms))
R,u,y=ring('u,y',QQ)
def cf(terms,n):return R.from_dict({(m[0],m[1]):QQ(c) for m,c in terms if m[2]==n})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
vs=[cf(Q2,i) for i in range(3)]+[cf(Q4,i) for i in range(5)];p=R.zero;t=time.monotonic()
for idx,(m,c) in enumerate(sp['resultant_template']):
 q=R.ground_new(QQ(c))
 for i,e in sorted(enumerate(m),key=lambda x:len(vs[x[0]])):
  if e:q*=vs[i]**e
 p+=q
 print('term',idx,'elapsed',time.monotonic()-t,'termcount',len(p),flush=True)
print('RAW',p.degrees(),len(p),time.monotonic()-t,flush=True)
(out/'experiments/outer_R.json').write_text(json.dumps({'variables':['u','y'],'polynomial':pack(p)},separators=(',',':')))
t=time.monotonic();co,fa=p.factor_list();print('FACTOR',time.monotonic()-t,co,[(len(q),q.degrees(),e) for q,e in fa],flush=True)
(out/'experiments/outer_R_factors.json').write_text(json.dumps({'variables':['u','y'],'constant':str(co),'factors':[[pack(q),e] for q,e in fa]},separators=(',',':')))
for q,e in fa:
 if len(q)<30:print(q,e,flush=True)

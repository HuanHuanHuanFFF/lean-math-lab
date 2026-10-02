from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
ROOT=Path(__file__).resolve().parents[1]
core=json.loads((ROOT/'certificates/core.json').read_text());raw=json.loads((ROOT/'experiments/outer_R_stripped.json').read_text())
R,u,y=ring('u,y',QQ)
C=R.from_dict({(m[0],m[1]):QQ(c) for m,c in core['polys3']['Ccurve']});W=R.from_dict({tuple(m):QQ(c) for m,c in raw['remaining']})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
t=time.monotonic();print('start full exceptional C/W elimination',C.degrees(),W.degrees(),flush=True)
z=C.resultant(W);print('resultant done',time.monotonic()-t,'degree',z.degree(),'terms',len(z),flush=True)
(ROOT/'experiments/full_exception_resultant.json').write_text(json.dumps({'variables':['y'],'sympy_resultant':pack(z)},separators=(',',':')))
c,fa=z.factor_list();print('factors',c,[(q.degree(),e) for q,e in fa],flush=True)
(ROOT/'experiments/full_exception_factors.json').write_text(json.dumps({'scalar':str(c),'factors':[[pack(q),e] for q,e in fa]},separators=(',',':')))

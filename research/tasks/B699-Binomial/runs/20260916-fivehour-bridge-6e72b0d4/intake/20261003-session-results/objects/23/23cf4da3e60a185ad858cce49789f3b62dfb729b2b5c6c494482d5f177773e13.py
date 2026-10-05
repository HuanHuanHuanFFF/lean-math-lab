from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];rd=lambda p:json.loads(p.read_text());raw=rd(out/'experiments/outer_R.json');core=rd(out/'certificates/core.json')
R,u,y=ring('u,y',QQ)
p=R.from_dict({tuple(m):QQ(c) for m,c in raw['polynomial']})
def cv4(n):return R.from_dict({(m[0],m[1]):QQ(c) for m,c in core['polys4'][n]})
def cv3(n):return R.from_dict({(m[0],m[1]):QQ(c) for m,c in core['polys3'][n]})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
t=time.monotonic();facts={}
for name,v in [('u',u),('y',y),('um1',u-1),('ym1',y-1),('H',cv4('H')),('J',cv4('J')),('E',cv4('E')),('Acal',cv3('Acal'))]:
 power=0
 while p and not p.rem(v):p=p.exquo(v);power+=1
 facts[name]=power;print('stripped',name,power,'deg',p.degrees(),'terms',len(p),'time',time.monotonic()-t,flush=True)
co,pp=p.primitive();print('primitive scalar',co,'degrees',pp.degrees(),'terms',len(pp),flush=True)
(out/'experiments/outer_R_stripped.json').write_text(json.dumps({'variables':['u','y'],'stripped':facts,'scalar':str(co),'remaining':pack(pp)},separators=(',',':')))
t=time.monotonic();co,fa=pp.factor_list();print('FACTORS',time.monotonic()-t,co,[(len(q),q.degrees(),e) for q,e in fa],flush=True)
(out/'experiments/outer_R_stripped_factors.json').write_text(json.dumps({'variables':['u','y'],'scalar':str(co),'factors':[[pack(q),e] for q,e in fa]},separators=(',',':')))

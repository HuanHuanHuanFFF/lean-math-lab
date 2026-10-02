# Optional diagnostic; not part of the proof replay. Requires SymPy.
from pathlib import Path
import json,time,sys
from sympy import QQ,GF
from sympy.polys.rings import ring
ROOT=Path(__file__).resolve().parents[1];data=json.loads((ROOT/'certificates/generic.json').read_text())
mod='--mod' in sys.argv;dom=GF(32003) if mod else QQ
R,r,u,y=ring('r,u,y',dom)
def ld(ts):return R.from_dict({(m[2],m[0],m[1]):dom(c) for m,c in ts})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
f=ld(data['B5']);g=ld(data['low']['4']['stripped'])
t=time.monotonic();print('started',mod,len(f),len(g),flush=True)
res=f.resultant(g)
print('resultant',len(res),res.degrees(),'seconds',time.monotonic()-t,flush=True)
(ROOT/'experiments'/('projection_mod.json' if mod else 'projection.json')).write_text(json.dumps({'variables':['u','y'],'terms':pack(res)},separators=(',',':')))
print('factor starting',flush=True);scalar,fac=res.factor_list()
print('factor',scalar,[(len(p),p.degrees(),e) for p,e in fac],time.monotonic()-t,flush=True)
(ROOT/'experiments'/('projection_mod_factors.json' if mod else 'projection_factors.json')).write_text(json.dumps({'scalar':str(scalar),'factors':[[pack(p),e] for p,e in fac]},separators=(',',':')))

from pathlib import Path
import os
ROOT=Path(__file__).resolve().parents[2]
WORK=Path(os.environ['REG3_REGEN_DIR']).resolve()
WORK.mkdir(parents=True,exist_ok=True)
import json
from pathlib import Path
from sympy.polys.rings import ring
from sympy.polys.domains import QQ,GF
W=WORK;OUT=WORK
R,v=ring('v',QQ)
def load(t):return R.from_dict({tuple(e):QQ(c)for e,c in t})
def terms(p):return [[list(m),str(c)]for m,c in sorted(p.items())]
for branch in ['J','A5']:
 j=json.loads((W/f'param_{branch}_resultants.json').read_text())
 fs={key:load(j[key]['terms'])for key in ['G4','G0']}
 g=fs['G4'].gcd(fs['G0']);const,factors=g.factor_list();core=R.one
 for f,e in factors:core*=f**e
 obj={'branch':branch,'variables':['v'],'core_factors':[{'polynomial':terms(f),'power':e}for f,e in factors], 'core':terms(core), 'resultants':{}}
 cofs=[]
 for name,f in fs.items():
  q,rem=divmod(f,core);assert not rem
  c,q=q.primitive();assert all(v.denominator==1 for v in q.values())
  obj['resultants'][name]={'polynomial':terms(f),'cofactor':terms(q),'scalar':str(c)}
  cofs.append(q)
 for p in [32003,101,103,107,109]:
  Rp,x=ring('v',GF(p));modfs=[Rp.from_dict({e:int(c)%p for e,c in f.items()})for f in cofs]
  if all(f.degree()==g.degree()for f,g in zip(modfs,cofs)) and modfs[0].gcd(modfs[1])==Rp.one:
   obj['cofactor_gcd_certificate']={'prime':p,'degrees':[f.degree()for f in modfs], 'leading_coefficients':[int(f.LC)for f in modfs]};break
 else:raise RuntimeError('No gcd certificate')
 if branch=='A5':
  obj['rational_root_obstructions']=[]
  for f,e in factors:
   d=f.degree()
   if d in [10,20]:
    p=7 if d==10 else 23
    vals=[sum(int(c)*pow(z,m[0],p)for m,c in f.items())%p for z in range(p)];assert all(vals)
    obj['rational_root_obstructions'].append({'degree':d,'polynomial':terms(f),'prime':p,'leading_mod_prime':int(f.LC)%p,'values':vals})
 (OUT/f'terminal_{branch}.json').write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n')
 print(branch,'core',core.degree(), 'cofactor_degrees',[f.degree()for f in cofs],obj['cofactor_gcd_certificate'])

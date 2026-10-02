from pathlib import Path
import os
ROOT=Path(__file__).resolve().parents[2]
WORK=Path(os.environ['REG3_REGEN_DIR']).resolve()
WORK.mkdir(parents=True,exist_ok=True)
import json,sys,time
from pathlib import Path
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
R,r,v=ring('r,v',QQ)
branch=sys.argv[1];a=json.loads((WORK/f'param_{branch}.json').read_text())
f={nm:R.from_dict({(e[1],e[0]):QQ(c) for e,c in z['terms']}) for nm,z in a['polys'].items()}
res={}
for nm in sys.argv[2:] or ['G4','G1','G0']:
 st=time.time();print('start',branch,nm,flush=True)
 z=f['P5'].resultant(f[nm]);print('result',nm,'deg',z.degree(),'terms',len(z),'sec',time.time()-st,flush=True)
 fac=z.factor_list();print('factors',[(x.degree(),k) for x,k in fac[1]],'seconds',time.time()-st,flush=True)
 res[nm]={'terms':[[list(e),str(c)] for e,c in sorted(z.items())], 'scalar':str(fac[0]),'factors':[{'exp':k,'terms':[[list(e),str(c)] for e,c in sorted(x.items())]}for x,k in fac[1]]}
 (WORK/f'param_{branch}_resultants.json').write_text(json.dumps(res))

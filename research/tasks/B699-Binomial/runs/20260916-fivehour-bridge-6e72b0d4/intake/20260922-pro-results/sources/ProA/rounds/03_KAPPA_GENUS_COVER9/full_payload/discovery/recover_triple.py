from pathlib import Path
import sys,json
sys.path.insert(0,'/mnt/data/prior_h127/B699-ProA-TRACE-B28-20260921/code')
from algebra import equations,tangent_jet,affine,monomials
import sympy as sp
root=Path('/mnt/data/B699-ProA-KAPPA0-20260921');N,X=sp.symbols('N X');q=4;rec=[]
for ms in json.loads((root/'discovery/triple4.json').read_text())['multiplicities']:
 eq=equations(q,1,ms);m=ms[5][-1]
 for w in range(2*m):
  for j in range(w//2+1):eq.append(tangent_jet(q,8,w-2*j,j))
 vs=affine(eq,25);assert vs is not None
 poly=[sum(sp.Rational(c.numerator,c.denominator)*N**a*X**b for (a,b),c in zip(monomials(q),v)) for v in vs]
 factors=[sp.factor(p) for p in poly];print('M',ms,'dim',len(vs)-1,'poly',factors,flush=True)
 rec.append(dict(m=ms,vectors=[[str(c) for c in v] for v in vs],factors=[str(f) for f in factors]))
(root/'certificates/triple4_spaces.json').write_text(json.dumps(rec,indent=2)+'\n')

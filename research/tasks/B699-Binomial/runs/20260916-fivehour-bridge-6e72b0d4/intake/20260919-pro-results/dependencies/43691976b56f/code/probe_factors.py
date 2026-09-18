"""Discovery-only SymPy factor suggestions; acceptance verifies identities itself."""
from pathlib import Path
import json,sympy as s
from collections import Counter
R=Path(__file__).resolve().parents[1];N,X=s.symbols('N X')
a=json.loads((R/'evidence/tail_actual_multiplicity_probe.json').read_text())['actual_mu35']
cores=Counter();records=[]
for rec in a:
 H=sum(s.Rational(c,d)*N**i*X**j for i,j,c,d in rec['H'])
 coeff,fac=s.factor_list(H,N,X)
 cs=[]
 for p,e in fac:
  po=s.Poly(p,X);lc=po.LC()
  assert not lc.has(N)
  p=s.expand(p/lc)
  ts=[t for t in range(9) if s.expand(p-(X-t*N+t*t))==0]
  if not ts:cores[str(p)]+=1;cs.append([str(p),int(e)])
 records.append({'index':rec['index'],'factorization':str(s.factor(H)),'other_factors':cs})
(R/'evidence/factor_probe.json').write_text(json.dumps({'sympy_version':s.__version__,'cores':dict(cores),'records':records},indent=2))
print('CORES',dict(cores))
for x in records[:5]:print(x)

import json,sys
from math import comb
from pathlib import Path
import sympy as S
root=Path(__file__).resolve().parents[1]
key=sys.argv[1] if len(sys.argv)>1 else '124'
data=json.loads((root/f'evidence/three_slot_{key}_seed.json').read_text()); mon=data['monomials'];D=data['degree']
x,y=S.symbols('x y')
Fs=[]
for ix,vec in enumerate(data['vectors']):
 terms={}
 for (a,b),v in zip(mon,vec):
  if not v:continue
  d=D-a-b
  for u in range(d+1):
   for w in range(d-u+1):
    c=v*comb(d,u)*comb(d-u,w)*(-1)**(d-u-w)
    ab=(a+u,b+w);terms[ab]=terms.get(ab,0)+c
 terms={ab:c for ab,c in terms.items() if c}
 poly=S.Poly.from_dict(terms,(x,y)); cf,fac=S.factor_list(poly.as_expr())
 print('basis',ix,'deg',poly.total_degree(),'T',min(a+b for a,b in terms),'factors',[(S.total_degree(f),int(e),str(f)[:160]) for f,e in fac],flush=True)
 Fs.append([[a,b,c] for (a,b),c in sorted(terms.items())])
(root/f'evidence/three_slot_{key}_basis.json').write_text(json.dumps({'polynomials':Fs,'slots':data['slots'],'degree':D,'weights':data['weights']},indent=2)+'\n')

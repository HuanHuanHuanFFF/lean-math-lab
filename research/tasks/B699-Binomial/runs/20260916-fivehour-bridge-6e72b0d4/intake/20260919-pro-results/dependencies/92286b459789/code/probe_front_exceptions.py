import argparse,json,sympy as sp
from fractions import Fraction as F
from pathlib import Path
from discover_nf import Model
from discover_front import assemble
R=Path(__file__).resolve().parents[1];ap=argparse.ArgumentParser();ap.add_argument('--q',type=int,default=7);args=ap.parse_args();q=args.q
cert=json.loads((R/f'evidence/nf{6*q-1}_front_certificate.json').read_text());N,X=sp.symbols('N X')
for i,rec in enumerate(cert):
 if 'base' not in rec:continue
 m=Model(q);_,_,p0=m.matrix(rec);v=[F(*c) for c in rec['base']];p=assemble(m,p0,v);H=sum(sp.Rational(c)*N**a*X**b for (a,b),c in p.items())/120
 print('EXCEPTION',q,i,'h',rec['h'],'dimension',len(rec['directions']),'lines',rec['line_factors'],flush=True)
 print('BASE_FACTOR',sp.factor(H),flush=True)
 if not rec['directions']:
  print('SHIFT20',sp.Poly(H.subs(N,N+20),N,X),flush=True)
 print('COEFFICIENTS',[(a,b,str(c/120)) for (a,b),c in p.items()],flush=True)

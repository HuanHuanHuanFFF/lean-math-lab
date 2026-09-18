"""Optional discovery using SymPy, not required by the stdlib-only acceptance.
The original candidate was discovered with the same search as an inline command.
This replay checks the already stored candidate and never overwrites it.
"""
from pathlib import Path
import json
import sympy as S
ROOT=Path(__file__).resolve().parents[1]
N,X=S.symbols('N X');W=S.prod(N-r for r in range(3,9))
P=S.prod(X-s*(N-s) for s in range(5))
Q=N**4-10*N**3+35*N**2-50*N+24+(-3*N**2+20*N-35)*X+X**2
H=S.expand(1000*P-W*Q)
for p in (11,13,17,19,23,29,31):
 for n in range(p):
  f=S.Poly(H.subs(N,n),X,modulus=p)
  if f.is_irreducible:
   record=json.loads((ROOT/'evidence/irreducible_example.json').read_text())
   assert p==record['p'] and n==record['N_specialization']
   assert [int(a)%p for a in f.all_coeffs()]==record['poly_coefficients_desc']
   print('SymPy',S.__version__,'p',p,'N',n,'polynomial',f.as_expr())
   print('DISCOVERY_MATCHES_FROZEN_NEW_EXAMPLE; acceptance uses a separate finite-field implementation')
   raise SystemExit(0)
raise RuntimeError('No discovery candidate found')

"""Test an affine cubic norm-form rewrite; exact rational algebra, not a solver."""
import json
import hashlib
from datetime import datetime, timezone
from pathlib import Path
import sympy as sp

D,W,a,b,c=sp.symbols('D W a b c')
C=W+c;B=b-D;A=a
matrix=sp.Matrix([[C,-4*A,-4*B],[B,C+27*A,27*B-4*A],[A,B,C+27*A]])
norm=sp.expand(matrix.det())
G=W**3-27*W*D**2+4*D**3+18*D*W+8*D**2-9*W-4*D
poly=sp.Poly(norm-G,D,W)
conditions=[poly.coeff_monomial(mon) for mon in (D**2,D*W,W**2)]
solution=sp.solve(conditions,(a,b,c),dict=True)
assert len(solution)==1
remainder=sp.factor((norm-G).subs(solution[0]))
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS',
        'norm_translation':{str(k):str(v) for k,v in solution[0].items()},
        'norm_minus_G_after_quadratic_matching':str(remainder),
        'constant_norm_equation_obtained':not (remainder.has(D) or remainder.has(W)),
        'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
path=Path(__file__).with_name(f'stage04-norm-ansatz-{stamp}.json')
path.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result,separators=(',',':')))

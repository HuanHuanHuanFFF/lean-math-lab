"""One-time discovery export. SymPy is NOT imported by acceptance."""
from pathlib import Path
import json
import sympy as sp
ROOT=Path(__file__).resolve().parents[1]
N,X=sp.symbols('N X')
mon=[(a,b)for b in range(4)for a in range(7-2*b)]
def vector(e):
 p=sp.Poly(e,N,X)
 return [int(p.coeff_monomial(N**a*X**b)) for a,b in mon]
ans=[]
for item in json.loads((ROOT/'evidence/dense_pencils.json').read_text()):
 expr=sp.sympify(item['T'],locals={'N':N,'X':X})
 c,fs=sp.factor_list(expr)
 rec={'z':item['z'],'mask':item['mask'],'T':vector(expr),'pc':item['pc']}
 if item['pc']:
  rec['factor_constant']=int(c)
  rec['factors']=[{'vector':vector(f),'exponent':int(e)}for f,e in fs]
 ans.append(rec)
(ROOT/'evidence/dense_certificates.json').write_text(json.dumps(ans,indent=2)+'\n')
print('exported',len(ans),'dense exact coefficient/factor records')

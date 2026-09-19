from pathlib import Path
import sympy as s,json
R=Path(__file__).resolve().parents[1];X=s.Symbol('X');out=[]
for rec in json.loads((R/'evidence/isolated_exception_analysis.json').read_text()):
 q=rec['q']
 if q not in (7,8):continue
 found=None
 for n in range(10):
  coeff=[sum(c*n**a for a,b,c in rec['terms'] if b==i) for i in range(q+1)]
  for p in list(s.primerange(2,150)):
   if coeff[-1]%p==0:continue
   ff=s.Poly(sum(c*X**i for i,c in enumerate(coeff)),X,modulus=p)
   if ff.is_irreducible:
    found={'q':q,'index':rec['index'],'N':n,'prime':p,'coeff_ascending':coeff};break
  if found:break
 print('IRREDUCIBILITY',q,found,flush=True);out.append(found)
(R/'evidence/irreducible_exceptions_discovery.json').write_text(json.dumps(out,indent=2)+'\n')

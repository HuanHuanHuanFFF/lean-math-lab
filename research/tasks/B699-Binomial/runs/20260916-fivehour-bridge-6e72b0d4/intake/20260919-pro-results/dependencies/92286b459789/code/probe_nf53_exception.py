from pathlib import Path
import json,time
from fractions import Fraction
import sympy as sp
from sympy.polys.matrices import DomainMatrix
from discover_nf import Model,RS,VS
R=Path(__file__).resolve().parents[1]
rec=json.loads((R/'evidence/nf53_z14_certificate.json').read_text())[1246];m=Model(9)
labs,a,p0=m.matrix(rec);print('RECORD',rec,flush=True);t=time.monotonic()
A=DomainMatrix.from_Matrix(sp.Matrix(a));rr,piv=A.rref();mm=rr.to_Matrix();print('RREF',len(piv),piv,'seconds',time.monotonic()-t,flush=True)
base=[sp.Rational(0)]*m.nc
if m.nc in piv:print('RATIONAL_INCONSISTENT',flush=True)
else:
 for i,c in enumerate(piv):base[c]=mm[i,m.nc]
 free=[c for c in range(m.nc) if c not in piv]
 params=sp.symbols('t:'+str(len(free)))
 for f,p in zip(free,params):
  base[f]=p
  for i,c in enumerate(piv):base[c]-=mm[i,f]*p
 N,X=sp.symbols('N X');H=sum(c*N**i*X**j for (i,j),c in p0.items())
 for c,b in zip(base,m.bas):H+=c*sum(v*N**i*X**j for (i,j),v in b.items())
 H=sp.Poly(H,N,X).as_expr()/120
 print('free',free,'factor',sp.factor(H),flush=True)
 for t0 in range(5):print('line',t0,sp.factor(H.subs(X,t0*N-t0*t0)),flush=True)
 out={'record':rec,'rank':len(piv),'free_columns':free,'factorization_diagnostic':str(sp.factor(H)),'H_terms':[(int(i),int(j),str(c)) for (i,j),c in sp.Poly(H,N,X).terms()]}
 (R/'evidence/nf53_exception_diagnostic.json').write_text(json.dumps(out,indent=2))

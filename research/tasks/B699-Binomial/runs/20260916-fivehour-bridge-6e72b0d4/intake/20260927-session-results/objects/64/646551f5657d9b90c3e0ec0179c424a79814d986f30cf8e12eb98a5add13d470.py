from pathlib import Path
from fractions import Fraction as F
import sys,json
P=Path(__file__).resolve().parents[1];sys.path.insert(0,str(P/'code'))
from exact_minors import integer_columns,jet,poly_add,scalar
from exact_recovery import rref,encode
import sympy as s
N,X=s.symbols('N X');rec=[]
for ix in [1,7,8]:
 line=(P/'discovery/geometry/ext01_q4.gates').read_text().splitlines()[ix]
 cols,labels,m,k=integer_columns(line);mat=[]
 for r,t,i,j,pt in labels:
  if i+j<m[pt]or(2*t==r and i+2*j<2*m[pt]-k[r-3]):mat.append([jet(c,r,t,i,j)for c in cols])
 rr,piv=rref(mat,len(cols));free=[i for i in range(len(cols))if i not in piv]
 polys=[];coords=[]
 for a in free:
  v=[F(0)]*len(cols);v[a]=F(1)
  for l,b in enumerate(piv):v[b]=-rr[l][a]
  H={}
  for z,c in zip(v,cols):H=poly_add(H,scalar(c,z))
  co=H.get((0,4),0)
  if co:v=[z/co for z in v];H=scalar(H,F(1)/co)
  expr=sum(s.Rational(z.numerator,z.denominator)*N**a*X**b for(a,b),z in H.items())
  print('gate',ix,'rank',len(piv),'free',a,'factor',s.factor(expr),flush=True)
  polys.append(encode(H));coords.append([str(z)for z in v])
 rec.append({'gate':ix,'rank':len(piv),'basis':polys,'coordinates':coords})
(P/'discovery/extra_quartic_kernels.json').write_text(json.dumps(rec,indent=2)+'\n')

"""Second exact implementation: direct bivariate substitutions, full affine matrix."""
from common import *
import sympy as sp
from candidate_forms import N,X,W,P0,lam
from pathlib import Path
u,t=sp.symbols('u t');a=sp.symbols('a:4')
line=list(map(int,(ROOT/'certificates/geometry2022/g01.txt').read_text().splitlines()[0].split()))
q=line[0];d,k,L,B,m=line[1:7],line[7:13],line[13:19],line[19:25],line[25:];assert q==4
H0=0;pt=0
for r in range(3,9):
 F=sp.Integer(1)
 for s in range(r//2+1):F*= (X-s*(r-s))**m[pt];pt+=1
 if d[r-3]==1:F*=X-sp.Rational(L[r-3],120)
 elif d[r-3]==2:F*=X**2-sp.Rational(L[r-3],120)*X+sp.Rational(B[r-3],120)
 H0+=F*sp.prod(sp.Rational(1,r-v)*(N-v) for v in range(3,9) if v!=r)
H=sp.expand(H0+W*(a[0]+a[1]*N+a[2]*N*N+a[3]*X));eq=[];labels=[];pt=0
for r in range(3,9):
 for s in range(r//2+1):
  centre=2*s==r;local=sp.Poly(H.subs({N:r+u,X:s*(r-s)+(s*u if centre else 0)+t}),u,t)
  for j in range(q+1):
   for i in range(2*q+1):
    if i+j<m[pt] or (centre and i+2*j<2*m[pt]-k[r-3]):
     v=local.coeff_monomial(u**i*t**j)
     if v!=0:eq.append(v);labels.append([r,s,i,j])
  pt+=1
M,b=sp.linear_eq_to_matrix(eq,a);rank=M.rank();aug_rank=M.row_join(b).rank();assert rank==aug_rank==3
A=sp.expand(P0+lam*(N-3)*(N-5)*W)
quotient=sp.cancel((A-H0)/W);poly=sp.Poly(quotient,N,X)
assert all(i+2*j<=2 for i,j in poly.monoms())
sol=sp.Matrix([poly.coeff_monomial(mon) for mon in [1,N,N*N,X]])
assert M*sol==b and any(sp.diff(v,lam)!=0 for v in sol)
assert sp.expand(A.subs(lam,0)-sp.prod(X-j*N+j*j for j in range(4)))==0
rec={'verified':True,'implementation':'literal substitutions and complete rational affine rank','unknowns':4,'rank':rank,'augmented_rank':aug_rank,'parameter_dimension':1,'matrix':[[str(v) for v in row] for row in M.tolist()],'rhs':[str(v) for v in b],'labels':labels,'solution_coordinates':[str(v) for v in sol],'family':str(A),'lambda_zero_reducible':True}
(ROOT/'certificates/geometry2022/rational_receiver.json').write_text(json.dumps(rec,indent=2)+'\n');print('PASS complete Q one-parameter A35 family; rank 3 of 4 affine unknowns; lambda0 reducible')

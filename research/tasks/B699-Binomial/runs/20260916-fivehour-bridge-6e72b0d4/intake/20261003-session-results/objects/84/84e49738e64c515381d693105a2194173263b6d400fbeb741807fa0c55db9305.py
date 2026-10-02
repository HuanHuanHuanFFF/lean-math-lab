from pathlib import Path
from fractions import Fraction
import sympy as s,json
root=Path(__file__).resolve().parents[1]; d=root/'certificates/geometry'
q=5; line=int((d/'g01.exceptions').read_text().split()[0]); v=list(map(int,(d/'g01.txt').read_text().splitlines()[line].split()))
assert v[0]==q
Delta,K,L,B,ms=v[1:7],v[7:13],v[13:19],v[19:25],v[25:]
N,X,u,t=s.symbols('N X u t');W=s.prod(N-r for r in range(3,9));H0=0;pt=0
for r in range(3,9):
 f=1
 for a in range(r//2+1):f*= (X-a*(r-a))**ms[pt];pt+=1
 if Delta[r-3]==1:f*=X-s.Rational(L[r-3],120)
 elif Delta[r-3]==2:f*=X**2-s.Rational(L[r-3],120)*X+s.Rational(B[r-3],120)
 H0+=s.expand(f)*s.prod((N-z)/s.Integer(r-z) for z in range(3,9) if z!=r)
H0=s.Poly(s.expand(H0),N,X)
assert max(a+2*b for a,b in H0.monoms())<=2*q
mons=[(a,b) for b in range(q-2) for a in range(2*q-5-2*b)]
Hterms=[s.Poly(s.expand(W*N**a*X**b),N,X) for a,b in mons]
constraints=[];metadata=[];pt=0
for r in range(3,9):
 for a in range(r//2+1):
  shear=a if 2*a==r else 0;centre=bool(shear);m=ms[pt]
  locals=[s.Poly(s.expand(H.as_expr().subs({N:r+u,X:a*(r-a)+shear*u+t},simultaneous=True)),u,t) for H in [*Hterms,H0]]
  for j in range(m):
   for i in range(1,max(m-j,2*m-2*j-K[r-3]) if centre else m-j):
    constraints.append([p.coeff_monomial(u**i*t**j) for p in locals]);metadata.append((r,a,i,j))
  pt+=1
M=s.Matrix(constraints);rr,pivs=M.rref();basis=M.nullspace()
print('rational matrix',M.shape,'rank',len(pivs),'basis dimension',len(basis),'last',[b[-1] for b in basis],flush=True)
assert any(b[-1]!=0 for b in basis)
h=next(b for b in basis if b[-1]!=0);vec=h/h[-1]
free=[b-b[-1]*vec for b in basis if b!=h]
pars=s.symbols('a0:'+str(len(free)))
vec=vec+sum((c*b for c,b in zip(pars,free)),s.zeros(M.cols,1))
H=s.Poly(s.expand(H0.as_expr()+sum(c*p.as_expr() for c,p in zip(vec,Hterms))),N,X)
factors=s.factor_list(H.as_expr());print('ranks',len(pivs),'columns',M.cols,'H=',s.factor(H.as_expr()),flush=True)
assert len(factors[1])>=2 or any(mul>1 for _,mul in factors[1])
assert M*vec==s.zeros(M.rows,1)
rec={'profile':1,'gate_line':line,'q':q,'matrix_rows':M.rows,'matrix_columns':M.cols,'rank_Q':len(pivs),'kernel_dimension':len(basis),'R_coefficients':[str(c) for c in vec[:-1]],'H':str(H.as_expr()),'factorization':str(s.factor(H.as_expr())),'factor_list':[[str(f),m] for f,m in factors[1]],'identity_verified':True,'all_constraints_verified':True}

assert len(basis)==2 and len(pivs)==8 and len(pars)==1
P0=s.prod(X-a*N+a*a for a in range(4));B0=(N-3)*(N-4)*W
simple=(X-(N-4)*(N-5))*(P0+pars[0]*B0)
assert s.expand(H.as_expr()-simple)==0
assert s.Poly(X-(N-4)*(N-5),X).LC()==1
assert s.Poly(P0+pars[0]*B0,X).LC()==1
rec['uniform_factorization']='(X-(N-4)*(N-5))*(P0+a0*B)'
rec['parameter_domain']='all rational a0, including 0'
rec['factor_degrees_X']=[1,4]

(d/'rational_exception.json').write_text(json.dumps(rec,indent=2)+'\n')

"""Discovery/reconstruction only. Acceptance uses verify.py, standard library only."""
from pathlib import Path
import sympy as S
from math import comb,gcd,lcm
import json
root=Path(__file__).resolve().parents[1]
x,y=S.symbols('x y');N=x+y;J=x*y
basis=[S.Poly(S.expand(J*(J-N+1)*N**a*J**b),x,y) for b in range(7) for a in range(13-2*b)]
rows=[]
for r,w in [(1,8),(3,4),(4,3),(5,2)]:
 for x0 in range(r//2+1):
  y0=r-x0
  for d in range(w):
   for u in range(d+1):
    v=d-u
    row=[sum(c*comb(a,u)*comb(b,v)*x0**(a-u)*y0**(b-v) for (a,b),c in poly.terms() if a>=u and b>=v) for poly in basis]
    if any(row):rows.append(row)
M=S.Matrix(rows)
print('shape',M.shape,flush=True)
ker=M.nullspace();print('nullity',len(ker),flush=True);assert len(ker)==1
vec=ker[0];den=lcm(*(int(v.q) for v in vec));vi=[int(den*v) for v in vec];gg=gcd(*vi);vi=[v//gg for v in vi]
F=S.Poly(sum(v*p.as_expr() for v,p in zip(vi,basis)),x,y)
if F.eval({x:7,y:7})<0:F=-F
terms=[[int(a),int(b),int(c)] for (a,b),c in F.terms()]
A=sum(abs(c) for a,b,c in terms)
print('degree',F.total_degree(),'terms',len(terms),'norm',A,'origin',min(a+b for a,b,c in terms),flush=True)
assert A==125665012224
shift=S.Poly(F.as_expr().subs({x:x+7,y:y+7},simultaneous=True),x,y)
assert all(c>0 for c in shift.coeffs())
print('positive_shift_terms',len(shift.terms()),flush=True)
checks=0
for r,w in [(1,8),(3,4),(4,3),(5,2)]:
 for x0 in range(r+1):
  y0=r-x0
  for d in range(w):
   for u in range(d+1):
    v=d-u
    val=sum(c*comb(a,u)*comb(b,v)*x0**(a-u)*y0**(b-v) for a,b,c in terms if a>=u and b>=v)
    assert val==0; checks+=1
print('zero_conditions',checks,flush=True)
(root/'evidence/kernel.json').write_text(json.dumps({'terms':terms,'degree':16,'origin_order':2,'l1':A,'weights':{'1':8,'3':4,'4':3,'5':2}},indent=2)+'\n')
(root/'evidence/reconstruction.json').write_text(json.dumps({'basis_size':len(basis),'matrix_shape':list(M.shape),'nullity':len(ker),'checks':checks,'nonzero_positive_shift_terms':len(shift.terms()),'sympy_version':S.__version__},indent=2)+'\n')

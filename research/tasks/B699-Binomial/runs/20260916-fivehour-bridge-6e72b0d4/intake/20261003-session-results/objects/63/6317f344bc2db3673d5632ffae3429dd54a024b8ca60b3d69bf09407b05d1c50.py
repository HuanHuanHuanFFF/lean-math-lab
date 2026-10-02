import sympy as s, math, time
from itertools import product
N,X,Y,D=s.symbols('N X Y D')
def mons(deg):return [(a,k-a) for k in range(deg+1) for a in range(k,-1,-1)]
def primitive(v):
 L=s.ilcm(*[x.q for x in v]);z=[int(x*L) for x in v];g=math.gcd(*z);z=[x//g for x in z]
 if next(x for x in z if x)<0:z=[-x for x in z]
 return z
def kernel(lay,deg,mults,org=1,src1=True):
 M=mons(deg)
 def row(n,x,da,db):
  return [math.factorial(a)//math.factorial(a-da)*math.factorial(b)//math.factorial(b-db)*n**(a-da)*x**(b-db) if a>=da and b>=db else 0 for a,b in M]
 rows=[]
 for t in range(org):
  for a in range(t+1):rows.append(row(0,0,a,t-a))
 if src1: rows +=[row(1,0,0,0),row(1,1,0,0)]
 for h,S,m in zip((3,4,5),lay,mults):
  for b in S:
   for t in range(m):
    for a in range(t+1):rows.append(row(h,b,a,t-a))
 mat=s.polys.matrices.DomainMatrix.from_Matrix(s.Matrix(rows)).to_field()
 ns=mat.nullspace().to_Matrix()
 return [s.Poly(sum(c*N**a*X**b for c,(a,b) in zip(primitive(list(v)),M)),N,X).as_expr() for v in ns.tolist()],len(rows),len(M)
def info(f):
 P=s.Poly(f,N,X);org=min(sum(m) for m,c in P.terms());T=s.Poly(s.expand(f.subs({N:21+2*Y+D,X:7+Y},simultaneous=True)),Y,D);sg=len(set(s.sign(x) for x in T.coeffs()))==1
 C=sum(abs(c)*s.Rational(1,2**b*352**(P.total_degree()-a-b)) for (a,b),c in P.terms())
 return {'origin':org,'sign':sg,'Cnaive':str(C),'factor':str(s.factor(f))}
if __name__=='__main__':
 for lay in [[(0,1,2,3),(0,1),(2,3)],[(0,1,2),(0,1,2),(1,3)],[(0,1,2,3),(1,3),(2,4)],[(0,1,3),(1,2,3),(2,4)]]:
  print('LAY',lay,flush=True)
  for org,src1 in [(1,True),(2,False)]:
   t=time.time();fs,r,c=kernel(lay,6,[2]*3,org,src1)
   print('DIM',len(fs),r,c,'org',org,'s1',src1,'time',time.time()-t,flush=True)
   for f in fs:print(info(f),flush=True)

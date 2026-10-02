from itertools import combinations,product
from functools import reduce
import sympy as s, math,json
N,X=s.symbols('N X')
MONS=[(i,j) for d in range(5) for i in range(d,-1,-1) for j in [d-i]]
def row(n,x,dx=0,dy=0):
 return [int(math.prod(range(a-dx+1,a+1))*math.prod(range(b-dy+1,b+1))*n**(a-dx)*x**(b-dy)) if a>=dx and b>=dy else 0 for a,b in MONS]
def primitive(v):
 v=[s.Rational(x) for x in v]; l=s.ilcm(*[x.q for x in v]); z=[int(x*l) for x in v];g=math.gcd(*z);z=[x//g for x in z];
 if next(x for x in z if x)<0:z=[-x for x in z]
 return z
def kernel(layout,dbl,origin=1,source1=True):
 rows=[row(0,0)]
 if origin>=2:rows += [row(0,0,1,0),row(0,0,0,1)]
 if source1:rows += [row(1,0),row(1,1)]
 for h,slots in zip((3,4,5),layout):
  for b in slots:
   rows.append(row(h,b))
   if h==dbl:rows.extend((row(h,b,1,0),row(h,b,0,1)))
 v=s.Matrix(rows).nullspace()
 return [s.Poly(sum(c*N**a*X**b for c,(a,b) in zip(primitive(z),MONS)),N,X).as_expr() for z in v]
if __name__=='__main__':
 layouts=[[(0,1,3),(1,3),(2,4)],[(0,1,2),(1,3),(1,4)],[(0,3),(0,2,4),(1,3)],[(0,2),(1,3),(0,2,4)],[(0,1,3),(0,3),(0,4)],[(0,2),(1,3),(1,2,4)]]
 for lay in layouts:
  print('LAYOUT',lay)
  for h,pair in zip((3,4,5),lay):
   if len(pair)!=2:continue
   fs=kernel(lay,h)
   print('double',h,'dim',len(fs))
   for f in fs:print(s.factor(f))

import math,time,json,sys
from pathlib import Path
import sympy as sp
from sympy.polys.matrices import DomainMatrix
D=int(sys.argv[1]) if len(sys.argv)>1 else 28
w=tuple(map(int,sys.argv[2:5])) if len(sys.argv)>4 else (14,7,8)
base=Path(__file__).resolve().parents[1]
cols=[(a,b) for a in range(D-3) for b in range(a+1) if a+b<=D-4]
points=[(0,1,w[0]-2,False),(0,3,w[1]-1,False),(1,2,w[1]-1,False),(1,3,w[2]-1,False),(2,2,w[2],True)]
rows=[]
for x,y,m,diag in points:
 for u in range(max(0,m)):
  for v in range(max(0,m)-u):
   if diag and u>v: continue
   row=[]
   for a,b in cols:
    z=0
    for aa,bb in [(a,b)]+([(b,a)] if a!=b else []):
     if aa>=u and bb>=v:z+=math.comb(aa,u)*math.comb(bb,v)*x**(aa-u)*y**(bb-v)
    row.append(z)
   rows.append(row)
print('start',D,w,len(rows),len(cols),flush=True)
t=time.monotonic();dm=DomainMatrix.from_Matrix(sp.Matrix(rows));ns=dm.nullspace().to_Matrix();print('null',ns.shape,time.monotonic()-t,flush=True)
x,y=sp.symbols('x y');out=[]
for ii in range(ns.rows):
 co=[int(v) for v in ns.row(ii)];gc=math.gcd(*co);co=[a//gc for a in co]
 poly=sp.Poly(sum(c*(x**a*y**b+(x**b*y**a if a!=b else 0)) for (a,b),c in zip(cols,co)),x,y)
 if poly.eval({x:6,y:6})<0:co=[-a for a in co];poly=-poly
 print('co maxbits',max(abs(v).bit_length() for v in co),'terms',len(poly.terms()),'factor',str(sp.factor(poly.as_expr()))[:1800],flush=True)
 # Positive expansion using x=6+X, y=6+X+Y via sparse convolution.
 trans={}
 for (a,b),c in poly.terms():
  for ub in range(b+1):
   # y=6+x+y : first expand in Y; remaining (6+X)^(a+b-ub)
   deg=a+b-ub
   for ua in range(deg+1):
    key=(ua,ub);trans[key]=trans.get(key,0)+int(c)*math.comb(b,ub)*math.comb(deg,ua)*6**(deg-ua)
 vals=[int(v) for v in trans.values() if v]
 print('signs',sum(v>0 for v in vals),sum(v<0 for v in vals),'minbits',min(vals),flush=True)
 out.append({'coefficients':co,'basis':cols,'positive':sum(v>0 for v in vals),'negative':sum(v<0 for v in vals),'maxbits':max(abs(v).bit_length() for v in co)})
(base/'evidence'/f'probe-d{D}-{w[0]}-{w[1]}-{w[2]}.json').write_text(json.dumps({'D':D,'w':w,'matrix':[len(rows),len(cols)],'kernels':out},indent=2))

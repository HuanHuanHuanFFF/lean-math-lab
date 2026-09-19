"""Discovery only: exact rational fat-point kernel, not an accepted theorem."""
import sympy as S, json, time, sys
from sympy.polys.matrices import DomainMatrix
from math import comb,gcd
from pathlib import Path
root=Path(__file__).resolve().parents[1]
m,T,V=map(int,sys.argv[1:4]);D=4*m+1;lim=2*m+1
mon=[(a,b) for a in range(lim+1) for b in range(lim+1) if a+b<=D]
rows=[]
for x,y,d,w in [(b,3-b,2,m) for b in range(4)]+[(b,4-b,3,m) for b in [1,2,3,4]]+[(0,0,1,T),(1,1,1,V)]:
 for o in range(w):
  for u in range(o+1):
   v=o-u
   row=[comb(a,u)*comb(b,v)*x**(a-u)*y**(b-v)*d**(D-a-b) if a>=u and b>=v else 0 for a,b in mon]
   gg=gcd(*row)
   if gg:rows.append([z//gg for z in row])
print('matrix',len(rows),len(mon),flush=True)
t=time.time();K=DomainMatrix.from_Matrix(S.Matrix(rows)).nullspace().to_Matrix()
print('seconds',round(time.time()-t,3),'nullity',K.rows,flush=True)
x,y=S.symbols('u v');vecs=[];polys=[]
for vv in K.tolist():
 vv=[int(z) for z in vv];gg=gcd(*vv);vv=[z//gg for z in vv]
 vecs.append(vv);polys.append(S.Poly.from_dict({ab:z for ab,z in zip(mon,vv) if z},(x,y)))
if polys:
 G=polys[0]
 for p in polys[1:]:G=S.gcd(G,p)
 print('GCD',S.factor(G.as_expr()),flush=True)
 print('first fact',str(S.factor(polys[0].as_expr()))[:1800],flush=True)
 result={'m':m,'T':T,'V':V,'D':D,'mon':mon,'vectors':vecs,'gcd':str(S.factor(G.as_expr()))}
 (root/'evidence'/f'probe_{m}_{T}_{V}.json').write_text(json.dumps(result))

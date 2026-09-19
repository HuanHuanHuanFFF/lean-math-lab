"""Discovery: bounded degree classes orthogonal to the two source curves."""
from itertools import product
from math import comb,gcd
import json,time
import sympy as S
from sympy.polys.matrices import DomainMatrix
from pathlib import Path
root=Path(__file__).resolve().parents[1]
u,v=S.symbols('u v');pts=[(b,3-b,2) for b in range(4)]+[(b,4-b,3) for b in (1,2,3,4)]
found=[];counts={};classes=[];t=time.time()
for d in range(1,13):
 cs=[x for x in product(range(d+1),repeat=3) if sum(x)<=d]
 cs=[x+(d-sum(x),) for x in cs]
 cs=[x for x in cs if 4*sum(y*y for y in x)<=d*d+8]
 for a in range(d+1):
  b=d-a
  if abs(a-b)>2:continue
  mon=list(product(range(a+1),range(b+1)))
  for x in cs:
   sx=sum(y*y for y in x)
   for y in cs:
    mm=x+y
    if sx+sum(z*z for z in y)>2*a*b+2:continue
    if sum(c*z for c,z in zip((0,3,6,9),x))-sum(c*z for c,z in zip((2,4,6,8),y))!=b:continue
    classes.append((a,b,mm))
    rows=[]
    for (x0,y0,dd),w in zip(pts,mm):
     for o in range(w):
      for ii in range(o+1):
       jj=o-ii
       row=[comb(aa,ii)*comb(bb,jj)*x0**(aa-ii)*y0**(bb-jj)*dd**(d-aa-bb) if aa>=ii and bb>=jj else 0 for aa,bb in mon]
       gg=gcd(*row)
       if gg:rows.append([z//gg for z in row])
    K=DomainMatrix.from_Matrix(S.Matrix(rows) if rows else S.zeros(0,len(mon))).nullspace().to_Matrix()
    for rr in K.tolist():
     rr=[int(z) for z in rr];gg=gcd(*rr);rr=[z//gg for z in rr]
     pol=S.Poly.from_dict({ab:z for ab,z in zip(mon,rr) if z},(u,v))
     f=S.factor(pol.as_expr())
     found.append({'a':a,'b':b,'multiplicities':mm,'nullity':K.rows,'terms':[[*ab,int(z)] for ab,z in pol.terms()],'factor':str(f)})
     print('class',(a,b),mm,'dim',K.rows,':',f,flush=True)
 print('d',d,'classes total',len(classes),'found',len(found),flush=True)
(root/'evidence'/'zero_intersection_probe.json').write_text(json.dumps({'classes':classes,'found':found},indent=2))
print('seconds',time.time()-t)

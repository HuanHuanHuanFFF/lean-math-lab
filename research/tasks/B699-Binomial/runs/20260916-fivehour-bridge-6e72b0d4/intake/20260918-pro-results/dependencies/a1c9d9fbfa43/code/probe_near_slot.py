"""Discovery only: classify delta=0 curves for row4 missing slot 1.
Analytic degree bound d<=27 is derived in notes; no original n scan.
"""
from pathlib import Path
import json,math,time
from itertools import product
import sympy as sp
from sympy.polys.matrices import DomainMatrix
ROOT=Path(__file__).resolve().parents[1]
u,v=sp.symbols('u v')
B=(0,2,3,4);PTS=[(b,3-b,2) for b in range(4)]+[(b,4-b,3) for b in B]
start=time.time();out=[]
for d in range(1,28):
 cs=[]
 for v0 in product(range(max(0,d//4-2),min(d+1,d//4+4)),repeat=3):
  if sum(v0)>d:continue
  m=v0+(d-sum(v0),)
  if 4*sum(x*x for x in m)<=d*d+8:cs.append(m)
 for a in range(max(0,(d-2)//2),min(d+1,(d+2)//2+1)):
  b=d-a
  if abs(a-b)>2:continue
  mon=list(product(range(a+1),range(b+1)))
  for ma in cs:
   for mb in cs:
    mm=ma+mb
    if sum(c*c for c in mm)>2*a*b+2:continue
    if sum(c*x for c,x in zip((0,3,6,9),ma))-sum(c*x for c,x in zip((0,4,6,8),mb))!=b:continue
    rows=[]
    for (x,y,dd),m in zip(PTS,mm):
     for t in range(m):
      for s in range(t+1):
       r=t-s
       row=[math.comb(i,s)*math.comb(j,r)*x**(i-s)*y**(j-r)*dd**(d-i-j) if i>=s and j>=r else 0 for i,j in mon]
       gg=math.gcd(*row)
       if gg:rows.append([z//gg for z in row])
    K=DomainMatrix.from_Matrix(sp.Matrix(rows) if rows else sp.zeros(0,len(mon))).nullspace().to_Matrix()
    found=[]
    for rr in K.tolist():
     rr=list(map(int,rr));gg=math.gcd(*rr);rr=[z//gg for z in rr]
     f=sum(z*u**i*v**j for (i,j),z in zip(mon,rr))
     fact=sp.factor_list(f,(u,v))
     found.append({'terms':[[i,j,z] for (i,j),z in zip(mon,rr) if z],'factorization':str(sp.factor(f)),'factors':[{'terms':[[*ij,int(c)] for ij,c in sp.Poly(ff,u,v).terms()],'power':ee} for ff,ee in fact[1]]})
    out.append({'a':a,'b':b,'multiplicities':mm,'nullity':K.rows,'kernel':found})
    print(d,a,b,mm,'nullity',K.rows, [f['factorization'] for f in found],flush=True)
(ROOT/'evidence/near-slot-discovery.json').write_text(json.dumps({'deleted_slot':1,'degree_bound':27,'classes':out,'seconds':time.time()-start},indent=2,default=int))
print('FINISH classes',len(out),'seconds',time.time()-start,flush=True)

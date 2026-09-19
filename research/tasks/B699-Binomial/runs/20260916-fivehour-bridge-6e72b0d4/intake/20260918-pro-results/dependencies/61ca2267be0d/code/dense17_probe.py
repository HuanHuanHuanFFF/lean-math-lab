from pathlib import Path
import json,time,math,collections
import sympy as sp
from sympy.polys.matrices import DomainMatrix
ROOT=Path(__file__).parents[1];N,X=sp.symbols('N X');pts=[(r,s*(r-s))for r in range(3,9)for s in range(r//2+1)]
mon=[(a,b)for b in range(4)for a in range(8-2*b)if (a,b)not in [(6,0),(7,0)]]
masks=[int(l.split()[0])for l in (ROOT/'evidence/uncovered_ranks.txt').read_text().splitlines()if int(l.split()[0]).bit_count()==17]
ans=[];start=time.monotonic();hist=collections.Counter()
for mask in masks:
 rows=[[r**a*v**b for a,b in mon]for i,(r,v)in enumerate(pts)if mask>>i&1]
 ker=DomainMatrix.from_list(rows,sp.ZZ).nullspace().to_Matrix().tolist();ks=[]
 for raw in ker:
  raw=list(map(int,raw));g=math.gcd(*raw);co=[c//g for c in raw]
  f=sum(c*N**a*X**b for c,(a,b)in zip(co,mon))
  c,fac=sp.factor_list(f,N,X);degs=tuple(sorted((max(a+2*b for (a,b),cc in sp.Poly(t,N,X).terms()),e)for t,e in fac))
  hist[len(ker),degs]+=1
  ks.append({'coefficients':co,'norm_bits':sum(map(abs,co)).bit_length(),'polynomial':str(f),'factors':str(sp.factor(f)),'first_two':[int(f.subs({N:r,X:v}))for r,v in [(1,0),(2,0),(2,1)]],'origin':[int(f.subs({N:0,X:v}))for v in [0,1]]})
 ans.append({'mask':mask,'kernel':ks})
(ROOT/'evidence/dense17.json').write_text(json.dumps({'monomials':mon,'cases':ans},indent=2))
print('seconds',time.monotonic()-start,'hist',hist)
for a in ans[:10]:print(a)

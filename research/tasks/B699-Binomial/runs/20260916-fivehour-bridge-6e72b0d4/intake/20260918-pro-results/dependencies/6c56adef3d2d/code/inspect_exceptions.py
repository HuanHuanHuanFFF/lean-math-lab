"""Discovery only. Exact acceptance is done separately, without trusting CAS factors."""
from pathlib import Path
import json, math
import sympy as sp
ROOT=Path(__file__).resolve().parents[1]
N,X=sp.symbols('N X')
pts=[(n,s*(n-s)) for n in range(3,9) for s in range(n//2+1)]
records=[]
for name in ['A','B','C']:
 for line in (ROOT/'evidence'/f'profile_{name}_deficient.txt').read_text().splitlines():
  mode,hh,ss,rr=line.split();h,s,rank=map(int,(hh,ss,rr));d=8 if name=='C' else 6
  mons=[(a,b) for b in range(d//2+1) for a in range(d-2*b+1)]
  mat=[]
  for i,(n,x) in enumerate(pts):
   if (h>>i)&1:
    mat.append([n**a*x**b for a,b in mons])
    if (s>>i)&1:
     mat.append([a*n**(a-1)*x**b if a else 0 for a,b in mons])
     mat.append([b*n**a*x**(b-1) if b else 0 for a,b in mons])
  ns=sp.Matrix(mat).nullspace();assert len(ns)==1
  v=ns[0];l=sp.ilcm(*[a.q for a in v]);vv=[int(a*l) for a in v];g=math.gcd(*vv);vv=[a//g for a in vv]
  if next(a for a in vv if a)!=abs(next(a for a in vv if a)): vv=[-a for a in vv]
  poly=sum(c*N**a*X**b for c,(a,b) in zip(vv,mons))
  actual=[(n,x) for n,x in pts if poly.subs({N:n,X:x})==0]
  fac=sp.factor_list(poly)
  record={'mode':mode,'hit_mask':h,'singular_mask':s,'modular_rank':rank,'degree':d,'coefficients':vv,
    'polynomial':str(poly),'factorization':str(sp.factor(poly)),
    'factors': [{'coefficients':[[int(c),int(ab[0]),int(ab[1])] for ab,c in sp.Poly(f,N,X).terms()], 'power':e} for f,e in fac[1]],
    'factor_scalar':int(fac[0]),'actual_hit_count':len(actual),
    'points':[list(p) for i,p in enumerate(pts) if h>>i&1],
    'singular_points':[list(p) for i,p in enumerate(pts) if s>>i&1]}
  records.append(record)
  print(mode,h,s,'rank',rank,'actualhits',len(actual),'factor=',sp.factor(poly))
(ROOT/'evidence'/'exception_candidates.json').write_text(json.dumps(records,indent=2)+'\n')

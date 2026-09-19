from pathlib import Path
import sympy as sp,json
root=Path(__file__).parents[1];N,X=sp.symbols('N X');pts=[(r,s*(r-s))for r in range(3,9)for s in range(r//2+1)];b=[(a,c)for c in range(4)for a in range(7-2*c)];W=sp.prod(N-r for r in range(3,9));ans=[]
for z in (16,17):
 for line in (root/f'evidence/eval{z}_lowrank.txt').read_text().splitlines():
  mask,_,_=map(int,line.split());M=sp.Matrix([[r**a*v**c for a,c in b]for i,(r,v)in enumerate(pts)if mask>>i&1]+[[int(a==6 and c==0)for a,c in b]])
  ns=M.nullspace();assert len(ns)==1
  T=sp.Poly(sum(y*N**a*X**c for y,(a,c)in zip(ns[0],b)),N,X).clear_denoms()[1].primitive()[1]
  ratios=[T.eval({N:r,X:v})/W.subs(N,r)for r,v in [(1,0),(2,0),(2,1)]]
  pc=len(set(ratios))==1
  out={'z':z,'mask':mask,'T':str(T.as_expr()),'pc':pc,'ratios':[str(x)for x in ratios],'factors':str(sp.factor(T.as_expr()))};ans.append(out)
  print(z,mask,'PC',pc,'ratio',ratios,'T',sp.factor(T.as_expr()))
(root/'evidence/dense_pencils.json').write_text(json.dumps(ans,indent=2))

import sympy as sp,json,time,sys
from pathlib import Path
root=Path(__file__).parents[1];N,X=sp.symbols('N X')
pts=[(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)];b=[(a,c) for c in range(4) for a in range(7-2*c)]
A=[[r**a*v**c for a,c in b] for r,v in pts]
D=[[a*r**(a-1)*v**c if a else 0 for a,c in b] for r,v in pts]
E=[[c*r**a*v**(c-1) if c else 0 for a,c in b] for r,v in pts]
ans=[];t0=time.monotonic()
lines=(root/'evidence/singular14_mod_unique.txt').read_text().splitlines()
for line in lines[:int(sys.argv[1])]:
 mask,k,_=map(int,line.split()); M=sp.Matrix([A[i] for i in range(21) if mask>>i&1]+[D[k],E[k]])
 ns=M.nullspace()
 if not ns: ans.append({'mask':mask,'singular_point':k,'dimension':0}); continue
 assert len(ns)==1
 p=sp.Poly(sum(x*N**a*X**c for x,(a,c) in zip(ns[0],b)),N,X).clear_denoms()[1].primitive()[1]
 fac=sp.factor_list(p.as_expr());hits=[i for i,(r,v) in enumerate(pts) if p.eval({N:r,X:v})==0]
 sing=[i for i in hits if p.diff(N).eval({N:pts[i][0],X:pts[i][1]})==0 and p.diff(X).eval({N:pts[i][0],X:pts[i][1]})==0]
 ans.append({'mask':mask,'singular_point':k,'dimension':1,'factors':str(fac),'z':len(hits),'sing_count':len(sing),'irreducible':len(fac[1])==1 and fac[1][0][1]==1,'poly':str(p.as_expr())})
(root/'evidence/singular_sample.json').write_text(json.dumps(ans,indent=2))
print('cases',len(ans),'seconds',time.monotonic()-t0,'irreducible',sum(x.get('irreducible',False) for x in ans))
for x in ans:
 if x.get('irreducible'): print(json.dumps(x));break

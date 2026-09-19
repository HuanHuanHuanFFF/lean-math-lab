import itertools,random,json,time
from pathlib import Path
import sympy as sp
N,X=sp.symbols('N X')
pts=[(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)]
b=[(a,c) for c in range(4) for a in range(7-2*c)]
b5=[(a,c) for a,c in b if a+2*c<=5]
random.seed(91726)
sets=[[(3,0),(3,2),(4,0),(4,3),(5,0),(5,6),(6,5),(6,8),(7,6),(7,10),(7,12),(8,0),(8,12),(8,15)]]
while len(sets)<12:
 z=random.sample(pts,14)
 if all(1<=sum(p[0]==r for p in z)<=3 for r in range(3,9)):
  sets.append(sorted(z))
out=[]
for z in sets:
 A=sp.Matrix([[r**a*v**c for a,c in b] for r,v in z]); k=A.nullspace()
 polys=[sp.Poly(sum(x*N**a*X**c for x,(a,c) in zip(vec,b)),N,X).clear_denoms()[1].primitive()[1] for vec in k]
 g=sp.polys.polytools.terms_gcd(sp.gcd_list([p.as_expr() for p in polys]))
 entry={'points':z,'rank':A.rank(),'rank5':sp.Matrix([[r**a*v**c for a,c in b5] for r,v in z]).rank(),'gcd':str(g),'basis':[str(sp.factor(p.as_expr())) for p in polys]}
 out.append(entry)
 print(json.dumps(entry),flush=True)
Path(__file__).parents[1].joinpath('evidence/weight6_probe.json').write_text(json.dumps(out,indent=2))

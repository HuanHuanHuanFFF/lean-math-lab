from pathlib import Path
from itertools import combinations_with_replacement,product
from fractions import Fraction as Q
import json,math,time
import sympy as sp
root=Path(__file__).parents[1]
V={r:[s*(r-s) for s in range(r//2+1)] for r in range(3,9)}
options={r:list(combinations_with_replacement(V[r],3)) for r in V}
def interp(points,x):
 return sum((Q(y)*math.prod(Q(x-a,b-a) for a,_ in points if a!=b) for b,y in points),Q(0))
N,X=sp.symbols('N X');W=sp.prod(N-r for r in V)
counts={'first_three':0,'trace_pass':0,'z14':0,'pair_pass':0,'derivative_pass':0}
ans=[]
for tr in product(*(options[r] for r in (3,4,5))):
 counts['first_three']+=1;traces=[(r,sum(roots)) for r,roots in zip((3,4,5),tr)]
 tail=[[x for x in options[r] if sum(x)==interp(traces,r)] for r in (6,7,8)]
 for te in product(*tail):
  rr=tr+te;counts['trace_pass']+=1
  if sum(len(set(x)) for x in rr)<14:continue
  counts['z14']+=1
  pairs=[(r, sum(x[i]*x[j] for i in range(3) for j in range(i))) for r,x in zip(range(3,9),rr)]
  if interp(pairs[:5],8)!=pairs[5][1]:continue
  counts['pair_pass']+=1
  tracep=sp.interpolate(traces,N);pairp=sp.interpolate(pairs[:5],N);constp=sp.interpolate([(r,-math.prod(x))for r,x in zip(range(3,9),rr)],N)
  T=sp.Poly(X**3-tracep*X**2+pairp*X+constp,N,X)
  repeated=[(r,v)for r,x in zip(range(3,9),rr)for v in set(x)if x.count(v)>1]
  assert repeated
  r,v=repeated[0];a=-T.diff(N).eval({N:r,X:v})/sp.diff(W,N).subs(N,r)
  if any(T.diff(N).eval({N:r,X:v})+a*sp.diff(W,N).subs(N,r)!=0 for r,v in repeated):continue
  counts['derivative_pass']+=1;H=sp.Poly(T.as_expr()+a*W,N,X).clear_denoms()[1].primitive()[1]
  fac=sp.factor_list(H.as_expr());ans.append({'roots':rr,'z':sum(len(set(x))for x in rr),'polynomial':str(H.as_expr()),'factorization':str(fac),'reducible':sum(e for f,e in fac[1])>1})
(root/'evidence/full_capacity_probe.json').write_text(json.dumps({'counts':counts,'candidates':ans},indent=2))
print(counts,'allreducible',all(x['reducible']for x in ans),'candidates',len(ans))
for x in ans:print(x['roots'],x['factorization'])

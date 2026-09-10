import math,itertools,json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
ps=[2,3,5,7,11,13]
# seeds from BFT p29: p,exponent,a,q,exponent,b
seeds=[(3,2,1,2,3,1),(2,7,1,5,3,1),(2,3,1,7,1,1),(2,7,1,11,2,1),(2,9,1,13,2,3),(3,3,1,5,2,1),(7,2,5,3,5,1),(3,5,1,11,2,2),(13,3,1,3,7,1),(5,2,2,7,2,1),(5,3,1,11,2,1),(13,1,2,5,2,1),(7,3,1,13,2,2),(13,1,1,11,1,1)]
tab=[(9,8,1.1742,25),(8,7,1.1951,28),(7,6,1.2219,53),(6,5,1.2581,35),(5,4,1.3098,50),(9,7,1.3317,15),(7,5,1.4135,74),(4,3,1.4170,153),(3,2,1.5395,138),(8,5,1.5407,53),(5,3,1.5454,86),(3,1,1.5498,260),(25,17,1.5540,582),(7,4,1.6219,60),(8,3,1.6560,149),(9,5,1.6636,79),(5,2,1.7017,231),(7,3,1.7282,161),(9,4,1.7666,87),(2,1,1.9377,150)]
def params(seed,c,d,L1):
 p,k,a,q,l,b=seed;P=p**k;Q0=q**l;Z=a*P;D0=Z-b*Q0;z=D0/Z;s=c/d
 u1=(s*(2-z)-math.sqrt(s*s*z*z+4-4*z))/(2*(1-z)*(s+1))
 u2=(s*z+2-math.sqrt(s*s*z*z+4-4*z))/(2*z*(s+1))
 alpha=(s+1)**(s+1)/(s-1)**(s-1)
 Q=alpha*u1**(s-1)*(1-u1)*(1-u1+z*u1)
 E=alpha*u2*(1-u2)*(1-z*u2)**(s-1)
 O3=P**(s-1)*L1/(a*b**s*Q)
 O4=min(P,Q0)**s*L1/(Z**(s-1)*D0**2*E)
 lam=math.log(O4)/(s*math.log(max(P,Q0))+math.log(O4))
 return dict(O3=O3,O4=O4,lam=lam,Q=Q,E=E,z=z)
def optimize(edges):
 best=(100,None,None)
 for order in itertools.permutations(ps):
  z=[]
  for p in order:
   z.append(max([0]+z[-1:]+[edges.get(tuple(sorted((p,q))),0) for q in order[:len(z)]]))
  if sum(z)<best[0]:best=(sum(z),order,z)
 return best
if __name__=='__main__':
 rows=[];edges={}
 for seed in seeds:
  vals=[]
  for c,d,L,m0 in tab:
   a=params(seed,c,d,L)
   if a['O3']>1 and a['O4']>1:vals.append((a['lam'],c,d,L,m0,a))
  best=max(vals) if vals else None
  pair=tuple(sorted([seed[0],seed[3]]));edges[pair]=best[0] if best else 0
  rows.append(dict(pair=pair,seed=seed,best=best))
 out=dict(status='FLOATING DIAGNOSTIC ONLY',explicit_gcd_table_optimum=optimize(edges),rows=rows)
 (ROOT/'outputs/source_probe.json').write_text(json.dumps(out,indent=2))
 for row in rows:print(row['pair'],row['best'][:5] if row['best'] else None)
 print('graph',optimize(edges))

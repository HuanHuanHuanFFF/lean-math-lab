import json,math,time,sys
from collections import defaultdict
from fractions import Fraction
from pathlib import Path
import sympy as sp
w=Path('/mnt/data/r6_work'); p=w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json';data=json.load(open(p))
x,s,h=sp.symbols('x s h')
def transform(ts,name):
 start=time.monotonic();p={tuple(e[:3]):int(c) for e,c in ts};du=max(e[0] for e in p);dy=max(e[1] for e in p);dr=max(e[2] for e in p)
 # bivariate homogeneous substitutions separately, store exponent tuple x,s,h
 a=defaultdict(int)
 for (i,j,k),c in p.items():
  for m in range(du-i+1):a[m+2*k,j,k]+=c*3**k*4**(dr-k)*math.comb(du-i,m)*(-1)**m
 q=defaultdict(int)
 for (i,j,k),c in a.items():
  if c:
   for n in range(dy-j+1):q[i,n+2*k,k]+=c*math.comb(dy-j,n)*(-1)**n
 q={e:c for e,c in q.items()if c}; pp=sp.Poly.from_dict(q,(x,s,h));print(name,'raw',len(q),pp.total_degree(),time.monotonic()-start,flush=True)
 cont,factors=sp.factor_list(pp); print(name,'factors',[(f.total_degree(),len(f.terms()),power)for f,power in factors],flush=True)
 raw=[]; gates=[]
 for f,pow in factors:
  if f.as_expr() in [x,s,h,x-1,s-1,h-1]:gates.append((str(f.as_expr()),pow))
  else:raw.append((f,pow))
 kept=sp.Poly(1,x,s,h)
 for f,pow in raw:kept*=f**pow
 obj={'name':name,'transform_degrees':[du,dy,dr],'content':str(cont),'stripped_gates':gates,'polynomial':[[list(e),str(c)]for e,c in kept.terms()]}
 (w/f'trans_{name}.json').write_text(json.dumps(obj));print(name,'KEPT',len(kept.terms()),kept.total_degree(),'secs',time.monotonic()-start,flush=True)
 return kept
if __name__=='__main__':
 names=sys.argv[1:] or ['P5','G4','G3','G2','G1','G0','N','K']
 for name in names:
  ts=data['B5'] if name=='P5' else data['low'][name[1:]]['stripped'] if name.startswith('G') else data[name]
  transform(ts,name)

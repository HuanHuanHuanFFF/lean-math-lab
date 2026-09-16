from fractions import Fraction as Q
from itertools import combinations, product
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]
rows=tuple(range(3,9)); vals={r:tuple(s*(r-s) for s in range(r//2+1)) for r in rows}
def add(a,b):
 z=[Q(0)]*max(len(a),len(b))
 for i,c in enumerate(a):z[i]+=c
 for i,c in enumerate(b):z[i]+=c
 return tuple(z)
def mul(a,b):
 z=[Q(0)]*(len(a)+len(b)-1)
 for i,c in enumerate(a):
  for j,d in enumerate(b):z[i+j]+=c*d
 return tuple(z)
def ev(a,x):
 z=Q(0)
 for c in a[::-1]:z=z*x+c
 return z
def interp(xs,ys):
 z=()
 for i,x in enumerate(xs):
  p=(Q(1),);d=Q(1)
  for t in xs:
   if t!=x:p=mul(p,(-t,1));d*=x-t
  z=add(z,tuple(c*ys[i]/d for c in p))
 return z
pairs={r:tuple(combinations(vals[r],2)) for r in rows}
sums={r:tuple(sorted(set(-sum(p) for p in pairs[r]))) for r in rows}
bset=set();tm=time.time()
for rr in combinations(rows,3):
 for yy in product(*(sums[r] for r in rr)):
  b=interp(rr,yy)
  if sum(ev(b,r) in sums[r] for r in rows)>=4:bset.add(b)
print('B candidates',len(bset),'sec',time.time()-tm,flush=True)
found=set()
for b in sorted(bset):
 opts={r:tuple(sorted(set(-v*v-ev(b,r)*v for v in vals[r]))) for r in rows}
 for vv in product(*(opts[r] for r in rows[:5])):
  c=interp(rows[:5],vv)
  if ev(c,8) not in opts[8]:continue
  hit=tuple(tuple(v for v in vals[r] if v*v+ev(b,r)*v+ev(c,r)==0) for r in rows)
  if sum(len(h)>=2 for h in hit)<4:continue
  found.add((b,c,hit))
print('H candidates',len(found),'sec',time.time()-tm,flush=True)
import sympy as s
N,X=s.symbols('N X')
out=[]
for b,c,hit in sorted(found):
 f=X**2+sum(s.Rational(x.numerator,x.denominator)*N**i for i,x in enumerate(b))*X+sum(s.Rational(x.numerator,x.denominator)*N**i for i,x in enumerate(c))
 out.append({'b':[str(x) for x in b],'c':[str(x) for x in c],'hit':hit,'factor':str(s.factor(f)),'irreducible':s.Poly(f,N,X).is_irreducible})
(ROOT/'evidence/monic_probe.json').write_text(json.dumps(out,indent=2))
print('irreducible',sum(x['irreducible'] for x in out),'total',len(out),'seconds',time.time()-tm)

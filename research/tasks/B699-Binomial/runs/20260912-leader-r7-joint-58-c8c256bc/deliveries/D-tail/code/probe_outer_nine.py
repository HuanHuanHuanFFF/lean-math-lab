"""Diagnostic only: C0/C2=9 modular survivors; no height is claimed."""
import json
from math import gcd
from pathlib import Path
L=15120
# Known primes, independently trial-divided here.
def prime(p):
    return p>=2 and all(p%d for d in range(2,int(p**0.5)+1))
ps=[p for p in range(3,500,2) if prime(p) and pow(2,L,p)==1]
squares={p:{x*x%p for x in range(p)} for p in ps}
rows=[]
for h in [2,5,7,8]:
  for g in range(1,2*h+1):
    if 2*h%g or g%3==0:continue
    # Complete v2 parity necessity when g even.
    if g%2==0 and (g&-g)!=2*(h&-h):continue
    good=[]
    for s in range(L):
      if (h*(g*pow(2,s,81)-2)-18)%81:continue
      if all((9+4*h*(g*pow(2,s,p)-1)*(g*pow(2,s,p)-2))%p in squares[p] for p in ps):
        good.append(s)
    rows.append({'h':h,'g':g,'survivor_count':len(good),'first_survivors':good[:8]})
obj={'scope':'fixed-modulus diagnostics only; exponents unbounded in every surviving class', 'period':L,'primes':ps,'rows':rows,'nonempty_rows':sum(r['survivor_count']>0 for r in rows)}
out=Path(__file__).resolve().parents[1]/'evidence'/'outer-nine-probe.json';out.write_text(json.dumps(obj,indent=2)+'\n')
print(json.dumps(obj))

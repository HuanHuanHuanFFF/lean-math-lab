import sympy as s
import json, math
from fractions import Fraction
from functools import reduce
from pathlib import Path
out=Path(__file__).parent
rows=[]
for k in range(2,162,2):
 r=k//2; q=r//2
 f=[Fraction(1)]
 for j in range(1,r+1):
  a=Fraction((2*j-1)**2,4); g=[Fraction(0)]*(len(f)+1)
  for i,b in enumerate(f): g[i]+=b; g[i+1]-=a*b
  f=g
 c=[Fraction(1)]
 for j in range(1,q+2): c.append(((f[j] if j<len(f) else 0)-sum(c[i]*c[j-i] for i in range(1,j)))/2)
 vals=[sum(c[j]*Fraction(2*n+k+1,2)**(r-2*j) for j in range(q+1)) for n in range(r+1)]
 den=math.lcm(*[v.denominator for v in vals])
 div=math.gcd(*[v.numerator*(den//v.denominator) for v in vals])
 spacing=Fraction(div,den)
 # first-tail proxy: |R(n)| < spacing/3.
 coeff=abs(c[q+1]); exponent=2*(q+1)-r
 threshold=(3*float(coeff/spacing))**(1/exponent)
 rows.append({'k':k,'lattice_spacing':str(spacing),'first_tail_coefficient':str(-coeff),'first_tail_power':-exponent,'first_tail_threshold_x_heuristic':threshold,'threshold_over_k_cubed':threshold/k**3})
(out/'sqrt-lattice-diagnostic.json').write_text(json.dumps(rows,indent=2),encoding='utf8')
print(json.dumps([r for r in rows if r['k']<=40 or r['k']%16==0],indent=2))

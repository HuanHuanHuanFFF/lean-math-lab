import sympy as s
import json, math
from fractions import Fraction
from pathlib import Path
out = Path(__file__).parent
rows=[]
for k in range(2,82,2):
 r=k//2
 # x = t+(k+1)/2, roots squared (j-1/2)^2, j=1..r
 f=[Fraction(1)]
 for j in range(1,r+1):
  a=Fraction((2*j-1)**2,4)
  g=[Fraction(0)]*(len(f)+1)
  for i,b in enumerate(f): g[i]+=b; g[i+1]-=a*b
  f=g
 q=r//2
 c=[Fraction(1)]
 for j in range(1,q+5):
  c.append(((f[j] if j<len(f) else 0)-sum(c[i]*c[j-i] for i in range(1,j)))/2)
 # polynomial x^r * sum c_j x^-2j through q. Convert to n coefficients for exact denominator.
 x=s.Symbol('x'); n=s.Symbol('n')
 A=sum(s.Rational(c[j].numerator,c[j].denominator)*x**(r-2*j) for j in range(q+1))
 An=s.Poly(s.expand(A.subs(x,n+s.Rational(k+1,2))),n)
 den=int(s.ilcm(*[z.q for z in An.all_coeffs()]))
 tail=c[q+1]
 exponent=2*(q+1)-r
 # first-tail alone diagnostic for D|tail|/x^e<1/3
 threshold=(3*den*abs(float(tail)))**(1/exponent)
 rows.append({'k':k,'r':r,'denominator_in_n':den,'first_tail_coefficient':str(tail),'first_tail_power':-exponent,'first_tail_threshold_x_heuristic':threshold,'threshold_over_k_cubed':threshold/k**3,'next_four_tail_signs':[int(z>0)-int(z<0) for z in c[q+1:]]})
(out/'sqrt-tail-diagnostic.json').write_text(json.dumps(rows,indent=2),encoding='utf8')
print(json.dumps(rows,indent=2))

import json, math
from fractions import Fraction
from pathlib import Path
out=Path(__file__).parent
rows=[]
for k in (10,14,20,24,32,40,64,80,128,160):
 r=k//2; q=r//2; n=k**3
 f=[Fraction(1)]
 for j in range(1,r+1):
  a=Fraction((2*j-1)**2,4); g=[Fraction(0)]*(len(f)+1)
  for i,b in enumerate(f): g[i]+=b; g[i+1]-=a*b
  f=g
 c=[Fraction(1)]
 for j in range(1,q+1): c.append(((f[j] if j<len(f) else 0)-sum(c[i]*c[j-i] for i in range(1,j)))/2)
 def av(t): return sum(c[j]*Fraction(2*t+k+1,2)**(r-2*j) for j in range(q+1))
 vals=[av(t) for t in range(r+1)]
 den=math.lcm(*[v.denominator for v in vals]); div=math.gcd(*[int(v*den) for v in vals])
 an=av(n); Q=int(an*den); F=math.prod(range(n+1,n+k+1))
 assert an*den==Q
 delta=(3*Q-div)**2-9*den*den*F
 # Bounds for R/spacing by binary search of Q-g*j > D sqrt(F).
 def ge(j): return Q-div*j>=0 and (Q-div*j)**2>=den*den*F
 lo=0; hi=1
 while ge(hi): lo=hi; hi*=2
 while lo+1<hi:
  mid=(lo+hi)//2
  if ge(mid): lo=mid
  else: hi=mid
 rows.append({'k':k,'n':n,'spacing_numerator':div,'spacing_denominator':den,'A_n_scaled':str(Q),'P_n':str(F),'rounding_one_third_test_delta':str(delta),'R_over_spacing_floor':str(lo),'rounding_one_third_test_fails':delta>0})
(out/'sqrt-rounding-exact-certificate.json').write_text(json.dumps(rows,indent=2),encoding='utf8')
print(json.dumps([{key:v for key,v in row.items() if key not in ('A_n_scaled','P_n','rounding_one_third_test_delta')} for row in rows],indent=2))
# Verify generated certificate independently via expansion-free product computation and signed square tests.
for row in rows:
 k=row['k']; n=row['n']; D=row['spacing_denominator']; g=row['spacing_numerator']; Q=int(row['A_n_scaled']); F=1
 for i in range(1,k+1): F*=n+i
 assert F==int(row['P_n'])
 assert (3*Q-g)>0
 assert (3*Q-g)**2-9*D*D*F==int(row['rounding_one_third_test_delta'])
 j=int(row['R_over_spacing_floor'])
 assert Q-g*j>=0 and (Q-g*j)**2>=D*D*F
 assert Q-g*(j+1)<0 or (Q-g*(j+1))**2<D*D*F
print('Exact signed-square certificates verified for',len(rows),'cases.')

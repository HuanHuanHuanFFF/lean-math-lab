"""Independent exact rectangle bounds in (z/d,1/d); numerical evidence only."""
from fractions import Fraction as Q
from pathlib import Path
import json
from datetime import datetime,timezone
BASE=Path(__file__).resolve().parent
D=20000;lo=Q(83894387,10000000);hi=Q(83894390,10000000)
terms=json.loads((BASE/'combination_certificate.json').read_text())['combination_terms']
# Bound each homogeneous group with exact Bernstein coefficients on the
# slope interval, then bound its power of 1/d. This retains cancellations.
from math import comb
minimum=Q(0);maximum=Q(0);groups=[]
for j in range(6):
 group=[(a,Q(c)) for a,b,c in terms if a+b==j]
 degree=max((a for a,c in group),default=0)
 power=[sum(c*comb(a,r)*lo**(a-r)*(hi-lo)**r for a,c in group if a>=r) for r in range(degree+1)]
 bern=[sum(power[r]*Q(comb(k,r),comb(degree,r)) for r in range(k+1)) for k in range(degree+1)]
 low,high=min(bern),max(bern);e=5-j
 if e:
  minimum+=min(Q(0),low)/D**e;maximum+=max(Q(0),high)/D**e
 else:minimum+=low;maximum+=high
 groups.append(dict(degree=j,bernstein=[str(x) for x in bern]))
assert -D<minimum<maximum<0,(minimum,maximum)
# Compare curve at the two boundaries; derivative positivity on t>=8 is
# checked via positive coefficients after t=8+s, u=1/d bounded below.
def f(t):return t**5-40*t**3-200*t**2-420*t-340
def B(t):return -45*t**3+540*t+900
# Lower boundary is negative using an upper bound; upper positive via a lower bound.
lower_upper=f(lo)+max(Q(0),B(lo))/D**2+324*lo/D**4
upper_lower=f(hi)+min(Q(0),B(hi))/D**2
assert lower_upper<0<upper_lower
result=dict(utc=datetime.now(timezone.utc).isoformat(),evidence='exact rational computation, conditional on curve and positive strip; not a standalone Lean proof',D=D,groups=groups,slope_interval=[str(lo),str(hi)],H_over_d5_interval=[str(minimum),str(maximum)],display_bounds=[float(minimum),float(maximum)],curve_lower_upper=str(lower_upper),curve_upper_lower=str(upper_lower),all_checks=True)
(BASE/'independent-height.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))

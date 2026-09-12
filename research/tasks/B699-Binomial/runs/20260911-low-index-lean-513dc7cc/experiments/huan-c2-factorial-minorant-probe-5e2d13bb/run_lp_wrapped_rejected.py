"""One LP over fixed20half-integer bases. Floats choose an objective/candidate only.
All constraint entries and returned weights are rational. Verification is separate.
"""
from pathlib import Path
from fractions import Fraction as F
from math import log,lcm
import json,time,datetime,hashlib
from sympy import Rational,Matrix
from sympy.solvers.simplex import linprog
OUT=Path(__file__).resolve().parent
assert not (OUT/'FREEZE.json').exists()
if not __debug__:raise RuntimeError('assertions required')
start=time.perf_counter();aa=[F(j,2) for j in range(1,21)]
breaks=sorted({F(2*k,j) for j in range(1,21) for k in range(j+1)})
assert breaks[0]==0 and breaks[-1]==2
floor=lambda x:x.numerator//x.denominator
rows=[];rhs=[]
for left,right in zip(breaks,breaks[1:]):
 row=[floor(a*left) for a in aa]
 g=int(floor(9*left)-2*floor(4*left)-floor(left)==2)
 assert row==[floor(a*((left+right)/2)) for a in aa]
 assert g==int(floor(9*((left+right)/2))-2*floor(4*((left+right)/2))-floor((left+right)/2)==2)
 rows.append(row);rhs.append(g)
# Known balanced half-integer D floorfunction is retained as a source control.
wd=[F(0)]*20
for j,c in [(1,1),(2,-1),(8,-1),(9,1)]:wd[j-1]=F(c)
assert sum((a*w for a,w in zip(aa,wd)),F())==0
baseline_ok=all(sum((w*x for w,x in zip(wd,row)),F())<=g for row,g in zip(rows,rhs))
objective=[float(a)*log(float(a)) for a in aa]
obj=[Rational(str(-c)) for c in objective]
model={'basis':[str(a) for a in aa],'breakpoints':[str(t) for t in breaks],'A':rows,'b':rhs,'balance_scaled_integer_row':list(range(1,21)),
 'objective_discovery_rational':[str(-c) for c in obj],'bounds':'all20variablesunrestricted;negativeweightsallowed','interval_convention':'eachleftendpointincluded,rightendpointexcluded;2handledbyperiodicity',
 'baseline_D_coefficients':[str(w) for w in wd],'baseline_D_minorant':baseline_ok,'baseline_rate_display_only':sum(c*float(w) for c,w in zip(objective,wd)),'rank_A_balance':Matrix(rows+[list(range(1,21))]).rank()}
(OUT/'model.json').write_bytes((json.dumps(model,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
print(json.dumps({'intervals':len(rows),'variables':20,'rank':model['rank_A_balance'],'baseline_minorant':baseline_ok,'baseline_rate':model['baseline_rate_display_only'],'solver':'SymPy1.14linprog','LP_calls':1}),flush=True)
value,weights=linprog(obj,rows,rhs,[list(range(1,21))],[0],bounds=(None,None))
w=[F(str(x)) for x in weights]
K=lcm(*(x.denominator for x in w))
res={'status':'ONE_RATIONAL_SIMPLEX_DISCOVERY_COMPLETED_NOT_ACCEPTED','weights':[str(x) for x in w],'nonzero':{str(a):str(x) for a,x in zip(aa,w) if x},'K':K,
 'integer_weights':[int(K*x) for x in w],'objective_approx_rational':str(-value),'rate_display_only':sum(c*float(x) for c,x in zip(objective,w)),
 'sum_a_w':str(sum((a*x for a,x in zip(aa,w)),F())),'all_constraints_hold':all(sum((x*y for x,y in zip(w,row)),F())<=g for row,g in zip(rows,rhs)),
 'active_intervals':[i for i,(row,g) in enumerate(zip(rows,rhs)) if sum((x*y for x,y in zip(w,row)),F())==g],
 'LP_calls':1,'seconds':time.perf_counter()-start,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
(OUT/'discovery.json').write_bytes((json.dumps(res,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
print(json.dumps(res,ensure_ascii=False,indent=2),flush=True)

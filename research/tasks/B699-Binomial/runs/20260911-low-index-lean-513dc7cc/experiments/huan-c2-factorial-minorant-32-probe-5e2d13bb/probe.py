from pathlib import Path
from fractions import Fraction as F
from decimal import Decimal,localcontext
from math import lcm
import json,time,datetime,hashlib
from sympy.solvers.simplex import linprog
O=Path(__file__).resolve().parent
N=32
t0=time.perf_counter()
pts=sorted({F(2*k,j) for j in range(1,N+1) for k in range(j+1)})
ts=pts[:-1]
floor=lambda x:x.numerator//x.denominator
A=[[floor(F(j,2)*t)for j in range(1,N+1)]for t in ts]
b=[int(floor(9*t)-2*floor(4*t)-floor(t)==2)for t in ts]
assert all(row[0]==0 for row in A)
with localcontext() as ctx:
 ctx.prec=40
 c=[int((Decimal(j)/2*Decimal(j).ln()*10**9).to_integral_value())for j in range(2,N+1)]
model={'basis_half_numerator_max':N,'intervals':len(ts),'breakpoints':[str(t)for t in pts],'A':A,'b':b,'reduced_cost_integer_1e9':c,'period':2,'status':'exact_feasibility_model_with_approximate_discovery_objective'}
(O/'model.json').write_text(json.dumps(model,separators=(',',':'))+'\n')
print(json.dumps({'phase':'model_ready','intervals':len(ts),'free_variables':N-1,'seconds':time.perf_counter()-t0}),flush=True)
value,x=linprog([-z for z in c]+c,[row[1:]+[-a for a in row[1:]]for row in A],b)
wr=[F(str(x[i]-x[i+N-1]))for i in range(N-1)]
w=[-sum((F(j)*wr[j-2]for j in range(2,N+1)),F())]+wr
assert sum((F(j,2)*w[j-1]for j in range(1,N+1)),F())==0
assert all(sum((F(a)*z for a,z in zip(row,w)),F())<=g for row,g in zip(A,b))
with localcontext() as ctx:
 ctx.prec=40
 gamma=sum(Decimal(z.numerator)/Decimal(z.denominator)*Decimal(j)/2*(Decimal(j)/2).ln() for j,z in enumerate(w,1))
result={'status':'EXACT_FEASIBLE_DISCOVERY_CANDIDATE_NOT_LEAN','basis_half_numerator_max':N,'intervals':len(ts),'weights':[str(z)for z in w],'nonzero':{str(F(j,2)):str(z)for j,z in enumerate(w,1)if z},'K':lcm(*(z.denominator for z in w)),'rate_decimal_diagnostic':str(gamma),'threshold_decimal':'0.910560352','above_threshold_diagnostic':gamma>Decimal('0.910560352'),'seconds':time.perf_counter()-t0,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'not_claimed':['true-log objective optimality','all factorial-minorants impossible','uniform effective growth','Lean acceptance']}
(O/'result.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result),flush=True)


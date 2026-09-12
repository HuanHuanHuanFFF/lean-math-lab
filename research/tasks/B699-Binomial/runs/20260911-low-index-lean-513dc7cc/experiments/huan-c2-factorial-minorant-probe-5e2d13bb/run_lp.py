"""Corrected encoding of the SAME fixed20-dimensional LP.
SymPy1.14bounds wrapper's originalvariable nonnegativity is avoided by explicit
balance elimination and xplus-xminus substitution. No additional model searched.
"""
from pathlib import Path
from fractions import Fraction as F
from math import lcm
import json,time,datetime
from sympy import Rational
from sympy.solvers.simplex import linprog
OUT=Path(__file__).resolve().parent
assert not (OUT/'FREEZE.json').exists()
t0=time.perf_counter();model=json.loads((OUT/'model.json').read_text())
rows=model['A'];rhs=model['b'];cost=[Rational(s) for s in model['objective_discovery_rational']]
assert len(cost)==20 and all(r[0]==0 for r in rows)
# balance: w_(1/2)=-sum(j*w_(j/2),j=2..20). Thus19freevariables.
cr=[cost[j-1]-j*cost[0] for j in range(2,21)]
Ar=[r[1:]+[-x for x in r[1:]] for r in rows]
C=[-c for c in cr]+cr # minimize minus original entropy; all38vars>=0
print('same128intervals;19freevariables split into38nonnegative;solverretryforbadwrapper',flush=True)
value,x=linprog(C,Ar,rhs)
wrest=[F(str(x[i]-x[i+19])) for i in range(19)]
w=[-sum((F(j)*wrest[j-2] for j in range(2,21)),F())]+wrest
assert sum((F(j)*w[j-1] for j in range(1,21)),F())==0
assert all(sum((u*v for u,v in zip(r,w)),F())<=g for r,g in zip(rows,rhs))
entropy_approx=sum((F(str(c))*v for c,v in zip(cost,w)),F())
assert entropy_approx==-F(str(value))
known=[F(s) for s in model['baseline_D_coefficients']]
known_obj=sum((F(str(c))*v for c,v in zip(cost,known)),F())
assert entropy_approx>=known_obj>0
K=lcm(*(v.denominator for v in w));active=[i for i,(r,g) in enumerate(zip(rows,rhs)) if sum((u*v for u,v in zip(r,w)),F())==g]
a={'status':'SAME_MODEL_CORRECTED_ENCODING_CANDIDATE','weights':[str(v) for v in w],'nonzero':{str(F(j,2)):str(w[j-1]) for j in range(1,21) if w[j-1]},'K':K,'integer_weights':[int(K*v) for v in w],
 'objective_approx_rational':str(entropy_approx),'rate_display_only':float(entropy_approx),'all_constraints_hold':True,'active_intervals':active,
 'LP_model_count':1,'solver_calls':2,'first_result_rejected':'free-boundswrapperzeroresultcontradictspositiveknownfeasibleD;explicitvariableeliminationcorrectsencoding',
 'encoded_nonnegative_variables':38,'seconds':time.perf_counter()-t0,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
(OUT/'discovery.json').write_bytes((json.dumps(a,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
print(json.dumps(a,ensure_ascii=False,indent=2),flush=True)

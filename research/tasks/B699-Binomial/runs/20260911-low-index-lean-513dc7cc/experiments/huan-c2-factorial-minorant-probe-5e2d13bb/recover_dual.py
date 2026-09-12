"""Recover a dual certificate for the already-selected SAME LP/model.
The replay exposes the private exact dual returned but discarded by linprog;
it is not a new basis, objective search or mathematical model.
"""
from pathlib import Path
from fractions import Fraction as F
import json,time
from sympy import Matrix,Rational
from sympy.solvers.simplex import _simplex
OUT=Path(__file__).resolve().parent
assert not (OUT/'FREEZE.json').exists()
m=json.loads((OUT/'model.json').read_text());d=json.loads((OUT/'discovery.json').read_text())
rows=m['A'];rhs=m['b'];c=[Rational(s) for s in m['objective_discovery_rational']]
cr=[c[j-1]-j*c[0] for j in range(2,21)];Ar=Matrix([r[1:]+[-x for x in r[1:]] for r in rows]);C=Matrix([[-v for v in cr]+cr])
t0=time.perf_counter();value,primal,dual=_simplex(Ar,Matrix(rhs),C)
y=Matrix(dual)
assert all(v>=0 for v in y)
assert Matrix([r[1:] for r in rows]).T*y==Matrix(cr)
assert (Matrix([rhs])*y)[0]==-value==Rational(d['objective_approx_rational'])
support=[i for i,v in enumerate(dual) if v]
assert all(i in d['active_intervals'] for i in support)
B=Matrix([rows[i][1:] for i in support]).T
primes=[2,3,5,7,11,13,17,19]
T=[]
for j in range(2,21):
 v=[]
 for p in primes:
  k=j;nu=0
  while k%p==0:nu+=1;k//=p
  v.append(Rational(j*nu,2))
 T.append(v)
sol,params=B.gauss_jordan_solve(Matrix(T))
assert params.rows==0
assert B*sol==Matrix(T)
a={'status':'EXACT_SYMBOLIC_DUAL_CANDIDATE_NEEDS_LOG_SIGN_CHECK','support':support,'support_intervals':[m['breakpoints'][i] for i in support],
 'dual_approx_rational':[str(dual[i]) for i in support],'prime_log_basis':primes,'dual_log_coefficients':[[str(v) for v in sol.row(i)] for i in range(sol.rows)],
 'constraint_matrix_B':[[int(v) for v in B.row(i)] for i in range(B.rows)],'objective_log_coefficients':[[str(v) for v in row] for row in T],
 'rank':B.rank(),'support_count':len(support),'dual_value_equals_baseline_for_approx_objective':True,'LP_model_count':1,'solver_replay_for_dual_only':True,'seconds':time.perf_counter()-t0}
(OUT/'dual-candidate.json').write_bytes((json.dumps(a,indent=2)+'\n').encode('utf-8'))
print(json.dumps({'support':support,'support_count':len(support),'rank':B.rank(),'seconds':a['seconds']},indent=2))

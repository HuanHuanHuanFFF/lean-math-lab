#!/usr/bin/env python3
"""Generate the new exact complete-exception terminal certificates.
Inputs are candidate polynomials found in experiments; replay proves every
polynomial identity afresh with degree-complete integer determinant evaluations.
This generator uses SymPy only to arrange and check the discovered coefficients.
"""
from pathlib import Path
import json,time
from sympy import QQ,Matrix
from sympy.polys.rings import ring
ROOT=Path(__file__).resolve().parents[1];t0=time.monotonic()
def rd(name):return json.loads((ROOT/name).read_text())
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
def save(name,d):(ROOT/name).write_text(json.dumps(d,ensure_ascii=False,separators=(',',':'))+'\n')
core=rd('certificates/core.json');candidate=rd('experiments/outer_R_stripped.json');facts=rd('experiments/full_exception_factors.json')
R,u,y=ring('u,y',QQ)
C=R.from_dict({(m[0],m[1]):QQ(c) for m,c in core['polys3']['Ccurve']})
W=R.from_dict({tuple(m):QQ(c) for m,c in candidate['remaining']})
YY,z=ring('y',QQ)
ps={max(m[0] for m,c in ts): YY.from_dict({tuple(m):QQ(c) for m,c in ts}) for ts,e in facts['factors']}
assert ps[78]==YY.from_dict({tuple(m):QQ(c) for m,c in rd('certificates/a_zero.json')['P78']})
P96=ps[96];vals=[int(P96.evaluate(z,i))%23 for i in range(23)]
assert 0 not in vals and int(P96[(96,)])%23!=0
co=-int(facts['scalar'])
res=co*z**115*(z-1)**184*(2*z*z-2*z+1)**18*(z*z-3*z+1)**36*ps[78]*ps[96]
# A direct determinant at one nondegenerate point fixes the sign convention.
p=[sum(int(c)*2**m[1] for m,c in C.items() if m[0]==i) for i in range(10)]
q=[sum(int(c)*2**m[1] for m,c in W.items() if m[0]==i) for i in range(38)]
rows=[]
for j in range(37):rows.append([0]*j+list(reversed(p))+[0]*(36-j))
for j in range(9):rows.append([0]*j+list(reversed(q))+[0]*(8-j))
assert int(Matrix(rows).det(method='domain-ge'))==int(res.evaluate(z,2))
save('certificates/exception_terminal.json',{
 'variables':['u','y'],'W':pack(W),'W_bidegrees':[37,40],
 'R_factor_scalar':1,'R_factor_powers':{'u':6,'y':36,'u-1':2,'y-1':16,'H':10,'J':1,'E':8,'Acal':1},
 'R_identity_bidegree_bound':[118,164],
 'R_identity_u_points':list(range(-59,60)),'R_identity_y_points':list(range(-82,83)),
 'CW_determinant_convention':'37 shifted descending C rows, followed by 9 shifted descending W rows',
 'CW_factor_scalar':co,'CW_identity_degree_bound_y':730,'CW_identity_y_points':list(range(-365,366)),
 'P96':pack(P96),'P96_degree':96,'P96_prime':23,'P96_lc_mod23':int(P96[(96,)])%23,'P96_mod23_values':vals,
 'CW_factor_exponents':{'y':115,'y-1':184,'2y^2-2y+1':18,'y^2-3y+1':36,'P78':1,'P96':1}
})
print(json.dumps({'status':'PASS','generator_seconds':round(time.monotonic()-t0,3),'terminal_candidate':'complete rational exception empty','P96_lc_mod23':int(P96[(96,)])%23,'P96_values':vals,'identity_verification':'must run verify_terminal.py; generation alone is not proof'}),flush=True)

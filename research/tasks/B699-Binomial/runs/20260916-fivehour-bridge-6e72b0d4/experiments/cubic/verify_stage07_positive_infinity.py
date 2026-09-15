"""Different interval/field implementation and integer normal-distance check."""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import time

import verify_stage05_rf_lll as v

here=Path(__file__).resolve().parent
source=here/'stage07-positive-infinity-20260915T203216Z.json'
cert=json.loads(source.read_text())
base_source=here/cert['base_certificate']
assert hashlib.sha256(base_source.read_bytes()).hexdigest()==cert['base_sha256']
base_cert=json.loads(base_source.read_text())
C=cert['C'];M0=cert['M0'];S=v.S
assert C==10**465 and M0==10**150


def isolate(branch):
    if branch=='small_positive':low,high=F(1,8),F(1,6)
    else:low,high=F(5),F(26,5)
    lo=v.scalar(low)[0];hi=v.scalar(high)[1]
    def f(a):return a*a*a-27*a*S*S+4*S*S*S
    sign=-1 if branch=='small_positive' else 1
    assert sign*f(lo)<0<sign*f(hi)
    while hi-lo>1:
        mid=(lo+hi)//2
        if sign*f(mid)<0:lo=mid
        else:hi=mid
    assert sign*f(lo)<0<sign*f(hi)
    return F(lo,S),F(hi,S)


def normalized_log(point, theta, omega, e1, e3):
    xx,yy=[v.evaluate_field_interval(a,theta) for a in point]
    args=[v.minus(xx,e1),xx,v.minus(xx,e3)]
    assert min(a[0] for a in args)>0
    ell=v.rf(args)
    if yy[0]>0:ell=(-ell[1],-ell[0])
    else:assert yy[1]<0
    phi=v.interval_quotient(ell,omega)
    assert phi[0]>-S//2 and phi[1]<S//2
    return phi


began=time.perf_counter()
root6=(v.isqrt(6*S*S),v.fsq(6*S*S))
e1=v.plus(v.scalar(30),v.times_integer(root6,40))
e3=v.minus(v.scalar(30),v.times_integer(root6,40))
omega=v.times_integer(v.rf([v.scalar(0),e1,v.times_integer(root6,80)]),2)
assert omega[0]>S//5 and omega[1]<S
A=v.double_field(v.fld(F(-290,9)),v.fld(F(11600,27)))
B=v.double_field(v.fld(-60),v.fld(-300))
Q=v.double_field(v.fld((209,4,-9)),v.fld((-2171,-36,81)))
theta=isolate('small_positive')
r1=v.rounded(normalized_log(A,theta,omega,e1,e3),C)
r2=v.rounded(normalized_log(B,theta,omega,e1,e3),C)
assert r1==base_cert['rounded_logs']['r1'] and r2==base_cert['rounded_logs']['r2']
base=[[1,0,r1],[0,1,r2],[0,0,C]]
U=base_cert['unimodular_transform'];rows=base_cert['reduced_basis']
assert v.determinant(U) in (-1,1)
assert rows==[[sum(U[i][k]*base[k][j] for k in range(3)) for j in range(3)] for i in range(3)]
normal=v.cross(rows[0],rows[1]);nn=v.dot(normal,normal)
assert abs(v.dot(normal,rows[2]))==C
results=[]
for target in cert['targets']:
    theta=isolate(target['branch'])
    phi=normalized_log(Q,theta,omega,e1,e3)
    r0=v.rounded(phi,C)
    assert r0==target['rounded_target']
    rem=(r0*normal[2])%C;rem=min(rem,C-rem)
    assert rem*rem>16*M0*M0*nn
    d2=F(rem*rem,nn)
    assert d2==F(*target['distance_squared'])
    results.append({'branch':target['branch'],'normalized_log_interval':list(phi),
                    'unique_rounding_matches':True,'distance_ratio_floor':d2//(M0*M0),
                    'strict_distance_contract':True})
out={
    'status':'PASS','source_certificate':source.name,
    'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
    'checker_module':'verify_stage05_rf_lll.py',
    'checker_module_sha256':hashlib.sha256((here/'verify_stage05_rf_lll.py').read_bytes()).hexdigest(),
    'bits':v.BITS,'RF_iterations':v.ITERATIONS,
    'methods':['different initial rational root isolators','exact cubic-field double','endpoint-only RF','integer cross product'],
    'targets':results,'elapsed_seconds':round(time.perf_counter()-began,6),
    'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest=here/f'stage07-positive-infinity-independent-{stamp}.json'
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','output':dest.name,'ratios':[r['distance_ratio_floor'] for r in results],
                  'elapsed_seconds':out['elapsed_seconds']}))

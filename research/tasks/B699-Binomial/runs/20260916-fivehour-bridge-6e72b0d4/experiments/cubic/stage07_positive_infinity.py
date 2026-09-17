"""Two new targets on the same accepted lattice, with directed RF bounds."""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import time

from stage05_certified_rf_lll_v2 import (
    I, SCALE, BITS, ITERATIONS, RF, double_interval,
    gram_schmidt, dot, det3, matmul,
)

here=Path(__file__).resolve().parent
oldpath=here/'stage05-rf-lll-20260915T200406Z.json'
old=json.loads(oldpath.read_text())
C=old['C'];M0=old['M0']
base=old['input_basis'];U=old['unimodular_transform'];rows=old['reduced_basis']
assert det3(U) in (-1,1) and matmul(U,base)==rows
stars,norms=gram_schmidt(rows)


def root_interval(low,high,increasing):
    lo=I.coerce(low).lo;hi=I.coerce(high).hi
    def f(a):return a**3-27*a*SCALE*SCALE+4*SCALE**3
    direction=1 if increasing else -1
    assert direction*f(lo)<0<direction*f(hi)
    while hi-lo>1:
        mid=(lo+hi)//2
        if direction*f(mid)<0:lo=mid
        else:hi=mid
    assert direction*f(lo)<0<direction*f(hi)
    return I(lo,hi)


began=time.perf_counter()
r6=I.rational(6).sqrt()
e1=30+40*r6;e3=30-40*r6
omega=2*RF(0,e1,e1-e3)
assert omega.lo>SCALE//5 and omega.hi<SCALE
targets=[]
for label,low,high,increasing in [
    ('small_positive',F(1,10),F(1,5),False),
    ('large_positive',F(5),F(21,4),True),
]:
    th=root_interval(low,high,increasing)
    tau=-9*th*th+4*th+209
    nu=81*th*th-36*th-2171
    xx,yy=double_interval(tau,nu)
    assert (xx-e1).lo>0
    ell=RF(xx-e1,xx,xx-e3)
    if yy.sign()>0:ell=-ell
    phi=ell/omega
    assert phi.lo>-SCALE//2 and phi.hi<SCALE//2
    r0=phi.nearest_scaled_integer(C)
    coord=dot([F(0),F(0),F(r0)],stars[-1])/norms[-1]
    nearest=(2*coord.numerator+coord.denominator)//(2*coord.denominator)
    d2=(coord-nearest)**2*norms[-1]
    assert d2>16*M0*M0
    targets.append({
        'branch':label,'theta':th.record(),
        'doubled_point':{'t':xx.record(),'v':yy.record()},
        'normalized_log':phi.record(),'normalized_log_display':phi.display(),
        'rounded_target':r0,'distance_squared':[d2.numerator,d2.denominator],
        'distance_squared_over_M0_squared_floor':d2//(M0*M0),
        'strict_distance_contract':True,
    })

out={
    'status':'PASS','scope':'H29 positive branches, same E(Q) and same integer lattice.',
    'bits':BITS,'RF_iterations':ITERATIONS,'omega':omega.record(),
    'base_certificate':oldpath.name,'base_sha256':hashlib.sha256(oldpath.read_bytes()).hexdigest(),
    'interval_module':'stage05_certified_rf_lll_v2.py',
    'interval_module_sha256':hashlib.sha256((here/'stage05_certified_rf_lll_v2.py').read_bytes()).hexdigest(),
    'C':C,'M0':M0,'targets':targets,
    'conditional_conclusion':'With stage07 real-branch transfer, M<50 and s<45080 on both branches.',
    'elapsed_seconds':round(time.perf_counter()-began,6),
    'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest=here/f'stage07-positive-infinity-{stamp}.json'
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','output':dest.name,'branches':[
    {'name':t['branch'],'log':t['normalized_log_display'],'ratio_floor':t['distance_squared_over_M0_squared_floor']}
    for t in targets],'elapsed_seconds':out['elapsed_seconds']}))

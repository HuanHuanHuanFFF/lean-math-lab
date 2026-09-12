"""Bounded exact checks for the algebraic moment-to-Pade connection.

Only rational/integer polynomials of small degree are used. No Lean,
large computations, source mutations outside this directory, or downloads.
"""
from __future__ import annotations
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime, timezone
import ctypes
import hashlib
import itertools
import json
import math
import os
import platform
import re
import shutil
import time

OUT=Path(__file__).resolve().parent
RUN=OUT.parents[1]
ML=Path('D:/CodingProject/Math/.lake/packages/mathlib')
PKG=Path('D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911')
START=time.monotonic()


def clean(p):return {k:F(v) for k,v in p.items() if v}
def add(p,q):return clean({k:p.get(k,F(0))+q.get(k,F(0)) for k in p.keys()|q.keys()})
def scale(a,p):return clean({k:F(a)*v for k,v in p.items()})
def sub(p,q):return add(p,scale(-1,q))
def mul(p,q):
    r={}
    for i,a in p.items():
        for j,b in q.items():r[i+j]=r.get(i+j,F(0))+a*b
    return clean(r)
def power(p,n):
    r={0:F(1)}
    for _ in range(n):r=mul(r,p)
    return r
def comp(p,q):
    r={}
    for i,a in p.items():r=add(r,scale(a,power(q,i)))
    return r
def value(p,z):return sum((a*F(z)**k for k,a in p.items()),F(0))
def moment(p):return sum((a/F(k+1) for k,a in p.items()),F(0))
def basis(a,b):return {a+k:F((-1)**k*math.comb(b,k)) for k in range(b+1)}
ONE={0:F(1)};X={1:F(1)};OMX={0:F(1),1:F(-1)}


def pqe(A,B,C):
    N=A+B+C+1
    P={r:F((-1)**(C+r)*math.comb(N,r)*math.comb(A+C-r,A)) for r in range(C+1)}
    Q={r:F((-1)**C*math.comb(A+C-r,C)*math.comb(B+r,r)) for r in range(A+1)}
    E={r:F((-1)**r*math.comb(A+r,r)*math.comb(N,A+C+r+1)) for r in range(B+1)}
    return clean(P),clean(Q),clean(E)


def snapshot():
    r={'cpu_count_visible':os.cpu_count(),'disk_free_bytes':shutil.disk_usage(OUT).free,
       'scope':'Host-visible current values; not an exclusive resource allocation.'}
    if os.name=='nt':
        class Stat(ctypes.Structure):
            _fields_=[('length',ctypes.c_ulong),('load',ctypes.c_ulong)]+[
                (k,ctypes.c_ulonglong) for k in ('total','available','page_total','page_available','virtual_total','virtual_available','extended')]
        s=Stat();s.length=ctypes.sizeof(s)
        if ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(s)):
            r.update(available_memory_bytes=s.available,total_memory_bytes=s.total)
    return r


result={'started_utc':datetime.now(timezone.utc).isoformat(),'python':platform.python_version(),
        'resources_before':snapshot(),'lean_run':False,'scope':'Bounded exact counterexample/regression tests; not an unrestricted proof or Lean acceptance.'}
cut_data=json.loads((PKG/'input/i18_cut_inputs.json').read_text())
seed_zs=[F(row['D0'],row['a']*row['p']**row['k0']) for row in cut_data['cuts']]
zs=sorted(set(seed_zs+[F(-2),F(-1),F(-1,2),F(0),F(1,3),F(1,2),F(1),F(3,2),F(2)]))
mass_count=0
for n in range(31):
    for r in range(n+1):
        assert math.comb(n,r)*moment(basis(r,n-r))==F(1,n+1)
        mass_count+=1
subdivision_count=0
for seed in range(60):
    p=clean({k:F((seed+3*k)%17-8,1+(seed+k)%7) for k in range(10)})
    for z in zs:
        left=scale(z,X)
        right=add(OMX,scale(z,X))
        assert moment(p)==z*moment(comp(p,left))+(1-z)*moment(comp(p,right))
        subdivision_count+=1
power_count=0
for n in range(21):
    for z in zs:
        rhs=F(1,n+1)*sum((z**r for r in range(n+1)),F(0))
        assert moment(power(add(OMX,scale(z,X)),n))==rhs
        assert (1-z)*sum((z**r for r in range(n+1)),F(0))==1-z**(n+1)
        power_count+=1
result['subdivision']={'normalized_basis_masses':mass_count,'mass_domain':'n=0..30, r=0..n',
    'arbitrary_polynomial_cases':subdivision_count,'polynomial_degree_at_most':9,
    'affine_power_cases':power_count,'power_degree_domain':'n=0..20',
    'z_values':[str(z) for z in zs],'actual_i18_seed_values':[str(z) for z in seed_zs]}

kernel_cases=0
source_cases=0
for A,B,C in itertools.product(range(4),repeat=3):
    P,Q,E=pqe(A,B,C)
    pref=F(math.factorial(A+B+C+1),math.factorial(A)*math.factorial(B)*math.factorial(C))
    for z in zs:
        pk=mul(basis(A,B),power(sub({0:z},X),C))
        qk=mul(basis(B,C),power(add(OMX,scale(z,X)),A))
        ek=mul(basis(A,C),power(sub(ONE,scale(z,X)),B))
        assert comp(pk,scale(z,X))==scale(z**(A+C),ek)
        assert comp(pk,add(OMX,scale(z,X)))==scale((-1)**C*(1-z)**(B+C),qk)
        kernel_cases+=2
        assert pref*moment(pk)==value(P,z)
        assert (-1)**C*pref*moment(qk)==value(Q,z)
        assert pref*moment(ek)==value(E,z)
        source_cases+=3
        assert value(P,z)-(1-z)**(B+C+1)*value(Q,z)==z**(A+C+1)*value(E,z)
poly_cases=0
for A,B,C in itertools.product(range(7),repeat=3):
    P,Q,E=pqe(A,B,C)
    assert sub(P,mul(power(OMX,B+C+1),Q))==mul(power(X,A+C+1),E)
    poly_cases+=1
result['kernel_and_source']={'affine_kernel_equalities':kernel_cases,'actual_source_moment_equalities':source_cases,
    'kernel_domain':'A,B,C=0..3; all listed rational z, including all ten i18 seed values',
    'coefficientwise_polynomial_identities':poly_cases,'coefficient_domain':'A,B,C=0..6; entire polynomials, not just evaluations'}

A,B,C,z=1,2,1,F(1,2)
P,Q,E=pqe(A,B,C)
pv,qv,ev=(value(f,z) for f in (P,Q,E))
correct=pv-(1-z)**(B+C+1)*qv-z**(A+C+1)*ev
illustrative_wrong=pv-(1-z)**(A+B+1)*qv-z**(B+C+1)*ev
wrong_sign=(-1)**C*pv-(1-z)**(B+C+1)*qv-z**(A+C+1)*ev
assert correct==0 and illustrative_wrong==F(23,64) and wrong_sign!=0
assert moment(mul(X,X))==F(1,3) and moment(X)**2==F(1,4)
result['rejected_wrong_forms']={'witness':{'A':A,'B':B,'C':C,'z':str(z),'P':str(pv),'Q':str(qv),'E':str(ev)},
     'correct_residual':str(correct),'illustrative_wrong_exponents_residual':str(illustrative_wrong),
     'missing_P_global_sign_residual':str(wrong_sign),
     'M_is_not_multiplicative':['M(X^2)=1/3','M(X)^2=1/4']}

# Source and import inventory. This deliberately does not invoke Lean.
source_paths=[RUN/'experiments/huan-pade-moment-5e2d13bb/Moment.lean',
    RUN/'experiments/huan-pade-moment-5e2d13bb/BernsteinCone.lean',
    RUN/'lean/PadeInteger.lean',PKG/'input/i18_cut_inputs.json',
    RUN/'experiments/huan-pade-construction-5e2d13bb/CoefficientFactors.lean',
    RUN/'experiments/huan-pade-construction-5e2d13bb/KernelExpansion.lean',
    ML/'Mathlib/Algebra/Polynomial/Eval/Defs.lean',ML/'Mathlib/Algebra/Polynomial/Basic.lean',
    ML/'Mathlib/Data/Nat/Choose/Sum.lean',ML/'Mathlib/Data/Nat/Choose/Basic.lean']
sources=[]
for p in source_paths:
    data=p.read_bytes();sources.append({'path':str(p),'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
expected={'Moment.lean':'d500b13ffb6d5c622d59a51a123adb0c58ec1d0bbd039809761656eea2b251b7',
          'BernsteinCone.lean':'11c86acb368d353bd44f086f7d81eb2945b7c70712693bd463ff1367e3756aa9'}
for row in sources:
    if Path(row['path']).name in expected:
        assert row['sha256']==expected[Path(row['path']).name]
imports=[]
for p in sorted(OUT.glob('*.lean')):
    text=p.read_text(encoding='utf-8')
    assert 'UNCOMPILED CANDIDATE' in text or 'UNCOMPILED CANDIDATES' in text
    assert not re.search(r'^\s*(?:axiom|opaque)\s',text,re.M)
    assert not re.search(r'\b(?:sorry|admit|sorryAx|native_decide)\b',text)
    for name in re.findall(r'^import\s+(\S+)',text,re.M):
        if name.startswith('Mathlib.'):
            src=ML/(name.replace('.','/')+'.lean');obj=ML/'.lake/build/lib/lean'/(name.replace('.','/')+'.olean')
            assert src.is_file() and obj.is_file(),name
            imports.append({'consumer':p.name,'module':name,'source_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),
                            'olean_exists':True,'olean_bytes':obj.stat().st_size})
        else:imports.append({'consumer':p.name,'module':name,'status':'Project source candidate; not compiled by this task.'})
(OUT/'SOURCE_AND_API.json').write_text(json.dumps({'sources':sources,'imports':imports,
    'avoided_uncached_modules':['Mathlib.Algebra.Polynomial.Derivative','Mathlib.Algebra.GeomSum'],
    'scope':'Read-only source/hash and direct-cache inventory; no transitive compilation claim.'},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
result.update(status='PASS_SMALL_EXACT_SOURCE_MOMENT_IDENTITY_CHECKS',seconds=time.monotonic()-START,
              finished_utc=datetime.now(timezone.utc).isoformat())
(OUT/'EXACT_CHECKS.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result,ensure_ascii=False,indent=2))

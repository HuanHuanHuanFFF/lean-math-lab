"""Small exact tests of a concrete rational polynomial moment.

No Lean invocation, imports from candidate code, sieves or downloads.
Every output is in this experiment's directory.
"""
from __future__ import annotations
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
from datetime import datetime, timezone
from fractions import Fraction as Q
from pathlib import Path

OUT = Path(__file__).resolve().parent
RUN = OUT.parents[1]
REPO = RUN.parents[4]
MATHLIB = Path('D:/CodingProject/Math/.lake/packages/mathlib')
START = time.monotonic()


def poly(data):
    return {int(k):Q(v) for k,v in data.items() if v}


def add(p,q):
    return poly({k:p.get(k,Q(0))+q.get(k,Q(0)) for k in p.keys()|q.keys()})


def scale(c,p):
    return poly({k:Q(c)*v for k,v in p.items()})


def mul(p,q):
    answer={}
    for i,a in p.items():
        for j,b in q.items():
            answer[i+j]=answer.get(i+j,Q(0))+a*b
    return poly(answer)


def power(p,n):
    r={0:Q(1)}
    for _ in range(n):
        r=mul(r,p)
    return r


def moment(p):
    return sum((v/Q(k+1) for k,v in p.items()),Q(0))


def value(p,x):
    return sum((v*Q(x)**k for k,v in p.items()),Q(0))


def beta(a,b):
    return Q(math.factorial(a)*math.factorial(b),math.factorial(a+b+1))


def basis(a,b):
    return {a+k:Q((-1)**k*math.comb(b,k)) for k in range(b+1)}


def resource_snapshot():
    rec={'cpu_count_visible':os.cpu_count(),'disk_free_bytes':shutil.disk_usage(OUT).free,
         'scope':'Windows host visible values, not an exclusive allocation.'}
    if os.name=='nt':
        class Stat(ctypes.Structure):
            _fields_=[('length',ctypes.c_ulong),('load',ctypes.c_ulong)]+[
              (k,ctypes.c_ulonglong) for k in ('total','available','page_total','page_available',
                                              'virtual_total','virtual_available','extended')]
        state=Stat();state.length=ctypes.sizeof(state)
        if ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(state)):
            rec.update(available_memory_bytes=state.available,total_memory_bytes=state.total)
    return rec


result={'started_utc':datetime.now(timezone.utc).isoformat(),'python':platform.python_version(),
        'resources_before':resource_snapshot(),'scope':'Exact finite sanity checks; not a proof for all parameters or Lean acceptance.'}
monomials=0
for k in range(41):
    for c in (Q(-3,5),Q(0),Q(7,4)):
        assert moment(poly({k:c}))==c/Q(k+1)
        monomials+=1
linear=0
for seed in range(120):
    p=poly({k:Q((seed+3*k)%11-5,1+(seed+k)%7) for k in range(7)})
    q=poly({k:Q((2*seed+k)%13-6,1+(seed+2*k)%5) for k in range(8)})
    r=Q(seed%9-4,seed%5+1)
    assert moment(add(p,q))==moment(p)+moment(q)
    assert moment(add(p,scale(-1,q)))==moment(p)-moment(q)
    assert moment(scale(r,p))==r*moment(p)
    linear+=1
beta_cases=0
recurrence_cases=0
for a,b in itertools.product(range(17),repeat=2):
    assert moment(basis(a,b))==beta(a,b)
    assert basis(a,b+1)==add(basis(a,b),scale(-1,basis(a+1,b)))
    assert beta(a,b+1)==beta(a,b)-beta(a+1,b)
    beta_cases+=1;recurrence_cases+=1
result['core']={'monomial_checks':monomials,'linearity_triples':linear,'beta_checks':beta_cases,
                'recurrence_checks':recurrence_cases,'beta_domain':'0<=a,b<=16'}

# Test against the actual integer coefficient formulas in PadeInteger.lean.
X={1:Q(1)};ONE={0:Q(1)};OMX={0:Q(1),1:Q(-1)}
kernel_checks=0
zs=(Q(-1),Q(0),Q(1,3),Q(2,3),Q(1),Q(2))
for A,B,C in itertools.product(range(5),repeat=3):
    N=A+B+C+1
    pref=Q(math.factorial(N),math.factorial(A)*math.factorial(B)*math.factorial(C))
    for z in zs:
        pk=mul(basis(A,B),power(poly({0:z,1:-1}),C))
        qk=mul(basis(B,C),power(poly({0:1,1:z-1}),A))
        ek=mul(basis(A,C),power(poly({0:1,1:-z}),B))
        pval=sum((Q((-1)**(C+r)*math.comb(N,r)*math.comb(A+C-r,A))*z**r for r in range(C+1)),Q(0))
        qval=sum((Q((-1)**C*math.comb(A+C-r,C)*math.comb(B+r,r))*z**r for r in range(A+1)),Q(0))
        eval_=sum((Q((-1)**r*math.comb(A+r,r)*math.comb(N,A+C+r+1))*z**r for r in range(B+1)),Q(0))
        assert pref*moment(pk)==pval
        assert (-1)**C*pref*moment(qk)==qval
        assert pref*moment(ek)==eval_
        kernel_checks+=3
result['actual_pade_finite_correspondence']={'kernel_checks':kernel_checks,
      'domain':'A,B,C in 0..4; z=-1,0,1/3,2/3,1,2',
      'scope':'Direct moment expansion versus source integer coefficient sums; no all-parameter Lean correspondence claimed.'}

# A tiny illustration of the conditional all-n growth consumer.
F=mul(X,OMX)
lam=Q(5,16)
weights=(Q(5,16),Q(7,8),Q(11,16),Q(1,4),Q(11,16),Q(7,8),Q(5,16))
certificate={}
for k,c in enumerate(weights):
    assert c>=0
    certificate=add(certificate,scale(c,basis(k,6-k)))
assert certificate==add(poly({0:lam}),scale(-1,F))
growth_checks=0
for a,b in itertools.product(range(5),repeat=2):
    g=basis(a,b)
    for n in range(21):
        assert moment(mul(g,power(F,n)))<=lam**n*moment(g)
        growth_checks+=1
sharp_gap=add(poly({0:Q(1,4)}),scale(-1,F))
assert sharp_gap and value(sharp_gap,Q(1,2))==0
assert moment(mul(X,X))==Q(1,3) and moment(X)*moment(X)==Q(1,4)
result['cone_illustration']={'F':'X*(1-X)','lambda':str(lam),'degree':6,
     'nonnegative_unnormalized_basis_weights':[str(c) for c in weights],
     'small_growth_checks':growth_checks,'growth_domain':'g=X^a(1-X)^b, a,b in 0..4, n in 0..20',
     'not_multiplicative':{'M_X_squared':'1/3','M_X_times_M_X':'1/4'},
     'sharp_gap_warning':'1/4-X*(1-X) is nonzero and vanishes at 1/2, so it has no finite nonnegative Bernstein-cone expression.'}

# Read-only import inventory and source provenance, never a Lean process.
imports=[]
for filename in ('Moment.lean','BernsteinCone.lean'):
    text=(OUT/filename).read_text(encoding='utf-8')
    assert not re.search(r'^\s*(?:axiom|opaque)\s',text,re.M)
    assert not re.search(r'\b(?:sorry|admit|native_decide|sorryAx)\b',text)
    for name in re.findall(r'^import\s+(\S+)',text,re.M):
        if name.startswith('Mathlib.'):
            source=MATHLIB/(name.replace('.','/')+'.lean')
            cached=MATHLIB/'.lake/build/lib/lean'/(name.replace('.','/')+'.olean')
            assert source.is_file() and cached.is_file(),name
            imports.append({'consumer':filename,'module':name,'source':str(source),
                 'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
                 'olean':str(cached),'olean_exists':True,'olean_bytes':cached.stat().st_size})
        else:
            assert filename=='BernsteinCone.lean' and name.endswith('.Moment')
            imports.append({'consumer':filename,'module':name,'local_candidate':'Moment.lean',
                 'status':'Requires parent compilation; no candidate olean claimed.'})
source_paths=[RUN/'lean/PadeInteger.lean',RUN/'experiments/huan-pade-construction-5e2d13bb/CoefficientFactors.lean',
              MATHLIB/'Mathlib/Algebra/Polynomial/Basic.lean',MATHLIB/'Mathlib/Data/Nat/Factorial/Basic.lean',
              REPO/'lean-toolchain',REPO/'lake-manifest.json']
sources=[]
for p in source_paths:
    data=p.read_bytes();sources.append({'path':str(p),'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
inventory={'status':'READ_ONLY_DIRECT_IMPORT_INVENTORY','imports':imports,'sources':sources,
           'omitted_uncached_modules':['Mathlib.Algebra.Polynomial.Module.Basic','Mathlib.Data.Rat.Basic'],
           'scope':'Direct olean existence and source API hashes only; no compilation, cache downloads or full transitive cache validation.'}
(OUT/'API_AND_SOURCE.json').write_text(json.dumps(inventory,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
result.update(status='PASS_SMALL_EXACT_MOMENT_CHECKS',seconds=time.monotonic()-START,
              finished_utc=datetime.now(timezone.utc).isoformat(),lean_run=False)
(OUT/'EXACT_CHECKS.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result,ensure_ascii=False,indent=2))

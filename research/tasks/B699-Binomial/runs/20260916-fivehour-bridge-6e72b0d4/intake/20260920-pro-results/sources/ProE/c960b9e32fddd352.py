#!/usr/bin/env python3
"""Exact divisor-endpoint construction and integer-binomial regression.
This finite program checks the endpoint proved in PROOFS.md; it is not a
substitute for that infinite-parameter argument.
"""
from __future__ import annotations
import hashlib
import json
import math
import sys
from pathlib import Path

BASE = Path(__file__).resolve().parents[1]
RANGES = {-1: {0: (1,17), 1: (1,8), 2: (1,35)},
           1: {0: (1,21), 1: (1,10), 2: (-3,26)}}
ZERO = [[-1,0,9],[-1,2,27],[1,0,9]]


def iso3(x: int) -> int:
    assert x > 0
    return 3 if x % 3 == 0 and x % 9 != 0 else 1


def divisors(x: int) -> list[int]:
    assert x > 0
    a=[]; b=[]
    for d in range(1,math.isqrt(x)+1):
        if x%d == 0:
            a.append(d)
            if d*d != x: b.append(x//d)
    return a + b[::-1]


def eliminant(c: int, m: int, t: int) -> int:
    z=m*m
    if c==0: return t*(4*t-z)*(t-z)
    if c==1: return t*(4*t+z)
    if c==2: return (t-4*z)*(4*t-15*z)*(t-3*z)
    raise ValueError('slot must be 0,1,2')


def half_discriminant(e: int, c: int, t: int, p: int) -> int:
    # Independently built from the b-quadratic (not a fitted formula).
    m=3; n=2*(m*p+e)**2-1
    if c==0: B=2*m*m*p+4*e*m; C=-t*n
    elif c==1: B=-2*m*m*p-4*e*m; C=t*n
    elif c==2:
        B=-6*m*m*p-12*e*m
        C=t*n+16*e*m**3*p+28*m*m
    else: raise ValueError(c)
    assert B%2==0
    return (B//2)**2-C


def endpoint() -> dict:
    templates=[]; pairs=[]; zeros=[]
    for e in [-1,1]:
        for c in [0,1,2]:
            lo,hi=RANGES[e][c]
            for t in range(lo,hi+1):
                d=eliminant(c,3,t)
                if d==0:
                    zeros.append([e,c,t]); continue
                templates.append([e,c,t,d])
                for s in divisors(abs(d)):
                    for rho in [1,3]:
                        r=s*rho
                        if r%2==0 or (r-2*e)%3: continue
                        p=(r-2*e)//3
                        if p<3 or p%2==0 or iso3(r)!=rho: continue
                        disc=half_discriminant(e,c,t,p)
                        root=None if disc<0 else math.isqrt(disc)
                        if root is not None and root*root==disc:
                            raise AssertionError(('unresolved integer discriminant',e,c,t,p,disc))
                        pairs.append([e,c,t,p,r,rho,d,disc,root])
    assert zeros==ZERO
    pairs.sort()
    assert len(pairs)==len({tuple(z[:4]) for z in pairs})
    return {'ranges':[[e,c,*RANGES[e][c]] for e in [-1,1] for c in [0,1,2]],
            'zero_exceptions':zeros, 'templates':templates, 'candidate_rows':pairs,
            'statistics':{str(e):{'templates':sum(z[0]==e for z in templates),
                                 'candidate_rows':sum(z[0]==e for z in pairs),
                                 'square_discriminants':0} for e in [-1,1]}}


def factors(n:int)->dict[int,int]:
    out={}; d=2
    while d*d<=n:
        while n%d==0:out[d]=out.get(d,0)+1;n//=d
        d=3 if d==2 else d+2
    if n>1:out[n]=out.get(n,0)+1
    return out


def row_witnesses(n:int)->list[int]:
    b3=n*(n-1)*(n-2)//6
    ps=sorted(p for p in factors(b3) if p%2)
    b=1; out=[]
    for j in range(1,n//2+1):
        b=b*(n-j+1)//j
        if j<4:continue
        d=math.gcd(b,b3)
        p=next((p for p in ps if d%p==0),None)
        if p is None:raise AssertionError(('original pair has no witness',n,j))
        out.append(p)
    return out


def regression()->list[dict]:
    # These are regression rows, not the proof of the unbounded family.
    inputs=[(p,e) for p in [3,5,7,9,11,25] for e in [-1,1]]
    rows=[]
    for p,e in inputs:
        n=2*(3*p+e)**2
        ws=row_witnesses(n)
        rows.append({'P':p,'sign':e,'n':n,'j_min':4,'j_max':n//2,
                     'witnesses':ws,'sha256':hashlib.sha256(json.dumps(ws,separators=(',',':')).encode()).hexdigest()})
    return rows


def diagnostics()->dict:
    p=63041;b=59881;x=3*p-1;n=2*x*x;j=b*p
    assert j*(j-1)%(n-1)==0 and j%p==0
    k=(x*x-1)//iso3(x*x-1)
    return {'weak_first_window':{'P':p,'b':b,'X':x,'n':n,'j':j,
                                'N_remainder':j*(j-1)%(n-1),
                                'K_remainder':j*(j-1)*(j-2)%k,
                                'actual_gcd':math.gcd(n,j),'witness':11},
            'full_3_power':{'n':128,'j':4,'layer':9,'n_residue':128%9,'j_residue':4%9},
            'original_endpoints':{'n8_j4_witness':7,'n32_all_4_to_16_witness':31}}


def expected()->dict:
    return {'schema':'B699-SATURATED-SQUARE-SLOTS-v1',
            'scope':{'i':3,'X':'positive even','slot_values':[0,1,2],
                     'isolated_3':'remove 3 exactly when v3=1',
                     'negative_dominance_constant':542,'negative_dominance_exponent':5,
                     'R7_changed':False,'Lean':False},
            'endpoint':endpoint(),'diagnostics':diagnostics(),'regression':regression()}


def main()->None:
    if len(sys.argv)!=2:raise SystemExit('usage: primary.py certificate.json')
    got=json.loads(Path(sys.argv[1]).read_text())
    want=expected()
    if got!=want:raise SystemExit('REJECT: certificate differs from complete exact reconstruction')
    print('PASS_PRIMARY_DIVISOR_ENDPOINT_AND_ACTUAL_BINOMIALS')
    print(json.dumps(want['endpoint']['statistics'],sort_keys=True))

if __name__=='__main__':main()

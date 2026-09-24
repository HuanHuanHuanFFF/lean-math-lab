#!/usr/bin/env python3
from __future__ import annotations
import json
from fractions import Fraction
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
SRC=ROOT/'sources'/'round14_rank_exponent.json'


def mul3(a,b):
    # (x+y sqrt3)(u+v sqrt3)
    x,y=a;u,v=b
    return (x*u+3*y*v,x*v+y*u)

def pow3(base,n):
    out=(1,0)
    while n:
        if n&1: out=mul3(out,base)
        base=mul3(base,base); n//=2
    return out

def pell(t):
    return pow3((2,1),t)

def factor_poly(n):
    return n*n-6*n+4

# Exact Pell / same-source identities
samples=[]
for t in [1,3,5,7,9,17,25,49,97]:
    U,X=pell(t)
    assert U%2==0
    y=U//2
    assert (3*X-1)%2==0
    d=(3*X-1)//2
    assert d*d+d+1==3*y*y
    U2,X2=pell(2*t)
    # alpha^(2t)+1 = 2U alpha^t, coordinatewise
    assert (U2+1,X2)==(2*U*U,2*U*X)
    samples.append({'t':t,'U_bits':U.bit_length(),'X_bits':X.bit_length(),'y_mod_60':y%60})

# Small exact congruence regression, not a proof of finiteness
small=[]
for t in range(3,32,2):
    U,_=pell(t); y=U//2
    lo=max(0,(t-5)//2)
    hi=18*t+15
    for c in (1,3):
        hits=[]
        for s in range(lo,hi+1):
            n=c*(1<<s)
            if factor_poly(n)%y==0:
                hits.append(s)
        if hits:
            small.append({'t':t,'c':c,'s':hits})
assert small==[
    {'t':5,'c':1,'s':[33]},
    {'t':5,'c':3,'s':[93]},
    {'t':7,'c':1,'s':[22]},
]

# Round 14 records: Pell divisibility and local root allocation examples
cert=json.loads(SRC.read_text())
local=[]
for rec in cert['records']:
    r=rec['r']; p=rec['p']
    U,_=pell(r)
    assert U%p==0
    checked=0
    for tc in rec['target_checks']:
        e=tc.get('log')
        if e is None:
            continue
        c=tc['c']; root=tc['root']
        assert (c*pow(2,e,p))%p==root%p
        assert ((root-3)*(root-3)-5)%p==0
        assert factor_poly(root)%p==0
        checked+=1
    local.append({'r':r,'p':p,'pell_zero':True,'root_checks':checked})

# Exact arithmetic separation used after epsilon=1/200.
# For t>=4: t-2 > 19t/50.
for t in range(4,1000):
    assert Fraction(t-2,1)>Fraction(19*t,50)

out={
    'status':'PASS',
    'scope':'Exact algebraic/Pell/local-regression checks only; external Subspace-Theorem result is not reproved.',
    'pell_samples':samples,
    'small_congruence_regression':small,
    'round14_local_checks':local,
    'height_budget':{
        'epsilon':'1/200',
        'two_gcd_upper':'< 19*t/50 outside finite exceptional sets',
        'gcd_lower':'> t-2',
        'separation_for_t_ge_4':True,
        'unbounded_sequence_eventually_t_ge_4':True,
    },
    'theorem_claim':{
        'balanced_core':'absolute finite',
        'effective_bound':False,
        'finite_bottom_completed':False,
        'lean':False,
    }
}
(ROOT/'outputs'/'replay.json').write_text(json.dumps(out,indent=2,ensure_ascii=False)+'\n')
print('PELL_IDENTITIES=PASS')
print('SMALL_CONGRUENCE_REGRESSION=PASS')
print(f'ROUND14_LOCAL_RECORDS=PASS; RECORDS={len(local)}')
print('HEIGHT_BUDGET=PASS')
print('ROUND15_REPLAY=PASS')

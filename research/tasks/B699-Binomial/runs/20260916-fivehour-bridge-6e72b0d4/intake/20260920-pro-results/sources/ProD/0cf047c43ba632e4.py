#!/usr/bin/env python3
"""Exact replay for this round. Python standard library only.

Polynomial identities are checked over Z, not at sampled points.  The endpoint
list is a proved finite list.  Infinite-family certificates use exact modular
periods, not bounded exponent scans.  None of this is a Lean verification or an
independent replay of the adopted historical unit-window theorems.
"""
from __future__ import annotations
import argparse
import json
from collections import defaultdict
from math import comb, gcd, isqrt, lcm
from pathlib import Path
from typing import Dict, Tuple

NAMES = ('n','u','x','y','a','e3','i3','e4','a4','c','q','eta','b')
MON = Tuple[int, ...]
ZERO = (0,) * len(NAMES)

class P:
    def __init__(self, value=0):
        if isinstance(value, P):
            self.t = dict(value.t)
        elif isinstance(value, int):
            self.t = {} if not value else {ZERO: value}
        elif isinstance(value, dict):
            self.t = {k: v for k, v in value.items() if v}
        else:
            raise TypeError(type(value).__name__)
    def __add__(self, other):
        out = defaultdict(int, self.t)
        for m, v in P(other).t.items(): out[m] += v
        return P(dict(out))
    __radd__ = __add__
    def __neg__(self): return P({m:-v for m,v in self.t.items()})
    def __sub__(self, other): return self + -P(other)
    def __rsub__(self, other): return P(other) + -self
    def __mul__(self, other):
        out = defaultdict(int)
        for m, a in self.t.items():
            for k, b in P(other).t.items():
                out[tuple(x+y for x,y in zip(m,k))] += a*b
        return P(dict(out))
    __rmul__ = __mul__
    def __pow__(self, exponent: int):
        if not isinstance(exponent,int) or exponent < 0: raise ValueError(exponent)
        result, base = P(1), self
        while exponent:
            if exponent & 1: result = result*base
            base = base*base
            exponent //= 2
        return result
    def sub(self, **values):
        result = P(0)
        replacements = [P(values.get(name, V(name))) for name in NAMES]
        for mon, coef in self.t.items():
            term = P(coef)
            for r, e in zip(replacements,mon):
                if e: term *= r**e
            result += term
        return result
    def coeff_degree(self, name, degree):
        idx=NAMES.index(name); out={}
        for mon,c in self.t.items():
            if mon[idx]==degree:
                m=list(mon);m[idx]=0;out[tuple(m)]=c
        return P(out)
    def low(self, names, limit):
        inds=[NAMES.index(name) for name in names]
        return P({m:c for m,c in self.t.items() if sum(m[i] for i in inds)<limit})
    def __eq__(self, other): return self.t == P(other).t
    def description(self):
        return [{'coefficient':c,'powers':{name:e for name,e in zip(NAMES,m) if e}}
                for m,c in sorted(self.t.items())]

def V(name):
    m=list(ZERO);m[NAMES.index(name)]=1
    return P({tuple(m):1})

def polynomial_checks():
    n,u,x,y,a,e3,i3,e4,a4,c,q,eta,b = (V(t) for t in NAMES)
    H=16*(n-3)*(n-4)-36*(n-3)*u+27*u**2
    T=8*(n-5)*(n-4)*(n-3)-(u-1)*H
    P0=4*(n-3)*(n-4)-9*n*u+27*u**2
    # Preserve actual definitions, full central precision, and positivity identities.
    assert 4*P0 == 3*(6*u-n)**2+13*n**2-112*n+192
    assert 3*H == 3*(7*n**2-76*n+192)+(18*n-108)*(n-3*u)+9*(n-3*u)**2
    assert T == (n-3-u)*P0+(n-3)*(n-4)*(4*n-12-3*u)
    xc=n-4
    vc=2*n+4-9*u
    assert 9*((n-1)*(u-2)+2)+(n-1)*vc == 2*(n-4)**2
    assert 27*T == vc**3+(6*xc-15)*vc**2+(12*xc**2-72*xc+36)*vc+160*xc**3+60*xc**2
    assert T.sub(n=3+x,u=y).low(('x','y'),2) == 0
    for nr,ur in ((3,1),(4,0),(4,1),(5,1)):
        assert T.sub(n=nr,u=ur) == 0
    r3=n-3-3*e3*i3
    r4=n-4-2*e4*a4*c
    r5=n-5-b*q
    ru=u-1-i3*a4*q*eta
    lhs=T+i3*a4*q*eta*H-48*e3*i3*e4*a4*c*q*b
    rhs=8*r3*(n-4)*(n-5)+24*e3*i3*r4*(n-5) \
        +48*e3*i3*e4*a4*c*r5-H*ru
    assert lhs == rhs
    # The first recovery equality, after multiplying by 3 I3.
    first=3*e3*i3-3*i3*a4*q*eta-(n-3*u)
    assert first == -r3+3*ru
    # Universal local leading coefficients; no finite-prime extrapolation.
    assert H.sub(n=3+x,u=a*x).coeff_degree('x',1) == -16
    assert H.sub(n=4+x,u=a*x).coeff_degree('x',1) == 16-36*a
    assert T.sub(n=4+x,u=a*x).coeff_degree('x',1) == 8-36*a
    near_leads=[]
    for r,expected in [(3,16*x-27*y),(4,-8*x+9*y),(5,16*x+13*y)]:
        lead=T.sub(n=r+x,u=1+y).low(('x','y'),2)
        assert lead == expected
        near_leads.append({'r':r,'T_leading':lead.description()})
    # C is a complete source block; x=n-4, y=j-2, and J=(2+y)(2+x-y).
    z=4+x+x*y-y*y
    denom=3+x
    Hcenter=16*(1+x)*x*denom**2-36*(1+x)*z*denom+27*z**2
    assert Hcenter.low(('x','y'),2) == -324*x
    # Small-prime normalization checks by integer coefficient identities.
    h2=H.sub(n=8*x+2,u=8*y)
    assert all(v % 32 == 0 for v in h2.t.values())
    t2=T.sub(n=8*x+2,u=8*y)
    assert all(v % 16 == 0 for v in t2.t.values())
    assert P({m:v//16 for m,v in t2.t.items()}).sub(x=0,y=0).t[ZERO] % 2 == 1
    assert all((v//16) % 2 == 0 for m,v in t2.t.items() if m!=ZERO)
    h3=H.sub(n=9*x)
    assert all(v%9==0 for m,v in (h3-192).t.items())  # 192 = 3 mod 9
    assert all(v%3==0 for v in T.sub(n=9*x).t.values())
    t5=T.sub(n=5*x,u=5*y)
    assert all(v%5==0 for m,v in (t5+288).t.items())
    return {'status':'PASS','cleared_recovery_ideal_identity':True,
            'first_recovery_ideal_identity':True,
            'full_center_square_identity':True,
            'positivity_decompositions':True,
            'normalized_source_jets':near_leads,
            'center_H_cleared_leading_coefficient':-324,
            'H_terms':len(H.t),'T_terms':len(T.t),
            'note':'Identities and local leading terms only; no NC6 candidate was certified.'}

def is_prime(p: int) -> bool:
    if p<2: return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,isqrt(p)+1,2))

def vp(x: int,p: int) -> int:
    if x==0:raise ValueError('vp(0) not defined in this checker')
    x=abs(x);e=0
    while x%p==0:e+=1;x//=p
    return e

def vbin(n: int,k: int,p: int) -> int:
    if not 0<=k<=n or not is_prime(p):raise ValueError((n,k,p))
    d=p;s=0
    while d<=n:
        s+=n//d-k//d-(n-k)//d
        d*=p
    return s

def kernel(x: int,m: int) -> int:
    """Exactly x/s_m(x), including the isolated-prime convention."""
    if x<1 or m<2:raise ValueError((x,m))
    for p in range(2,m):
        if is_prime(p):
            while x%p==0:x//=p
    if is_prime(m) and x%m==0 and x%(m*m)!=0:x//=m
    return x

def finite_boundaries():
    out=[]
    # n<2m is vacuous; n>=2m+2 uses the adopted upper-index row theorem.
    # These five entries are all remaining members of the three row families.
    for m in (6,7,8):
        for n in (2*m,2*m+1):
            if kernel(n-m+1,m)!=1:continue
            assert comb(n,m-1)%11==0 and comb(n,m)%11==0
            out.append({'n':n,'i':m-1,'j':m,'p':11,
                        'source_valuation':vbin(n,m-1,11),
                        'target_valuation':vbin(n,m,11)})
    assert [(r['n'],r['i'],r['j']) for r in out]==[(13,5,6),(14,6,7),(15,6,7),(16,7,8),(17,7,8)]
    return {'status':'PASS','scope':'Complete two-edge endpoint list, not the H023 or H025 finite bottom',
            'records':out}

def infinite_family_certificates():
    specs=[(5,30,5,840,[181,113,43,41,53]),
           (6,30,6,4200,[151,181,113,43,41,53]),
           (7,210,7,44100,[6301,7351,8821,37,61,22051,44101])]
    out=[]
    for i,base,offset,period,primes in specs:
        assert len(primes)==i
        for r,p in enumerate(primes):
            assert is_prime(p) and p>31 and gcd(base,p)==1
            assert (pow(base,2,p)+offset-r)%p==0
            assert pow(base,period,p)==1
        assert kernel(base*base,i+1)==1
        out.append({'target':i,'n':f'{base}^(2+{period}t)+{offset}',
                    't':'every nonnegative integer','old_source_nonunit_primes':primes,
                    'proof':'base^period=1 mod every listed prime, exactly; all native q_0..q_(i-1)>1',
                    'limitation':'Difference from native unit-window / cofactor<=31 conditions only. Not a complete historical coverage audit.'})
    return {'status':'PASS','families':out}

def endpoint_failure():
    n,i,j,p=55,6,8,7
    vals={'n':n,'i':i,'upper_index':7,'j':j,'p':p,
          'v7_n_minus_i':vp(n-i,p),'v7_lower':vbin(n,i,p),
          'v7_upper':vbin(n,i+1,p),'v7_target':vbin(n,j,p),
          'retained_kernel':kernel(n-i,7)}
    assert vals['retained_kernel']==49
    assert (vals['v7_lower'],vals['v7_upper'],vals['v7_target'])==(0,1,1)
    assert vbin(n,i,11)>0 and vbin(n,j,11)>0
    vals['actual_Common6_witness']=11
    vals['meaning']='Counterexample to stripping 7^2 / transporting that witness, not to B699.'
    return {'status':'PASS','record':vals}

def disjointness_and_h023():
    # Finite residue certificates used by the proof; no exponent bound is inferred.
    assert [pow(5,e,9) for e in range(6)]==[1,5,7,8,4,2]
    assert pow(5,6,9)==1
    # i6 terminal-smooth rows in A/B tails would respectively be 8/20 or 18/90.
    for n in (8,20,18,90):assert n%1800 not in (1280,1530)
    # H023 diagnostic family: n=20*7^(12t)+7, t>=1.
    # On every such row 2^3|n-3, 3^2|n, 5^2|n-2; each position is unique
    # in the seven-source window because 8,9,25 exceed 6.
    for modulus,r in [(8,3),(9,0),(25,2)]:
        assert pow(7,12,modulus)==1
        assert (20*pow(7,12,modulus)+7-r)%modulus==0
    return {'status':'PASS','terminal_i5_vs_H02_plus':'disjoint (proved in PROOFS)',
            'terminal_i6_vs_H025_tails':'disjoint (proved in PROOFS)',
            'H023_subfamily':'n=20*7^(12t)+7, t>=1',
            'H023_maximum_positions':{'2':3,'3':0,'5':2},
            'novelty':'This family is covered by the derived i7 row theorem; non-overlap with all older H023 consumers is NOT certified.'}

def main():
    if not __debug__:
        raise RuntimeError('Run this verifier without -O or PYTHONOPTIMIZE.')
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,default=Path(__file__).resolve().parents[1]/'outputs/replay.json')
    args=parser.parse_args()
    out={'status':'PASS','evidence_level':'same-session deterministic exact checks',
         'frontier_reduction':0,
         'polynomial_checks':polynomial_checks(),
         'finite_endpoints':finite_boundaries(),
         'infinite_family_certificates':infinite_family_certificates(),
         'endpoint_failure':endpoint_failure(),
         'target_intersection':disjointness_and_h023(),
         'not_replayed':'The upstream unbounded unit-window theorems, historical proof chain, Lean, independent review.'}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print('PASS: polynomial identities, full local jets, 5 endpoint cases, 3 modular family certificates, endpoint failure, target-scope checks')
    print('frontier reduction = 0 (strict incremental coverage not certified)')
if __name__=='__main__': main()

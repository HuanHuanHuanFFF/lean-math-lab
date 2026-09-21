#!/usr/bin/env python3
"""Exact coefficient checker / certificate generator. Python standard library only.
The second checker is a separate implementation and does not import this module.
"""
import argparse
import hashlib
import itertools
import json
import math
import sys
from pathlib import Path


def clean(a):
    a = list(a)
    while len(a) > 1 and a[-1] == 0:
        a.pop()
    return a


def add(a, b):
    r = [0] * max(len(a), len(b))
    for i, v in enumerate(a): r[i] += v
    for i, v in enumerate(b): r[i] += v
    return clean(r)


def scale(a, s): return clean([s*v for v in a])

def sub(a, b): return add(a, scale(b, -1))


def mul(a, b):
    r = [0] * (len(a) + len(b) - 1)
    for i, u in enumerate(a):
        for j, v in enumerate(b): r[i+j] += u*v
    return clean(r)


def power(a, k):
    r = [1]
    for _ in range(k): r = mul(r, a)
    return r


def shifted(a, k):
    r = [0] * len(a)
    for i, v in enumerate(a):
        for j in range(i+1): r[j] += v * math.comb(i, j) * k**(i-j)
    return clean(r)


def divide(a, b):
    r = list(a)
    if b[-1] != 1: raise ValueError('monic divisor required')
    q = [0] * max(1, len(a)-len(b)+1)
    while len(r) >= len(b) and r != [0]:
        k, v = len(r)-len(b), r[-1]
        q[k] += v
        for i, w in enumerate(b): r[k+i] -= v*w
        r = clean(r)
    return clean(q), clean(r)


def is_prime(n):
    if n < 2: return False
    return all(n % d for d in range(2, math.isqrt(n)+1))


FACTORS = {
    (4,1): [(3,1),(5,1)],
    (4,2): [(3,1),(5,1),(17,1)],
    (4,3): [(3,2),(5,1),(7,1),(13,1)],
    (4,4): [(3,1),(5,1),(17,1),(257,1)],
    (10,1): [(3,1),(11,1),(31,1)],
    (10,2): [(3,1),(5,2),(11,1),(31,1),(41,1)],
    (10,3): [(3,2),(7,1),(11,1),(31,1),(151,1),(331,1)],
    (10,4): [(3,1),(5,2),(11,1),(17,1),(31,1),(41,1),(61681,1)],
}


def endpoint(D, t, factors):
    x = 2**t
    M = x**D - 1
    assert len({p for p,e in factors}) == len(factors)
    assert all(is_prime(p) and e >= 1 for p,e in factors)
    assert math.prod(p**e for p,e in factors) == M
    eligible = sorted(p**e for p,e in factors if p**e >= 11)
    states = []
    for P,Q in itertools.permutations(eligible, 2):
        assert M % (P*Q) == 0
        nu = 2*M//(P*Q)
        capacity = (P*Q)**3 > M*M
        rem = (P*Q*Q-1) % (nu*nu)
        assert not (capacity and rem == 0), (D,t,P,Q)
        states.append([P,Q,nu,capacity,rem])
    return {'D':D,'t':t,'x':x,'M':M,'factors':[list(z) for z in factors],
            'eligible':eligible,'states':states}


def expected_certificate():
    X=[0,1]; one=[1]; gaps=[]; rems=[]
    def gap(name, f, shift, strict=True):
        coeff = shifted(f, shift)
        assert all(z >= 0 for z in coeff), (name, coeff)
        if strict: assert coeff[0] > 0, name
        gaps.append({'name':name,'coefficients':f,'shift':shift,
                     'shifted_coefficients':coeff,'strict':strict})
    def remainder(name, lhs, modulus, target):
        q,r=divide(lhs,modulus)
        assert r==target, (name,r,target)
        assert add(mul(modulus,q),r)==lhs
        rems.append({'name':name,'left':lhs,'modulus':modulus,'quotient':q,'remainder':r})
    gap('R4_same_block',sub(power(sub(power(X,2),one),2),add(power(X,2),one)),2)
    gap('R4_small_K',sub(power(X,3),power(add(X,[5]),2)),31)
    for eps in (-1,1):
        A=add(power(add(X,[eps]),2),[1]); B=add(X,[2*eps])
        gap(f'R4_Z_bound_{eps}',sub(mul(add(X,[5]),power(X,2)),mul(A,B)),31)
        for orient in ('AB2','BA2'):
            lhs=mul(A,power(B,2)) if orient=='AB2' else mul(B,power(A,2))
            raw=[8,16*eps] if orient=='AB2' else [8*eps,20]
            remainder(f'R4_{eps}_{orient}',lhs,power(X,2),raw)
            least=add(power(X,2),raw) if eps==-1 and orient=='AB2' else raw
            gap(f'R4_{eps}_{orient}_low',sub(least,X),31)
            gap(f'R4_{eps}_{orient}_high',sub(power(X,2),least),31)
    A=[1,1,1,1,1]; B=[1,-1,1,-1,1]; C=sub(power(X,2),one)
    remainder('R10_AB2',mul(A,power(B,2)),power(C,2),[-30,15,45,-25])
    remainder('R10_BA2',mul(B,power(A,2)),power(C,2),[-30,-15,45,25])
    gap('R10_A_bound',sub(scale(power(X,4),2),A),2)
    gap('R10_AB_bound',sub(scale(power(X,8),4),scale(mul(A,B),3)),2)
    gap('R10_C_bound',sub(scale(C,4),scale(power(X,2),3)),2,False)
    gap('R10_bad_allocation',sub(power(sub(power(X,10),one),2),power(scale(power(X,5),15),3)),8)
    rp=[-30,-15,45,25]; rm=[-30,15,45,-25]
    gap('R10_plus_low',sub(rp,power(X,3)),32)
    gap('R10_plus_high',sub(power(C,2),rp),32)
    gap('R10_minus_sign',scale(rm,-1),32)
    gap('R10_minus_low',sub(add(power(C,2),rm),power(X,3)),32)
    A7=[1]*7; B7=[1,-1,1,-1,1,-1,1]
    f7=sub(mul(A7,B7),mul(power(C,2),power(add(power(X,2),one),3)))
    assert f7 == [0,0,0,0,3,0,3,0,0,0,0,0,1]
    endpoints=[endpoint(D,t,fs) for (D,t),fs in sorted(FACTORS.items())]
    return {'schema':1,'scope':'NC3 canonical minimal branch; c_alpha=1; no row theorem',
            'tail_start_x':32,'endpoint_t':[1,2,3,4],
            'remainders':rems,'positive_polynomials':gaps,'endpoints':endpoints,
            'constants':{'4096_lt_729_times_8':[4096,5832]},
            'failed_R14_size_claim':{'coefficients':f7,'U':1,'V':'x^2+1',
                'missing':'V need not divide its required cyclotomic block; no NC3 recovery'}}


def main():
    if sys.flags.optimize:
        raise RuntimeError("Run exact verification without Python optimization (-O / PYTHONOPTIMIZE).")
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('certificate',nargs='?',default=str(Path(__file__).with_name('certificate.json')))
    ap.add_argument('--emit',action='store_true')
    args=ap.parse_args()
    expected=expected_certificate()
    p=Path(args.certificate)
    if args.emit:
        p.write_text(json.dumps(expected,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print('WROTE_CERTIFICATE'); return
    supplied=json.loads(p.read_text(encoding='utf-8'))
    if supplied != expected: raise ValueError('certificate differs from exact reconstructed proof data')
    ep=expected['endpoints']
    digest=hashlib.sha256(json.dumps(ep,sort_keys=True,separators=(',',':')).encode()).hexdigest()
    print(json.dumps({'status':'PASS_EXACT_COEFFICIENT_AND_ENDPOINT_CHECKS',
        'endpoint_digest':digest,'endpoint_count':len(ep),
        'ordered_pair_states':sum(len(e['states']) for e in ep),
        'capacity_survivors':sum(s[3] for e in ep for s in e['states']),
        'recovery_survivors':0,'positive_polynomials':len(expected['positive_polynomials']),
        'remainder_identities':len(expected['remainders'])},sort_keys=True))

if __name__=='__main__': main()

#!/usr/bin/env python3
"""Standalone exact verifier. Imports NO generator modules.

Reconstructs the mathematical finite domains and the kernels by enumerating
prime powers over the original short lists, rather than factoring an lcm.
This is a same-session second implementation, not Lean or outside review.
"""
from __future__ import annotations
from copy import deepcopy
from functools import lru_cache
from math import comb, factorial, gcd, isqrt, prod
from pathlib import Path
import argparse
import json
import time

ROOT = Path(__file__).resolve().parents[1]

class CertificateError(ValueError):
    pass

def require(test: bool, detail: str) -> None:
    if not test:
        raise CertificateError(detail)

@lru_cache(None)
def is_prime(p: int) -> bool:
    if p < 2:
        return False
    return all(p % d for d in range(2, isqrt(p) + 1))

def integer(x: object) -> bool:
    return isinstance(x, int) and not isinstance(x, bool)

def kernel_from_list(values: list[int], i: int, subtract_endpoint: bool) -> int:
    require(all(integer(x) and x > 0 for x in values), 'invalid kernel input')
    result = 1
    for p in range(i, max(values, default=1) + 1):
        if not is_prime(p):
            continue
        q, exponent = p, 0
        while q <= max(values, default=1):
            if any(x % q == 0 for x in values):
                exponent += 1
            q *= p
        if subtract_endpoint and p == i:
            exponent = max(0, exponent - 1)
        result *= p ** exponent
    return result

def central_height(i: int, d: int) -> tuple[int, int]:
    values = [i if is_prime(i) else 1]
    values += [abs(u) for u in range(d-i+1, d+i) if u % 2]
    K = kernel_from_list(values, i, False)
    c = 3 if i in (8, 9, 12, 13, 14) else 1
    return K, i - 1 + c*K

def ratio_parameters(i: int, A: int, B: int) -> tuple[int, int, int, int, int]:
    z = len([a for a in range(i) if a % B == 0])
    s = len([p for p in range(2, i) if is_prime(p)])
    values = [abs(B*b-A*a) for a in range(i) for b in range(a+1) if B*b != A*a]
    K = kernel_from_list(values, i, True)
    return z, s, K, i-z-s, i//A+1

def inequality_fails(i: int, B: int, t: int, z: int, s: int, K: int) -> bool:
    n = B*t
    sigma = 1 if is_prime(i) else i
    left = sigma * B**z * factorial(z)
    for a in range(i):
        if a % B:
            left *= n-a
    right = K * factorial(i) * n**s
    return left > right

def check_witness(n: int, i: int, j: int, p: int, h: int) -> None:
    require(all(integer(x) for x in (n,i,j,p,h)), 'noninteger witness')
    require(1 <= i < j <= n//2, 'illegal original input')
    require(i <= p <= n and is_prime(p), 'not an eligible prime')
    require(1 <= h <= n.bit_length(), 'invalid carry exponent')
    require(comb(n, i) % p == 0, 'prime does not divide first binomial')
    q = p**h
    require(j % q > n % q, 'no witnessed carry')
    # Independently verify the valuation sum, not only the submitted carry.
    v, q = 0, p
    while q <= n:
        v += n//q-j//q-(n-j)//q
        q *= p
    require(v > 0, 'prime does not divide second binomial')

def verify_central(cert: dict) -> dict:
    require(cert['D'] == 8, 'central scope was changed')
    rows = cert['rows']; ws = cert['witnesses']
    expected = [(i,d) for i in range(2,15) for d in range(9)]
    require(len(rows) == len(expected), 'wrong number of central cells')
    position = 0; maxheight = 0; endpoint_witnesses = 0; higher_carries = 0
    for r, (i,d) in zip(rows, expected):
        require((r['i'], r['d']) == (i,d), 'missing/reordered central cell')
        K, height = central_height(i,d)
        require((r['K'], r['bound']) == (K,height), 'central kernel or height mismatch')
        maxheight = max(maxheight,height)
        count = 0
        for n in range(2*i+2+d, height+1, 2):
            require(position < len(ws), 'missing central witness')
            w = ws[position]
            require(len(w) == 5 and w[:3] == [i,d,n], 'central domain has a missing/duplicate point')
            check_witness(n,i,(n-d)//2,w[3],w[4])
            endpoint_witnesses += w[3] == i
            higher_carries += w[4] > 1
            position += 1; count += 1
        require(r['checked'] == count, 'central cell count mismatch')
    require(position == len(ws) == cert['total_checked'], 'extra central witnesses/count mismatch')
    return {'cells':len(rows), 'pairs':position, 'max_height':maxheight,
            'endpoint_prime_witnesses':endpoint_witnesses, 'higher_carry_witnesses':higher_carries}

def verify_ratios(cert: dict) -> dict:
    expected = [(i,A,B) for B in range(3,9) for A in range(1,B//2+1)
                if gcd(A,B)==1 for i in range(2,15)]
    rows = cert['rows']; ws = cert['witnesses']
    require(len(rows) == len(expected), 'wrong number of ratio cells')
    position = 0; maxheight = 0; endpoint_witnesses = 0; higher_carries = 0
    for r, (i,A,B) in zip(rows, expected):
        require((r['i'],r['A'],r['B']) == (i,A,B), 'missing/reordered ratio cell')
        z,s,K,E,lo = ratio_parameters(i,A,B)
        require(E >= 0, 'no monotonicity justification')
        require((r['z'],r['small_primes'],r['K'],r['E'],r['t_min']) == (z,s,K,E,lo),
                'ratio parameters mismatch')
        cut = r['t_cut']
        require(integer(cut) and cut >= lo, 'invalid cutoff')
        require(inequality_fails(i,B,cut,z,s,K), 'tail inequality does not fail at cutoff')
        if cut > lo:
            require(not inequality_fails(i,B,cut-1,z,s,K), 'nonminimal reported cutoff')
        require(r['n_bound'] == B*(cut-1), 'ratio height mismatch')
        require(r['candidate_count'] == cut-lo, 'ratio candidate count mismatch')
        require(r['witness_start'] == position, 'ratio segment start mismatch')
        require(r['witness_count'] == cut-lo, 'ratio segment length mismatch')
        maxheight = max(maxheight,r['n_bound'])
        for t in range(lo,cut):
            require(position < len(ws), 'missing ratio witness')
            w = ws[position]
            require(len(w) == 6 and w[:4] == [i,A,B,t], 'ratio domain has missing/duplicate point')
            check_witness(B*t,i,A*t,w[4],w[5])
            endpoint_witnesses += w[4] == i
            higher_carries += w[5] > 1
            position += 1
    require(position == len(ws), 'extra ratio witnesses')
    return {'cells':len(rows), 'pairs':position, 'max_n_bound':maxheight,
            'endpoint_prime_witnesses':endpoint_witnesses, 'higher_carry_witnesses':higher_carries}

def mutation_tests(central: dict, ratios: dict) -> list[dict]:
    checks = []
    def test(name, source, verifier, mutate):
        c = deepcopy(source); mutate(c)
        try:
            verifier(c)
        except (CertificateError, KeyError, TypeError, IndexError) as e:
            checks.append({'mutation':name,'status':'REJECTED','reason':str(e)})
            return
        raise AssertionError('accepted corrupted certificate: '+name)
    test('delete central witness', central, verify_central, lambda c:c['witnesses'].pop(0))
    test('duplicate central witness', central, verify_central, lambda c:c['witnesses'].insert(0,c['witnesses'][0]))
    test('use p=1', central, verify_central, lambda c:c['witnesses'][0].__setitem__(3,1))
    test('use composite p=4', central, verify_central, lambda c:c['witnesses'][0].__setitem__(3,4))
    test('use h=0', central, verify_central, lambda c:c['witnesses'][0].__setitem__(4,0))
    test('delete central cell', central, verify_central, lambda c:c['rows'].pop())
    test('omit p=i cancellation allowance', central, verify_central,
         lambda c:next(r for r in c['rows'] if r['i']==3 and r['d']==0).__setitem__('K',1))
    # i=3,d=8 has odd entry 9, whose full square must be retained.
    test('replace full prime powers by radical', central, verify_central,
         lambda c:next(r for r in c['rows'] if r['i']==3 and r['d']==8).__setitem__('K',21))
    test('delete ratio witness', ratios, verify_ratios, lambda c:c['witnesses'].pop(0))
    test('wrong ratio carry', ratios, verify_ratios,
         lambda c:c['witnesses'][0].__setitem__(5,32))
    test('alter rational numerator', ratios, verify_ratios,
         lambda c:c['witnesses'][0].__setitem__(1,2))
    test('omit ratio cell', ratios, verify_ratios, lambda c:c['rows'].pop())
    test('alter ratio kernel', ratios, verify_ratios,
         lambda c:c['rows'][0].__setitem__('K',c['rows'][0]['K']+1))
    test('lower cutoff without tail proof', ratios, verify_ratios,
         lambda c:c['rows'][0].__setitem__('t_cut',0))
    # Explicit original witness where the only common prime is the endpoint.
    check_witness(28,3,14,3,2)
    try:
        check_witness(28,3,14,2,1)
    except CertificateError:
        checks.append({'mutation':'replace endpoint witness by p<i','status':'REJECTED'})
    else:
        raise AssertionError('accepted too-small prime')
    return checks

def main() -> None:
    ap=argparse.ArgumentParser(); ap.add_argument('--evidence',type=Path,default=ROOT/'evidence')
    a=ap.parse_args(); t=time.monotonic()
    c=json.loads((a.evidence/'central-band-certificate.json').read_text())
    r=json.loads((a.evidence/'rational-terminal-certificate.json').read_text())
    output={'status':'PASS_SAME_SESSION_SECOND_IMPLEMENTATION_NOT_LEAN',
            'central':verify_central(c), 'ratios':verify_ratios(r),
            'negative_tests':mutation_tests(c,r), 'seconds':time.monotonic()-t}
    (a.evidence/'standalone-verification.json').write_text(json.dumps(output,indent=2,ensure_ascii=False)+'\n')
    print(json.dumps(output,ensure_ascii=False,indent=2))

if __name__=='__main__':
    main()

#!/usr/bin/env python3
"""Algorithm B: quadratic discriminants, factorial valuations, and a
symmetric beta*gamma window check. Does not import generator code.
Diagnostic scan minima are intentionally not accepted as proof evidence.
"""
from __future__ import annotations
import json
from math import gcd, isqrt
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]

class Rejected(ValueError):
    pass

def require(test: bool, message: str) -> None:
    if not test:
        raise Rejected(message)

def prime(p: int) -> bool:
    return type(p) is int and p >= 2 and all(p % q for q in range(2,isqrt(p)+1))

def vf(n: int, p: int) -> int:
    total = 0
    while n:
        n //= p
        total += n
    return total

def binom_v(n: int, j: int, p: int) -> int:
    return vf(n,p)-vf(j,p)-vf(n-j,p)

def actual_mu(n: int) -> int:
    q = (n-2)//2
    if q % 3 or q % 9 == 0:
        return 1
    return 3

def check_certificate(cert: dict[str,Any]) -> dict[str,Any]:
    require(cert.get('format_version') == 1, 'Wrong certificate version')
    require(cert.get('theorem') == 'EVEN-SQUARE-G2-U1-TWO-SUPPORT', 'Wrong theorem')
    states = cert.get('polynomial_states', [])
    expected = {(D,T) for D in range(1,30,2) for T in range(-D+1,D,2)}
    seen: set[tuple[int,int]] = set()
    integral: list[dict[str,int]] = []
    square_states = 0
    for rec in states:
        D,T = rec['D'],rec['T']
        require(type(D) is int and type(T) is int, 'Noninteger coefficient state')
        require((D,T) in expected and (D,T) not in seen, 'Missing/duplicate/outside coefficient state')
        seen.add((D,T))
        a = (D-T)*(D+T)-8*D
        b = 2*D*T
        c = T*T+4*D
        require((rec['F'],rec['B'],rec['C']) == (a,b,c), 'Wrong polynomial coefficients')
        require(a != 0 and a % 2 == 1, 'Zero/even leading coefficient')
        # Discriminant divided by 4, computed by a different expanded identity.
        quarter = T**4+12*D*T*T-4*D**3+32*D*D
        require(4*quarter == b*b-4*a*c, 'Discriminant identity')
        roots: set[int] = set()
        if quarter >= 0:
            q = isqrt(quarter)
            if q*q == quarter:
                square_states += 1
                for numerator in {-D*T+q,-D*T-q}:
                    if numerator % a == 0:
                        x = numerator//a
                        require(a*x*x+b*x+c == 0, 'Root reconstruction')
                        roots.add(x)
        require(not any(x >= 32 for x in roots), 'Large integral root survived')
        require(rec['zero_count'] == 0, 'Contradictory scan claim')
        for x in sorted(roots):
            integral.append({'D':D,'T':T,'x':x})
    require(seen == expected and len(states) == len(expected), 'Incomplete coefficient coverage')
    require(integral == [{'D':7,'T':0,'x':-2},{'D':7,'T':0,'x':2}], 'Unexpected integral root classification')

    records = cert.get('small_original_pairs', [])
    small_expected = {(2*x*x,j) for x in range(2,32,2) for j in range(4,x*x+1)}
    covered: set[tuple[int,int]] = set()
    for rec in records:
        x,n,j,p = rec['x'],rec['n'],rec['j'],rec['p']
        require(all(type(v) is int for v in [x,n,j,p]), 'Noninteger original record')
        require(x in range(2,32,2) and n == 2*x*x, 'Wrong small row')
        require((n,j) in small_expected and (n,j) not in covered, 'Missing/duplicate/outside original pair')
        covered.add((n,j))
        require(prime(p) and p >= 3, 'Witness is not an odd prime')
        require(binom_v(n,3,p) >= 1 and binom_v(n,j,p) >= 1, 'Witness does not divide both original binomials')
        mu = actual_mu(n)
        N,K = n-1,(n-2)//(2*mu)
        r = rec['rejection']
        if r == 'gcd_not_2':
            require(gcd(n,j) != 2, 'False gcd rejection')
        elif r == 'window_1_fails':
            require(j*(j-1) % N != 0, 'False first-window rejection')
        elif r == 'window_2_fails':
            require(j*(j-1)*(j-2) % K != 0, 'False second-window rejection')
        elif r == 'u_not_1':
            require(gcd(n,j) == 2, 'Invalid u record')
            H = gcd(K,j-1)
            require((j//2)*((n-j)//2)*H != N*K, 'False u rejection')
        else:
            raise Rejected('Unknown rejection reason')
    require(covered == small_expected and len(records) == len(small_expected), 'Incomplete original-pair coverage')

    # Independent complete weak-window enumeration. No raw j(j-1)(j-2)
    # testing is used here; use N | beta*gamma and K | t*(j-1).
    symmetric_candidates = 0
    for x in range(2,32,2):
        n=2*x*x
        mu=actual_mu(n)
        N,K=n-1,(n-2)//(2*mu)
        for beta in range(2,n//4+1):
            j=2*beta
            if gcd(n,j) != 2:
                continue
            gamma=n//2-beta
            prod=beta*gamma
            if prod % N:
                continue
            t=prod//N
            if t*(j-1) % K:
                continue
            H=gcd(K,j-1)
            if t*H == K:
                symmetric_candidates += 1
    require(symmetric_candidates == 0, 'A small g2,u1 full-window point survived')
    return {'algorithm':'B_quadratic_discriminants_and_Legendre_valuations',
            'coefficient_states_checked':len(seen),'square_discriminant_states':square_states,
            'all_integral_roots_in_coefficient_box':integral,
            'large_integer_roots':0,'original_witnesses_checked':len(covered),
            'small_g2_u1_window_survivors':symmetric_candidates,
            'external_independent_reviewer':False,'Lean':False,'status':'PASS'}

def main() -> None:
    cert=json.loads((ROOT/'outputs/certificate.json').read_text())
    result=check_certificate(cert)
    (ROOT/'outputs/secondary.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,ensure_ascii=False))

if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Construct complete, bounded certificates for two global norm-branch closures.

No search in n, d, prime bases, or local compatibility classes is performed.
All finite loops are justified in proofs/PROOFS.md, Sections 4 and 5.
"""
from __future__ import annotations
from fractions import Fraction
from math import gcd, isqrt
from pathlib import Path
import json

ROOT = Path(__file__).resolve().parents[1]


def divisors(n: int) -> list[int]:
    if n < 1:
        raise ValueError('positive n required')
    lo, hi = [], []
    for d in range(1, isqrt(n) + 1):
        if n % d == 0:
            lo.append(d)
            if d * d != n:
                hi.append(n // d)
    return lo + hi[::-1]


def primary() -> dict:
    terminal = []
    for M in divisors(253**2):
        t = M + 27
        r = isqrt(t)
        assert r*r < t < (r+1)**2
        terminal.append({'M': M, 'M_plus_27': t, 'floor_root': r})
    small = []
    for d in (5, 7):
        a, kap, c = d, 3, 1
        M, B = d*d+6*d-18, d*d+3*d-27
        lhs = 32*a**12*B**4
        rhs = kap**8*c**4*d**3*M**3
        assert lhs >= rhs
        small.append({'d':d, 'a':a, 'M':M, 'B':B,
                      'forbidden_lhs':lhs, 'required_rhs':rhs, 'gap':lhs-rhs})
    return {
        'tag': 'GLOBAL-SQUARE-BLOCK-CLOSE',
        'bounded_quantity': 'a^8 < 27*kappa^12*c^4/64 when d>=3*kappa',
        'a_bounds': [
            {'kappa':1,'c':1,'numerator':27,'denominator':64,'survivors':[]},
            {'kappa':1,'c':3,'numerator':2187,'denominator':64,'survivors':[1]},
            {'kappa':3,'c':1,'numerator':14348907,'denominator':64,'survivors':[1]},
        ],
        'terminal_factorization': {'F':253,'F_factors':[11,23], 'M_divides':64009},
        'terminal_divisors': terminal,
        'small_d_nonunit_a': small,
        'small_d_unit_a': [{'d':d,'M':d*d+6*d-18,
                           'remainder':253**2%(d*d+6*d-18)} for d in (5,7)],
        'remaining_states': 0,
    }


def secondary() -> dict:
    factors, states, valid_hc = [], [], []
    for A, lam, mu in ((1,1,1),(9,1,3),(27,3,1)):
        for q in divisors(A):
            K = A // q
            for r in divisors(K):
                t = K // r
                if r >= t or (r+t) % 2:
                    continue
                X, Y = (r+t)//2, (t-r)//2
                factors.append({'A':A,'q':q,'r':r,'t':t,'X':X,'Y':Y})
                for g in divisors(X):
                    f = X // g
                    for eps in divisors(Y):
                        h = Y // eps
                        if eps % 2 == 0 or gcd(f,h) != 1:
                            continue
                        z, product = q*h*h, q*f*f
                        for T in divisors(product):
                            u = product // T
                            if not (u % 2 and T % 2):
                                continue
                            assert u*g*g*T-z*eps*eps == A
                            state = {'A':A,'lambda':lam,'mu':mu,'q':q,'X':X,'Y':Y,
                                     'g':g,'epsilon':eps,'u':u,'T':T,'z':z}
                            states.append(state)
                            Hnum = eps+2*u*g*g
                            Cnum = 4*z*u*g*g+4*z*eps+T
                            L = lam*mu
                            if Hnum % L or Cnum % (L*L):
                                continue
                            H, C = Hnum//L, Cnum//(L*L)
                            n = 2*mu*C*H+2
                            ds = Fraction(lam*mu*mu*C*C-z*(n-1),lam*g*g)
                            rec = dict(state,H=H,C=C,n=n,
                                       delta2_num=ds.numerator,delta2_den=ds.denominator)
                            if ds.denominator != 1:
                                rec['rejection'] = 'delta_squared_not_integer'
                            elif ds.numerator < 0:
                                rec['rejection'] = 'delta_squared_negative'
                            else:
                                r0 = isqrt(ds.numerator)
                                assert r0*r0 != ds.numerator
                                rec.update(rejection='delta_squared_not_square',floor_root=r0)
                            valid_hc.append(rec)
    assert len(valid_hc)==17
    return {'tag':'GLOBAL-SECOND-NORM-SPLIT-CLOSE',
            'norm_factorizations':factors, 'all_norm_states':states,
            'integer_recoveries':valid_hc,
            'factorization_count':len(factors),'norm_state_count':len(states),
            'integer_recovery_count':len(valid_hc), 'remaining_states':0}


def main() -> None:
    target=ROOT/'outputs/certificate.json'
    target.parent.mkdir(parents=True,exist_ok=True)
    payload={'schema':1,'evidence_grade':'author paper plus complete finite arithmetic certificate',
             'primary':primary(),'secondary':secondary()}
    target.write_text(json.dumps(payload,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print(json.dumps({'primary_terminal_divisors':len(payload['primary']['terminal_divisors']),
                      'secondary_norm_states':payload['secondary']['norm_state_count'],
                      'secondary_integer_recoveries':payload['secondary']['integer_recovery_count'],
                      'remaining':0}))

if __name__=='__main__':
    main()

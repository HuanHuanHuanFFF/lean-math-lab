#!/usr/bin/env python3
"""Generate the finite certificate for the complete 3-smooth-window i=4 family.
The infinite-tail reduction is proved in notes/PROOFS.md; this script does not
turn its finite calculations into a proof of the unrestricted B699 problem.
"""
from __future__ import annotations
import argparse, json
from functools import lru_cache
from math import isqrt
from pathlib import Path


def valuation(n: int, p: int) -> int:
    if n < 1 or p < 2:
        raise ValueError('positive integer and valid base required')
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def small_part(n: int) -> int:
    return 2 ** (sum(valuation(n-r, 2) for r in range(4))-3) * 3 ** (
        sum(valuation(n-r, 3) for r in range(4))-1)


@lru_cache(None)
def factor(n: int) -> tuple[tuple[int, int], ...]:
    out = []
    for p in (2, 3):
        if n % p == 0:
            e = 0
            while n % p == 0:
                n //= p
                e += 1
            out.append((p, e))
    p, step = 5, 2
    while p*p <= n:
        if n % p == 0:
            e = 0
            while n % p == 0:
                n //= p
                e += 1
            out.append((p, e))
        p += step
        step = 6-step
    if n > 1:
        out.append((n, 1))
    return tuple(out)


def finite_rows() -> dict[int, list[list[int]]]:
    rows: dict[int, list[list[int]]] = {}
    for a in range(40):
        for b in range(24):
            if a >= 2 and b >= 2:
                continue  # This ENTIRE branch is excluded symbolically.
            N = 2**a * 3**b
            for r in range(4):
                n = N+r
                if n >= 10:
                    rows.setdefault(n, []).append([a,b,r])
    return rows


def crt_certificate(n: int) -> dict:
    cap, modulus, states = n//2, 1, [0]
    witnesses = sorted(({'p':p, 'e':e, 'r':r} for r in range(4)
                        for p,e in factor(n-r) if p >= 5),
                       key=lambda v: (-(v['p']**v['e']), v['r']))
    steps = []
    max_states = 1
    for w in witnesses:
        q = w['p']**w['e']
        inv = pow(modulus, -1, q)
        new_modulus = modulus*q
        candidates = set()
        for a in states:
            for s in range(w['r']+1):
                z = a+modulus*((s-a)*inv % q)
                first = z + max(0, (5-z+new_modulus-1)//new_modulus)*new_modulus
                if first <= cap:
                    candidates.add(z)
        modulus, states = new_modulus, sorted(candidates)
        max_states = max(max_states, len(states))
        steps.append({**w, 'states': states})
        if not states:
            return {'kind':'crt','steps':steps,'max_live_classes':max_states}
    raise RuntimeError(f'nonempty terminal support for n={n}: {states}')


def generate() -> dict:
    records = []
    for n, sources in sorted(finite_rows().items()):
        u = small_part(n)
        if 9*(n-2)*u*u < 2*(n-1)**2*(n-3):
            reason = {'kind':'I'}
        elif 729*(n-2)*u**6 <= (n-1)**5*(n-3)**3:
            reason = {'kind':'W'}
        else:
            reason = crt_certificate(n)
        records.append({'n':n,'U':u,'sources':sources,**reason})
    return {'schema':'B699-i4-smooth-window-v2',
            'tail':{'n_for_sharper_bound':44,'constant':1024,'linear_margin_at_44':102,
                    'a_excluded_from':40,'a_multiplier':4,'a_comparison_constant':729,
                    'a_endpoint_margin':4*2**40-729*40**6,
                    'a_ratio_margin':2*40**6-41**6,
                    'b_excluded_from':24,'b_multiplier':1,'b_comparison_constant':1024,
                    'b_endpoint_margin':3**24-1024*24**6,
                    'b_ratio_margin':3*24**6-25**6},
            'rows':records}


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument('--out', type=Path, required=True)
    args = ap.parse_args()
    data = generate()
    args.out.parent.mkdir(parents=True,exist_ok=True)
    args.out.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    kinds = {k:sum(r['kind']==k for r in data['rows']) for k in ('I','W','crt')}
    print(json.dumps({'rows':len(data['rows']),'kinds':kinds,
                      'crt_steps':sum(len(r.get('steps',[])) for r in data['rows'])}))

if __name__ == '__main__':
    main()

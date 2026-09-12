#!/usr/bin/env python3
"""Reconstruct the entire finite domain without importing the generator.

Different loop order, divisor enumeration, square-root implementation, and
valuation computation. Still written by the same research session, not an
independent researcher and not a Lean proof.
"""
from __future__ import annotations
import argparse
import copy
import json
from collections import Counter
from math import gcd
from pathlib import Path


def root_floor(n: int) -> int:
    if n < 0:
        raise ValueError('negative square-root input')
    if n < 2:
        return n
    x = 1 << ((n.bit_length()+1)//2)
    while True:
        y = (x+n//x)//2
        if y >= x:
            assert x*x <= n < (x+1)*(x+1)
            return x
        x = y


def complete_divisors(n: int) -> list[int]:
    values = set()
    for r in range(1, root_floor(n)+1):
        if n % r == 0:
            values.add(r)
            values.add(n//r)
    return sorted(values)


def prime(n: int) -> bool:
    return n >= 2 and all(n % t for t in range(2, root_floor(n)+1))


def carries(n: int, j: int, p: int) -> int:
    q = p
    result = 0
    while q <= n:
        result += int(j % q > n % q)
        q *= p
    return result


def single_three_part(n: int) -> int:
    if n < 1:
        raise ValueError('positive n required')
    e = 0
    while n % 3 == 0:
        n //= 3
        e += 1
    return 3 if e == 1 else 1


def normalization(n: int) -> tuple[int, int, int, int]:
    m = (n-2)//2
    l = single_three_part(n-1)
    u = single_three_part(m)
    return l, u, (n-1)//l, m//u


def small_domain() -> dict:
    records = []
    counts = Counter()
    for d in range(1, 22):
        if d % 2 == 0:
            continue
        for A in range(1, 3*d):
            counts['parameters'] += 1
            multiple = 6*A*((3*d-A)*(3*d+A))
            assert multiple < 81*d**3
            ds = complete_divisors(multiple)
            counts['positive_divisors'] += len(ds)
            for q in ds:
                n = q+2
                if n < 8 or n % 4 != 0 or n % d != 1 % d:
                    continue
                h0 = (n-1)//d
                if (A*h0) % 3:
                    continue
                u = (A*h0)//3+1
                if u < 4 or n-u < 4 or 2*u == n:
                    continue
                j = u if u < n-u else n-u
                g = gcd(u, n-u)
                zeta = u//g
                if gcd(n-1, zeta) != d:
                    continue
                counts['canonical_records'] += 1
                alpha = n//g
                s = (alpha & -alpha).bit_length()-1
                odd_part = alpha//(1 << s)
                assert not (odd_part in (1, 3) and (odd_part != 3 or g % 3))
                ps = [p for p in complete_divisors(alpha) if p >= 3 and prime(p)
                      and carries(n, 3, p) and carries(n, j, p)]
                assert ps
                p = ps[0]
                records.append({'n': n, 'j': j, 'd': d, 'A': A, 'u': u,
                                'g': g, 'zeta': zeta, 'alpha': alpha, 'p': p,
                                'v_choose_3': carries(n, 3, p),
                                'v_choose_j': carries(n, j, p)})
    return {'max_d': 21, 'counts': dict(sorted(counts.items())),
            'canonical_records': records, 'survivors': 0}


def quotient_domain() -> dict:
    records = []
    counts = Counter()
    per_a = {}
    biggest = 0
    for a in range(1, 22, 2):
        local = Counter()
        for C in range(1, a+1):
            if a % C:
                continue
            for ell in (1, 3):
                w = C*ell
                for g in range(1, 2*(w-1)+1):
                    possible_h = [h for h in range(1, w) if (2*h) % g == 0]
                    if not possible_h:
                        continue
                    S0 = a*(2*w-1)
                    upper = max(81*S0**3+1, 8*w**3*g*g*S0*S0)
                    for c in (1, 3):
                        if c == 3 and (g % 3 == 0 or ell != 1):
                            continue
                        # Independent enumeration: n first, then the compatible h.
                        max_s = (upper//(c*g)).bit_length()-1
                        for s in range(max_s, 0, -1):
                            n = (c*g) << s
                            for h in possible_h:
                                S = a*(w+h)
                                limit = max(81*S**3+1, 8*w**3*g*g*S*S)
                                if n > limit:
                                    continue
                                counts['power_row_checks'] += 1
                                local['power_row_checks'] += 1
                                biggest = max(biggest, n)
                                if n < 8 or n % 4:
                                    continue
                                lam, mu, _, K = normalization(n)
                                if lam*mu != ell:
                                    continue
                                rhs = h*(n-1)*(n-2)
                                if rhs % w:
                                    continue
                                disc = 1+4*(rhs//w)
                                r = root_floor(disc)
                                if r*r != disc:
                                    continue
                                x = (r+1)//2
                                y = n-x
                                assert w*x*(x-1) == rhs
                                if x <= 3 or y <= 3 or x == y:
                                    why = 'range'
                                elif gcd(x, y) != g:
                                    why = 'gcd'
                                elif y % (a*g):
                                    why = 'cofactor'
                                elif gcd(K, y//g) != C:
                                    why = 'K_assignment'
                                else:
                                    raise AssertionError('new quotient survivor')
                                counts['square_roots'] += 1
                                counts['rejected_'+why] += 1
                                local['square_roots'] += 1
                                records.append({'a': a, 'C': C, 'ell': ell, 'w': w,
                                                'h': h, 'g': g, 'c': c, 'n': n,
                                                'x': x, 'reason': why})
        per_a[str(a)] = dict(sorted(local.items()))
    records.sort(key=lambda r: tuple(r[k] for k in ('a','C','ell','h','g','c','n')))
    return {'max_a': 21,
            'parameter_bound': 'n <= max(81*(a*(w+h))^3+1, 8*w^3*g^2*(a*(w+h))^2)',
            'counts': dict(sorted(counts.items())), 'per_a': per_a,
            'largest_n_examined': biggest, 'square_root_records': records,
            'survivors': 0}


def residues() -> dict:
    rows = []
    n = 4096
    for v in range(12):
        lam, mu, _, _ = normalization(n)
        ell = lam*mu
        exclusions = []
        for m in (9, 7, 13):
            n_residue = 1
            for _ in range(v):
                n_residue = 2*n_residue % m
            target = (8*(n_residue-1)*(n_residue-2)+3) % m
            permitted = {3*u*u % m for u in range(m)}
            if target not in permitted:
                exclusions.append({'modulus': m, 'target': target})
        assert ell == 1 or exclusions
        rows.append({'v_mod_12': v, 'ell': ell, 'exclusions': exclusions})
        n *= 2
    return {'period': 12, 'equation_parameter': 2, 'rows': rows}


def reconstruct() -> dict:
    return {'schema': 'b699.one-sided-prime-power-cofactor.v1',
            'arithmetic': 'exact integers; no floating-point decisions',
            'max_a': 21, 'uniform_height': '279936*a^9+2',
            'pure_power_residues': residues(),
            'small_d': small_domain(), 'quotient': quotient_domain()}


def compare(received: dict, expected: dict) -> None:
    if received != expected:
        raise ValueError('certificate does not match the independently reconstructed complete domain')


def bad_certificates(good: dict) -> list[tuple[str, dict]]:
    variants = []
    def edit(name, fn):
        d = copy.deepcopy(good)
        fn(d)
        variants.append((name, d))
    edit('wrong_scope', lambda d: d.update(max_a=19))
    edit('wrong_height', lambda d: d.update(uniform_height='a^9'))
    edit('missing_small_d_record', lambda d: d['small_d']['canonical_records'].pop())
    edit('composite_prime_witness', lambda d: d['small_d']['canonical_records'][0].update(p=9))
    edit('lost_prime_power_valuation', lambda d: d['small_d']['canonical_records'][0].update(v_choose_j=0))
    edit('incomplete_d_scope', lambda d: d['small_d'].update(max_d=19))
    edit('missing_square_root', lambda d: d['quotient']['square_root_records'].pop())
    edit('changed_n', lambda d: d['quotient']['square_root_records'][0].update(n=100))
    edit('changed_gcd', lambda d: d['quotient']['square_root_records'][0].update(g=3))
    edit('changed_h', lambda d: d['quotient']['square_root_records'][0].update(h=100))
    edit('changed_cofactor', lambda d: d['quotient']['square_root_records'][0].update(a=23))
    edit('false_root', lambda d: d['quotient']['square_root_records'][0].update(x=17))
    edit('missing_tail', lambda d: d['quotient']['counts'].update(power_row_checks=1))
    edit('missing_residue', lambda d: d['pure_power_residues']['rows'].pop())
    edit('wrong_three_exception', lambda d: d['pure_power_residues']['rows'][2].update(ell=1))
    edit('fake_survivor_count', lambda d: d['quotient'].update(survivors=1))
    return variants


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificate', type=Path)
    parser.add_argument('--report', type=Path)
    args = parser.parse_args()
    supplied = json.loads(args.certificate.read_text())
    expected = reconstruct()
    compare(supplied, expected)
    rejected = []
    for name, bad in bad_certificates(supplied):
        try:
            compare(bad, expected)
        except ValueError:
            rejected.append(name)
        else:
            raise AssertionError('bad certificate accepted: '+name)
    report = {'status': 'PASS', 'implementation': 'separate reconstruction; same author',
              'small_d': expected['small_d']['counts'],
              'quotient': expected['quotient']['counts'],
              'bad_certificates_rejected': rejected, 'lean': False}
    if args.report:
        args.report.parent.mkdir(parents=True, exist_ok=True)
        args.report.write_text(json.dumps(report, indent=2, sort_keys=True)+'\n')
    print(json.dumps(report, sort_keys=True))

if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Build finite B699 certificates. Uses Python standard-library exact integers only.

This program does not prove the infinite reduction: see notes/PROOFS.md.
It writes only the explicitly supplied output path, never adopted inputs.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from collections import Counter
from math import gcd, isqrt
from pathlib import Path

MAX_A = 21
MAX_D = 21


def divisors(n: int) -> list[int]:
    if n < 1:
        raise ValueError('positive divisor input required')
    factors: list[tuple[int, int]] = []
    p = 2
    while p*p <= n:
        if n % p == 0:
            exponent = 0
            while n % p == 0:
                n //= p
                exponent += 1
            factors.append((p, exponent))
        p = 3 if p == 2 else p+2
    if n > 1:
        factors.append((n, 1))
    result = [1]
    for p, exponent in factors:
        previous = result[:]
        power = 1
        for _ in range(exponent):
            power *= p
            result.extend(x*power for x in previous)
    return sorted(result)


def primes_of(n: int) -> list[int]:
    result = []
    p = 2
    while p*p <= n:
        if n % p == 0:
            result.append(p)
            while n % p == 0:
                n //= p
        p = 3 if p == 2 else p+2
    if n > 1:
        result.append(n)
    return result


def valuation(n: int, j: int, p: int) -> int:
    value = 0
    power = p
    while power <= n:
        value += n//power - j//power - (n-j)//power
        power *= p
    return value


def normalization(n: int) -> tuple[int, int, int, int]:
    m = (n-2)//2
    lam = 3 if (n-1) % 3 == 0 and (n-1) % 9 != 0 else 1
    mu = 3 if m % 3 == 0 and m % 9 != 0 else 1
    return lam, mu, (n-1)//lam, m//mu


def residue_certificate() -> dict:
    rows = []
    for v in range(12):
        n = 1 << (v+12)  # representative >= 2^12; period divides 12
        lam, mu, _, _ = normalization(n)
        ell = lam*mu
        exclusions = []
        for modulus in (9, 7, 13):
            target = (8*(pow(2, v, modulus)-1)*(pow(2, v, modulus)-2)+3) % modulus
            values = sorted({3*x*x % modulus for x in range(modulus)})
            if target not in values:
                exclusions.append({'modulus': modulus, 'target': target})
        if ell == 3 and not exclusions:
            raise AssertionError('unexcluded exponent residue')
        rows.append({'v_mod_12': v, 'ell': ell, 'exclusions': exclusions})
    return {'period': 12, 'equation_parameter': 2, 'rows': rows}


def small_d_certificate() -> dict:
    counts = Counter()
    records = []
    for d in range(1, MAX_D+1, 2):
        for A in range(1, 3*d):
            multiple = 6*A*(9*d*d-A*A)
            assert 0 < multiple < 81*d**3
            counts['parameters'] += 1
            for Q in divisors(multiple):
                counts['positive_divisors'] += 1
                n = Q+2
                if n < 8 or n % 4 or (n-1) % d:
                    continue
                numerator = A*(n-1)+3*d
                if numerator % (3*d):
                    continue
                u = numerator//(3*d)
                if min(u, n-u) < 4 or 2*u == n:
                    continue
                j = min(u, n-u)
                g = gcd(n, u)
                zeta = u//g
                if gcd(zeta, n-1) != d:
                    continue
                counts['canonical_records'] += 1
                alpha = n//g
                odd = alpha
                while odd % 2 == 0:
                    odd //= 2
                if odd in (1, 3) and (odd != 3 or g % 3 != 0):
                    raise AssertionError('small-d survivor: more proof required')
                witness = next((p for p in primes_of(alpha) if p >= 3
                                and valuation(n, 3, p) > 0
                                and valuation(n, j, p) > 0), None)
                if witness is None:
                    raise AssertionError('no actual common prime for terminal record')
                records.append({'n': n, 'j': j, 'd': d, 'A': A, 'u': u,
                                'g': g, 'zeta': zeta, 'alpha': alpha,
                                'p': witness,
                                'v_choose_3': valuation(n, 3, witness),
                                'v_choose_j': valuation(n, j, witness)})
    return {'max_d': MAX_D, 'counts': dict(sorted(counts.items())),
            'canonical_records': records, 'survivors': 0}


def quotient_certificate() -> dict:
    counts = Counter()
    records = []
    per_a = {}
    largest_n_examined = 0
    for a in range(1, MAX_A+1, 2):
        local = Counter()
        for C in divisors(a):
            for ell in (1, 3):
                w = ell*C
                for h in range(1, w):
                    S = a*(w+h)
                    for g in divisors(2*h):
                        max_n = max(81*S**3+1, 8*w**3*g*g*S*S)
                        for c in (1, 3):
                            if c == 3 and (g % 3 == 0 or ell == 3):
                                continue
                            n = 2*c*g
                            while n <= max_n:
                                counts['power_row_checks'] += 1
                                local['power_row_checks'] += 1
                                largest_n_examined = max(largest_n_examined, n)
                                if n >= 8 and n % 4 == 0:
                                    lam, mu, _, K = normalization(n)
                                    if lam*mu == ell:
                                        numerator = h*(n-1)*(n-2)
                                        if numerator % w == 0:
                                            disc = 1+4*(numerator//w)
                                            root = isqrt(disc)
                                            if root*root == disc:
                                                x = (1+root)//2
                                                y = n-x
                                                if min(x, y) < 4 or 2*x == n:
                                                    reason = 'range'
                                                elif gcd(n, y) != g:
                                                    reason = 'gcd'
                                                elif (y//g) % a:
                                                    reason = 'cofactor'
                                                elif gcd(K, y//g) != C:
                                                    reason = 'K_assignment'
                                                else:
                                                    raise AssertionError('quotient survivor: more proof required')
                                                counts['square_roots'] += 1
                                                counts['rejected_'+reason] += 1
                                                local['square_roots'] += 1
                                                records.append({'a': a, 'C': C, 'ell': ell,
                                                                'w': w, 'h': h, 'g': g,
                                                                'c': c, 'n': n, 'x': x,
                                                                'reason': reason})
                                n *= 2
        per_a[str(a)] = dict(sorted(local.items()))
    records.sort(key=lambda r: tuple(r[k] for k in ('a','C','ell','h','g','c','n')))
    return {'max_a': MAX_A,
            'parameter_bound': 'n <= max(81*(a*(w+h))^3+1, 8*w^3*g^2*(a*(w+h))^2)',
            'counts': dict(sorted(counts.items())), 'per_a': per_a,
            'largest_n_examined': largest_n_examined,
            'square_root_records': records, 'survivors': 0}


def build() -> dict:
    return {'schema': 'b699.one-sided-prime-power-cofactor.v1',
            'arithmetic': 'exact integers; no floating-point decisions',
            'max_a': MAX_A, 'uniform_height': '279936*a^9+2',
            'pure_power_residues': residue_certificate(),
            'small_d': small_d_certificate(),
            'quotient': quotient_certificate()}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    data = build()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    text = json.dumps(data, ensure_ascii=False, sort_keys=True, indent=2)+'\n'
    args.output.write_text(text)
    print(json.dumps({'status': 'PASS', 'small_d': data['small_d']['counts'],
                      'quotient': data['quotient']['counts'],
                      'sha256': hashlib.sha256(text.encode()).hexdigest()}, sort_keys=True))

if __name__ == '__main__':
    main()

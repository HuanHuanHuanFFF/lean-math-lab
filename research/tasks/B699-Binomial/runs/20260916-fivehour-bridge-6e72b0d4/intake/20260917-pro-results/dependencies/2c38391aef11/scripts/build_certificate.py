#!/usr/bin/env python3
"""Build exact, finite certificates for the new endpoint/thin-cofactor proof.
Python standard library only. Discovery probes are not imported.
"""
from __future__ import annotations
import argparse
import json
from math import gcd, isqrt
from pathlib import Path


def primes(limit: int) -> list[int]:
    return [p for p in range(5, limit + 1, 2)
            if all(p % d for d in range(3, isqrt(p) + 1, 2))]


def divisors(n: int) -> list[int]:
    if n <= 0:
        raise ValueError('positive input required')
    return sorted({v for d in range(1, isqrt(n) + 1) if n % d == 0
                   for v in (d, n // d)})


def canonical_small(n: int) -> tuple[int, int]:
    return (3 if n % 9 in (4, 7) else 1,
            3 if n % 9 in (5, 8) else 1)


def parameter_rows() -> list[tuple[int, str, int, int, int, int]]:
    # d = the WHOLE endpoint block. For d=9, v3(K)=2, not radical 3.
    rows = []
    for d in (5, 7, 9):
        for lam, mu in ((1, 1), (3, 1), (1, 3)):
            if d == 9 and (lam, mu) != (1, 1):
                continue
            A = lam * mu * d
            for r in range(1, A):
                side = 'L' if 4 * r > A else 'R'
                if gcd(r, d) != 1:
                    continue  # exact endpoint lifting would give 0 = 2 lam mu mod d
                oddparts: set[int] = set()
                for m in divisors(r):
                    if m % 2 == 0 or gcd(m, A) != 1:
                        continue
                    oddparts.add(m)
                    if lam * mu == 1 and m % 3 != 0 and d != 9:
                        oddparts.add(3 * m)
                for M in sorted(oddparts):
                    rows.append((d, side, lam, mu, r, M))
    return sorted(rows)


def initial_exponents(row: tuple, period: int) -> list[int]:
    d, side, lam, mu, r, M = row
    residue = (2 + d * ((2 * lam * mu * pow(r, -1, d)) % d)) % (d * d)
    return [v for v in range(period)
            if canonical_small(M * pow(2, v, 9)) == (lam, mu)
            and M * pow(2, v, d * d) % (d * d) == residue]


def endpoint_certificate() -> dict:
    result = []
    pre = parameter_rows()
    all_primes = primes(1499)
    for row in pre:
        d, side, lam, mu, r, M = row
        period = 22680 if d == 9 else 2520
        pending = initial_exponents(row, period)
        if not pending:
            continue
        initial = len(pending)
        steps = []
        A = lam * mu * d
        for p in all_primes:
            if A % p == 0 or pow(2, period, p) != 1:
                continue
            squares = {y * y % p for y in range(p)}
            following = []
            for v in pending:
                n = M * pow(2, v, p) % p
                disc = A * (4 * r * n * n - 12 * r * n + 8 * r + A) % p
                if disc in squares:
                    following.append(v)
            if len(following) < len(pending):
                steps.append({'prime': p, 'before': len(pending), 'after': len(following)})
            pending = following
            if not pending:
                break
        expected = [4] if row == (7, 'R', 3, 1, 3, 1) else []
        if pending != expected:
            raise AssertionError(('unresolved endpoint', row, pending))
        result.append({'parameters': list(row), 'period': period,
                       'initial_count': initial, 'steps': steps, 'residual': pending})
    return {'parameters_before_exponent_filters': len(pre),
            'nonempty_parameter_classes': len(result),
            'initial_exponent_cells': sum(r['initial_count'] for r in result),
            'fully_excluded_classes': sum(not r['residual'] for r in result),
            'remaining_exponent_cells': sum(len(r['residual']) for r in result),
            'largest_used_modulus': max(s['prime'] for r in result for s in r['steps']),
            'rows': result}


def first_allocation_certificate() -> dict:
    entries = []
    total_visits = 0
    for side in ('a', 'b'):
        for f in (5, 7, 9):
            count = 0
            max_n = 0
            survivors = set()
            for lam, mu in ((1, 1), (3, 1), (1, 3)):
                A = lam * f
                for q in range(1, (A + 1) // 2):
                    F = (q * (A - q) * (A + q) if side == 'a'
                         else q * (A - q) * (2 * A - q)) // 2
                    for K in divisors(F):
                        count += 1
                        n = 2 * mu * K + 2
                        max_n = max(max_n, n)
                        if n < 8 or n % 8 or canonical_small(n) != (lam, mu):
                            continue
                        if (n - 1) % (lam * f):
                            continue
                        other = (n - 1) // (lam * f)
                        j = other * q + (1 if side == 'a' else 0)
                        if not 4 <= j < n // 2:
                            continue
                        N = (n - 1) // lam
                        a, b = gcd(N, j), gcd(N, j - 1)
                        if a * b != N or (a if side == 'a' else b) != f:
                            continue
                        if j * (j - 1) * (j - 2) % K == 0:
                            survivors.add((n, j))
            if survivors:
                raise AssertionError(('first allocation', side, f, survivors))
            total_visits += count
            entries.append({'side': side, 'factor': f, 'divisor_visits': count,
                            'raw_max_n': max_n, 'survivors': []})
    return {'total_divisor_visits': total_visits, 'entries': entries}


def cubic_coefficients(target: str, eps: int, q: int) -> list[int]:
    # Coefficients in increasing degree. Derived by exact substitution in PROOFS.
    if (target, eps) == ('j', 1):
        return [q*q-11*q+4, 3*q*q-15*q+18, 3*q*q-4*q+7, q*q-7]
    if (target, eps) == ('j', -1):
        return [-q*q+99*q-324, 3*q*q-135*q+1458,
                -3*q*q+36*q-567, q*q-567]
    if (target, eps) == ('k', 1):
        return [q*q-25*q+130, 3*q*q-57*q+270,
                3*q*q-46*q+182, q*q-14*q+42]
    if (target, eps) == ('k', -1):
        return [-q*q+225*q-10530, 3*q*q-513*q+21870,
                -3*q*q+414*q-14742, q*q-126*q+3402]
    raise ValueError('bad cubic case')


def poly_value(coefficients: list[int], x: int) -> int:
    v = 0
    for a in reversed(coefficients):
        v = v * x + a
    return v


def cubic_certificate() -> dict:
    rows = []
    reconstructed = []
    for target in ('j', 'k'):
        for eps, d in ((1, 1), (-1, 3)):
            for q in range(1, 64):
                coeff = cubic_coefficients(target, eps, q)
                if coeff[0] == 0 or coeff[-1] == 0:
                    raise AssertionError('degenerate cubic requires separate handling')
                roots = [x for x in divisors(abs(coeff[0]))
                         if x >= 4 and poly_value(coeff, x) == 0]
                points = []
                for x in roots:
                    if (x + eps) % d:
                        continue
                    D = (x + eps) // d
                    shift = 2 if target == 'j' else 16
                    num = q * D - shift * eps * d
                    if num % 7:
                        continue
                    h = num // 7
                    if h <= 0:
                        continue
                    y = D * h
                    n = x * x
                    j = y if target == 'j' else n - y
                    if 4 <= j and 2 * j < n:
                        if 7 * j * (j - 1) != (n - 1) * (n - 2):
                            raise AssertionError('bad reconstruction')
                        point = [x, n, j, D, h]
                        points.append(point)
                        reconstructed.append([target, eps, q, *point])
                rows.append({'target': target, 'eps': eps, 'd': d, 'q': q,
                             'coefficients': coeff, 'integer_roots_x_ge4': roots,
                             'legal_points': points})
    if {tuple(p[4:6]) for p in reconstructed} != {(16, 6)}:
        raise AssertionError(('unexpected cubic points', reconstructed))
    return {'cubic_count': len(rows), 'legal_reconstructions': reconstructed,
            'rows': rows}


def build() -> dict:
    return {'schema': 'B699-ProE-thin-cofactor-9-v1',
            'description': 'New certificates only; THREE is an explicitly inherited input.',
            'first_allocations': first_allocation_certificate(),
            'endpoint_periods': endpoint_certificate(),
            'R7_square_factor_cubics': cubic_certificate()}


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument('--output', required=True, type=Path)
    args = ap.parse_args()
    data = build()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, ensure_ascii=False, sort_keys=True, indent=2)+'\n')
    print(json.dumps({'output': str(args.output),
                      'first_divisor_visits': data['first_allocations']['total_divisor_visits'],
                      'endpoint_summary': {k:v for k,v in data['endpoint_periods'].items() if k!='rows'},
                      'cubic_count': data['R7_square_factor_cubics']['cubic_count'],
                      'cubic_points': data['R7_square_factor_cubics']['legal_reconstructions']},
                     ensure_ascii=False))

if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Bounded falsification diagnostic only. No claim of a global finite reduction.
Reproduce the preselected 2 <= a <= 26 range without floating point.
"""
from __future__ import annotations
import argparse
import json
from math import gcd, isqrt
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def floor_cuberoot(n: int) -> int:
    if n < 0:
        raise ValueError('nonnegative integer required')
    lo, hi = 0, 1 << ((n.bit_length() + 2) // 3)
    while lo + 1 < hi:
        mid = (lo + hi) // 2
        if mid**3 <= n:
            lo = mid
        else:
            hi = mid
    return hi if hi**3 <= n else lo


def run() -> dict:
    tested = 0
    roots = []
    counts = []
    for a in range(2, 27):
        alpha = 3**a
        gmax = floor_cuberoot(alpha - 1)
        assert gmax**3 < alpha <= (gmax + 1)**3
        # g*3^a = 5130 mod 9000, with 9|3^a; impose modulo 1000
        # first, then explicitly recheck the full modulus.
        residue = (130 * pow(alpha, -1, 1000)) % 1000
        count = 0
        for g in range(residue or 1000, gmax + 1, 1000):
            n = g * alpha
            if n % 9000 != 5130:
                continue
            zmax = isqrt(alpha**2 // (40 * (n - 1)))
            for z in range(1, zmax + 1):
                if z % 3 == 0:
                    continue
                tested += 1
                count += 1
                discr = alpha**2 - 40 * (n - 1) * z**2
                root = isqrt(discr)
                if root**2 != discr or (alpha - root) % 2:
                    continue
                beta = (alpha - root) // 2
                j = g * beta
                if gcd(beta, alpha) == 1 and 7 <= j <= n // 2:
                    roots.append({'a': a, 'g': g, 'z': z, 'n': n, 'j': j})
        counts.append({'a': a, 'candidate_triples': count})
    return {'role': 'bounded diagnostic only; no global finite-reduction theorem',
            'a_min': 2, 'a_max': 26, 'completed_range': True,
            'tested': tested, 'solutions': roots, 'counts': counts}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--write', action='store_true', help='refresh diagnostic output before sealing hashes')
    args = parser.parse_args()
    output = run()
    target = ROOT / 'evidence/small_g_probe.json'
    if args.write:
        target.write_text(json.dumps(output, ensure_ascii=False, indent=2) + '\n')
    elif target.exists():
        assert output == json.loads(target.read_text()), 'diagnostic output differs'
    print(json.dumps({'tested': output['tested'], 'solutions': len(output['solutions']),
                      'a_max': output['a_max'], 'completed_range': True}))


if __name__ == '__main__':
    main()

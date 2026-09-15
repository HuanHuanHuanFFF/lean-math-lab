"""Exact regression for the infinite same-input H02 model in 01-route-memo.md.

This does not search for NC5, and a finite test does not prove the infinite family.
The proof is in the accompanying note. No factoring library is needed.
"""
from math import gcd
import json
from pathlib import Path
import sys


def power_part(x, p):
    z = 1
    while x % p == 0:
        x //= p
        z *= p
    return z


def coarse(x):
    for p in (2, 3):
        while x % p == 0:
            x //= p
    if x % 5 == 0 and x % 25 != 0:
        x //= 5
    return x


def check(t):
    a = 9 + 18 * t
    n = 7 * 2**a
    j = 7 * ((2**a + 1) // 9)
    k = n - j
    g = gcd(n, j)
    h = (n - 2) // 18
    q1, q2 = coarse(n - 1), coarse(n - 2)
    p2 = [power_part(n - r, 2) for r in range(5)]
    p3 = [power_part(n - r, 3) for r in range(5)]
    checks = {
        'legitimate_pair': 6 <= j <= n // 2,
        'gcd_exact': g == 7,
        'denominator_exact': n // g == 2**a,
        'two_role_exact': p2[0] == 2**a and p2.count(max(p2)) == 1,
        'three_role_exact': p3[2] == 9 and p3.count(max(p3)) == 1,
        'fifth_bound': 8 * g**5 < 625 * n,
        'seventh_bound': g**7 < 2**22 * n,
        'r2_complete_modulus': (j - 1) % q2 == 0 and (k - 1) % q2 == 0,
        'r2_coarse_identification': q2 in (h, h // 5),
        'r1_residual_identity': (81 * j * (j - 1) + 8) % q1 == 0,
        'r1_fails': j * (j - 1) % q1 != 0,
    }
    assert all(checks.values()), (t, checks)
    return {'t': t, 'a': a, 'n_bits': n.bit_length(), 'n': str(n), 'j': str(j),
            'q1': str(q1), 'q2': str(q2), 'checks': checks}


def main():
    tests = [0, 1, 2, 3, 10, 100, 300]
    rows = [check(t) for t in tests]
    output = {'scope': 'infinite-family-regression-only', 'all_passed': True,
              'sample_count': len(rows), 'rows': rows}
    path = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({'output': str(path), 'all_passed': True,
                      'samples': len(rows), 'largest_exponent': rows[-1]['a'],
                      'first_pair': [rows[0]['n'], rows[0]['j']]}))


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Factorization-free sufficient consumer; UNDECIDED never means a counterexample."""
import argparse
import json
from math import gcd, isqrt
from core import jacobi


def evaluate(n: int, j: int) -> dict:
    if not (isinstance(n, int) and isinstance(j, int) and 7 <= j <= n // 2):
        raise ValueError('Expected integers with 7 <= j <= floor(n/2)')
    k = n - j
    W = (n - 1) * j * k
    result = {'n': n, 'j': j, 'result': 'UNDECIDED',
              'evidence': 'Author paper theorem U4-CHAR; no Lean'}
    if W % 10 or isqrt(W // 10) ** 2 != W // 10:
        result['reason'] = 'W is not ten times an integer square'
        return result
    q4 = n - 4
    for p in (2, 3, 5):
        while q4 % p == 0:
            q4 //= p
    E4, C = gcd(q4, j*k), gcd(q4, j-2)
    left, right = jacobi(10, q4), jacobi(10, E4*C)
    result.update(Y=isqrt(W//10), q4=q4, E4=E4, C=C,
                  chi10_q4=left, chi10_E4C=right)
    if left != right:
        result['result'] = 'COMMON6_CERTIFIED_BY_U4_CHAR'
        result['conclusion'] = 'A same prime p>=7 divides C(n,6) and C(n,j)'
        result['explicit_prime'] = None
    else:
        result['reason'] = 'The sufficient character test does not trigger'
    return result


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('n', type=int)
    ap.add_argument('j', type=int)
    args = ap.parse_args()
    try:
        result = evaluate(args.n, args.j)
    except ValueError as exc:
        ap.error(str(exc))
    print(json.dumps(result, ensure_ascii=False, indent=2, sort_keys=True))


if __name__ == '__main__':
    main()

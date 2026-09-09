#!/usr/bin/env python3
"""Evaluate the proposed H at three selected indices; no original-triple search."""
import json
from math import isqrt
from pathlib import Path


def is_prime(n):
    return n >= 2 and all(n % d for d in range(2, isqrt(n) + 1))


def row(i):
    t = sum(is_prime(p) for p in range(i))
    s = i - 4 * t
    assert s > 0
    a = 4 * i // s + 1
    b = (i + 3) // s + 1
    value = 2 ** a * i ** b
    assert 4 * i <= a * s and i + 3 <= b * s
    assert value ** s >= 2 ** (4 * i) * i ** (i + 3)
    return dict(i=i, primes_strictly_below=t, positive_slack=s,
                exponent_of_2=a, exponent_of_i=b, H=str(value),
                decimal_digits=len(str(value)))


if __name__ == '__main__':
    result = dict(purpose='Scale of explicit proposed height; not evidence of B699 itself',
                  cases=[row(i) for i in (185, 200, 1000)])
    path = Path(__file__).with_name('result.json')
    path.write_text(json.dumps(result, indent=2) + '\n')
    print(path.read_text(), end='')

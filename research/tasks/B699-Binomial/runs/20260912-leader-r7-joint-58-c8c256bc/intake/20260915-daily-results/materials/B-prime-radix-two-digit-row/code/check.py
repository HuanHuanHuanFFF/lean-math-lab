"""Independent reverse-order finite checker. Does NOT import generate.py.
It uses the n cap and increasing powers, not the generator's f/e cutoffs.
"""
from math import gcd, isqrt
from pathlib import Path
import argparse, json


def need(ok, why):
    if not ok:
        raise ValueError(why)


def is_prime(n):
    if n < 2: return False
    if n in (2, 3): return True
    if n % 2 == 0 or n % 3 == 0: return False
    d = 5
    while d * d <= n:
        if n % d == 0 or n % (d + 2) == 0: return False
        d += 6
    return True


def legendre(n, p):
    ans = 0
    while n:
        n //= p
        ans += n
    return ans


def choose_val(n, j, p):
    return legendre(n, p) - legendre(j, p) - legendre(n - j, p)


def validate(data):
    need(data.get('schema') == 'B699-odd-prime-top-two-v1', 'schema')
    need(type(data.get('coefficient_cap')) is int and data.get('coefficient_cap') == 8, 'the proved coefficient cap must be exactly 8')
    for field in ('rows','frontier','small_base'):
        need(type(data.get(field)) is list, 'integer-array field '+field)
        need(all(type(r) is list and all(type(x) is int for x in r) for r in data[field]), 'non-integer certificate entry')
    rows, frontier = [], []
    legal_count = g_count = 0
    for B in range(8, 0, -1):
        for A in range(8, 0, -1):
            for p in range(3 * A * B + 2, 2, -1):
                if p <= max(A, B) or not is_prime(p): continue
                T, f = p, 1
                while T <= 3 * A * B + 2:
                    if not (p == 3 and f == 1):
                        cap = 3 * (A + A * B * T)**2 + 1
                        power, e = p * T, f + 1
                        while A * power + B * T <= cap:
                            n = A * power + B * T
                            if n % 4 == 0:
                                key = [p, A, B, e, f, n]
                                rows.append(key)
                                modulus = (n - 1) // gcd(n - 1, 3)
                                for v in range(B, -1, -1):
                                    for u in range(A, -1, -1):
                                        j = u * power + v * T
                                        if not 4 <= j <= n // 2: continue
                                        legal_count += 1
                                        g = gcd(n - j, j)
                                        if g**4 >= 3 * n:
                                            g_count += 1
                                            continue
                                        need((j * (j - 1)) % modulus != 0, 'first-window survivor')
                                        residue = 3 * (j * (j - 1) % (n - 1)) % (n - 1)
                                        frontier.append(key + [u, v, j, g, residue])
                            power *= p
                            e += 1
                    T *= p
                    f += 1
    rows.sort(); frontier.sort()
    need(rows == data.get('rows'), 'incomplete/extra parameter-row coverage')
    need(frontier == data.get('frontier'), 'incomplete or altered post-g4 frontier')
    expected_small = [(n, j) for n in range(8, 100, 4) for j in range(4, n // 2 + 1)]
    records = data.get('small_base', [])
    need([(r[0], r[1]) for r in records] == expected_small, 'small-base coverage')
    for n, j, p in records:
        need(p >= 3 and is_prime(p), 'small-base odd prime')
        need(choose_val(n, 3, p) > 0 and choose_val(n, j, p) > 0, 'small-base witness fails')
    stats = {
        'parameter_rows': len(rows),
        'legal_digit_pairs': legal_count,
        'rejected_by_g4': g_count,
        'after_g4': len(frontier),
        'after_first_window': 0,
        'small_base_pairs': len(records),
        'maximum_bottom_n': max(r[-1] for r in rows),
        'maximum_prime': max(r[0] for r in rows),
    }
    need(stats == data.get('statistics'), 'statistics')
    return {'status': 'PASS', 'independent_order': 'B,A,p descending; unbounded-power loops stopped by proved n cap', **stats}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--certificate', type=Path, required=True)
    ap.add_argument('--out', type=Path, required=True)
    a = ap.parse_args()
    ans = validate(json.loads(a.certificate.read_text()))
    a.out.parent.mkdir(parents=True, exist_ok=True)
    a.out.write_text(json.dumps(ans, indent=2) + '\n')
    print(json.dumps(ans, sort_keys=True))

if __name__ == '__main__': main()

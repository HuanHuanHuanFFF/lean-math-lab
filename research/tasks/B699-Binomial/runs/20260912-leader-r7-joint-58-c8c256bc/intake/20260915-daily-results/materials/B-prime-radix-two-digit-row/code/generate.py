"""Generate the complete C=8 finite proof bottom. No discovery library is used."""
from math import comb, gcd, isqrt
from pathlib import Path
import argparse, json


def prime(n):
    return n >= 2 and all(n % d for d in range(2, isqrt(n) + 1))


def generate():
    coefficient_cap = 8
    rows, frontier = [], []
    total_legal = total_g_reject = 0
    for p in range(3, 3 * coefficient_cap**2 + 3, 2):
        if not prime(p):
            continue
        for A in range(1, min(coefficient_cap, p - 1) + 1):
            for B in range(1, min(coefficient_cap, p - 1) + 1):
                for f in (1, 2):
                    if p == 3 and f == 1:
                        continue  # isolated 3: separate, complete small-v2 proof
                    T = p**f
                    if T > 3 * A * B + 2:
                        continue
                    cap = 3 * (A + A * B * T)**2 + 1
                    for e in range(f + 1, 2 * f + 5):
                        n = A * p**e + B * T
                        if n % 4 or n > cap:
                            continue
                        key = [p, A, B, e, f, n]
                        rows.append(key)
                        for u in range(A + 1):
                            for v in range(B + 1):
                                j = u * p**e + v * T
                                if not 4 <= j <= n // 2:
                                    continue
                                total_legal += 1
                                g = gcd(n, j)
                                if g**4 >= 3 * n:
                                    total_g_reject += 1
                                    continue
                                residue = 3 * j * (j - 1) % (n - 1)
                                if residue == 0:
                                    raise RuntimeError(f'Unexcluded bottom point: {key}, {u}, {v}')
                                frontier.append(key + [u, v, j, g, residue])
    small = []
    for n in range(8, 100, 4):
        for j in range(4, n // 2 + 1):
            z = gcd(comb(n, 3), comb(n, j))
            while z % 2 == 0:
                z //= 2
            if z == 1:
                raise RuntimeError(f'Small base has no odd common divisor: {(n, j)}')
            p = next(p for p in range(3, z + 1, 2) if z % p == 0 and prime(p))
            small.append([n, j, p])
    rows.sort()
    frontier.sort()
    return {
        'schema': 'B699-odd-prime-top-two-v1',
        'coefficient_cap': coefficient_cap,
        'rows': rows,
        'frontier': frontier,
        'small_base': small,
        'statistics': {
            'parameter_rows': len(rows),
            'legal_digit_pairs': total_legal,
            'rejected_by_g4': total_g_reject,
            'after_g4': len(frontier),
            'after_first_window': 0,
            'small_base_pairs': len(small),
            'maximum_bottom_n': max(r[-1] for r in rows),
            'maximum_prime': max(r[0] for r in rows),
        },
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--out', type=Path, required=True)
    args = ap.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    data = generate()
    (args.out / 'certificate.json').write_text(json.dumps(data, separators=(',', ':')) + '\n')
    (args.out / 'generation.json').write_text(json.dumps(data['statistics'], indent=2) + '\n')
    print(json.dumps(data['statistics'], sort_keys=True))

if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Reconstruct every complementary candidate without importing the generator.

Uses complete trial-division divisor lists instead of scanning an h interval;
uses a direct beta loop for d branches; acceptance uses two remainder tests,
not the content-quotient criterion used by the generator. All arithmetic exact.
"""
from __future__ import annotations
import argparse, copy, hashlib, json, math, time
from functools import lru_cache
from pathlib import Path

@lru_cache(maxsize=10000)
def divisors(n: int) -> tuple[int, ...]:
    if n < 1:
        raise ValueError('positive divisor argument required')
    rem, prime, out = n, 2, [1]
    while prime * prime <= rem:
        exponent = 0
        while rem % prime == 0:
            rem //= prime
            exponent += 1
        if exponent:
            old = tuple(out)
            power = 1
            for _ in range(exponent):
                power *= prime
                out.extend(x * power for x in old)
        prime = 3 if prime == 2 else prime + 2
    if rem != 1:
        out += [x * rem for x in tuple(out)]
    return tuple(sorted(out))

def make_record(n: int, j: int) -> dict[str, int]:
    g = math.gcd(n, j)
    alpha, beta, gamma = n // g, j // g, (n - j) // g
    s, c = 0, alpha
    while c % 2 == 0:
        s, c = s + 1, c // 2
    d = math.gcd(gamma, n - 1)
    H = math.gcd(*(math.comb(j, t) * math.comb(n - j, 3 - t)
                   for t in range(4)))
    L = math.comb(n, 3) // H
    z = L
    while z % 2 == 0:
        z //= 2
    return dict(n=n, j=j, g=g, alpha=alpha, beta=beta, gamma=gamma,
                c=c, s=s, dplus=d, eplus=gamma // d, h=(n - 1) // d,
                H=H, L=L, odd_L=z)

def reconstruct(kind: str, parameter: int) -> list[dict[str, int]]:
    if kind == 'dplus':
        G, N = 2 * parameter - 1, 27 * parameter**3 + 1
    elif kind == 'eplus':
        G, N = math.isqrt(41 * parameter**3 - 1), 123 * parameter**6 + 1
    else:
        raise ValueError(kind)
    out = []
    for s in range(2, N.bit_length() + 1):
        for c in (1, 3):
            alpha = c * (1 << s)
            for g in range(1, min(G, N // alpha) + 1):
                if c == 3 and g % 3 == 0:
                    continue
                n = g * alpha
                if n < 8:
                    continue
                if kind == 'dplus':
                    if (n - 1) % parameter:
                        continue
                    h = (n - 1) // parameter
                    # Deliberately not the step-size enumeration of the generator.
                    betas = [b for b in range(1, alpha // 2)
                             if (3 * b) % h == 0]
                else:
                    e = parameter
                    if not (c * (n - 2) < 3 * g*g * e**3 and
                            2 * c**5 * g**4 < 81 * g*g * e**3 + 54 * c):
                        continue
                    betas = [alpha - ((n - 1) // h) * e
                             for h in divisors(n - 1) if g*e < h < 2*g*e]
                for beta in betas:
                    j = g * beta
                    if not (4 <= j and 2*j < n and math.gcd(alpha, beta) == 1):
                        continue
                    row = make_record(n, j)
                    if row[kind] == parameter:
                        out.append(row)
    out.sort(key=lambda r: (r['n'], r['j']))
    if len({(r['n'], r['j']) for r in out}) != len(out):
        raise AssertionError('duplicate reconstructed row')
    return out

def compare(expected: list[dict], supplied: list[dict]) -> None:
    if expected != supplied:
        raise AssertionError('complete candidate list mismatch')

def verify(directory: Path) -> dict:
    start = time.monotonic()
    groups, all_pairs, terminals = [], set(), {}
    mutation_tests = []
    terminal_records = []
    for kind in ('dplus', 'eplus'):
        for a in (1, 3, 5, 7):
            path = directory / f'{kind}_{a}.json'
            data = json.loads(path.read_text())
            expected = reconstruct(kind, a)
            compare(expected, data['rows'])
            projection1_pass = 0
            for row in expected:
                n, j = row['n'], row['j']
                r1 = 3*j*(j-1) % (n-1)
                r2 = 6*j*(j-1)*(j-2) % (n-2)
                if r1 == r2 == 0:
                    raise AssertionError(f'unresolved projections at {(n,j)}')
                if r1 == 0:
                    projection1_pass += 1
                    terminal_records.append(dict(group=f'{kind}_{a}',**row,P1_remainder=r1,P2_remainder=r2))
                    key = (n, j)
                    terminals.setdefault(key, dict(n=n, j=j, P2_remainder=r2, groups=[]))
                    terminals[key]['groups'].append(f'{kind}_{a}')
                if row['odd_L'] <= 1:
                    raise AssertionError('independent content calculation failed')
                all_pairs.add((n, j))
            groups.append(dict(kind=kind, parameter=a, candidates=len(expected),
                               P1_pass=projection1_pass, P1_and_P2_pass=0,
                               sha256=hashlib.sha256(path.read_bytes()).hexdigest()))
            # Ensure list changes are not silently accepted, including empty-list claims.
            variants = []
            if expected:
                variants.append(('delete_one_row', copy.deepcopy(expected[:-1])))
                bad = copy.deepcopy(expected); bad[0]['n'] += 4
                variants.append(('change_n', bad))
                bad = copy.deepcopy(expected); bad[0]['H'] += 1
                variants.append(('change_H', bad))
            for name, bad in variants:
                try:
                    compare(expected, bad)
                except AssertionError:
                    mutation_tests.append(dict(group=f'{kind}_{a}', mutation=name, rejected=True))
                else:
                    raise AssertionError('bad certificate accepted')
    if json.loads((directory / 'TERMINAL.json').read_text())['records'] != terminal_records:
        raise AssertionError('compressed terminal certificate mismatch')
    result = dict(status='PASS', method='divisor reconstruction + two necessary projections',
                  record_count=sum(g['candidates'] for g in groups),
                  distinct_pairs=len(all_pairs),
                  terminal_record_count=sum(g['P1_pass'] for g in groups),
                  terminal_distinct_pairs=len(terminals),
                  groups=groups, terminals=[terminals[k] for k in sorted(terminals)],
                  mutation_tests=mutation_tests,
                  elapsed_seconds=time.monotonic()-start,
                  independence_scope='different code and arithmetic within one research session; not an independent researcher or Lean')
    return result

def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--certificate-dir', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    result = verify(args.certificate_dir)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ('groups','terminals','mutation_tests')}, indent=2))

if __name__ == '__main__':
    main()

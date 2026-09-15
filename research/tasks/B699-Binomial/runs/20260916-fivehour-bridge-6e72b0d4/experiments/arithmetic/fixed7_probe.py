"""Discovery probe: QIG plus exact lifting for n=7*2**A.

The exponent cap is an input requiring an external proof; it is not inferred here.
All loops retain actual valuations, complete prime powers, and complete residues.
"""
import json
from pathlib import Path


def valuation(n, p):
    a = 0
    while n % p == 0:
        n //= p
        a += 1
    return a


def small5(n):
    answer = 1
    for p in (2, 3):
        while n % p == 0:
            answer *= p
            n //= p
    if n % 5 == 0 and n % 25 != 0:
        answer *= 5
    return answer


def qig_passes(n):
    smalls = [small5(n-r) for r in range(4)]
    t = 1
    for z in smalls:
        t *= z
    left = t**6 * (3*n*n - 12*n + 8)
    right = 2**20 * (n-1)**6 * (n-3)**3
    return left < right, smalls


def main():
    cap = 10**8
    rows, candidates, seen = [], [], set()
    root, modulus, period, b = 0, 3, 2, 1
    while True:
        assert 0 <= root < period
        assert 7 * pow(2, root, modulus) % modulus == 1
        rows.append({'B': b, 'modulus': str(modulus), 'period': str(period),
                     'root_for_r1': root})
        if root > cap:
            break
        for r in (1, 2):
            ar = (root + r - 1) % period
            start = max(0, (3 - ar + period - 1) // period)
            stop = min(cap, 10*b-1)
            for k in range(start, (stop-ar)//period+1):
                a = ar+k*period
                assert 3 <= a <= cap and a < 10*b
                assert 7*pow(2, a, modulus) % modulus == r
                n = 7*2**a
                if valuation(n-r, 3) != b:
                    continue
                if a in seen:
                    continue
                seen.add(a)
                passes, smalls = qig_passes(n)
                candidates.append({'A': a, 'B': b, 'r': r, 'n': str(n),
                                   'smalls': smalls, 'QIG_strict_passes': passes})
        new_modulus = modulus*3
        lifts = [root+k*period for k in range(3)
                 if 7*pow(2, root+k*period, new_modulus) % new_modulus == 1]
        assert len(lifts) == 1
        root = lifts[0]
        modulus, period, b = new_modulus, period*3, b+1
    survivors = [z for z in candidates if not z['QIG_strict_passes']]
    output = {'cap': cap, 'rows': rows, 'candidates': sorted(candidates, key=lambda z:z['A']),
              'survivors': survivors, 'scope': 'discovery; cap requires paper proof'}
    path = Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({'rows':len(rows),'last':rows[-1], 'candidate_count':len(candidates),
                      'candidate_exponents':sorted(seen), 'survivors':survivors}))


if __name__ == '__main__':
    main()

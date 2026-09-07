"""Finite, exact comparison of second-order congruences with cheap baselines.

Not a global search proof. Candidate window uses the previously proved
central-factor bound, and floor(beta*d) is certified with exact powers.
Default bound: k=5, d=5..50000; no external packages or background jobs.
"""
import argparse
from collections import Counter
from itertools import combinations
from datetime import datetime, timezone
from math import prod, gcd
from pathlib import Path
from time import monotonic
import json


def sieve(limit):
    spf = list(range(limit + 1))
    for p in range(2, int(limit**0.5) + 1):
        if spf[p] == p:
            for x in range(p * p, limit + 1, p):
                if spf[x] == x:
                    spf[x] = p
    return spf


def factor(x, spf):
    out = {}
    while x > 1:
        p = spf[x]
        a = 0
        while x % p == 0:
            x //= p
            a += 1
        out[p] = a
    return out


def trial_factor(x):
    out, p = {}, 2
    while p * p <= x:
        while x % p == 0:
            out[p] = out.get(p, 0) + 1
            x //= p
        p += 1
    if x > 1:
        out[x] = out.get(x, 0) + 1
    return out


def run(k, max_d):
    assert k >= 5 and k % 2 == 1 and max_d >= k
    started = monotonic()
    spf = sieve((k + 1) * max_d + k)
    counts = Counter()
    witnesses = {}
    q = 0
    for d in range(k, max_d + 1):
        while (q + 1 + d)**k >= 4 * (q + 1)**k:
            q += 1
        assert (q + d)**k >= 4 * q**k
        assert (q + 1 + d)**k < 4 * (q + 1)**k
        for n in range(max(0, q - (k + 1)//2 + 1), q):
            lower, upper = list(range(n + 1, n + k + 1)), list(range(n + d + 1, n + d + k + 1))
            P, U = prod(lower), prod(upper)
            lf, uf = [factor(x, spf) for x in lower], [factor(x, spf) for x in upper]
            lv, uv = Counter(), Counter()
            for fs in lf:
                lv.update(fs)
            for fs in uf:
                uv.update(fs)
            ddiv = 3 * P % d == 0
            power_bound = all(p**a <= d + k - 1 for fs in lf + uf for p, a in fs.items() if p >= k)
            v2 = uv[2] - lv[2] == 2
            large_match = all(lv[p] == uv[p] for p in lv.keys() | uv.keys() if p >= k)
            Es = [3 * x - d for x in lower]
            df = factor(d, spf)
            local = True
            assignments = []
            for p, a in df.items():
                if p < k or p == 3:
                    continue
                hits = [i for i, x in enumerate(lower) if x % p == 0]
                if len(hits) != 1:
                    local = False
                    assignments.append(dict(p=p, a=a, position=None))
                    continue
                i = hits[0]
                power = p**a
                residue = Es[i] % (power * power)
                local &= residue == 0
                assignments.append(dict(p=p, a=a, position=i + 1, square_residue=residue))
            global_square = prod(Es) % (d * d) == 0
            local_p2 = (2 not in df or any(E % (2**(2*df[2])) == 0 for E in Es)) if k==5 else True
            local_p3 = (3 not in df or any((9*E) % (3**(2*df[3])) == 0 for E in Es)) if k==5 else True
            all_local = local and local_p2 and local_p3
            three_primes_survives = len(df) >= 3 if k==5 else True
            scaled_prime_classes_survives = (three_primes_survives and
                not (len(df)==3 and df.get(3)==1) and
                not (len(df)==3 and df.get(2)==1 and 3 not in df)) if k==5 else True
            coprime_symmetric_survives = (gcd(d,3*(n+2)*(n+4))>1 and gcd(d,3*(n+1)*(n+5))>1) if k==5 else True
            two_support_survives = all(gcd(d,3*prod(n+i for i in range(1,6) if i not in pair))>1 for pair in combinations(range(1,6),2)) if k==5 else True
            flags = dict(local_p2=local_p2, local_p3=local_p3,
                         all_local_square=all_local, three_primes_survives=three_primes_survives,
                         scaled_prime_classes_survives=scaled_prime_classes_survives,
                         coprime_symmetric_survives=coprime_symmetric_survives, two_support_survives=two_support_survives, d_div=ddiv, full_power_bound=power_bound, v2=v2,
                         large_prime_match=large_match, local_square=local, global_square=global_square)
            counts['geometric'] += 1
            for label, ok in flags.items():
                counts[label] += ok
            baseline = ddiv and power_bound
            baseline_v2 = baseline and v2
            baseline_full = baseline_v2 and large_match
            for name, base in [('baseline', baseline), ('baseline_v2', baseline_v2), ('baseline_full', baseline_full)]:
                counts[name] += base
                counts[name + '_symmetric'] += base and coprime_symmetric_survives
                counts[name + '_two_support'] += base and two_support_survives
                counts[name + '_both_support'] += base and coprime_symmetric_survives and two_support_survives
                counts[name + '_local'] += base and local
                counts[name + '_all_local'] += base and all_local
                counts[name + '_three_primes'] += base and three_primes_survives
                counts[name + '_three_primes_both_support'] += base and three_primes_survives and coprime_symmetric_survives and two_support_survives
                structural = scaled_prime_classes_survives and coprime_symmetric_survives and two_support_survives
                counts[name + '_scaled_classes'] += base and scaled_prime_classes_survives
                counts[name + '_scaled_classes_both_support'] += base and structural
                counts[name + '_global'] += base and global_square
                key = name + '_rejected_by_square'
                if base and not local and key not in witnesses:
                    # Independent factorization and raw source recheck for each diagnostic.
                    assert all(fs == trial_factor(x) for fs, x in zip(lf + uf, lower + upper))
                    assert P == prod(n + i for i in range(1, k + 1))
                    assert U == prod(n + d + i for i in range(1, k + 1))
                    assert U != 4 * P
                    witnesses[key] = dict(k=k, n=n, m=n+d, d=d, flags=flags,
                        displacement_factorization=df, assignments=assignments,
                        lower_factorizations=lf, upper_factorizations=uf,
                        P=P, U=U, original_difference=U-4*P,
                        global_square_residue=prod(Es) % (d*d))
                key = name + '_structural_survivor'
                if base and structural and key not in witnesses:
                    assert all(fs == trial_factor(x) for fs, x in zip(lf + uf, lower + upper))
                    assert U-4*P == prod(n+d+i for i in range(1,k+1))-4*prod(n+i for i in range(1,k+1))
                    witnesses[key] = dict(k=k,n=n,m=n+d,d=d,flags=flags,
                        displacement_factorization=df,assignments=assignments,
                        P=P,U=U,original_difference=U-4*P,
                        global_square_residue=prod(Es)%(d*d))
            if baseline_full and local and global_square:
                counts['strong_survivors'] += 1
                if 'strong_survivor' not in witnesses:
                    witnesses['strong_survivor'] = dict(k=k, n=n, m=n+d, d=d,
                        original_difference=U-4*P, flags=flags, displacement_factorization=df,
                        assignments=assignments)
            if U == 4 * P:
                raise AssertionError(('ORIGINAL SOLUTION', k, n, n+d))
    return dict(k=k, max_d=max_d, counts=dict(counts), witnesses=witnesses,
                elapsed_seconds=monotonic()-started,
                interpretation='Finite filter comparison only; no unrestricted conclusion.')


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--ks', default='5')
    parser.add_argument('--max-d', type=int, default=50000)
    parser.add_argument('--output', default='sieve-comparison.json')
    args = parser.parse_args()
    out = dict(utc=datetime.now(timezone.utc).isoformat(),
               scope='centered exact-power window; natural n; d>=k; all checks exact',
               baselines='baseline=d|3P plus full large-prime-power size bound; then v2; then full p>=k valuation matching',
               runs=[run(int(k), args.max_d) for k in args.ks.split(',')])
    path = Path(__file__).resolve().parent / args.output
    path.write_text(json.dumps(out, indent=2) + '\n')
    print(json.dumps(dict(output=str(path), runs=[dict(k=x['k'], counts=x['counts'],
          elapsed_seconds=x['elapsed_seconds'], witnesses=list(x['witnesses'])) for x in out['runs']]), indent=2))


if __name__ == '__main__':
    main()

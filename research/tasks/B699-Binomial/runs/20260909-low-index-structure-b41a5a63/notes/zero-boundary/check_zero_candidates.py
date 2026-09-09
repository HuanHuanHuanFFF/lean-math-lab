"""Independent checker: coefficient-first enumeration and pairwise intersections.

Does not import the generator, does not use its colored sweep, does not factor
C(n,i), and never enumerates the original second index j.
"""
import argparse
import hashlib
import json
from math import factorial, gcd, isqrt
from pathlib import Path

SCOPE = (28, 31, 34)
CEILING = 10 ** 25
START = 4097
SCALE = 64
TRIAL_MAX = 10 ** 6
FROZEN_LOG = 'F51D4E1EF908527837BBB9A7620A039C0B264CF9EC2BE66D20618B7E445B4932'


def insist(condition, text):
    if not condition:
        raise ValueError(text)


def primes_under(i):
    result = []
    for p in range(2, i):
        if all(p % d != 0 for d in range(2, isqrt(p) + 1)):
            result.append(p)
    return result


def union_sorted(pieces):
    answer = []
    for left, right in sorted(pieces):
        if not answer or left > answer[-1][1] + 1:
            answer.append([left, right])
        else:
            answer[-1][1] = max(right, answer[-1][1])
    return answer


def intersect_two(first, second):
    result, a, b = [], 0, 0
    while a < len(first) and b < len(second):
        left = max(first[a][0], second[b][0])
        right = min(first[a][1], second[b][1])
        if left <= right:
            result.append((left, right))
        if first[a][1] <= second[b][1]:
            a += 1
        else:
            b += 1
    return result


def rebuild(i, primes):
    by_prime, counts = {}, {}
    for p in primes:
        vi, residue = 0, i
        while residue % p == 0:
            vi += 1
            residue //= p
        raw = set()
        for A in range(1, SCALE + 1):
            if A * p ** vi > SCALE:
                continue
            h, power = 0, 1
            while A * power < CEILING:
                if h > vi:
                    insist(h < 84, 'exponent bound mismatch')
                    left = max(START, A * power)
                    right = min(CEILING - 1, A * power + i - 1)
                    if left <= right:
                        raw.add((left, right))
                h += 1
                power *= p
        counts[str(p)] = len(raw)
        by_prime[p] = union_sorted(raw)
    pair_intersections = []
    for index, p in enumerate(primes):
        for q in primes[index + 1:]:
            pair_intersections.extend(intersect_two(by_prime[p], by_prime[q]))
    high = union_sorted(pair_intersections)
    full = union_sorted([(2 * i + 2, START - 1)] + [tuple(x) for x in high])
    return full, high, counts


def exact_parameters(i, primes):
    t = len(primes)
    r, s = t, 2 * t + 1
    L, lam = i - r - 1, 2 * s - r
    K = 2 ** (s * (s + 1))
    for d in range(1, s + 1):
        K *= d ** (2 * (s - d + 1))
    for d in range(1, L + 1):
        K *= d ** (L - d + 1)
    E = s * (s + 1) + L * (L + 1) // 2
    insist(i == 3 * t + 1 and lam == i + 1 and E == lam * (i - t), 'zero exponent identity failed')
    insist((2 * factorial(i)) ** lam <= K * 64 ** (lam * (t - 1)), 'M certificate failed')
    return t, r, s, lam, E, K


class PrimeVerifier:
    def __init__(self, proofs):
        self.proofs = proofs
        self.done = set()

    def verify(self, n):
        if n in self.done:
            return
        insist(n >= 2, 'invalid prime')
        certificate = self.proofs.get(str(n))
        insist(isinstance(certificate, dict) and certificate.get('n') == str(n), 'missing prime certificate')
        if certificate.get('kind') == 'trial':
            insist(n <= TRIAL_MAX, 'trial certificate exceeds exact trial cap')
            insist(all(n % d for d in range(2, isqrt(n) + 1)), 'trial certificate is composite')
        elif certificate.get('kind') == 'lucas':
            insist(n > 2, 'invalid Lucas base case')
            a = int(certificate['base'])
            insist(1 < a < n, 'invalid Lucas witness')
            factors, reconstructed, previous = [], 1, 1
            for raw_q, exponent in certificate.get('factors', []):
                q = int(raw_q)
                insist(isinstance(exponent, int) and exponent >= 1, 'invalid factor exponent')
                insist(previous < q < n, 'factor list must increase and recurse downward')
                self.verify(q)
                reconstructed *= q ** exponent
                factors.append(q)
                previous = q
            insist(reconstructed == n - 1, 'incomplete factorization of n-1')
            insist(pow(a, n - 1, n) == 1, 'Lucas Fermat equation failed')
            for q in factors:
                insist(gcd(pow(a, (n - 1) // q, n) - 1, n) == 1, 'Lucas order condition failed')
        else:
            raise ValueError('no probable-prime certificate is accepted')
        self.done.add(n)


def check(data, log_bytes):
    log_hash = hashlib.sha256(log_bytes).hexdigest().upper()
    insist(log_hash == FROZEN_LOG, 'frozen log input changed')
    prior = json.loads(log_bytes)
    insist(prior.get('status') == 'complete' and prior.get('strict_n_bound') == str(CEILING), 'wrong frozen height')
    insist(2 ** 84 > CEILING, 'integer exponent certificate failed')
    insist(data.get('version') == 1 and data.get('status') == 'complete', 'candidate certificate is incomplete')
    insist(data.get('indices') == list(SCOPE), 'index coverage mismatch')
    insist(data.get('limit') == str(CEILING) and data.get('large_lower') == START, 'height coverage mismatch')
    insist(data.get('M') == SCALE and data.get('exponent_cap') == 84, 'localization constants changed')
    insist(data.get('source_log_sha256') == log_hash, 'wrong source certificate link')
    insist(data.get('prime_trial_limit') == TRIAL_MAX, 'wrong primality cap')
    tables = data.get('tables', [])
    insist(len(tables) == len(SCOPE), 'missing target table')
    verifier = PrimeVerifier(data.get('prime_certificates', {}))
    summaries = []
    for i, table in zip(SCOPE, tables):
        insist(table.get('i') == i, 'index order changed')
        primes = primes_under(i)
        t, r, s, lam, E, K = exact_parameters(i, primes)
        insist((table.get('t'), table.get('r'), table.get('s'), table.get('lambda'), table.get('degree'), table.get('K')) == (t, r, s, lam, E, str(K)), 'window parameters mismatch')
        expected, high, counts = rebuild(i, primes)
        encoded = lambda bounds: [[str(a), str(b)] for a, b in bounds]
        insist(table.get('candidate_bounds') == encoded(expected), 'candidate union mismatch')
        insist(table.get('high_bounds') == encoded(high), 'high candidate union mismatch')
        insist(table.get('interval_counts') == counts, 'raw prime interval counts mismatch')
        rows = sum(b - a + 1 for a, b in expected)
        insist(table.get('candidate_rows') == str(rows), 'row count mismatch')
        insist(table.get('unresolved') == [], 'unresolved rows remain')
        certified_bounds, last_upper = [], -1
        large_count = top_count = 0
        for segment in table.get('witnesses', []):
            lower, upper = int(segment['lower']), int(segment['upper'])
            insist(2 * i + 2 <= lower <= upper < CEILING, 'invalid witness bounds')
            insist(last_upper < lower, 'witnesses must be sorted and disjoint')
            last_upper = upper
            witness = segment['witness']
            if witness.get('kind') == 'topPrime':
                p = int(witness['p'])
                verifier.verify(p)
                insist(p <= lower and upper < p + i, 'top prime misses row interval')
                top_count += 1
            elif witness.get('kind') == 'largeDivisor':
                insist(lower == upper, 'large divisor witness is not a singleton')
                D = int(witness['D'])
                insist(D > 0 and gcd(D, factorial(i - 1)) == 1, 'invalid rough divisor')
                falling = 1
                for offset in range(i):
                    falling *= lower - offset
                insist(falling % (factorial(i) * D) == 0, 'supplied divisor does not divide the binomial')
                insist(lower ** E < K * D ** lam, 'strict scaled divisor comparison failed')
                large_count += 1
            else:
                raise ValueError('unknown row witness')
            certified_bounds.append((lower, upper))
        insist(union_sorted(certified_bounds) == expected, 'row witness coverage gap')
        summaries.append({'i': i, 'candidate_rows': rows, 'high_segments': len(high),
                          'top_prime_segments': top_count, 'large_divisor_rows': large_count})
    for raw_p in data.get('prime_certificates', {}):
        verifier.verify(int(raw_p))
    large_primes = sorted(int(p) for p, proof in data['prime_certificates'].items() if proof['kind'] == 'lucas')
    insist(data.get('large_prime_lean_bridge_needed') == large_primes, 'large prime proof inventory mismatch')
    return {'verified': True, 'algorithm': 'coefficient_first_pairwise_intersections',
            'indices': list(SCOPE), 'tables': summaries, 'prime_certificates': len(verifier.done),
            'large_prime_lean_bridge_needed': large_primes, 'raw_j_enumerated': False,
            'source_log_sha256': log_hash}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('certificate')
    parser.add_argument('--log-certificate', required=True)
    args = parser.parse_args()
    try:
        data = json.loads(Path(args.certificate).read_text(encoding='utf-8'))
        result = check(data, Path(args.log_certificate).read_bytes())
    except (ValueError, KeyError, TypeError) as error:
        print(json.dumps({'verified': False, 'error': str(error)}))
        return 1
    print(json.dumps(result))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())

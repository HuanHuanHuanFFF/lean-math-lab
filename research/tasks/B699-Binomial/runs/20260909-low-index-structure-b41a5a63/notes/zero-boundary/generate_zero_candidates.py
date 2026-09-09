"""Recover all zero-boundary candidate rows and construct exact row witnesses.

This module is write-only until explicitly run.  No original j is enumerated.
Prime probable tests are search filters only; every accepted prime has a trial
or recursive Lucas certificate.  Unresolved rows make the output incomplete.
"""
import argparse
from collections import Counter, defaultdict
import hashlib
import json
from math import comb, factorial, gcd, isqrt, prod
from pathlib import Path
import sys
import time

INDICES = (28, 31, 34)
LIMIT = 10 ** 25
LARGE_LOWER = 4097
M = 64
EXPONENT_CAP = 84
TRIAL_LIMIT = 10 ** 6
LOG_SHA256 = 'F51D4E1EF908527837BBB9A7620A039C0B264CF9EC2BE66D20618B7E445B4932'


def small_primes(bound):
    return [p for p in range(2, bound) if all(p % d for d in range(2, isqrt(p) + 1))]


def valuation(n, p):
    exponent = 0
    while n % p == 0:
        n //= p
        exponent += 1
    return exponent


def merge_intervals(intervals):
    merged = []
    for lo, hi in sorted(intervals):
        if merged and lo <= merged[-1][1] + 1:
            merged[-1][1] = max(merged[-1][1], hi)
        else:
            merged.append([lo, hi])
    return merged


def parameters(i):
    primes = small_primes(i)
    t = len(primes)
    r, s, lam = t, 2 * t + 1, i + 1
    L = i - r - 1
    K = 2 ** (s * (s + 1)) * prod(factorial(h) for h in range(1, s + 1)) ** 2 * prod(factorial(h) for h in range(1, L + 1))
    E = s * (s + 1) + L * (L + 1) // 2
    assert i == 3 * t + 1 and lam == 2 * s - r and E == lam * (i - t)
    assert (2 * factorial(i)) ** lam <= K * M ** (lam * (t - 1))
    return primes, t, r, s, lam, E, K


def colored_candidates(i, primes):
    events = defaultdict(list)
    interval_counts = {}
    for p in primes:
        vi = valuation(i, p)
        max_a = M // p ** vi
        intervals = set()
        power, h = p ** (vi + 1), vi + 1
        while power < LIMIT:
            assert h < EXPONENT_CAP
            for a in range(1, max_a + 1):
                base = a * power
                if base >= LIMIT:
                    break
                lo, hi = max(LARGE_LOWER, base), min(LIMIT - 1, base + i - 1)
                if lo <= hi:
                    intervals.add((lo, hi))
            power *= p
            h += 1
        interval_counts[str(p)] = len(intervals)
        for lo, hi in intervals:
            events[lo].append((p, 1))
            events[hi + 1].append((p, -1))
    points, active, covered = sorted(events), {}, []
    for index, point in enumerate(points):
        for p, change in events[point]:
            count = active.get(p, 0) + change
            assert count >= 0
            if count:
                active[p] = count
            else:
                active.pop(p, None)
        if index + 1 < len(points) and len(active) >= 2:
            covered.append((point, points[index + 1] - 1))
    assert not active
    high = merge_intervals(covered)
    all_rows = merge_intervals([(2 * i + 2, LARGE_LOWER - 1)] + [tuple(x) for x in high])
    return all_rows, high, interval_counts


def probable_prime_filter(n):
    if n < 2:
        return False
    for p in (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37):
        if n % p == 0:
            return n == p
    d, s = n - 1, 0
    while d % 2 == 0:
        d //= 2
        s += 1
    for a in (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37):
        x = pow(a % n, d, n)
        if x in (1, n - 1):
            continue
        for _ in range(s - 1):
            x = x * x % n
            if x == n - 1:
                break
        else:
            return False
    return True


class PrimeSearchStopped(Exception):
    pass


class ExactPrimeProver:
    def __init__(self, seconds):
        self.seconds = seconds
        self.deadline = None
        self.certificates = {}
        self.failed = set()

    def budget(self):
        if self.deadline is None:
            self.deadline = time.monotonic() + self.seconds
        if time.monotonic() >= self.deadline:
            raise PrimeSearchStopped('bounded large-prime proof budget exhausted')

    def rho(self, n):
        for c in range(1, 33):
            x = y = 2 + c
            for step in range(100000):
                if step % 128 == 0:
                    self.budget()
                x = (x * x + c) % n
                y = (y * y + c) % n
                y = (y * y + c) % n
                d = gcd(abs(x - y), n)
                if 1 < d < n:
                    return d
                if d == n:
                    break
        raise PrimeSearchStopped('bounded factor search failed')

    def factor_search(self, n):
        self.budget()
        if n == 1:
            return []
        if n <= TRIAL_LIMIT:
            result, d = [], 2
            while d * d <= n:
                while n % d == 0:
                    result.append(d)
                    n //= d
                d += 1
            if n > 1:
                result.append(n)
            return result
        for p in (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37):
            if n % p == 0:
                return [p] + self.factor_search(n // p)
        if probable_prime_filter(n):
            return [n]  # This leaf still requires a recursive exact certificate.
        d = self.rho(n)
        return self.factor_search(d) + self.factor_search(n // d)

    def prove(self, n):
        key = str(n)
        if key in self.certificates:
            return True
        if n in self.failed or n < 2:
            return False
        if n <= TRIAL_LIMIT:
            if any(n % d == 0 for d in range(2, isqrt(n) + 1)):
                self.failed.add(n)
                return False
            self.certificates[key] = {'kind': 'trial', 'n': key}
            return True
        try:
            self.budget()
            if not probable_prime_filter(n):
                self.failed.add(n)
                return False
            factors = Counter(self.factor_search(n - 1))
            if prod(q ** e for q, e in factors.items()) != n - 1:
                raise PrimeSearchStopped('factor reconstruction mismatch')
            for q in factors:
                if q >= n or not self.prove(q):
                    raise PrimeSearchStopped('uncertified factor in n-1')
            for a in range(2, min(n, 258)):
                self.budget()
                if pow(a, n - 1, n) == 1 and all(gcd(pow(a, (n - 1) // q, n) - 1, n) == 1 for q in factors):
                    self.certificates[key] = {'kind': 'lucas', 'n': key, 'base': str(a),
                                              'factors': [[str(q), e] for q, e in sorted(factors.items())]}
                    return True
        except PrimeSearchStopped:
            pass
        self.failed.add(n)
        return False


def top_witness(n, end, i, prover):
    for p in range(n, n - i, -1):
        if prover.prove(p):
            return {'lower': str(n), 'upper': str(min(end, p + i - 1)),
                    'witness': {'kind': 'topPrime', 'p': str(p)}}
    return None


def divisor_witness(n, i, primes, lam, E, K):
    D = comb(n, i)
    for p in primes:
        while D % p == 0:
            D //= p
    if n ** E < K * D ** lam:
        return {'lower': str(n), 'upper': str(n), 'witness': {'kind': 'largeDivisor', 'D': str(D)}}
    return None


def save_atomic(path, data):
    temporary = path.with_name(path.name + '.tmp')
    temporary.write_text(json.dumps(data, separators=(',', ':')), encoding='utf-8')
    temporary.replace(path)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--log-certificate', required=True)
    parser.add_argument('--output', required=True)
    parser.add_argument('--max-rows', type=int, default=100000)
    parser.add_argument('--prime-budget-seconds', type=float, default=10.0)
    args = parser.parse_args()
    assert 2 ** EXPONENT_CAP > LIMIT
    source_bytes = Path(args.log_certificate).read_bytes()
    digest = hashlib.sha256(source_bytes).hexdigest().upper()
    if digest != LOG_SHA256:
        parser.error('log certificate is not the frozen verified input')
    source = json.loads(source_bytes)
    if source.get('status') != 'complete' or source.get('strict_n_bound') != str(LIMIT):
        parser.error('wrong source height')
    output = Path(args.output)
    output.parent.mkdir(parents=True, exist_ok=True)
    tables, settings = [], {}
    for i in INDICES:
        primes, t, r, s, lam, E, K = parameters(i)
        settings[i] = (primes, lam, E, K)
        bounds, high, counts = colored_candidates(i, primes)
        rows = sum(hi - lo + 1 for lo, hi in bounds)
        tables.append({'i': i, 't': t, 'r': r, 's': s, 'lambda': lam, 'degree': E,
                       'K': str(K), 'interval_counts': counts,
                       'high_bounds': [[str(a), str(b)] for a, b in high],
                       'candidate_bounds': [[str(a), str(b)] for a, b in bounds],
                       'candidate_rows': str(rows), 'witnesses': [], 'unresolved': []})
        print(f'i={i}: candidate_rows={rows} high_segments={len(high)}', file=sys.stderr)
    data = {'version': 1, 'status': 'incomplete', 'indices': list(INDICES), 'limit': str(LIMIT),
            'large_lower': LARGE_LOWER, 'M': M, 'exponent_cap': EXPONENT_CAP,
            'source_log_sha256': digest, 'algorithm': 'colored_event_sweep',
            'prime_trial_limit': TRIAL_LIMIT, 'tables': tables, 'prime_certificates': {}}
    save_atomic(output, data)
    total_rows = sum(int(table['candidate_rows']) for table in tables)
    if total_rows > args.max_rows:
        data['stop_reason'] = 'candidate row resource cap exceeded; no rows checked'
        save_atomic(output, data)
        return 1
    prover = ExactPrimeProver(max(0.0, args.prime_budget_seconds))
    for table in tables:
        i = table['i']
        primes, lam, E, K = settings[i]
        for left, right in table['candidate_bounds']:
            n, end = int(left), int(right)
            while n <= end:
                witness = top_witness(n, end, i, prover) if n < LARGE_LOWER else None
                if witness is None:
                    witness = divisor_witness(n, i, primes, lam, E, K)
                if witness is None:
                    witness = top_witness(n, end, i, prover)
                if witness is None:
                    table['unresolved'].append(str(n))
                    n += 1
                else:
                    table['witnesses'].append(witness)
                    n = int(witness['upper']) + 1
        data['prime_certificates'] = prover.certificates
        save_atomic(output, data)
        print(f'i={i}: witnesses={len(table["witnesses"])} unresolved={len(table["unresolved"])}', file=sys.stderr)
    data['status'] = 'complete' if all(not table['unresolved'] for table in tables) else 'incomplete'
    data['large_prime_lean_bridge_needed'] = sorted(int(p) for p, cert in prover.certificates.items() if cert['kind'] == 'lucas')
    save_atomic(output, data)
    return 0 if data['status'] == 'complete' else 1


if __name__ == '__main__':
    raise SystemExit(main())

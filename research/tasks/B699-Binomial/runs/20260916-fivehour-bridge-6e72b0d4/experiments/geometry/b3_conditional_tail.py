"""Sparse conditional exponent tail: no construction of 2**s or elliptic points."""
from pathlib import Path
from fractions import Fraction
import hashlib
import json
import math
import time

import numpy as np

ROOT = Path(__file__).resolve().parent
LOWER = 10
UPPER = 7125119
PRIME_CAP = 1000
PAIRS = [(1, 2, 52), (1, 7, 47), (1, 20, 34), (-1, 11, 43), (-1, 16, 38)]


def prime(q):
    return q >= 2 and all(q % d for d in range(2, math.isqrt(q)+1))


def exponents(record):
    period = record['period']
    values = []
    for residue in record['classes']:
        first = residue+max(0, (LOWER-residue+period-1)//period)*period
        values.extend(range(first, UPPER, period))
    return sorted(values)


def main():
    start = time.time()
    assert 119+3*38*250**2 == UPPER
    assert Fraction(30)-Fraction(250**2, 16) < -1230*3
    source_path = ROOT/'b3_verification.json'
    source = json.loads(source_path.read_text())
    records = {(int(e), t['h']): t for e, rows in source['survivors'].items() for t in rows}
    old_mods = {q for q, m in json.loads((ROOT/'b3_period_sieve.json').read_text())['moduli']}
    primes = [q for q in range(3, PRIME_CAP+1, 2) if prime(q) and q not in old_mods]
    arrays = {q: np.arange(q, dtype=np.int64) for q in primes}
    cache = {}
    def no_root(eps, h, q, s):
        key = eps, h, q, s % (q-1)
        if key not in cache:
            x = pow(2, s, q)
            D, E = (x-eps) % q, (x*x-2) % q
            a = arrays[q]
            values = (4*a*(a-3*D)*(a-6*D)-(h*D-9*a)*E) % q
            cache[key] = not bool(np.any(values == 0))
        return cache[key]
    witnesses = []
    unresolved = []
    summaries = []
    for eps, h, partner in PAIRS:
        ss = exponents(records[eps, h])
        assert ss == exponents(records[eps, partner])
        missing = []
        for s in ss:
            q = next((q for q in primes if no_root(eps, h, q, s)), None)
            if q is None:
                missing.append(s)
                unresolved.extend([{'epsilon': eps, 'h': hh, 's': s} for hh in (h, partner)])
            else:
                witnesses.extend([{'epsilon': eps, 'h': hh, 's': s, 'prime': q} for hh in (h, partner)])
        summaries.append({'epsilon': eps, 'h_pair': [h, partner], 's_count_per_h': len(ss),
                          'unresolved_exponents': missing})
    output = {'status': 'PASS' if not unresolved else 'PARTIAL', 'lower_s_inclusive': LOWER,
              'upper_s_exclusive': UPPER, 'prime_cap': PRIME_CAP, 'template_pairs': summaries,
              'witnesses': witnesses, 'unresolved': unresolved, 'cache_entries': len(cache),
              'max_witness_prime': max((w['prime'] for w in witnesses), default=None),
              'elapsed': time.time()-start,
              'source_period_sha256': hashlib.sha256(source_path.read_bytes()).hexdigest(),
              'conditional_contract': 'If M<250 and H<=38 M^2, then s<7125119; first-round DIST/UP30 and s<=9 are separate prerequisites',
              'scope': 'ten residual templates in the stated finite exponent interval after the proved full period; no complete b3 closure claimed here'}
    (ROOT/'b3_conditional_tail.json').write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in output.items() if k != 'witnesses'}))


if __name__ == '__main__':
    main()

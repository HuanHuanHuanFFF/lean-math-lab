"""Bounded CRT/rational-reconstruction diagnostic, not a height certificate."""
from pathlib import Path
from datetime import datetime, timezone
import json
import math
import time

import numpy as np
from boundary_compressed import run, is_prime

ROOT = Path(__file__).resolve().parent
OUT = ROOT/'crt_v1'


def reconstruct(a, modulus):
    if a == 0:
        return 0, 1
    bound = math.isqrt(modulus//2)
    r0, r1, t0, t1 = modulus, a, 0, 1
    while r1 and abs(r1) > bound:
        q = r0//r1
        r0, r1 = r1, r0-q*r1
        t0, t1 = t1, t0-q*t1
    if not r1 or t1 == 0 or abs(t1) > bound or math.gcd(r1, t1) != 1:
        return None
    if t1 < 0:
        r1, t1 = -r1, -t1
    if (r1-a*t1) % modulus:
        return None
    return r1, t1


def main():
    start = time.time()
    OUT.mkdir(exist_ok=True)
    base = np.load(ROOT/'boundary_p32749_kernel.npz')
    free = [int(v) for v in base['free']]
    residues = [int(v) for v in base['coefficients'].reshape(-1)]
    modulus = 32749
    primes = [32749]
    checks = []
    prior = [reconstruct(a, modulus) for a in residues]
    p = 1000003
    for iteration in range(16):
        assert time.time()-start < 180, 'bounded CRT screening deadline'
        while not is_prime(p):
            p += 2
        K, _, report = run(p, f'crt_v1/p{p}', fixed_free=free, compare=False)
        values = [int(v) for v in K.reshape(-1)]
        prior_count = sum(c is not None for c in prior)
        matches = sum(c is not None and c[1] % p != 0 and (c[0]-v*c[1]) % p == 0
                      for c, v in zip(prior, values))
        inv = pow(modulus % p, -1, p)
        residues = [a+modulus*((v-a) % p*inv % p) for a, v in zip(residues, values)]
        modulus *= p
        primes.append(p)
        candidates = [reconstruct(a, modulus) for a in residues]
        stable = sum(a is not None and a == b for a, b in zip(prior, candidates))
        rec = {'prime': p, 'modulus_bits': modulus.bit_length(), 'prior_decoded': prior_count,
               'prior_matches_new_prime': matches, 'stable_candidates': stable,
               'new_decoded': sum(c is not None for c in candidates), 'seconds': time.time()-start}
        checks.append(rec)
        prior = candidates
        print(json.dumps({'crt': rec}), flush=True)
        p += 2
    state = {'primes': primes, 'modulus': str(modulus), 'residues': [str(a) for a in residues],
             'free_columns': free, 'checks': checks, 'elapsed': time.time()-start,
             'scope': 'bounded reconstruction screening only; no rational coefficients accepted'}
    (OUT/'state.json').write_text(json.dumps(state, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in state.items() if k not in ('modulus', 'residues', 'checks')}
                     | {'modulus_bits': modulus.bit_length(), 'last_check': checks[-1]}))


if __name__ == '__main__':
    main()

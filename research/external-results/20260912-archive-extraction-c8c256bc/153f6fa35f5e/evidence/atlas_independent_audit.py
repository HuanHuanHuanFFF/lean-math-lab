"""Independent audit of selected EFA #699 certificate assumptions, not a new search.

Source: Kevin Russell, techno-optimist/erdos-frontier-atlas,
0394e3d3b249439ffabec7d96a3311aa441651b8, certificates/erdos-699.
Run: python3 atlas_independent_audit.py /path/to/certificates/erdos-699
Requires NumPy only for the independent prime-padding check.
"""
import hashlib
import json
import math
from pathlib import Path
import sys
import numpy as np

source = Path(sys.argv[1])
receipt = json.loads((source / 'RESULT.json').read_text())
hashes = {
    name: hashlib.sha256((source / name).read_bytes()).hexdigest() == expected
    for name, expected in receipt['artifacts'].items()
}
assert all(hashes.values()), hashes

# Recompute the mathematical input bound needed by the sweep's fixed padding.
# This enumerates primes only; it does not rerun the 90-million-row campaign.
limit = 100_000_000
sieve = np.ones(limit // 2, dtype=np.bool_)
sieve[0] = False
for p in range(3, math.isqrt(limit) + 1, 2):
    if sieve[p // 2]:
        sieve[p * p // 2::p] = False
primes = 2 * np.flatnonzero(sieve) + 1
gaps = np.diff(primes)
index = int(gaps.argmax())
max_distance = int(max(gaps.max() - 1, limit - 1 - primes[-1]))
assert max_distance < 700

triples = []
for n, i, j in [(16, 2, 6), (28, 3, 14)]:
    ci, cj = math.comb(n, i), math.comb(n, j)
    triples.append(dict(n=n, i=i, j=j, choose_i=ci, choose_j=cj,
                        gcd=math.gcd(ci, cj)))
assert math.gcd(math.comb(16, 2), math.comb(16, 6)) == 8
assert math.comb(10, 2) % 3 == 0 and 3 <= 10 - 2
assert math.comb(28, 3) % 7 == 0 and math.comb(28, 14) % 7 != 0

print(json.dumps(dict(
    artifact_hashes_match=hashes,
    primes_below_limit=int(len(primes) + 1),
    max_prime_gap=int(gaps[index]),
    first_max_gap_pair=[int(primes[index]), int(primes[index + 1])],
    max_row_distance=max_distance,
    padding_700_safe_for_claimed_range=True,
    exact_boundary_examples=triples,
    full_campaign_replayed=False,
), indent=2))

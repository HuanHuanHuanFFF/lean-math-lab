"""Bounded neighboring-coefficient recurrence test in the boundary basis."""
from pathlib import Path
import hashlib
import json
import os
import time

os.environ.setdefault('OPENBLAS_NUM_THREADS', '2')
import numpy as np
from projective_kernel import echelon, nullspace_from_echelon

ROOT = Path(__file__).resolve().parent
P = 32749


def main():
    start = time.time()
    path = ROOT/'boundary_p32749_kernel.npz'
    raw = np.load(path)
    labels = [tuple(int(z) for z in row) for row in raw['basis']]
    values = {label: [int(z) for z in v] for label, v in zip(labels, raw['coefficients'])}
    monomials = [(i, j) for degree in range(5) for i in range(degree+1) for j in [degree-i]]
    bands = [(0, 33), (34, 40), (41, 48), (49, 60)]
    tests = []
    for lower, upper in bands:
        for name, shift, epsilons in [('a', (1, 0, 0), (0, 1)),
                                     ('b', (0, 0, 1), (0, 1)),
                                     ('diagonal', (1, 0, 1), (0, 1)),
                                     ('epsilon', (0, 1, 0), (0,))]:
            for eps in epsilons:
                pairs = []
                for label in labels:
                    a, e, b = label
                    target = tuple(x+y for x, y in zip(label, shift))
                    if e != eps or not lower <= a <= upper or target not in values or not lower <= target[0] <= upper:
                        continue
                    pairs.append((label, target))
                if len(pairs) < 60:
                    continue
                M = np.zeros((len(pairs), 60), dtype=np.float64)
                for row, (label, target) in enumerate(pairs):
                    a, e, b = label
                    v = [pow(a, i, P)*pow(b, j, P) % P for i, j in monomials]
                    coeff = values[target]+[-c for c in values[label]]
                    M[row] = [(c*m) % P for c in coeff for m in v]
                pivots, progress = echelon(M, P, block=16)
                K, free = nullspace_from_echelon(M, pivots, P)
                tests.append({'a_band': [lower, upper], 'shift': name, 'epsilon': eps,
                              'rows': len(pairs), 'columns': 60, 'rank': len(pivots),
                              'nullity': len(free), 'kernel': K.astype(np.uint16).tolist() if free else []})
    out = {'p': P, 'coefficient_polynomial_total_degree': 4,
           'equation': 'P0(a,b)c0(next)+P1(a,b)c1(next)-Q0(a,b)c0(here)-Q1(a,b)c1(here)=0',
           'tests': tests, 'elapsed': time.time()-start,
           'source_kernel_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
           'scope': 'full rank excludes this neighboring rational recurrence class and its rank-one combinations over Q; nonzero kernels need further proportionality and characteristic-zero checks'}
    (ROOT/'coefficient_recurrence.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'p': P, 'elapsed': out['elapsed'],
                      'tests': [{k: v for k, v in t.items() if k != 'kernel'} for t in tests]}))


if __name__ == '__main__':
    main()

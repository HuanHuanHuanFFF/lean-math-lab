"""Exact local leading-form diagnostic for the fixed modular D246 pencil."""
from pathlib import Path
import json
import math
import numpy as np
from verify_d246_integer import shift_matrix, extended_gcd, trim, P

ROOT = Path(__file__).resolve().parent


def main():
    raw = np.load(ROOT/'projective_d246_kernel.npz')
    C = []
    for k in range(2):
        H = np.zeros((122, 122), dtype=np.int64)
        for z, (a, b) in zip(raw['coefficients'][:, k], raw['exponents']):
            H[a, b] = int(z)
            H[b, a] = int(z)
        C.append(H)
    results = []
    for r, w in ((4, 49), (5, 41), (6, 34)):
        for x in range(r+1):
            y = r-x
            m = w-int(x in (0, 1))-int(y in (0, 1))
            Tx = shift_matrix(x*pow(r-1, -1, P) % P)
            Ty = shift_matrix(y*pow(r-1, -1, P) % P)
            jets = [((Tx@H) % P@Ty.T) % P for H in C]
            f = [int(jets[0][a, m-a]) for a in range(m+1)]
            g = [int(jets[1][a, m-a]) for a in range(m+1)]
            common_infinity = m-max(len(trim(f[:])), len(trim(g[:])))+1
            gcd, _, _ = extended_gcd(trim(f[:]), trim(g[:]))
            results.append({'source': [x, y], 'required_multiplicity': m,
                            'leading_gcd_degree': len(gcd)-1+common_infinity,
                            'affine_gcd_degree': len(gcd)-1, 'common_infinity_order': common_infinity})
    f = [int(C[0][121, b]) for b in range(122)]
    g = [int(C[1][121, b]) for b in range(122)]
    gcd, _, _ = extended_gcd(trim(f), trim(g))
    results.append({'source': 'both r1 points at infinity', 'required_multiplicity': 121,
                    'leading_gcd_degree': len(gcd)-1})
    out = {'p': P, 'results': results,
           'remaining_intersection_bound_P1xP1': 2*121**2-(4*48**2+49**2+4*40**2+2*41**2+4*33**2+3*34**2),
           'scope': 'local modular diagnostic only; nonzero common tangents are not lifted branches'}
    (ROOT/'d246_tangent_probe.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps(out))


if __name__ == '__main__':
    main()

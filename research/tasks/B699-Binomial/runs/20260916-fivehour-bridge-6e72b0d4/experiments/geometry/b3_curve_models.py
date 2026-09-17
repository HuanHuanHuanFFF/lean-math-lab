"""Exact universal Weierstrass map for the remaining b=3,m=1 cubics."""
from pathlib import Path
from fractions import Fraction
import json
import sympy as sp

ROOT = Path(__file__).resolve().parent


def main():
    d, w, k = sp.symbols('D W k')
    A = 8*k*(729-k*k)
    B = 12*k*k-1458
    C = -48*k*k*(729-k*k)
    E = 64*k*k*(729-k*k)**2
    ell = 9*w+2*k*d
    for eps in (-1, 1):
        x, a, h = d+eps, (w+6*d)/2, 27-k
        P = 4*a*(a-3*d)*(a-6*d)-(h*d-9*a)*(x*x-2)
        G = w**3-27*w*d*d+2*k*d**3+18*eps*d*w+4*eps*k*d*d-9*w-2*k*d
        assert sp.expand(2*P-G) == 0
        Xn, Yn = A*d, 27*A*(1-eps*d)
        identity = Yn*Yn*ell-Xn**3-B*Xn*Xn*ell-C*Xn*ell*ell-E*ell**3
        assert sp.expand(identity+729*A*A*G) == 0
    T = sp.symbols('T')
    shift = 486-4*k*k
    short_a4 = -36*(8*k*k+243)
    short_a6 = 32*k**4+31104*k*k-314928
    assert sp.expand(((9*T+shift)**3+B*(9*T+shift)**2+C*(9*T+shift)+E)/729-
                     (T**3+short_a4*T+short_a6)) == 0
    source = json.loads((ROOT/'b3_cover_certificate.json').read_text())
    models = []
    for kk in (2, 7, 11, 16, 20, 25):
        aa = int(A.subs(k, kk))
        a2, a4, a6 = [int(f.subs(k, kk)) for f in (B, C, E)]
        sa4, sa6 = [int(f.subs(k, kk)) for f in (short_a4, short_a6)]
        discriminant = -16*(4*sa4**3+27*sa6**2)
        assert discriminant != 0
        points = set()
        for seed in source['small_rational_points']:
            signed_k = 27-seed['h']
            if abs(signed_k) != kk:
                continue
            eps = seed['epsilon']
            x, a = Fraction(seed['x']), Fraction(seed['a'])
            D, W = x-eps, 2*a-6*(x-eps)
            L = 9*W+2*signed_k*D
            factor = 8*signed_k*(729-signed_k*signed_k)
            assert L != 0
            X, Y = factor*D/L, 27*factor*(1-eps*D)/L
            assert Y*Y == X**3+a2*X*X+a4*X+a6
            t, v = (X-(486-4*kk*kk))/9, Y/27
            assert v*v == t**3+sa4*t+sa6
            points.add((str(t), str(v)))
        models.append({'k_abs': kk, 'h_pair': [27-kk, 27+kk],
                       'long_coefficients': [0, a2, 0, a4, a6],
                       'short_coefficients': [0, 0, 0, sa4, sa6],
                       'discriminant': discriminant, 'rational_seed_points_on_short_model': sorted(points)})
    out = {'verified': True, 'models': models,
           'forward': 'L=9W+2kD; A=8k(729-k^2); X=A D/L; Y=27A(1-epsilon D)/L',
           'inverse': 'Delta=Y+27 epsilon X; D=27X/Delta; W=3(A-2kX)/Delta; x=(54X+epsilon Y)/Delta',
           'exception': 'L=0 on the nonsingular cubic forces D=W=0, hence x=epsilon, outside even positive-power inputs',
           'short_change': 'X=9t+(486-4k^2),Y=27v',
           'scope': 'rational isomorphism and seed points; no Mordell-Weil completeness or height bound for the five new curves'}
    (ROOT/'b3_curve_models.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'verified': True, 'models': [{'k': m['k_abs'], 'short': m['short_coefficients'],
                 'points': m['rational_seed_points_on_short_model']} for m in models]}))


if __name__ == '__main__':
    main()

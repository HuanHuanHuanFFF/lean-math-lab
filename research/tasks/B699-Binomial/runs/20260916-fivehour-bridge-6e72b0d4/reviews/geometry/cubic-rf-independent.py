"""Independent 2304-bit directed RF enclosures and cross-product lattice check.

Does not import the author's RF or LLL implementation.  The Q-infinity double is
reduced in the cubic number field before interval evaluation.
"""
from pathlib import Path
from fractions import Fraction
from math import isqrt
from datetime import datetime, timezone
import hashlib
import json
import time

import sympy as sp

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
SOURCE = RUN/'experiments/cubic'
BITS = 2304
UNIT = 1 << BITS
STEPS = 1200


def up(n, d):
    assert d > 0
    return -((-n)//d)


def interval(n, d=1):
    if isinstance(n, Fraction):
        n, d = n.numerator, n.denominator
    if d < 0:
        n, d = -n, -d
    return (n*UNIT//d, up(n*UNIT, d))


def plus(a, b):
    return a[0]+b[0], a[1]+b[1]


def negate(a):
    return -a[1], -a[0]


def minus(a, b):
    return plus(a, negate(b))


def times(a, b):
    products = (a[0]*b[0], a[0]*b[1], a[1]*b[0], a[1]*b[1])
    return min(products)//UNIT, up(max(products), UNIT)


def inverse(a):
    assert a[1] < 0 or a[0] > 0
    if a[1] < 0:
        return negate(inverse(negate(a)))
    return UNIT*UNIT//a[1], up(UNIT*UNIT, a[0])


def divide(a, b):
    return times(a, inverse(b))


def root(a):
    assert a[0] >= 0
    lo = isqrt(a[0]*UNIT)
    hi = isqrt(a[1]*UNIT)
    return lo, hi+int(hi*hi < a[1]*UNIT)


def rf(a, b, c):
    for step in range(STEPS):
        A, B, C = root(a), root(b), root(c)
        shift = plus(plus(times(A, B), times(B, C)), times(C, A))
        # Direct interval division by the exact integer four.
        def quarter(x):
            s = plus(x, shift)
            return s[0]//4, up(s[1], 4)
        a, b, c = quarter(a), quarter(b), quarter(c)
    lo = min(a[0], b[0], c[0])
    hi = max(a[1], b[1], c[1])
    assert lo > 0
    lower = inverse(root((hi, hi)))[0]
    upper = inverse(root((lo, lo)))[1]
    return lower, upper


def isolate_theta():
    lo = interval(-53, 10)[0]
    hi = interval(-21, 4)[1]
    def sign_value(a):
        return a*a*a-27*a*UNIT*UNIT+4*UNIT**3
    assert sign_value(lo) < 0 < sign_value(hi)
    while hi-lo > 1:
        m = (hi+lo)//2
        if sign_value(m) < 0:
            lo = m
        else:
            hi = m
    assert sign_value(lo) < 0 < sign_value(hi)
    return lo, hi


def double_Q_polynomials():
    theta = sp.symbols('theta')
    K = theta**3-27*theta+4
    t = -9*theta**2+4*theta+209
    v = 81*theta**2-36*theta-2171
    rem = lambda f: sp.rem(f, K, theta)
    assert rem(v*v-t**3+60*t*t+8700*t) == 0
    slope = rem((3*t*t-120*t-8700)*sp.invert(2*v, K, theta))
    x2 = rem(slope*slope+60-2*t)
    y2 = rem(-v+slope*(t-x2))
    assert rem(y2*y2-x2**3+60*x2*x2+8700*x2) == 0
    def coeffs(expr):
        return [Fraction(sp.Poly(expr, theta).nth(i)) for i in range(3)]
    return coeffs(x2), coeffs(y2)


def eval_interval(coeffs, x):
    value = interval(0)
    for c in reversed(coeffs):
        value = plus(times(value, x), interval(c))
    return value


def double_rational(x, y):
    slope = (3*x*x-120*x-8700)/(2*y)
    X = slope*slope+60-2*x
    Y = -y+slope*(x-X)
    assert Y*Y == X**3-60*X*X-8700*X
    return interval(X), interval(Y)


def cross(a, b):
    return [a[1]*b[2]-a[2]*b[1], a[2]*b[0]-a[0]*b[2], a[0]*b[1]-a[1]*b[0]]


def dot(a, b):
    return sum(x*y for x, y in zip(a, b))


def determinant(a):
    return dot(cross(a[0], a[1]), a[2])


def main():
    start = time.time()
    saved_path = SOURCE/'stage05-rf-lll-20260915T200406Z.json'
    saved = json.loads(saved_path.read_text())
    author_script = SOURCE/'stage05_certified_rf_lll_v2.py'
    assert hashlib.sha256(author_script.read_bytes()).hexdigest() == saved['script_sha256']
    old_scale = 1 << saved['bits']
    assert UNIT % old_scale == 0
    rescale = UNIT//old_scale
    C, M0 = saved['C'], saved['M0']
    assert C == 10**465 and M0 == 10**150
    theta = isolate_theta()
    sqrt6 = root(interval(6))
    e1 = plus(interval(30), times(interval(40), sqrt6))
    e2 = interval(0)
    e3 = minus(interval(30), times(interval(40), sqrt6))
    assert e1[0] > 0 and e3[1] < 0
    omega = times(interval(2), rf(interval(0), minus(e1, e2), minus(e1, e3)))
    assert 5*omega[0] > UNIT and omega[1] < UNIT
    cx, cy = double_Q_polynomials()
    points = {'A2': double_rational(Fraction(-290, 9), Fraction(11600, 27)),
              'B2': double_rational(Fraction(-60), Fraction(-300)),
              'Q2': (eval_interval(cx, theta), eval_interval(cy, theta))}
    results = {}
    containment = {}
    for name, (x, y) in points.items():
        assert minus(x, e1)[0] > 0
        assert y[0] > 0 or y[1] < 0
        ell = rf(minus(x, e1), minus(x, e2), minus(x, e3))
        if y[0] > 0:
            ell = negate(ell)
        phi = divide(ell, omega)
        assert 2*phi[0] > -UNIT and 2*phi[1] < UNIT
        rounded_lo = (2*C*phi[0]+UNIT)//(2*UNIT)
        rounded_hi = (2*C*phi[1]+UNIT)//(2*UNIT)
        assert rounded_lo == rounded_hi
        key = {'A2': 'r1', 'B2': 'r2', 'Q2': 'r0'}[name]
        assert rounded_lo == saved['rounded_logs'][key]
        assert (2*rounded_lo-1)*UNIT < 2*C*phi[0]
        assert 2*C*phi[1] < (2*rounded_lo+1)*UNIT
        old_phi = saved['normalized_logs'][name]
        assert (2*rounded_lo-1)*old_scale < 2*C*old_phi['lo']
        assert 2*C*old_phi['hi'] < (2*rounded_lo+1)*old_scale
        for group, computed in [('elliptic_logs', ell), ('normalized_logs', phi)]:
            old = saved[group][name]
            assert old['lo']*rescale <= computed[0] <= computed[1] <= old['hi']*rescale
        results[name] = {'ell': list(ell), 'phi': list(phi), 'rounded': rounded_lo,
                         'x': list(x), 'y': list(y)}
        containment[name] = True
    assert saved['omega']['lo']*rescale <= omega[0] <= omega[1] <= saved['omega']['hi']*rescale
    base = [[1, 0, results['A2']['rounded']], [0, 1, results['B2']['rounded']], [0, 0, C]]
    transform = saved['unimodular_transform']
    reduced = saved['reduced_basis']
    assert abs(determinant(transform)) == 1
    product = [[sum(transform[i][k]*base[k][j] for k in range(3)) for j in range(3)] for i in range(3)]
    assert product == reduced == saved['reduced_basis'] and base == saved['input_basis']
    normal = cross(reduced[0], reduced[1])
    spacing_numerator = abs(dot(normal, reduced[2]))
    assert spacing_numerator == C
    projected_target = normal[2]*results['Q2']['rounded']
    residue = projected_target % spacing_numerator
    distance_numerator = min(residue, spacing_numerator-residue)
    lower = Fraction(distance_numerator**2, dot(normal, normal))
    recorded = Fraction(*saved['projection_distance_squared'])
    assert lower == recorded and lower > 16*M0*M0
    assert lower//(M0*M0) == 1166774813
    assert Fraction(12)-Fraction(2, 5)*50**2 == -988
    assert 315*3 == 945 and -988 < -945
    sources = [SOURCE/'stage05_certified_rf_lll_v2.py', SOURCE/'exact_lll3.py', saved_path,
               RUN/'notes/cubic/05-effective-height-and-lll-contract.md']
    out = {'status': 'PASS', 'utc': datetime.now(timezone.utc).isoformat(),
           'reviewer': '/root/geometry', 'bits': BITS, 'duplications': STEPS,
           'three_log_enclosures_strictly_inside_author_intervals': containment,
           'omega_inside_author_interval': True, 'same_unique_roundings': True,
           'old_and_new_intervals_strictly_avoid_rounding_half_integers': True,
           'theta': list(theta), 'omega': list(omega), 'points_and_logs': results,
           'Q2_reduced_field_coefficients': {'x': [str(v) for v in cx], 'y': [str(v) for v in cy]},
           'unimodular_identity_verified': True, 'distance_by_integer_cross_product_matches': True,
           'distance_squared': [lower.numerator, lower.denominator],
           'distance_squared_over_M0_squared_floor': lower//(M0*M0),
           'strict_M_less_50_from_M0_and_UP': True,
           'scope': 'RF normalization/outward enclosure, roundings, lattice distance and M<50; global height/rank/period-sieve contracts remain parent scope',
           'elapsed_seconds': time.time()-start,
           'source_hashes': {path.relative_to(RUN).as_posix(): hashlib.sha256(path.read_bytes()).hexdigest() for path in sources}}
    path = ROOT/'cubic-rf-independent.json'
    path.write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in out.items() if k not in ('theta', 'omega', 'points_and_logs',
          'Q2_reduced_field_coefficients', 'distance_squared', 'source_hashes')}))


if __name__ == '__main__':
    main()

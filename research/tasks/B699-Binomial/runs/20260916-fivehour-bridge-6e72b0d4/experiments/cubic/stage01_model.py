"""Exact symbolic reconstruction of the NC3 cubic models; no point completeness claim."""
from __future__ import annotations

import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

import sympy as sp


def main() -> None:
    x, u, z, h, D, Z, Y, t, v = sp.symbols('x u z h D Z Y t v')
    F = 4*u*(25*u-3*(x-z))*(25*u-6*(x-z)) - (h*(x-z)-9*u)*(x*x-2*z*z)
    transformed = sp.expand(729*F.subs({x: D+z, u: (h*D-Z)/9}).subs(z, Y+D))
    claimed = (4*(h*D-Z)*((25*h-27)*D-25*Z)*((25*h-54)*D-25*Z)
               - 1458*Z*D*D + 729*Z*Y*Y)
    assert sp.expand(transformed-claimed) == 0
    rhs = sp.Poly(sp.expand(1458*D*D - 4*(h*D-1)*((25*h-27)*D-25)
                           *((25*h-54)*D-25)), D)
    models = {}
    for hh in (1, 2):
        a, b, c, e = [int(co.subs(h, hh)) for co in rhs.all_coeffs()]
        short_a = sp.Rational(a*c, 1)-sp.Rational(b*b, 3)
        short_b = sp.Rational(2*b**3, 27)-sp.Rational(b*a*c, 3)+a*a*e
        scaled_a = short_a/81
        scaled_b = short_b/729
        f = F.subs(h, hh)
        affine = sp.groebner([f.subs(z, 1), sp.diff(f, x).subs(z, 1),
                             sp.diff(f, u).subs(z, 1)], x, u)
        at_infinity = sp.groebner([g.subs({x: 1, z: 0}) for g in
                                  (f, sp.diff(f, x), sp.diff(f, u), sp.diff(f, z))], u)
        assert list(affine) == [1]
        assert list(at_infinity) == [1]
        assert f.subs({x: 0, u: 1, z: 0}) != 0
        models[str(hh)] = {
            'affine_chart_singular_ideal': [str(a) for a in affine],
            'infinity_x_nonzero_singular_ideal': [str(a) for a in at_infinity],
            'infinity_x_zero_not_on_curve': int(f.subs({x: 0, u: 1, z: 0})),
            'flex_tangent_substitution': str(sp.factor(f.subs(u, hh*(x-z)/9))),
            'cubic_rhs_coefficients': [a, b, c, e],
            'scaled_short_weierstrass_A_B': [int(scaled_a), int(scaled_b)],
            'short_discriminant': int(-16*(4*scaled_a**3+27*scaled_b**2)),
            'mod9_roots_for_x_2_5': {
                str(xx): [uu for uu in range(9) if int(f.subs({x:xx,u:uu,z:1})) % 9 == 0]
                for xx in (2,5)
            },
        }
    # h=1, two-torsion shifted model: v^2=t^3-60t^2-8700t.
    Z1 = x-1-9*u
    map_t = 58*(5*u-(x-1))/Z1
    map_v = 232*(x-2)/Z1
    E = v*v-t**3+60*t*t+8700*t
    pullback = sp.factor(E.subs({t:map_t,v:map_v}))
    assert sp.factor(pullback / F.subs({h:1,z:1})) == sp.Rational(53824,1)/Z1**3
    inverse_den = v+9*t+290
    inverse_x = (v+18*t+580)/inverse_den
    inverse_u = (t+58)/inverse_den
    assert sp.factor(inverse_x.subs({t:map_t,v:map_v})-x) == 0
    assert sp.factor(inverse_u.subs({t:map_t,v:map_v})-u) == 0
    result = {
        'status': 'PASS', 'utc': datetime.now(timezone.utc).isoformat(),
        'script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'sympy_version': sp.__version__,
        'transform_identity_zero': True, 'models': models,
        'h1_map': {'t': str(map_t), 'v': str(map_v),
                   'x_inverse': str(inverse_x), 'u_inverse': str(inverse_u),
                   'pullback_factor': '53824/(x-1-9u)^3',
                   'two_sided_rational_inverse_verified': True},
        'completeness_claim': 'none; rational map does not preserve integrality automatically',
    }
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    path = Path(__file__).with_name(f'stage01-model-{stamp}.json')
    with path.open('x',encoding='utf-8',newline='\n') as output:
        json.dump(result, output, ensure_ascii=False, indent=2)
        output.write('\n')
    print(json.dumps(result, ensure_ascii=False, separators=(',',':')))
    print('saved:',path.name)


if __name__ == '__main__':
    main()

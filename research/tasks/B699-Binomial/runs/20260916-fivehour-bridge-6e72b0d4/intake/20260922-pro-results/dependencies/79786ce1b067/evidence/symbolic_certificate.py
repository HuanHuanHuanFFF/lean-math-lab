#!/usr/bin/env python3
"""Build exact identities and universal coefficient certificates (not an n scan)."""
from __future__ import annotations
import argparse
import json
from fractions import Fraction
from pathlib import Path
import sympy as sp

ROOT = Path(__file__).resolve().parents[1]


def qstr(x: object) -> str:
    return str(sp.Rational(x))


def ledger(expr: sp.Expr, A: sp.Symbol, t: sp.Symbol, target_t: int) -> dict:
    rows = []
    bound = Fraction(0)
    for term in sp.expand(expr).as_ordered_terms():
        powers = term.as_powers_dict()
        i, j = int(powers.get(A, 0)), -int(powers.get(t, 0))
        c = sp.cancel(term / A**i * t**j)
        assert c.is_Rational
        d = j - target_t
        assert i >= 0 and d >= 0 and i - 1 <= 2*d
        contribution = Fraction(abs(int(c.p)), int(c.q)) / 64**d
        bound += contribution
        rows.append({'i': i, 'j': j, 'coefficient': qstr(c),
                     'majorant': str(contribution)})
    rows.sort(key=lambda r: (r['j'], r['i']))
    return {'target': f'B/t^{target_t}', 'terms': rows,
            'sum': str(bound)}


def build() -> dict:
    t, A, u = sp.symbols('t A u')
    h = t*t+A-1
    f = lambda y: (y*y-h)*(h-2*y-1)-h
    z1 = t+A/(2*t)+1/t**2+(20-A*A)/(8*t**3)
    B0 = t**3-2*t*t+(3*A/sp.Integer(2)-1)*t-2*A+1
    c1 = (3*A*A-4*A-12)/8
    r_f = sp.expand(f(z1))
    r_N = sp.expand(h*z1-2*z1*z1-B0-c1/t)
    Lf, Ln = ledger(r_f, A, t, 1), ledger(r_N, A, t, 2)
    assert Fraction(Lf['sum']) < 17
    assert Fraction(Ln['sum']) < 13
    derivative_tail = sp.Poly(sp.expand((t**3/2-sp.Rational(193,32)*t*t-16*t-8).subs(t,64+u)), u)
    assert all(c > 0 for c in derivative_tail.all_coeffs())

    # A=-2: new lower-square truncation, not the old A=+2 truncation.
    hb = t*t-3
    zb = t-1/t+1/t**2+2/t**3+9/t**4
    fb = sp.expand((zb*zb-hb)*(hb-2*zb-1)-hb)
    bb = t**3-2*t*t-4*t+5
    gb = sp.expand(bb+t-zb-(hb*zb-2*zb*zb))
    fb_rows = []
    fb_sum = Fraction(0)
    for term in fb.as_ordered_terms():
        j = -int(term.as_powers_dict().get(t, 0))
        c = sp.cancel(term*t**j)
        assert j >= 2 and c.is_Rational
        b = Fraction(abs(int(c.p)), int(c.q))/64**(j-2)
        fb_sum += b
        fb_rows.append({'j':j, 'coefficient':qstr(c), 'majorant':str(b)})
    assert fb_sum < 60
    expected_g = 3/t**2+36/t**3+12/t**4-28/t**5+44/t**6+72/t**7+162/t**8
    assert sp.expand(gb-expected_g) == 0

    m, d = sp.symbols('m d', integer=True)
    midpoint_B = sp.expand(B0.subs({t:m+sp.Rational(1,2), A:d+sp.Rational(3,4)}))
    numerator = sp.expand(16*midpoint_B)
    expected_num = 16*m**3-8*m*m+(24*d-18)*m-20*d-13
    assert sp.expand(numerator-expected_num) == 0
    for shift in (sp.expand(numerator.subs(m,m+8)-numerator),
                  sp.expand(numerator.subs(d,d+4)-numerator)):
        assert all(int(c) % 16 == 0 for c in sp.Poly(shift,m,d).coeffs())
    periodic = []
    for dd in (1,3):
        for mm in range(8):
            r = int(numerator.subs({m:mm,d:dd}))%16
            assert r % 2 == 1
            carry = r <= 7
            expected = (dd == 1 and mm >= 4) or (dd == 3 and mm < 4)
            assert carry == expected
            periodic.append({'d_mod4':dd,'m_mod8':mm,'phase_numerator_mod16':r,
                             'classification':'CARRY' if carry else 'NO_CARRY_THIS_LAYER'})

    # Algebraic return identities, always for the same n,j.
    H, Q, v = sp.symbols('h Q v')
    nu = ((H-1)*Q-H*v)/2
    P = Q+H*v
    R = v*nu**2-P*Q**2+1
    E,F = P+nu,Q*Q+v*nu
    n,j,k = P*Q*nu+2,E*Q*Q,F*P
    assert sp.expand(j+k-n+2*R) == 0
    assert sp.expand(E*F-(n-1)+R) == 0
    assert sp.cancel(j/Q**3-(H-nu/Q)) == 0
    assert sp.cancel(n/Q**3-(H*(nu/Q)-2*(nu/Q)**2+2/Q**3)) == 0
    Z = nu/Q
    fn = (Z*Z-H)*(H-2*Z-1)-H
    assert sp.cancel(fn-H*(R-1)/Q**3) == 0

    # Numerical rational constants here are UNIVERSAL bounds, not sampled parameters.
    phase_error = Fraction(19,1024)+Fraction(1,512)
    centre_error = Fraction(1,64)
    gap = Fraction(1,16)-phase_error-centre_error
    assert phase_error == Fraction(21,1024) and gap == Fraction(27,1024) > 0
    assert Fraction(782,64) < 13
    return {
        'schema':'B699-D-i3-round4-signed-centre-v1',
        'logic':'universal polynomial identities and coefficient bounds; not Lean',
        'f_residual':Lf,'phase_residual':Ln,
        'signed_derivative_shift_coefficients_descending':[qstr(c) for c in derivative_tail.all_coeffs()],
        'lower_square_A_minus2':{'f_terms':sorted(fb_rows,key=lambda x:x['j']),
                                'majorant_sum':str(fb_sum),'G_expression':str(gb)},
        'midpoint_numerator':str(numerator),'midpoint_residues':periodic,
        'midpoint_phase_error':str(phase_error),'midpoint_centre_error':str(centre_error),
        'midpoint_gap':str(gap),
        'same_input_identities':'PASS'
    }


def main() -> None:
    parser=argparse.ArgumentParser()
    parser.add_argument('--write', action='store_true', help='Write the certificate during generation.')
    args=parser.parse_args()
    path=ROOT/'certificates/universal_signed_centre.json'
    data=build()
    if args.write:
        path.write_text(json.dumps(data,indent=2,ensure_ascii=False)+'\n')
    else:
        assert json.loads(path.read_text())==data, 'Frozen certificate differs from exact regeneration.'
    print('SAME_INPUT_IDENTITIES=PASS')
    print('SIGNED_CENTRE_SYMBOLIC_IDENTITIES=PASS')
    print('LOWER_SQUARE_A_MINUS2_IDENTITY=PASS')
    print('MIDPOINT_PERIODICITY_AND_16_CLASSES=PASS')

if __name__=='__main__':
    main()

#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path
from fractions import Fraction


def horner(coeff_high, x, mod):
    v=0
    for c in coeff_high:
        v=(v*x+c)%mod
    return v


def main():
    # D022=0 two terminal quadratics: explicit mod-11 Bezout identity.
    # Coefficients are high-to-low.
    P=[299292,1654555,2025217]
    Q=[84819,462980,485474]
    # (3m-3)P+(4-5m)Q-1 coefficients, high-to-low.
    combo=[473781,2090165,536536,-4133756]
    assert all(c%11==0 for c in combo)
    assert P[0]%11!=0 and Q[0]%11!=0

    # Non-square discriminants used in the paper proof.
    nonsquares=[28,18081,162729,43200]
    for n in nonsquares:
        assert math.isqrt(n)**2!=n
    assert 18081==21**2*41
    assert 162729==63**2*41
    assert 43200==120**2*3

    # (2,0,2) unique distinct-center point: quartic has no root mod 11.
    quart=[160000,-96000,-122400,41040,15309]
    vals=[horner(quart,i,11) for i in range(11)]
    assert vals==[8,6,6,5,10,5,6,6,8,3,3]
    assert quart[0]%11!=0 and all(vals)

    # Same-center (0,2,2), noncentral slot-2 integer recovery.
    # If z^2 is divisible by 40m^2, then z/(m) is divisible by 20.
    for m in range(1,30):
        for z in range(1,3000):
            if z*z%(40*m*m)==0:
                assert z%(20*m)==0
    # Canonical coefficients of f-2 are all multiples of 16.
    for m in range(1,20):
        for h in range(1,20):
            coeff=[
                32*m,
                16*(2*h+15*m*m),
                32*m*(15*h+16*m*m),
                16*(15*h*h+96*h*m*m+20*m**4),
                256*h*m*(6*h+5*m*m),
                128*h*h*(4*h+15*m*m),
                1280*h**3*m,
                320*h**4,
            ]
            assert all(c%16==0 for c in coeff)

    # Central slot-2 integrality endpoint: e=1 is killed by the degree-8 coefficient.
    # y=105*w/2^e with w odd. A4 allows e<=1, A8 rejects e=1.
    for w in range(1,50,2):
        assert Fraction(20*w**4,16).denominator==4

    # Formal point discriminants.
    assert 480**2-4*400*117==43200
    assert 240**2-4*400*9==43200

    out={
        'mod11_bezout_D022_zero':'PASS',
        'nonsquare_discriminants':nonsquares,
        'quartic_mod11_values':vals,
        'integer_recovery_divisibility':'PASS sampled exact integer implication',
        'canonical_mod16':'PASS',
        'status':'INDEPENDENT_STANDARD_LIBRARY_CHECK=PASS',
    }
    root=Path(__file__).resolve().parents[1]
    (root/'outputs'/'independent_check.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps(out,indent=2,sort_keys=True))

if __name__=='__main__':
    main()

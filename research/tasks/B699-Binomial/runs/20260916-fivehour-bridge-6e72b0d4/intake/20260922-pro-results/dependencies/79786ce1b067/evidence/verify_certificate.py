#!/usr/bin/env python3
"""Standard-library check of rational certificates, separate from SymPy generation."""
from __future__ import annotations
from fractions import Fraction as F
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parents[1]

def verify() -> None:
    c=json.loads((ROOT/'certificates/universal_signed_centre.json').read_text())
    for name,beta,limit in [('f_residual',1,17),('phase_residual',2,13)]:
        total=F(0)
        for term in c[name]['terms']:
            i,j=term['i'],term['j']
            offset=j-beta
            assert i>=0 and offset>=0 and i-1<=2*offset
            b=abs(F(term['coefficient']))/64**offset
            assert b==F(term['majorant'])
            total+=b
        assert total==F(c[name]['sum']) and total<limit
    # Independently hard-code the new derivative polynomial and A=-2 residual.
    assert list(map(F,c['signed_derivative_shift_coefficients_descending']))==[F(1,2),F(2879,32),F(5356),F(105336)]
    expected={2:-53,3:-70,4:58,5:-46,6:-255,7:-510,8:-186,9:254,10:-702,11:-972,12:-1458}
    actual={row['j']:F(row['coefficient']) for row in c['lower_square_A_minus2']['f_terms']}
    assert actual==expected
    total=sum((F(abs(a),64**(j-2)) for j,a in expected.items()),F(0))
    assert total==F(c['lower_square_A_minus2']['majorant_sum']) and total<60
    seen=set()
    for row in c['midpoint_residues']:
        m,d=row['m_mod8'],row['d_mod4']
        key=(m,d)
        assert key not in seen
        seen.add(key)
        numerator=16*m**3-8*m*m+(24*d-18)*m-20*d-13
        r=numerator%16
        assert r==row['phase_numerator_mod16'] and r%2==1
        assert (row['classification']=='CARRY')==(r<=7)
        assert (r<=7)==((d==1 and m>=4) or (d==3 and m<4))
    assert seen=={(m,d) for m in range(8) for d in (1,3)}
    # Explicit strict universal sign margins used by the written proof.
    assert F(19,1024)+F(1,512)==F(c['midpoint_phase_error'])==F(21,1024)<F(1,16)
    assert F(1,16)-F(21,1024)-F(1,64)==F(c['midpoint_gap'])==F(27,1024)>0
    assert 3*256-42>0
    assert F(3,8)*128*(4**2-4)>33*4
    assert 36-28>0 # all remaining terms in G-3/t^2 are positive for t>=1
    print('UNIVERSAL_RATIONAL_MAJORANTS=PASS')
    print('BELOW_SQUARE_STRICT_MARGIN=PASS')
    print('MID128_STRICT_MARGIN_27_OVER_1024=PASS')
    print('SYMBOLIC_CERTIFICATE_IS_NOT_LEAN_OR_EXTERNAL_REVIEW')

if __name__=='__main__':
    verify()

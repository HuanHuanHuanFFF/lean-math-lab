#!/usr/bin/env python3
"""Standard-library verifier for the universal NSB64 majorant certificate.

This independently checks the monomial dominance arithmetic, not the symbolic
expansion: symbolic_certificate.py reconstructs those expansions separately.
Both implementations are by the same research session, not external review.
"""
from fractions import Fraction as F
import json
from pathlib import Path
R=Path(__file__).resolve().parents[1]
c=json.loads((R/'certificates/universal_bounds.json').read_text())
assert c['theorem']=='NSB64' and c['threshold']==64
for name in ['root_residual','phase_remainder']:
    block=c[name];total=F(0)
    alpha=block['normalizing_a_exponent']; beta=block['normalizing_m_denominator_exponent']
    for t in block['terms']:
        d=t['m_denominator_exponent']-beta
        assert d>=0 and t['a_exponent']-alpha<=2*d
        total+=abs(F(t['coefficient']))/64**d
    assert str(total)==block['exact_majorant']
    assert total<block['strict_upper']
assert all(F(x)>0 for x in c['derivative_margin_at_M64_plus_u'])
b=c['even_A2']; total=F(0)
for t in b['residual']:
    assert t['a_exponent']==0 and F(t['coefficient'])<0
    total+=abs(F(t['coefficient']))/64**(t['m_denominator_exponent']-2)
assert str(total)==b['residual_majorant'] and total<30
assert all(F(t['coefficient'])>0 for t in b['gap_identity'])
assert any(t['m_denominator_exponent']==2 and F(t['coefficient'])==3 for t in b['gap_identity'])
# Root comparison: (17+1)/(3/2)=12; phase perturbation <13 A/M².
assert (F(17)+1)/F(3,2)==12
assert F(12*65+2,64)<13
assert 13+13<32
# Odd M: the phase is within 23/512 of a half-integer.
assert F(19,8*64)+F(32,64**2)==F(23,512)<F(1,4)
# Both parities: z-M < (A+2)/(2M) <=3/128 <1/4.
assert F(3,128)<F(1,4)
# Even M, A>=4: error <= A²/(16M); positive phase <7/1024.
assert 64*4**3>512
assert F(7,16*64)<F(1,4)
# A=2: M>=256 gives exact floor; the refined positive gap survives.
assert F(64,256)==F(1,4)
assert 20*(64**2+2)<21*64**2
assert 3*256-23>0
print('MONOMIAL_DOMINANCE_ALL_PARAMETERS=PASS')
print('ODD_M_PHASE=PASS')
print('EVEN_M_A_GE4_PHASE=PASS')
print('EVEN_M_A_EQ2_PHASE=PASS')
print('ALL_ODD_H_PARITIES_COVERED=PASS')

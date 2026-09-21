#!/usr/bin/env python3
"""Independent arithmetic implementation of the 45-case certificate checker.

Uses explicit coefficient polynomials rather than the generator's general formula.
Same-session independent implementation is NOT external independent peer review.
"""
from __future__ import annotations
import json
from pathlib import Path
from fractions import Fraction
from math import gcd

# [h^2,h,1]; rows independently transcribed from the expanded proof.
POLYS={
 1:((-3,216,208),(-18,378,504),(-27,162,405)),
 2:((-12,360,425),(-36,486,810),(-27,162,513)),
 3:((-27,540,756),(-54,594,1188),(-27,162,621)),
 4:((-48,756,1225),(-72,702,1638),(-27,162,729)),
 5:((-75,1008,1856),(-90,810,2160),(-27,162,837)),
}
CUTOFFS={1:73,2:33,3:23,4:19,5:17}

def evaluate(p,h):
    a,b,c=p
    return (a*h+b)*h+c

def main():
    root=Path(__file__).resolve().parent
    cert=json.loads((root/'cyclotomic_defect_one.json').read_text())
    expected={(t,h) for t,H in CUTOFFS.items() for h in range(15,H,2)}
    actual={(r['t'],r['h']) for r in cert['finite_cases']}
    assert expected==actual and len(actual)==45 and len(cert['finite_cases'])==45
    for row in cert['finite_cases']:
        t,h=row['t'],row['h']
        A,B,C=[evaluate(p,h) for p in POLYS[t]]
        assert (A,B,C)==(row['A'],row['B'],row['C'])
        D=B*B-4*A*C
        s=row['floor_sqrt']
        assert isinstance(s,int) and s>=0 and s*s<D<(s+1)*(s+1)
        assert D==row['discriminant']
        assert row['lower_gap']==D-s*s>0
        assert row['upper_gap']==(s+1)*(s+1)-D>0
        assert A>0 and C<0
    assert len(cert['infinity_tail_certificates'])==5
    for row in cert['infinity_tail_certificates']:
        t=row['t'];H=CUTOFFS[t]
        assert row['first_excluded_odd_h']==H
        for name,p in zip(('A_shift','B_shift','C_shift'),POLYS[t]):
            a,b,c=p
            shifted=[a,2*a*H+b,a*H*H+b*H+c]
            assert shifted==row[name] and all(x<0 for x in shifted)
    # Witness to the omitted extra factor of 3.
    Delta,v,Q=49,144,193
    assert Q==Delta+v and Delta%16==1 and 3*v>Q
    assert (Delta**3-1)%v==0
    assert 3*(Delta-1)%v==0 and (Delta-1)%v!=0
    assert gcd(v,Q)==1
    # Exact constants used in the relative height bound.
    assert 1705<2**11 and 41<2**6 and 3**24<2**39
    assert 3*15**2-34*15-102>0
    assert 15**2-6*15-35>0
    print('CYC1_COMPLETE_TERMINAL=PASS (45 exact nonsquare discriminants)')
    print('CYC1_INFINITE_H_TAILS=PASS (5 all-negative shifted-polynomial certificates)')
    print('EXTRA_FACTOR_3_REGRESSION=PASS')
    print('HEIGHT_CONSTANTS=PASS')
    print('GRADE=exact arithmetic + paper proof; no Lean, no external peer review')

if __name__=='__main__': main()

#!/usr/bin/env python3
"""Generate the COMPLETE 45-case defect-one terminal, not a scan over n."""
from __future__ import annotations
import argparse
import json
from math import isqrt
from finite_recovery import coefficients

CUTOFFS={1:73,2:33,3:23,4:19,5:17}

def shifted_coefficients(t: int, cutoff: int, component: int) -> list[int]:
    """Exact coefficients [u^2,u,1] from a polynomial of degree at most two."""
    c0=coefficients(cutoff,t,3)[component]
    p1=coefficients(cutoff+1,t,3)[component]
    p2=coefficients(cutoff+2,t,3)[component]
    difference=p2-2*p1+c0
    assert difference%2==0
    a=difference//2
    b=p1-c0-a
    return [a,b,c0]

def certificate() -> dict:
    tails=[]
    rows=[]
    for t,cutoff in CUTOFFS.items():
        shifts=[shifted_coefficients(t,cutoff,c) for c in range(3)]
        assert all(a<0 for triple in shifts for a in triple)
        tails.append(dict(t=t,first_excluded_odd_h=cutoff,
            A_shift=shifts[0],B_shift=shifts[1],C_shift=shifts[2]))
        for h in range(15,cutoff,2):
            A,B,C=coefficients(h,t,3)
            discriminant=B*B-4*A*C
            assert A>0 and C<0 and discriminant>0
            floor_root=isqrt(discriminant)
            assert floor_root**2<discriminant<(floor_root+1)**2
            rows.append(dict(t=t,h=h,A=A,B=B,C=C,
                discriminant=discriminant,floor_sqrt=floor_root,
                lower_gap=discriminant-floor_root**2,
                upper_gap=(floor_root+1)**2-discriminant))
    assert len(rows)==45
    return dict(schema='B699-D-i3-CYC1-v1',
        preconditions=['h odd >=15','v>0','v/Q>1/3',
            'Delta=Q-v>1','v divides 3*(Delta-1)','F_h(Q,v)=4'],
        infinity_tail_certificates=tails,finite_case_count=45,finite_cases=rows,
        conclusion='No integer v in the entire defect-one branch',
        evidence_grade='Exact finite terminal plus written all-parameter reduction; not Lean')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output',required=True)
    a=p.parse_args()
    with open(a.output,'w',encoding='utf8') as f:
        json.dump(certificate(),f,indent=2,ensure_ascii=False,sort_keys=True);f.write('\n')

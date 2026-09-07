"""Exact integer-polynomial audit of the four non-symmetric center triples.

Finite algebra audit only. Center height has a separate Lean proof in
K5CentralHeight. No original subclass theorem is claimed here.
"""
from datetime import datetime, timezone
from pathlib import Path
from math import comb
import json
from interpolation_audit import add as uadd, mul as umul, ev

HERE=Path(__file__).resolve().parent
DATA=[((1,2,3),18,-81,-35,135),((1,3,4),-18,-27,-15,-135),
      ((2,3,5),-18,27,15,-135),((3,4,5),18,81,35,135)]
CORR={1:-25,2:-10,4:10,5:25}


def clean(p):
    return {ij:c for ij,c in p.items() if c}


def add(p,q):
    out=dict(p)
    for ij,c in q.items(): out[ij]=out.get(ij,0)+c
    return clean(out)


def scale(p,c):
    return clean({ij:c*v for ij,v in p.items()})


def shift(p,r):
    out={}
    for (a,b),c in p.items():
        for k in range(a+1):
            ij=(k,b);out[ij]=out.get(ij,0)+c*comb(a,k)*r**(a-k)
    return clean(out)


def weighted_min(p,a,b):
    return min(a*i+b*j for i,j in p)


def serial(p):
    return [dict(first_power=i,second_power=j,coefficient=c)
            for (i,j),c in sorted(p.items())]


def main():
    rows=[]
    for slots,c,a,b,f in DATA:
        A=[1]
        for i in slots: A=umul(A,[-3*(3-i),1])
        G={(1,0):9*c,(0,3):25*c,(3,0):9,(2,0):a,(2,2):b,(1,2):f}
        assert {i:v for (i,j),v in G.items() if j==0}=={i:int(9*v) for i,v in enumerate(A) if v}
        center_rem=add(G,{(1,0):-9*c,(0,3):-25*c})
        assert weighted_min(center_rem,3,1)>=5
        noncenter=[]
        derivative=[(j+1)*A[j+1] for j in range(len(A)-1)]
        for i in slots:
            if i==3:continue
            root=3*(3-i);coef=int(ev(derivative,root))
            rem=add(shift(G,root),{(1,0):-coef*9,(0,2):-coef*CORR[i]})
            assert weighted_min(rem,2,1)>=3
            noncenter.append(dict(i=i,correction_multiplier=coef,
                                 remainder=serial(rem),min_weight=weighted_min(rem,2,1)))
        rows.append(dict(slots=slots,coefficients=dict(c=c,a=a,b=b,f=f),G=serial(G),
                         center_remainder=serial(center_rem),noncenter=noncenter,
                         quartic_leading_coefficient_times_c2=b))
    A0=[-420,-40,1];B0=[340,200]
    norm=uadd([0]+umul(A0,A0),[-v for v in umul(B0,B0)])
    assert norm==[-115600,40400,-6400,760,-80,1]
    out=dict(utc=datetime.now(timezone.utc).isoformat(),evidence='exact integer coefficient audit; not Lean',
             normalization='G=c*(9z+25d^3)+z^2*(9z+a)+d^2*z*(b*z+f)',rows=rows,
             norm_polynomial_ascending_coefficients=list(map(int,norm)),
             height_argument=dict(assumptions='d>=600,8d<z<9d',
                 remainder_bound='|G-b*d^2*z^2| <= 8238*d^3 <= 9000*d^3',
                 conclusion='|G| >= 945*d^4; paper bound, not a Lean theorem',
                 kernel_checked_modulus='K5CentralHeight: d^3*q_center^2 < d^4'),
             limitation='Blocks simple height domination; does not negate fifth congruence or every mixed-order method.')
    (HERE/'mixed-order-audit.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(dict(rows=len(rows),norm_polynomial=list(map(int,norm)),all_weight_tests_passed=True)))


if __name__=='__main__':main()

#!/usr/bin/env python3
"""Separate P,Q,A enumeration and rational norm reconstruction; no primary import."""
from __future__ import annotations
import argparse, hashlib, itertools, json
from fractions import Fraction
from pathlib import Path

def verify_identities_by_grid():
    # Degree bounds P<=1,Q<=2,A<=1,B<=1,T<=2,h<=1.
    grid=itertools.product(range(2),range(3),range(2),range(2),range(3),range(2))
    points=list(grid)
    for g in (1,2):
        c=4//g**2
        for P,Q,A,B,T,h in points:
            R=A*Q**2*T-1-P*((Q-B)*T-g**2*Q**2)
            e1=P-A*Q-h*B;e2=h*Q-P-c*A*T;e3=c*A*B*T*T-g*g*P*Q*Q+1
            assert R == -Q*T*e1-B*T*e2-e3
    for z in (Fraction(0),Fraction(1,2),Fraction(1)):
        X=z+6
        assert 11*(X-1)**2-4*(X+1)**2==79+54*z+7*z*z
        for eps in (-1,1):assert (z-eps)**2-4==(z+eps)*(z-3*eps)

def recover_from_P_Q(g):
    Vlimit=16*g**4-1;Plimit=64*g**4-5
    rows=[]
    for P in range(11,Plimit+1,2):
        for Q in range(11,P,2):
            for A in range(1,(P-1)//Q+1):
                if g==2 and A%2!=1:continue
                divisor=4*A*Q-P
                if divisor<=0:continue
                for eps in (-1,1):
                    Uq=Fraction(P*Q-2*eps,divisor)
                    if Uq.denominator!=1:continue
                    U=int(Uq);V=4*A*U-P
                    if not (1<=U<=V<=Vlimit):continue
                    if U%2!=1 or V%2!=1:continue
                    if not (U<Q and V<P and P<4*V):continue
                    assert P*U-Q*V==2*eps
                    assert P+V==4*A*U
                    norm=Fraction(g*g*P*Q*Q-1,(4//g**2)*A*(U*V)**2)
                    assert norm>0 and norm.denominator>1
                    nn=g*g*P*Q*Q-1;dd=(4//g**2)*A*(U*V)**2
                    remainder=nn-dd*(nn//dd)
                    rows.append({'g':g,'U':U,'V':V,'P':P,'Q':Q,'A':A,'epsilon':eps,
                                 'X':(P*U+Q*V)//2,'numerator':nn,'denominator':dd,'remainder':remainder})
    rows.sort(key=lambda r:(r['U'],r['V'],r['P'],r['Q'],r['A'],r['epsilon']))
    return {'g':g,'core_c':4//g**2,'V_max':Vlimit,'P_max':Plimit,'A_odd_required':g==2,
            'directions':[-1,1],'row_count':len(rows),'rows':rows}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('certificate',nargs='?',default=str(Path(__file__).parent/'certificates/endpoint.json'))
    args=pa.parse_args();verify_identities_by_grid()
    c=json.loads(Path(args.certificate).read_text())
    expected={'schema':'B699-UXS-v1','scope_g':[1,2],'tail_shift_X':6,'tail_coefficients_ascending':[79,54,7],
              'small_X_M':[[2,3],[4,15]],'families':[recover_from_P_Q(1),recover_from_P_Q(2)]}
    if c!=expected:raise ValueError('Independent rational recovery rejects certificate')
    assert [f['row_count'] for f in expected['families']]==[4,93]
    sha=hashlib.sha256(json.dumps(expected['families'],sort_keys=True,separators=(',',':')).encode()).hexdigest()
    print(json.dumps({'status':'PASS_INDEPENDENT_RATIONAL_ENDPOINT','counts':[4,93],
                      'integer_B_solutions':0,'endpoint_sha256':sha},sort_keys=True))
if __name__=='__main__':main()

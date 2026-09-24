#!/usr/bin/env python3
"""Replay exact phase diagnostics and the explicitly nonintegral failure model."""
from __future__ import annotations
import argparse,json
from fractions import Fraction as F
from pathlib import Path
from math import isqrt
from native_phase import certify,verify,isolate,core_f
from same_input_consumer import gate,prime_proved

ROOT=Path(__file__).resolve().parents[1]


def build()->dict:
    requests={15:'diagnostic',17:'diagnostic',19:'diagnostic',21:'old-real-obstruction',
              23:'diagnostic',43:'old-small-algebraic-parameter',16639:'lower-square-no-carry',
              332931:'old-NSB64-overlap-test-only'}
    for M in (128,130,256,258):
        requests[M*M-1]='BSC_MINUS1'
    for M in (256,258,512):
        requests[M*M-3]='BSC_MINUS3'
    for d in (-3,-1,1,3):
        threshold=128*(abs(d)+1)**2
        for r in range(8):
            m=threshold+((r-threshold)%8)
            requests[m*m+m+d]=f'MID128 d={d}, mmod8={r}'
    rows=[]
    for h,label in sorted(requests.items()):
        data=certify(h)
        verify(data)
        g=gate(h)
        if label.startswith('BSC'):
            assert data['result']=='CARRY' and g['result']=='PARAMETER_CARRY_GATE'
        if label.startswith('MID128'):
            m=isqrt(h);d=h-m*m-m
            expected=(d%4==1 and m%8>=4) or (d%4==3 and m%8<=3)
            assert data['result']==('CARRY' if expected else 'NO_CARRY_THIS_LAYER')
            assert bool(g['exits'])==expected
            # New midpoint domains are outside the previous NSB64 gate.
            A_old=h-m*m+1
            assert not m>=64*A_old*A_old
        rows.append({'purpose':label,'certificate':data})

    h,Q=16639,10007
    assert prime_proved(Q)
    a,b=isolate(h,-F(h,Q**3),F(isqrt(h+1)),F(isqrt(h+3)+1),128)
    assert core_f(h,a)<-F(h,Q**3)<core_f(h,b)
    assert a*a>h+1 and b*b<h+3
    nu=(Q*a,Q*b)
    delta=(F(Q,h)*(2*a+1),F(Q,h)*(2*b+1))
    x=(1-(2*b+1)/h,1-(2*a+1)/h)
    nufloor=nu[0].numerator//nu[0].denominator
    assert F(nufloor)<nu[0]<nu[1]<nufloor+1 # recovered nu is not an integer
    assert delta[0]>17 and F(1,3)<x[0]<x[1]<1
    uniform=next(row['certificate'] for row in rows if row['certificate']['h']==h)
    assert uniform['result']=='NO_CARRY_THIS_LAYER' and Q>=uniform['Qmin']
    return {'schema':'B699-D-i3-round4-phase-tests-v1',
            'scope':'Finite diagnostic checks only; the uniform families are proved separately.',
            'number_of_h_diagnostics':len(rows),'diagnostics':rows,
            'failure_model':{'h':h,'M':129,'a':2,'Q':Q,'Q_prime_by_trial_division':True,
                             'root_bracket':[str(a),str(b)],'nu_interval':[str(x) for x in nu],
                             'nu_strictly_between_integers':[nufloor,nufloor+1],
                             'Delta_interval':[str(x) for x in delta],'v_over_Q_interval':[str(x) for x in x],
                             'missing_conditions':['integer nu,P,v,n,j','Delta congruence as an integer',
                                 'n=c*2^s','full native prime-power recovery','original NC3'],
                             'not_original_counterexample':True}}


def main()->None:
    parser=argparse.ArgumentParser();parser.add_argument('--write',action='store_true')
    args=parser.parse_args()
    data=build();path=ROOT/'certificates/phase_diagnostics_and_failure.json'
    if args.write:
        path.write_text(json.dumps(data,indent=2)+'\n')
    else:
        assert data==json.loads(path.read_text())
    print('RATIONAL_PHASE_CERTIFICATES=PASS')
    print('SIGNED_MIDPOINT_DIAGNOSTICS=PASS')
    print('REAL_FAILURE_MODEL_NONINTEGER_RECOVERY=PASS')
    print('FINITE_DIAGNOSTICS_NOT_A_GLOBAL_SCAN_PROOF='+str(data['number_of_h_diagnostics']))

if __name__=='__main__':
    main()

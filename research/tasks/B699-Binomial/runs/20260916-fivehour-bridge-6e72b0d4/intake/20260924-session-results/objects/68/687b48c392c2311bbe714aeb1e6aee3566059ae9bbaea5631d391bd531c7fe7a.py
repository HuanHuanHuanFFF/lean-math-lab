#!/usr/bin/env python3
"""Exact arithmetic checks for Round 20; no floating point, no network.
The generic inequalities are proved in PROOFS.md. This is not a proof assistant.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as F
from math import isqrt
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parents[1]
SCALE=10**25

def v2(n:int)->int:
    if n==0:
        raise ValueError('v2(0) is not a finite valuation')
    n=abs(n)
    return (n & -n).bit_length()-1

def sqrt_bounds(a:F)->tuple[F,F]:
    if a<0:
        raise ValueError('negative radicand')
    z=isqrt(a.numerator*SCALE*SCALE//a.denominator)
    lo,hi=F(z,SCALE),F(z+1,SCALE)
    assert lo*lo<=a<hi*hi
    return lo,hi

def H0_bounds(A:int)->tuple[F,F]:
    s_lo,s_hi=sqrt_bounds(F(3))
    r_lo,r_hi=F(A)/s_hi,F(A)/s_lo
    # H is increasing for r>=1; this is proved by differentiation in PROOFS.
    assert r_lo>1
    w_lo,_=sqrt_bounds((1+r_lo)**5/r_lo)
    _,w_hi=sqrt_bounds((1+r_hi)**5/r_hi)
    return (3+5*r_lo+2*r_lo*r_lo+2*w_lo,
            3+5*r_hi+2*r_hi*r_hi+2*w_hi)

def pell(n:int)->tuple[int,int]:
    if n<0: raise ValueError('negative exponent')
    u,x=1,0; a,b=2,1
    while n:
        if n&1: u,x=u*a+3*x*b,u*b+x*a
        a,b=a*a+3*b*b,2*a*b
        n//=2
    assert u*u-3*x*x==1
    return u,x

def pell_linear(n:int)->tuple[int,int]:
    u,x=1,0
    for _ in range(n): u,x=2*u+3*x,u+2*x
    return u,x

def R_value(d:int,v:int)->int:
    Q=d+v
    return (Q**10-12*Q**7+15*d*Q**6-4*d*d*Q**5
            -4*d*Q**3+12*d*d*Q*Q-12*d**3*Q+4*d**4)

def coordinates(q:int)->tuple[int,int,int,int]:
    V,X=pell(4*q)
    U=2*V+3*X
    d=3*U*X+1; y=U*V-1
    assert 3*y*y==d*d+d+1
    assert pell(8*q+1)[0]==2*y
    assert d>y>1
    return U,X,d,y

def make_certificate()->dict:
    gap_rows=[]
    for A in range(2,32,2):
        lo,hi=H0_bounds(A)
        odd_below=2*((lo.numerator//lo.denominator-1)//2)+1
        assert odd_below<lo<hi<odd_below+2
        gap=min(lo-odd_below,odd_below+2-hi)
        assert gap>F(1,4096*A)
        gap_rows.append({'A':A,'H0_lower':str(lo),'H0_upper':str(hi),
                         'odd_below':odd_below,'distance_lower':str(gap),
                         'required':str(F(1,4096*A))})
    # Large A inequalities: all inverse powers decrease as A grows.
    A=32
    large_lo=1800-F(450,A)-F(675,8*A**3)
    large_hi=1800+F(675,4*A*A)+F(45,16*A*A)**2
    assert large_lo>F(3571,2) # 1785 + 1/2
    assert large_hi<F(3601,2) # 1801 - 1/2
    assert {(12*h-16*a*a-81)**2%16 for h in (1,3) for a in range(2,18,2)}=={9}
    assert 12*163<2048
    assert 32*4096==2**17
    # Endpoint-independent odd part bound from ODD-END.
    for rho in range(3,100):
        for a2 in {1,rho-1}:
            assert 2**a2<=2**(rho-1)
    # A_odd<=q^2 implies A<=4q^3. For q>=4, the ratio
    # 3^(8q+1)/q^9 increases, since (1+1/q)^9<=2^9<3^8.
    assert 3**33>2**25*4**9
    assert 3**8>2**9
    # The particular central shell A<=4q already forces q<=2.
    assert 3**25>2**25*3**3
    assert 3**8>2**3

    tail=[]
    for q in (2,3):
        rho=v2(q)+3
        U,X,d,y=coordinates(q)
        assert (U,X)==(pell(4*q+1)[0],pell(4*q)[1])
        assert pell(4*q)==pell_linear(4*q)
        for a2 in sorted({1,rho-1}):
            for odd in range(1,q*q+1,2):
                A=(1<<a2)*odd; v=A*y
                assert v2(v)==a2
                R=R_value(d,v)
                power_v=v2(R)
                s=power_v-1-a2
                # The frozen POWER identity gives exactly this s, not an inequality.
                assert s>=2
                n_upper=3*(1<<s)
                assert n_upper<d*d
                tail.append({'q':q,'rho':rho,'A':A,'A_odd':odd,'v2_A':a2,
                             'd':d,'y':y,'R_mod_65536':R%65536,
                             'v2_R':power_v,'s_forced':s,'n_upper':n_upper,
                             'd_squared':d*d,'rejection':'n<=n_upper<d^2<n'})
    assert len(tail)==14
    assert max(row['s_forced'] for row in tail)==7
    assert max(row['v2_R'] for row in tail)==10
    central=[r for r in tail if r['q']==2 and r['A']==8]
    assert len(central)==1 and central[0]['s_forced']==2

    # Known former weak model passes these NEW gates, but still is not a square.
    q=5; U,X,d,y=coordinates(q)
    A=867656512844; B=421816446324
    assert A*B==9*U*X
    assert y<2**17*A**3 and (A>>v2(A))>q*q
    v=A*y;W=B*y
    S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W
    root=isqrt(S)
    assert root*root<S<(root+1)**2
    weak={'q':q,'A':A,'B':B,'A_odd':A>>v2(A),'d':d,'y':y,
          'passes_new_cubic_and_oddpart_gates':True,'square':False,
          'S':S,'floor_sqrt_S':root,
          'meaning':'Not a survivor of all old gates; not an NC3 witness.'}

    return {'schema':'B699-D-i3-round20-v1',
            'small_A_gap':gap_rows,
            'large_A_gap':{'threshold_A':32,'lower_at_32':str(large_lo),
                           'upper_at_32':str(large_hi),'lattice_modulus':16,
                           'lattice_residue':9,'distance_to_lattice':'>1/2'},
            'generic_bounds':{'h_distance':'>1/(4096*A)',
                              'approximation_error':'<32*A^2/y',
                              'cubic':'y<131072*A^3',
                              'Pell':'(2+sqrt(3))^(8q+1)<524288*A^3'},
            'tail_candidates':tail,'central_shell_terminal':central[0],
            'failure_regression':weak,
            'certificate_scope':'Exact checks of new finite and algebraic components; not Lean and not a proof of the frozen NC bridge.'}

def check_certificate(cert:dict)->None:
    if cert!=make_certificate():
        raise ValueError('certificate mismatch')

def main()->None:
    parser=argparse.ArgumentParser()
    parser.add_argument('--generate',action='store_true')
    parser.add_argument('--output',type=Path,default=ROOT/'outputs'/'replay.json')
    args=parser.parse_args()
    cert=make_certificate()
    target=ROOT/'certificates'/'round20.json'
    if args.generate:
        target.write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
    else:
        check_certificate(json.loads(target.read_text()))
    # Bad certificate refusal: changes must not be silently accepted.
    bad=json.loads(json.dumps(cert))
    bad['tail_candidates'][0]['v2_R']+=1
    try:
        check_certificate(bad)
    except ValueError:
        mutation_rejected=True
    else:
        raise AssertionError('mutated valuation accepted')
    out={'status':'PASS','small_A_gap_cases':len(cert['small_A_gap']),
         'large_A_uniform_gap':'PASS','terminal_candidates':len(cert['tail_candidates']),
         'terminal_max_v2_R':10,'terminal_max_forced_s':7,
         'bad_certificate_rejected':mutation_rejected,
         'new_results':['y<2^17*A^3','A_odd>q^2',
                        'central shell A=2^(rho-1), B=18Ux impossible in frozen core'],
         'historical_campaigns_replayed':False,'lean':False}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(out,ensure_ascii=False,indent=2))
    print('ROUND20_ARITHMETIC_REPLAY=PASS')

if __name__=='__main__': main()

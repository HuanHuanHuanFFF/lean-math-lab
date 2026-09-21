"""Offline verifier for the NEW certificates only; not Lean or an external review."""
from pathlib import Path
from fractions import Fraction
from math import gcd
import json, hashlib
from arithmetic import *

ROOT=Path(__file__).resolve().parents[1]

def read(name):return json.loads((ROOT/'certificates'/name).read_text())

def main():
    previous=ROOT/'inputs/round8-evidence.zip'
    assert hashlib.sha256(previous.read_bytes()).hexdigest()=='a24bb3d83a641ce3936d871ed6fba35bb31ee98c5cd2779ce5b9c657726674d7'
    print('FROZEN_ROUND8_HASH=PASS; OLD_CHAIN_NOT_REPLAYED')
    check_identities()
    print('SAME_INPUT_AND_SQRT_BRACKET_IDENTITIES=PASS')
    b=read('uniform_bounds.json')
    x=Fraction(1,2)
    assert 40-55*x-19*x*x-5*x**3-25*x**4==Fraction(89,16)>0
    assert 6*Fraction(11,10)**2<8
    assert 128/Fraction(2**15)==Fraction(1,256)
    assert 139**2>3*80**2 and Fraction(140,256)==Fraction(35,64)<1
    assert 81*14641<128*10000
    assert 22**2<2**9 and 9+3*22==75
    assert b['A_constant']==2**7 and b['B_constant']==2**15
    assert b['Q_fourth_constant']==2**22 and b['n_squared_constant']==2**75
    assert b['tail_left']==3**47 > b['tail_right']==2**15*630**4*47**4
    assert Fraction(768,625)>1
    U10,x10=pell(10)
    assert (U10,x10)==(262087,151316)
    assert (2**19-U10)**2-3*x10*x10==59768833>0
    assert 750+15*(19*1-10)==285*1+600
    for c in b['comparison']:
        assert c['old_s_max']==(171*c['t']+9)//10
        assert c['new_s_max']==(285*c['t']+599)//20
    print('BICOF4_UNIFORM_CONSTANTS_AND_EXPONENTIAL_TAIL=PASS')
    cert=read('valuation_periods.json')
    mat=[[7,6],[8,7]]; acc=[[1,0],[0,1]]
    for _ in range(4):
        acc=[[sum(acc[i][k]*mat[k][j] for k in range(2))%32 for j in range(2)] for i in range(2)]
    assert acc==cert['index8']['C4_mod32']==[[1,8],[0,1]]
    assert cert['index8']['X_odd_mod32']==[1,15,17,31]
    for ps,payload in cert['periods'].items():
        p=int(ps); st=(1,0)
        for row in payload['states']:
            assert row=={'n':row['n'],'U':st[0],'x':st[1]}
            st=pair_mul(st,(2,1),p)
        assert st==(1,0)
    assert cert['rank_constants']==support_contract(SMALL_SUPPORT)['ranks']
    assert cert['general_contract_example']==support_contract((2,3,5,7,13))
    # The all-index valuation proof is in PROOFS; this is a diagnostic cross-check.
    for t in range(9,514,8):
        d,y=balanced_pell(t);L=3*(d-1)
        assert pell(t)==pell_iter(t)
        assert valuation(L,2)==valuation(t-1,2)+1
        assert valuation(L,3)==valuation(t-1,3)+2
        assert valuation(L,5)==(valuation(t-1,5)+1 if (t-1)%3==0 else 0)
        assert valuation(L,7)==valuation(t-1,7)+1
    print('FULL_PERIOD_TABLES=PASS; VALUATION_SAMPLE_CHECK=DIAGNOSTIC_ONLY')
    tcert=read('smooth_terminal.json')
    contract=support_contract(SMALL_SUPPORT)
    assert contract==tcert['contract'] and contract['T']==48
    fibres,rows=finite_rows(SMALL_SUPPORT,contract['T'])
    assert fibres==tcert['fibres'] and rows==tcert['rows']
    assert len(rows)==356 and len({(r['t'],r['A']) for r in rows})==356
    for row in rows:
        d,y=balanced_pell(row['t']);A,B=row['A'],row['B']
        assert A>=2 and A%2==0 and A*B==3*(d-1)
        v=A*y;Q=d+v;S=(Q**5-d*d)//v;Y=row['floor_sqrt']
        assert S==row['target'] and newton_isqrt(S)==Y
        assert row['lower_gap']==S-Y*Y>0
        assert row['upper_gap']==(Y+1)**2-S>0
    for fibre in fibres:
        print(f"TERMINAL_t={fibre['t']}; A_STATES={fibre['counts']['A']}; B_STATES={fibre['counts']['B']}; ALL_NONSQUARE")
    print('SMOOTH2357_ALL_356_COMPLETE_TERMINALS=PASS')
    rough=read('rough_weak_model.json')
    d,y=balanced_pell(rough['t']);A,B=rough['A'],rough['B']
    assert (d,y)==(rough['d'],rough['y']) and A*B==3*(d-1)
    assert A%13==0 and B%11==0 and d<128*A**4 and d<32768*B**4
    v=A*y;Q=d+v;S=(Q**5-d*d)//v;Y=newton_isqrt(S)
    assert S==rough['target'] and Y==rough['floor_sqrt']
    assert S-Y*Y==rough['lower_gap']>0
    assert (Y+1)**2-S==rough['upper_gap']>0
    for row in read('local_failure_family.json')['examples']:
        k=row['k'];t=1+2**(k+2);d,y=balanced_pell(t);A=2**(k+1);h=2*A-3
        B=3*(d-1)//A;v=A*y;Q=d+v;P=Q+h*v;nu=(h*d-Q)//2;n=P*Q*nu+2
        F=v*nu*nu-P*Q*Q+1
        assert row=={'k':k,'t':t,'d':d,'y':y,'A':A,'B':B,'h':h,
                     'P':P,'Q':Q,'v':v,'nu':nu,'n':n,'norm_residue':F}
        assert F<0 and F%(2**k)==0 and n%(2**k)==0 and nu%4==2
        assert 2*nu==h*d-Q and P==Q+h*v
    print('PRECISE_WEAK_MODELS_AND_MISSING_NORM=PASS')
    print('GENERAL_SUPPORT_REDUCTION=PROOF_IN_PROOFS; NOT_A_UNIFORM_BOUND_OVER_ALL_SUPPORTS')
    print('REPLAY=PASS; NEW_LEAN=NONE; EXTERNAL_INDEPENDENT_REVIEW=NONE')

if __name__=='__main__':main()

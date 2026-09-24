#!/usr/bin/env python3
"""Regenerate exact arithmetic evidence. No repository or network access."""
from __future__ import annotations
import json
from pathlib import Path
from math import gcd,isqrt,comb
from algebra import (factor_trial,is_prime_trial,order_two_prime_power,local_states,
                     orbit_gcd_degree)
ROOT=Path(__file__).resolve().parents[1]

def dump(name,obj):
    (ROOT/'certificates'/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')

def make():
    records=[]
    for p,b in [(409,1),(1129,1),(409,2),(601,1),(1321442641,1)]:
        assert is_prime_trial(p)
        m=p**b;T=order_two_prime_power(p,b);f=factor_trial(T)
        record={'prime':p,'exponent':b,'modulus':m,'order':T,
                'order_factorization':{str(q):e for q,e in f.items()},
                'order_witnesses':{str(q):pow(2,T//q,m) for q in f},
                'prime_checked_by':'complete trial division through integer square root'}
        if T<100000:record['exponent_states']={str(c):E for c,E in local_states(p,b,T).items()}
        if b==1:
            record['fast_gates']={str(c):{'gcd_degree':orbit_gcd_degree(p,T,c)[0],
                'remainder':list(orbit_gcd_degree(p,T,c)[1])} for c in (1,3)}
        records.append(record)
    dump('orders_and_orbits.json',{'records':records,'crt_pair':[409,1129],'common_period_gcd':12})
    x,y=3,1;pell=[]
    for k in range(9):
        pell.append({'k':k,'x':x,'y':y,'Delta':(x-1)//2})
        x,y=7*x+24*y,2*x+7*y
    d=pell[-1]['Delta'];ell=pell[-1]['y'];L=(d-1)//3
    v=L*ell;W=9*ell;Q=d+v;S=(Q**5-d*d)//v;Y=isqrt(S)
    dump('failure_models.json',{'pell_terms':pell,'square_cyclotomic':{
        'Delta':d,'ell':ell,'L':L,'v':v,'W':W,'Q':Q,
        'Dv':v//gcd(v,3*(d-1)),'DW':W//gcd(W,3*(d-1)),
        'S':S,'floor_sqrt_S':Y,'lower_gap':S-Y*Y,'upper_gap':(Y+1)**2-S,
        'missing':'S is not square: no integer Y, nu, h or original n,j is reconstructed',
        'current_status':'This ell is additionally excluded by the new orbit gate; it is not a counterexample.'}})
    trace=[]
    for p in [3,5,7,11,13,17]:
        cs=[]
        for k in range((p-1)//2+1):
            num=p*comb(p-k,k);assert num%(p-k)==0
            cs.append((-1)**k*(num//(p-k)))
        trace.append({'prime':p,'V_coefficients_ascending_in_Y':cs})
    dump('trace_examples.json',{'examples':trace,'role':'diagnostic exact identities, not a bounded-exponent proof'})
    dump('external_contract.json',{'name':'NL_LENGTH3','source':'Bennett-Levin arXiv:1312.4037v1',
        'locator':'page 1, Proposition 1 and four displayed exceptions',
        'external_hypotheses':'x>1,y>1,a>=2 integers; x^2+x+1=y^a',
        'external_conclusion':'x=18,y=7,a=3',
        'B699_check':'Delta is odd and at least17; Delta=18 impossible',
        'verified_by_this_program':False})
    print('CERTIFICATES_GENERATED')
if __name__=='__main__':make()

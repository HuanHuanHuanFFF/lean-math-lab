#!/usr/bin/env python3
"""Exact generator. No parent research, network, CAS or Lean is executed."""
from __future__ import annotations
import argparse
import json
from pathlib import Path
from fractions import Fraction

NAMES = ('d', 'v', 'H', 'h', 'B', 'y')
ZERO = (0,) * len(NAMES)

def add(a, b):
    out = dict(a)
    for e, c in b.items():
        out[e] = out.get(e, 0) + c
        if not out[e]:
            del out[e]
    return out

def neg(a):
    return {e: -c for e, c in a.items()}

def sub(a, b):
    return add(a, neg(b))

def mul(a, b):
    out = {}
    for e, c in a.items():
        for f, z in b.items():
            k = tuple(x+y for x,y in zip(e,f))
            out[k] = out.get(k, 0) + c*z
    return {e:c for e,c in out.items() if c}

def C(c):
    return {ZERO: c} if c else {}

def scale(c, a):
    return mul(C(c), a)

def power(a, n):
    out = C(1)
    for _ in range(n):
        out = mul(out, a)
    return out

def terms(a):
    return [[list(e), c] for e,c in sorted(a.items())]

def polynomial_data():
    vs = []
    for i in range(len(NAMES)):
        e = [0]*len(NAMES); e[i] = 1
        vs.append({tuple(e):1})
    d,v,H,h,B,y = vs
    Q=add(d,v); P=add(Q,mul(h,v))
    lin=sub(sub(mul(d,h),scale(4,H)),Q)
    E=add(sub(scale(4,mul(v,power(H,2))),mul(P,power(Q,2))),C(1))
    F=add(sub(sub(scale(4,mul(mul(d,v),power(H,2))),scale(4,mul(mul(v,power(Q,2)),H))),power(Q,4)),d)
    N=add(add(scale(4,mul(v,power(H,3))),H),Q)
    n=add(scale(2,mul(mul(P,Q),H)),C(2))
    Z=sub(scale(2,mul(d,H)),power(Q,2))
    S=add(add(add(power(v,4),scale(5,mul(d,power(v,3)))),scale(10,mul(power(d,2),power(v,2)))),
          add(add(scale(10,mul(power(d,3),v)),scale(5,power(d,4))),mul(mul(power(d,2),B),y)))
    identities=[
        ('F-minus-dE',sub(F,mul(d,E)),mul(mul(v,power(Q,2)),lin)),
        ('N-original-n',sub(scale(2,N),mul(n,Q)),scale(2,mul(H,E))),
        ('Z-original-norm',add(sub(mul(v,power(Z,2)),power(Q,5)),power(d,2)),mul(d,F)),
        ('H-mass',sub(mul(v,sub(scale(4,power(H,2)),mul(P,Q))),sub(mul(mul(P,Q),d),C(1))),E),
        ('P-linear',sub(sub(mul(P,d),power(Q,2)),scale(4,mul(v,H))),mul(v,lin)),
        ('S-saturation',add(sub(mul(v,S),power(Q,5)),power(d,2)),mul(power(d,2),add(sub(mul(mul(v,B),y),power(d,3)),C(1))))
    ]
    data=[]
    for name,lhs,rhs in identities:
        assert lhs == rhs
        data.append({'name':name,'lhs':terms(lhs),'rhs':terms(rhs)})
    return {'variables':list(NAMES), 'coordinate_degree_bounds':[5,5,3,1,1,1], 'identities':data}

def root_data():
    lower=142; cutoff=10**9; root=1; period=4; rows=[]
    for w in range(1,15):
        modulus=5**w
        if w==1:
            candidates=list(range(4))
        else:
            candidates=[root+j*period for j in range(5)]
        residues=[(3*pow(2,r,modulus)-1)%modulus for r in candidates]
        winners=[i for i,z in enumerate(residues) if z==0]
        assert len(winners)==1
        digit=winners[0]; root=candidates[digit]; period=4*5**(w-1)
        first=root+1+max(0,(lower-(root+1)+period-1)//period)*period
        checks={str(p):pow(2,period//p,modulus) for p in ([2] if w==1 else [2,5])}
        rows.append({'w':w,'modulus':modulus,'period':period,'root_r':root,
                     'candidate_exponents':candidates,'candidate_residues':residues,
                     'winning_digit':digit, 'order_prime_divisor_checks':checks,
                     'minimum_s_at_least_142':first,'margin_s_minus_3_minus_54w':first-3-54*w})
    assert all(r['margin_s_minus_3_minus_54w']>0 for r in rows)
    assert rows[-1]['minimum_s_at_least_142']>cutoff
    return {'lower_s':lower,'tail_cutoff':cutoff,'valuation_coefficient':54,'power_exponent':18,
            'finite_max_w':13,'rows':rows,
            'tail_coarse_BL_coefficient':120,'ln_cutoff_upper':27,'log_offset':21,
            'tail_lhs_bound':54*120*48**2,'tail_rhs':cutoff-3,
            'tail_margin':cutoff-3-54*120*48**2}

def source_data():
    d=y=1; states=[]
    for q in range(3):
        states.append([q,d,y])
        d,y=(18817*d+32592*y+9408)%5,(10864*d+18817*y+5432)%5
    assert (d,y)==(1,1)
    return {'modulus':5,'period':3,'states':states,'return_state':[d,y],
            'H_zero_norm_and_linear_imply':'Q^4=d=1 (mod 5); hence q=0 (mod 3)',
            'A_minus_one_at_q_zero_Q':0}

def make_certificate():
    return {'schema':'B699-D-R04-five-mass-v1',
            'external_contract':{'source':'BDKL2025-Lemma2.6 / Bugeaud-Laurent1996-Cor1',
                'p':5,'gamma1':2,'gamma2':3,'D':1,'g':4,'b1':'s-1','b2':1,
                'hprime1':'ln5','hprime2':'ln5','Eprime':'s/ln5',
                'E':'max(ln(s)+2/5,10,10*ln5)','simplified_prefactor':120,
                'external_theorem_proved_by_script':False},
            'valuation':root_data(),'polynomials':polynomial_data(),'source5':source_data(),
            'constants':{'q_lower_adopted':6,'t_lower':49,'s_lower_proved':142,
               'three_power_test_lhs':3**98,'three_power_test_rhs':2**147,
               'exp2_partial':[19,3],'exp3_partial':[13,1],
               'H_mass_multiplier':4,'P_upper_denominator':8,'Q_upper_multiplier':8,
               'cofactor_power':6,'H_power':5,'n_height_multiplier':8**5,
               'n_height_R_power':18,'A_height_multiplier':6**5,'A_height_power':15,
               'A_bridge_min':4,'A_quadratic_margin_at_min':4**2-2*4-2},
            'small_s_failure':{'s':14,'T':3*2**13-1,'w':2,
                               'five_power_18w':5**36,'claim_not_valid_below_proved_cutoff':True},
            'boundaries':{'historical_net_increment':0,'historical_net_status':'unverified',
                          'MA_divides_H_assumed':False,'parent_math_reexecuted':False,
                          'q6_terminal_reexecuted':False,'target_entry_closed':False}}

def write_json(p, x):
    p.parent.mkdir(parents=True,exist_ok=True)
    p.write_text(json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args(); cert=make_certificate(); write_json(args.output,cert)
    print(json.dumps({'status':'GENERATED','root_levels':14,'identity_count':6,
                      'tail_cutoff':10**9,'external_BL_is_adopted':True},sort_keys=True))
if __name__=='__main__': main()

#!/usr/bin/env python3
"""Checker A: exact binomial-shift verification of positive coefficients.
This checker proves positivity of the supplied rational polynomials. Checker B
also validates their identities against the mathematical barrier definitions.
"""
from __future__ import annotations
from math import comb
import argparse,json
from pathlib import Path

IDS=[
'eta_minus_positive','eta_plus_below_quarter','f_minus_below_minus_one','f_plus_positive',
 'tau_lower_margin_odd_d','tau_upper_margin_odd_d','tau_derivative_margin','x_minus_four_margin',
 'even_d_A_ge4_tau_above_eta','even_d_A_ge4_tau_below_one',
 'A2_eta_minus_positive','A2_eta_plus_below_quarter','A2_f_minus_below_minus_one',
 'A2_f_plus_positive','A2_tau_above_minus_quarter','A2_tau_plus_eps_negative','A2_x_minus_four_margin']

def parse(rows):
    out={}
    for row in rows:
        assert isinstance(row,list) and len(row)==3
        i,j,c=row
        assert type(i) is int and type(j) is int and i>=0 and j>=0
        assert (i,j) not in out and isinstance(c,str)
        z=int(c);assert z!=0 and str(z)==c
        out[i,j]=z
    return out

def verify(data):
    assert data['schema']=='B699-NEAR-SQUARE-CARRY-v1'
    assert data['variables']==['d','A'] and data['shift_variables']==['U','V']
    assert [it['id'] for it in data['items']]==IDS
    term_count=0
    for index,it in enumerate(data['items']):
        name=it['id']; special=name.startswith('A2_')
        amin=4 if index in (8,9) else 1
        expected={'kind':'A2','d_min':256} if special else {'kind':'general','A_min':amin,'scale':64}
        assert it['domain']==expected
        n=parse(it['numerator']);den=parse(it['denominator']);claimed=parse(it['shifted_numerator'])
        assert den and all(c>0 and a==0 for (d,a),c in den.items())
        assert max(i for i,j in n)<=16 and max(j for i,j in n)<=6
        assert max(i for i,j in den)<=12
        actual={}
        def add(i,j,c):actual[i,j]=actual.get((i,j),0)+c
        for (di,ai),c in n.items():
            if special:
                assert ai==0
                for j in range(di+1):add(0,j,c*comb(di,j)*256**(di-j))
            else:
                for j in range(di+1):
                    power_A=2*(di-j)+ai
                    base=c*comb(di,j)*64**(di-j)
                    for i in range(power_A+1):
                        add(i,j,base*comb(power_A,i)*amin**(power_A-i))
        actual={k:v for k,v in actual.items() if v}
        assert actual==claimed, name+' shift identity'
        assert all(c>0 for c in actual.values()),name+' positivity'
        assert actual.get((0,0),0)>0,name+' strict constant'
        term_count+=len(actual)
    return {'status':'PASS','checker':'A/binomial shift','uniform_inequalities':len(IDS),'positive_terms':term_count}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);args=ap.parse_args()
    try: result=verify(json.loads(args.certificate.read_text()))
    except (AssertionError,KeyError,TypeError,ValueError) as exc:raise SystemExit('REJECT A: '+str(exc))
    print(json.dumps(result,sort_keys=True))
if __name__=='__main__':main()

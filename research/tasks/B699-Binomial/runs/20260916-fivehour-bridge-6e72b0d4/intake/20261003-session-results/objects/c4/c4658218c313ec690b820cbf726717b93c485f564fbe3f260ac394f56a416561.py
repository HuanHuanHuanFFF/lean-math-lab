#!/usr/bin/env python3
"""Second implementation: base-16 linear lifts and exact tensor-grid identities.
Does not import the generator. Infinite real/5-adic arguments remain paper proofs;
the published logarithmic-form theorem is an explicit adopted dependency.
"""
from __future__ import annotations
import argparse
import copy
import itertools
import json
from fractions import Fraction
from pathlib import Path

class Reject(ValueError):
    pass

def need(ok, message):
    if not ok:
        raise Reject(message)

def eval_poly(data, point, bounds):
    seen=set(); total=0
    for entry in data:
        need(isinstance(entry,list) and len(entry)==2,'malformed term')
        powers, coefficient=entry
        need(len(powers)==6 and isinstance(coefficient,int) and coefficient!=0,'malformed coefficient')
        need(all(isinstance(e,int) and 0<=e<=b for e,b in zip(powers,bounds)),'degree outside certified box')
        key=tuple(powers); need(key not in seen,'duplicate monomial'); seen.add(key)
        v=coefficient
        for x,e in zip(point,powers): v*=x**e
        total+=v
    return total

def values(point):
    d,v,H,h,B,y=point
    Q=d+v; P=Q+h*v
    E=4*v*H*H-P*Q*Q+1
    F=4*d*v*H*H-4*v*Q*Q*H-Q**4+d
    lin=d*h-4*H-Q
    N=4*v*H**3+H+Q; n=2*P*Q*H+2; Z=2*d*H-Q*Q
    S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y
    return {
        'F-minus-dE':(F-d*E, v*Q*Q*lin),
        'N-original-n':(2*N-n*Q, 2*H*E),
        'Z-original-norm':(v*Z*Z-Q**5+d*d, d*F),
        'H-mass':(v*(4*H*H-P*Q)-(P*Q*d-1), E),
        'P-linear':(P*d-Q*Q-4*v*H, v*lin),
        'S-saturation':(v*S-Q**5+d*d, d*d*(v*B*y-d**3+1))}

def verify(cert):
    need(cert['schema']=='B699-D-R04-five-mass-v1','schema')
    expected_contract={'source':'BDKL2025-Lemma2.6 / Bugeaud-Laurent1996-Cor1',
        'p':5,'gamma1':2,'gamma2':3,'D':1,'g':4,'b1':'s-1','b2':1,
        'hprime1':'ln5','hprime2':'ln5','Eprime':'s/ln5',
        'E':'max(ln(s)+2/5,10,10*ln5)','simplified_prefactor':120,
        'external_theorem_proved_by_script':False}
    need(cert['external_contract']==expected_contract,'adopted rational BL specialization mismatch')
    need(all(pow(z,4,5)==1 for z in (2,3)) and all(pow(2,k,5)!=1 for k in (1,2,3)), 'joint order')
    need(Fraction(24*5*4,5-1)==120,'BL rational coefficient')
    d=cert['valuation']
    fixed={'lower_s':142,'tail_cutoff':10**9,'valuation_coefficient':54,'power_exponent':18,
           'finite_max_w':13,'tail_coarse_BL_coefficient':120,'ln_cutoff_upper':27,'log_offset':21,
           'tail_lhs_bound':54*120*48**2,'tail_rhs':10**9-3,
           'tail_margin':10**9-3-54*120*48**2}
    for k,v in fixed.items(): need(d[k]==v,'valuation constant '+k)
    need(d['tail_margin']>0,'tail must dominate')
    need(18*3==54 and 5<2**3,'power transfer')
    # r=4*x+1; solve 6*16^x=1 modulo powers of 5 via the nonzero linear derivative.
    x=0; rows=d['rows']; need(len(rows)==14,'root level coverage')
    minimums=[]; margins=[]
    for w,row in enumerate(rows,1):
        mod=5**w; period=4*5**(w-1)
        if w==1:
            candidates=[0,1,2,3]; residues=[2,0,1,3]; digit=1
        else:
            old_mod=5**(w-1); old_period=4*5**(w-2); old_root=4*x+1
            u=(6*pow(16,x,mod)-1)%mod
            need(u%old_mod==0,'old root is not divisible')
            derivative=((pow(16,5**(w-2),mod)-1)%mod)//old_mod %5
            need(derivative!=0,'linear lifting coefficient vanishes')
            digit=(-(u//old_mod)*pow(derivative,-1,5))%5
            candidates=[old_root+j*old_period for j in range(5)]
            residues=[(6*pow(16,(r-1)//4,mod)-1)%mod for r in candidates]
            x+=digit*5**(w-2)
        root=4*x+1
        need(0<=root<period and (6*pow(16,x,mod)-1)%mod==0,'second root construction')
        need(sum(z==0 for z in residues)==1 and residues[digit]==0,'unique lift')
        first=root+1
        while first<142: first+=period
        expected={'w':w,'modulus':mod,'period':period,'root_r':root,
             'candidate_exponents':candidates,'candidate_residues':residues,
             'winning_digit':digit,
             'order_prime_divisor_checks':{str(p):pow(2,period//p,mod) for p in ([2] if w==1 else [2,5])},
             'minimum_s_at_least_142':first,'margin_s_minus_3_minus_54w':first-3-54*w}
        need(row==expected,'root row mismatch at w='+str(w))
        need(pow(2,period,mod)==1 and all(z!=1 for z in expected['order_prime_divisor_checks'].values()),'exact order')
        need(first-3-54*w>0,'finite valuation margin')
        minimums.append(first); margins.append(first-3-54*w)
    need(minimums[13]>10**9,'high valuation not removed below cutoff')
    need(all(s<=10**9 for s in minimums[:13]),'unexpected finite phase layout')
    # Polynomial identities: coordinate degree <= (5,5,3,1,1,1), so the whole grid is complete.
    p=cert['polynomials']; bounds=[5,5,3,1,1,1]
    need(p['variables']==['d','v','H','h','B','y'] and p['coordinate_degree_bounds']==bounds,'polynomial coordinates')
    rows_p=p['identities']; names=['F-minus-dE','N-original-n','Z-original-norm','H-mass','P-linear','S-saturation']
    need([z['name'] for z in rows_p]==names,'identity roster')
    grid_count=0
    for point in itertools.product(*(range(b+1) for b in bounds)):
        grid_count+=1; raw=values(point)
        for ident in rows_p:
            expected_lhs,expected_rhs=raw[ident['name']]
            lhs=eval_poly(ident['lhs'],point,bounds); rhs=eval_poly(ident['rhs'],point,bounds)
            need(lhs==expected_lhs and rhs==expected_rhs and lhs==rhs,'exact polynomial mismatch')
    # Independent Pell coordinates, with denominator 2 kept modulo 10 before reduction mod 5.
    states=[]
    for q in range(4):
        U,X=1,0
        for _ in range(8*q+1): U,X=(2*U+3*X)%10,(U+2*X)%10
        need(U%2==0 and X%2==1,'Pell parity')
        states.append([q,((3*X-1)//2)%5,(U//2)%5])
    expected_source={'modulus':5,'period':3,'states':states[:3],'return_state':states[3][1:],
           'H_zero_norm_and_linear_imply':'Q^4=d=1 (mod 5); hence q=0 (mod 3)',
           'A_minus_one_at_q_zero_Q':0}
    need(cert['source5']==expected_source and states[3][1:]==states[0][1:],'source5 mismatch')
    need([z[1] for z in states[:3]]==[1,2,3],'source separation')
    # Saturated norm plus linear identity at H=0: eliminate P using its entire unit value.
    saturated=[]
    for dd in range(5):
        for PP in range(1,5):
            for QQ in range(1,5):
                if (PP*QQ*QQ-1)%5==0 and (PP*dd-QQ*QQ)%5==0:
                    need(dd==1 and pow(QQ,4,5)==1,'H-zero unit consequence')
                    saturated.append([dd,PP,QQ])
    c=cert['constants']
    expected_constants={'q_lower_adopted':6,'t_lower':49,'s_lower_proved':142,
       'three_power_test_lhs':3**98,'three_power_test_rhs':2**147,
       'exp2_partial':[19,3],'exp3_partial':[13,1],
       'H_mass_multiplier':4,'P_upper_denominator':8,'Q_upper_multiplier':8,
       'cofactor_power':6,'H_power':5,'n_height_multiplier':8**5,
       'n_height_R_power':18,'A_height_multiplier':6**5,'A_height_power':15,
       'A_bridge_min':4,'A_quadratic_margin_at_min':6}
    need(c==expected_constants,'structural constant mismatch')
    need(3**98>2**147 and 8*6+1==49,'uniform source size floor')
    need(Fraction(19,3)>5 and Fraction(13)>10,'elementary logarithm guards')
    need(Fraction(25,4)<8 and Fraction(3,2)**2>2,'Q-block bound constants')
    need(3**12>2 and 3**15>Fraction(1,32),'prime-block contradiction at minimum block size')
    failure=cert['small_s_failure']
    need(failure=={'s':14,'T':24575,'w':2,'five_power_18w':5**36,
          'claim_not_valid_below_proved_cutoff':True},'cutoff counterexample')
    need(24575%25==0 and 24575%125!=0 and 4*5**36>24575,'small-s boundary')
    need(cert['boundaries']=={'historical_net_increment':0,'historical_net_status':'unverified',
              'MA_divides_H_assumed':False,'parent_math_reexecuted':False,
              'q6_terminal_reexecuted':False,'target_entry_closed':False},'scope guard')
    return {'status':'VERIFIED','root_levels':14,'finite_interval':[142,10**9],
        'finite_max_valuation':13,'first_s_for_valuation_at_least_14':minimums[-1],
        'minimum_finite_margin':min(margins[:13]),'tail_margin':d['tail_margin'],
        'polynomial_identities':6,'complete_grid_points':grid_count,
        'saturated_H0_models_mod5':saturated,
        'external_BL_statement':'adopted; specialization checked; not proved by this code',
        'infinite_tail_and_real_inequalities':'author paper proof with explicit constants',
        'parent_math_reexecuted':False,'q6_terminal_reexecuted':False,'Lean':False}

def negative_tests(cert):
    tests=[
       ('wrong_BL_prime', lambda x:x['external_contract'].__setitem__('p',7)),
       ('wrong_BL_constant', lambda x:x['external_contract'].__setitem__('simplified_prefactor',119)),
       ('undercovered_tail_cutoff', lambda x:x['valuation'].__setitem__('tail_cutoff',10**6)),
       ('wrong_valuation_coefficient', lambda x:x['valuation'].__setitem__('valuation_coefficient',53)),
       ('wrong_root', lambda x:x['valuation']['rows'][12].__setitem__('root_r',201204394)),
       ('forged_lifting_residue', lambda x:x['valuation']['rows'][13]['candidate_residues'].__setitem__(0,0)),
       ('wrong_order', lambda x:x['valuation']['rows'][5].__setitem__('period',6250)),
       ('forged_first_s', lambda x:x['valuation']['rows'][13].__setitem__('minimum_s_at_least_142',1000000001)),
       ('altered_identity_coefficient', lambda x:x['polynomials']['identities'][3]['lhs'][0].__setitem__(1,99)),
       ('understated_identity_degree', lambda x:x['polynomials']['coordinate_degree_bounds'].__setitem__(0,4)),
       ('wrong_Pell_phase', lambda x:x['source5']['states'][1].__setitem__(1,1)),
       ('wrong_height_multiplier', lambda x:x['constants'].__setitem__('n_height_multiplier',16384)),
    ]
    receipts=[]
    for name,mutate in tests:
        bad=copy.deepcopy(cert); mutate(bad)
        need(bad!=cert,'mutation had no effect: '+name)
        try: verify(bad)
        except (Reject,KeyError,IndexError,TypeError) as error:
            receipts.append({'name':name,'status':'REJECTED','reason':str(error)})
        else: raise Reject('Bad certificate accepted: '+name)
    return receipts

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True); ap.add_argument('--negative-tests',action='store_true')
    a=ap.parse_args(); cert=json.loads(a.certificate.read_text(encoding='utf-8'))
    receipt=verify(cert)
    if a.negative_tests: receipt['negative_tests']=negative_tests(cert)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':receipt['status'],'negative_tests':len(receipt.get('negative_tests',[])),
        'minimum_finite_margin':receipt['minimum_finite_margin']},sort_keys=True))
if __name__=='__main__': main()

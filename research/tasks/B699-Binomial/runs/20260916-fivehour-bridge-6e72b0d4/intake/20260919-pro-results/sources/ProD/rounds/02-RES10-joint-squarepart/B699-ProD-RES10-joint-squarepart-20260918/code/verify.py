#!/usr/bin/env python3
"""Deterministic exact replay, standard library only.

No unrestricted n/exponent search. Checks symbolic polynomial identities,
finite residue obligations, fixed diagnostics, and explicit prime witnesses.
The imported old full-5-layer consumer is NOT replayed by this program.
"""
from __future__ import annotations
import argparse, hashlib, json
from pathlib import Path
from core import (analyze, binomial_valuation, chi10, prime_trial, res10_input,
                  shell_member, valuation, witness)

ROOT=Path(__file__).resolve().parents[1]

# Sparse polynomials in three indeterminates, with integer coefficients.
def clean(p):return {m:c for m,c in p.items() if c}
def const(c):return {} if not c else {(0,0,0):c}
def variable(i):
    m=[0,0,0];m[i]=1;return {tuple(m):1}
def add(*ps):
    out={}
    for p in ps:
        for m,c in p.items():out[m]=out.get(m,0)+c
    return clean(out)
def neg(p):return {m:-c for m,c in p.items()}
def sub(p,q):return add(p,neg(q))
def mul(*ps):
    ans=const(1)
    for p in ps:
        out={}
        for m,c in ans.items():
            for n,d in p.items():
                e=tuple(a+b for a,b in zip(m,n))
                out[e]=out.get(e,0)+c*d
        ans=clean(out)
    return ans
def power(p,e):
    out=const(1)
    for _ in range(e):out=mul(out,p)
    return out
def scale(c,p):return mul(const(c),p)


def reject(fn,*args):
    try:fn(*args)
    except (ValueError,AssertionError):return True
    return False


def compute():
    A,a,C=variable(0),variable(1),variable(2)
    N=add(mul(A,C),const(3))
    j=add(mul(a,C),const(2))
    Z=sub(scale(2,A),scale(3,a))
    H=mul(Z,sub(Z,A))
    identity=sub(sub(mul(power(A,2),j,sub(j,const(1))),H),
                 mul(N,add(mul(power(a,2),N),mul(a,sub(scale(2,Z),A)))))
    assert identity=={}
    center_square=sub(add(scale(4,H),power(A,2)),scale(9,power(sub(scale(2,a),A),2)))
    assert center_square=={}
    n_affine=add(N,const(1)); k_affine=sub(n_affine,j)
    center_linear=sub(mul(power(C,2),H),
                      sub(mul(N,add(scale(2,n_affine),const(4))),scale(9,mul(j,k_affine))))
    assert center_linear=={}
    damaged=add(identity,const(1));assert damaged!={}
    # A fixed symbolic positivity certificate valid for every x >= 0:
    # 10(n-1)^4(n-3)^2 - 9n^6 > 0 for n=100+x.
    x=variable(0);n=add(x,const(100))
    positive=sub(scale(10,mul(power(sub(n,const(1)),4),power(sub(n,const(3)),2))),
                 scale(9,power(n,6)))
    assert all(c>0 for c in positive.values()) and positive[(0,0,0)]>0
    pos=[{'x_power':m[0],'coefficient':str(c)} for m,c in sorted(positive.items())]

    fixed=json.loads((ROOT/'diagnostics/first_row_tail_example.json').read_text())
    nn,jj=int(fixed['n']),int(fixed['j'])
    original=analyze(nn,jj)
    assert original['a']==132 and original['E']==3 and original['z']=='1'
    assert original['M']=='1' and original['U_integer']
    assert original['exact_joint_trigger'] and original['simple_joint_trigger']
    assert not original['full_5_layer_direct_test']
    original['witness']=witness(nn,jj,11)
    assert original['witness']['v_p_C_n_6']>0
    assert original['witness']['v_p_C_n_j']>0

    shells=[]
    for E,index in [(2,0),(3,0),(6,1)]:
        item=shell_member(E,index)
        result=analyze(item['n'],item['j'])
        assert not result['U_integer']
        assert result['max_v5_j_k']==2
        if E>=3:assert not result['full_5_layer_direct_test']
        else:assert result['full_5_layer_direct_test']
        # A small explicit witness, not a claim that the shell is NC.
        pp=next(p for p in range(7,1000) if prime_trial(p)
                and binomial_valuation(item['n'],6,p)>0
                and binomial_valuation(item['n'],item['j'],p)>0)
        shells.append({'parameters':{k:str(v) for k,v in item.items()},
                       'analysis':result,'witness':witness(item['n'],item['j'],pp)})

    # Dedicated full-source-power diagnostic: source exponent 3 at p=41,
    # layer 41 passes, but layer 41^2 has a genuine target carry.
    base=shell_member(3,0)
    step=162*5**4
    index=((41-base['V'])*pow(step,-1,41**2)) % (41**2)
    full=shell_member(3,index)
    assert valuation(full['V'],41)==1
    n41,j41=full['n'],full['j']
    assert (j41%41)==(n41%41)==1
    assert j41%(41**2)>n41%(41**2)
    fullpower={'parameters':{k:str(v) for k,v in full.items()},
               'source_complete_exponent':valuation(n41-1,41),
               'radical_layer_passes':True,'square_layer_has_carry':True,
               'witness':witness(n41,j41,41)}
    assert fullpower['source_complete_exponent']==3
    # The affine zero branch is real outside the g>2 hypothesis.
    zero_guard={'n':22,'j':8,'g':2,'C':3,'A':6,'b':2,
                'H':(2*6-3*2)*(6-3*2),'outside_RES10':True}
    assert zero_guard['H']==0 and 3*zero_guard['j']==zero_guard['n']+2

    # Fixed local tests of the ALL-E proof (not an enumeration proof).
    local=[]
    for E,h in [(3,0),(5,1),(9,2)]:
        K=E+3;mod=5**K;L=81;z=5**h;n0=5+5**E
        g0=n0*pow(L,-1,mod)%mod
        b=0;P=5
        assert (b*(L-b)-10*z*z*(n0-1))%P==0
        for _ in range(1,K):
            matches=[b+c*P for c in range(5)
                     if ((b+c*P)*(L-b-c*P)-10*z*z*(n0-1))%(5*P)==0]
            assert len(matches)==1
            b=matches[0];P*=5
        j0=g0*b%mod;k0=(n0-j0)%mod
        assert (g0*L-n0)%mod==0
        assert valuation(j0,5)==2+2*h and valuation(k0,5)==1
        assert j0%(5**E)>5
        local.append({'E':E,'h':h,'K':K,'modulus':str(mod),'g_residue':str(g0),
                      'beta_residue':str(b),'j_residue':str(j0),
                      'max_v5_j_k':2+2*h,'scope':'5-adic necessary system only'})

    # A complete finite character table. Reciprocity supplies the all-m claim.
    character_table=[{'residue_mod40':r,'chi10':chi10(r)}
                     for r in range(1,40,2) if r%5]
    assert chi10(29)==-1 and chi10(1)==1
    assert all(chi10((r*r)%40)==1 for r in range(1,40,2) if r%5)
    # Check the definition for every eligible prime below 200 as a unit test;
    # these samples do not replace quadratic reciprocity.
    for p in range(7,200):
        if prime_trial(p):
            leg=pow(10,(p-1)//2,p)
            assert chi10(p)==(1 if leg==1 else -1)
    assert original['jacobi_q3_trigger']
    mod9000=[]
    for m in range(5):
        row=1530+1800*m
        EE=valuation(row-5,5)
        mod9000.append({'n_mod9000':row,'E_is_2':EE==2})
    assert [r['n_mod9000'] for r in mod9000 if r['E_is_2']] == [1530,3330,6930,8730]
    weights={'n':40,'g':1,'alpha':39,'z':19,'U':40,'M':36,'h':18,'v':1,
             'q3':40,'E3':18,'I3':22,'q4':40,'E4':18,'A4':18,'C':4,'q5':10,'five_power':30}
    assert weights['q3']+weights['q4']==weights['M']+weights['I3']+weights['A4']+weights['C']
    assert 2*weights['h']>2*weights['g']+2*weights['v']
    assert 2*weights['g']+2*weights['q5']<weights['n']
    assert weights['z']==weights['h']+weights['v']
    negative={
        'wrong_tail':reject(res10_input,nn+1,jj),
        'illegal_j':reject(res10_input,nn,6),
        'nonprime_witness':reject(witness,nn,jj,49),
        'below_threshold_witness':reject(witness,nn,jj,5),
        'wrong_common_prime':reject(witness,nn,jj,3),
        'nonzero_polynomial_mutation':damaged!={},
    }
    assert all(negative.values())
    return {
        'status':'PASS_RES10_JOINT_SQUAREPART',
        'proof_status':'author paper proof plus same-session deterministic arithmetic replay',
        'old_full5_theorem_replayed':False,'Lean':False,'external_independent_review':False,
        'symbolic_identities_checked':3,'positive_polynomial_shift':'n=100+x, x>=0',
        'positive_polynomial_coefficients':pos,
        'same_input_q1_passes_full5_fails_but_new_joint_trigger_holds':original,
        'infinite_shell_fixed_checks':shells,
        'complete_source_power_diagnostic':fullpower,
        'affine_zero_guard_diagnostic':zero_guard,
        'all_E_local_model_fixed_checks':local,
        'complete_mod9000_obligation':mod9000,
        'quadratic_character_mod40':character_table,
        'classical_quadratic_reciprocity_adopted':True,
        'size_relaxation_only_weights':weights,
        'negative_checks':negative,
        'unbounded_search_performed_by_replay':False,
    }


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--write',action='store_true',help='write the deterministic expected certificate')
    args=p.parse_args()
    out=compute()
    data=(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
    path=ROOT/'certificates/verification.json'
    if args.write:path.write_bytes(data)
    else:
        assert path.read_bytes()==data,'certificate mismatch; inspect instead of overwriting'
    print(out['status'])
    print('certificate_sha256='+hashlib.sha256(data).hexdigest())
    print('3 polynomial identities; 1 all-n positive-coefficient certificate; explicit prime witnesses checked.')
    print('No historical full-chain replay, no Lean, no external independent review.')
if __name__=='__main__':main()

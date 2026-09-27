#!/usr/bin/env python3
"""Separate standard-library acceptance implementation. Does NOT import discover.
Verifies finite certificates; it is not an external review of the paper proofs.
"""
from __future__ import annotations
import argparse,hashlib,json
from math import gcd,isqrt
from pathlib import Path

def valuation(x,p):
    if x==0:raise ValueError('zero has no finite valuation')
    k=0
    while x%p==0:x//=p;k+=1
    return k

def isprime(p):return p>1 and not any(p%d==0 for d in range(2,isqrt(p)+1))

def chi10(n):
    n=abs(n)
    if gcd(n,10)>1:return 0
    two=1 if n%8 in (1,7) else -1
    five=1 if n%5 in (1,4) else -1
    return two*five

def chi3(n):
    n=abs(n)
    if n%3==0:return 0
    return 1 if n%12 in (1,11) else -1

def beta_from_square_root(M,p,e,h):
    P=p**e;mod=p**h;big=p**(e+h)
    value=(1-P*M*pow(3,-1,big))%big
    y=1;precision=p
    while precision<big:
        precision=min(precision*precision,big)
        y=(y+value*pow(y,-1,precision))*pow(2,-1,precision)%precision
    assert (y*y-value)%big==0 and (y-1)%P==0
    return (1+P*M)*((1-y)//P)*pow(2,-1,mod)%mod

def no_borrow(m,b,p,h):
    # Equivalent digit test implemented through all prefix remainders.
    q=p
    for _ in range(h):
        if b%q>m%q:return False
        q*=p
    return True

def r_value(M,p,e,h,S):
    N=p**e*M;mod=p**(e+h)
    return S*(N*N+2*N-11)*pow(12*N-48,-1,mod)%mod

def read(root,name):return json.loads((root/name).read_text(encoding='utf-8'))

def check(root:Path):
    masks=read(root,'carry_masks.json');total=0
    expected_menu=[(7,1,h) for h in range(1,6)]+[(7,2,h) for h in range(1,5)]
    expected_menu +=[(p,1,h) for p in (17,19,29) for h in range(1,4)]
    expected_menu +=[(17,2,h) for h in range(1,4)]+[(233,1,h) for h in (1,2)]
    assert [(r['p'],r['e'],r['h']) for r in masks['rows']]==expected_menu
    for row in masks['rows']:
        p,e,h=row['p'],row['e'],row['h'];S=5**row['E_for_test'];mod=p**h
        assert isprime(p) and p!=11 and p>=7
        kept=0;sha=hashlib.sha256();examples=[]
        for M in range(1,mod):
            if M%p==0:continue
            b=beta_from_square_root(M,p,e,h)
            if not no_borrow(M,b,p,h):continue
            R=r_value(M,p,e,h,S);La=48*R-11*S;P=p**e
            assert valuation(La,p)==e
            assert (S*P*M*M+(2*S-12*R)*M+La//P)%mod==0
            sha.update(f'{M},{b},{R}\n'.encode());kept+=1
            if len(examples)<4:examples.append({'M':M,'b':b,'R_residue':R})
        assert kept==row['survivors']==(p-1)//2*((p+1)//2)**(h-1)
        assert row['unit_residues']==(p-1)*p**(h-1)
        assert row['excluded']==row['unit_residues']-kept
        assert row['M_modulus']==mod and row['R_modulus']==p**(e+h)
        assert row['survivor_stream_sha256']==sha.hexdigest() and row['examples']==examples
        total+=row['unit_residues']
    a=read(root,'affine_counts.json')
    assert [r['p'] for r in a['rows']]==[p for p in range(7,240) if isprime(p) and p!=11]
    for row in a['rows']:
        p=row['p'];vals=[]
        for c in range(p):
            bs=[(m*pow(12,-1,p)+c)%p for m in range(p)]
            diffs=[(b-m)%p for m,b in enumerate(bs)]
            assert sorted(diffs)==list(range(p)) and sum(bs)==p*(p-1)//2
            vals.append(p-sum(b>m for m,b in enumerate(bs)))
        assert vals==row['counts_for_all_offsets']==[(p+1)//2]*p
    assert a['excluded_prime']==11
    tab=read(root,'primitive_R5.json')
    assert len(tab['valuation_sieve'])==32
    for row in tab['valuation_sieve']:
        modulus=row['modulus'];m=valuation(modulus,3)
        bad=sum(2*3**(m-v-1) for v in range(1,m,2))
        assert row['odd_v3_rejected']==bad and row['zero_class_unresolved']==1
        assert row['even_v3_visible']==modulus-bad-1
    for row in tab['character_rows']:
        R=row['R_mod40'];W=row['W_mod40'];z=row['z_mod2'];b=row['b_mod4']
        assert chi10(R)==1
        expected=(20*z-pow(3,b,40)*R)%40
        assert W==expected and chi10(W)==row['chi10_W']==(-1)**z
    w=read(root,'W_route.json')
    ps=[p for p in range(7,500) if isprime(p) and chi3(p)==-1 and chi3(p)*chi10(p)==1]
    assert [r['p'] for r in w['rows']]==ps
    for row in w['rows']:
        p=row['p'];n=row['n_mod_p'];z2=row['z_squared'];d2=row['delta_squared']
        assert (5*n-12)%p==0 and (120*z2-1)%p==0 and (d2-64*z2)%p==0
        assert (d2+40*(n-1)*z2-1)%p==0 and pow(d2,(p-1)//2,p)==1
        assert row['norm_square_compatible'] is True
        assert row['is_first_source_contact']==(p==7)==(n==1)
    ex=read(root,'nonlinear_boundary.json');p=ex['p'];e=ex['e'];h=ex['h'];R=ex['R'];S=ex['S']
    assert S==5**ex['E'] and 0<R<S//4 and R%120==27
    La=48*R-11*S;assert La==ex['Lambda'] and valuation(La,p)==e
    M=ex['nonlinear_M'];b=beta_from_square_root(M,p,e,h);P=p**e;mod=p**h
    assert (S*P*M*M+(2*S-12*R)*M+La//P)%mod==0 and b==ex['nonlinear_b']
    lm=4*(La//P)*pow(3*S,-1,mod)%mod;lb=(La//P)*pow(9*S,-1,mod)%mod
    assert lm==ex['incorrect_linear_M'] and lb==ex['incorrect_linear_b']
    assert M!=lm or b!=lb
    W=(S-5*R)//10
    assert (S-5*R)%10==0 and W==ex['W_for_g10_t0'] and gcd(abs(W),30*R)==1
    assert ex['full_current_model'] is False
    fam=read(root,'original_family.json');p=fam['p'];k=fam['k0'];period=fam['k_period']
    assert p==233 and k==19919 and period==p*p*(p-1) and pow(5,period,p**3)==1
    assert fam['q5']==1 and fam['certified_new_historical_coverage']==0
    for row in fam['residues']:
        h=row['power'];mod=p**h;x=pow(5,k,mod)
        A=(x*x-2*x+2)%mod;B=(x*x+2*x+2)%mod
        n=(x**4+5)%mod;j=(n-A*(x+2+5*B)*pow(8,-1,mod))%mod
        prod=(3*x*x-7*x+8)*(5*x*x+11*x+12)
        U=prod*pow(64,-1,mod)%mod;F=(n*n-3*prod*pow(16,-1,mod))%mod
        assert row=={'power':h,'modulus':mod,'n_residue':n,'j_residue':j,'U_residue':U,'F_residue':F,'borrow':j>n}
    assert fam['e']==1 and fam['f']==2 and fam['witness_original_layer']==3
    assert fam['M_mod_p2']==6725 and fam['b_mod_p2']==23608
    assert beta_from_square_root(6725,233,1,2)==23608
    assert not fam['residues'][1]['borrow'] and fam['residues'][2]['borrow']
    sy=read(root,'symbolic.json')
    assert sy['zero_remainders']==[[],[],[]]
    # Check polynomial identity by exact coefficient convolution, plus several
    # exact integer substitutions for the new two identities (paper gives the algebra).
    def conv(a,b):
        r=[0]*(len(a)+len(b)-1)
        for i,x in enumerate(a):
          for j,y in enumerate(b):r[i+j]+=x*y
        return r
    assert sy['family_j8_coefficients']==[16,2,0,-1,3]
    assert sy['family_k8_coefficients']==[24,-2,0,1,5]
    assert conv(sy['family_j8_coefficients'],sy['family_k8_coefficients'])==sy['family_j8k8_coefficients']
    assert conv([4,0,0,0,1],conv([8,-7,3],[12,11,5]))==sy['family_N_times_U64_coefficients']==sy['family_j8k8_coefficients']
    for S in (5,125,5**27):
      for R in (1,7,31):
       for q in (1,13,31):
        n=S*q+5;U=R*q+1;N=n-1;F=n*n-12*U;La=48*R-11*S
        assert S*F==N*(S*(N+2)-12*R)+La and n-5*U==q*(S-5*R)
    summary=read(root,'summary.json')
    assert summary['R7']==[3,4,5,6,7,8,9]
    assert summary['certificate_files_including_summary']==8 and summary['mask_parameter_rows']==23
    assert summary['mask_unit_residues_enumerated']==total==114564
    for key in ('B_RES10_closed','E4_square_branch_closed','Lean','external_independent_review'):
        assert summary[key] is False
    assert summary['certified_historical_net_reduction']==summary['full_current_models_constructed']==0
    return {'status':'PASS','certificate_files':8,'mask_rows':23,
      'exact_unit_residues_checked':total,'external_independent_review':False,
      'acceptor_imports_discovery':False}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,required=True);args=ap.parse_args()
    print(json.dumps(check(args.certificates),sort_keys=True,ensure_ascii=False))
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not disable assertions')
    main()

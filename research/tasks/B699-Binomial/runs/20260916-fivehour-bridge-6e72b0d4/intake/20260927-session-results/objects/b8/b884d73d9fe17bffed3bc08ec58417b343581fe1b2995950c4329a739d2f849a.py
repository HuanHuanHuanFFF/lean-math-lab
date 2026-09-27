#!/usr/bin/env python3
"""Generate only this round's exact certificates. Python standard library."""
from __future__ import annotations
import argparse, hashlib, json, math, sys
from pathlib import Path
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]

def dump(p:Path,v:object)->None:
    p.parent.mkdir(parents=True,exist_ok=True)
    p.write_text(json.dumps(v,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
def valuation(x:int,p:int)->int:
    if x==0: raise ValueError('valuation of zero is not finite')
    x=abs(x);e=0
    while x%p==0:x//=p;e+=1
    return e

def coarse(x:int)->int:
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def jac(a:int,n:int)->int:
    if n<=0 or n%2==0:raise ValueError('positive odd denominator required')
    a%=n;s=1
    while a:
        while a%2==0:
            a//=2
            if n%8 in (3,5):s=-s
        a,n=n,a
        if a%4==n%4==3:s=-s
        a%=n
    return s if n==1 else 0

def legendre(a:int,p:int)->int:
    q=pow(a%p,(p-1)//2,p)
    return -1 if q==p-1 else q

def vp_binom(n:int,j:int,p:int)->int:
    ans=0;q=p
    while q<=n:ans+=n//q-j//q-(n-j)//q;q*=p
    return ans

def prime_trial(p:int)->bool:
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def window(n:int,j:int,r:int)->bool:
    q=coarse(n-r);v=1
    for b in range(r+1):v=v*(j-b)%q
    return v==0

def recover(n:int,j:int)->dict:
    if not (7<=j<n//2+1):raise ValueError('not an original legal pair')
    g=math.gcd(n,j);alpha=n//g;N=n-1;k=n-j
    if j*k%N:raise ValueError('first source not integral')
    U=j*k//N
    if U%g:raise ValueError('X not an integer')
    X=(j-U)//g;Y=(k-U)//g
    if min(X,Y)<=0:raise ValueError('positive factors required')
    q4=coarse(n-4);C=math.gcd(q4,j-2);M=math.gcd(coarse(n-2),j-1)
    a=0;tmp=alpha
    while tmp%3==0:tmp//=3;a+=1
    quot,rem=divmod(U,10*g*g)
    z=math.isqrt(quot) if quot>=0 else 0
    norm_ok=(rem==0 and z>0 and z*z==quot)
    return {'n':n,'j':j,'g':g,'alpha':alpha,'a':a if tmp==1 else None,'U':U,'X':X,'Y':Y,
        'M':M,'u_minus':X//M if X%M==0 else None,'u_plus':Y//M if Y%M==0 else None,
        'q4':q4,'C':C,'E4':math.gcd(q4,j*k),'chi2_C':jac(2,C),'chi3_C':jac(3,C),
        'chi10_C':jac(10,C),'chi30_C':jac(30,C),'chi6_alpha_X_C':jac(6*alpha*X,C),
        'chi6_alpha_Y_C':jac(6*alpha*Y,C),'central_unitary':math.gcd(C,q4//C)==1,
        'norm_ok':norm_ok,'z':z if norm_ok else None,
        'effective15_X':alpha*X%15==0 and math.isqrt(alpha*X//15)**2==alpha*X//15,
        'effective15_Y':alpha*Y%15==0 and math.isqrt(alpha*Y//15)**2==alpha*Y//15,
        'source_windows':[window(n,j,r) for r in range(6)],
        'all_q5_near':((j-1)*(j-4))%coarse(n-5)==0,
        'current_model':False}

def witness(n:int,j:int,p:int,r:int)->dict:
    if not prime_trial(p) or r not in (3,4) or (n-r)%p:raise ValueError('bad source witness')
    w=recover(n,j);ax=w['alpha']*w['X'];ay=w['alpha']*w['Y']
    chiX=legendre(ax,p);chiY=legendre(ay,p)
    assert chiX==chiY==-1
    assert legendre(3,p)==1 and (r==3 or legendre(2,p)==1)
    e=valuation(n-r,p)
    result={'n':n,'j':j,'p':p,'r':r,'e':e,'j_mod_p':j%p,'j_mod_full_power':j%(p**e),
            'square_class_coefficient_X':ax,'square_class_coefficient_Y':ay,'root_X':1,'root_Y':1,
            'chi3':legendre(3,p),'chi2':legendre(2,p),'chi_dX':chiX,'chi_dY':chiY,
            'vp_binomial_6':vp_binom(n,6,p),'vp_binomial_j':vp_binom(n,j,p),
            'actual_full_source_power':p**e,'current_model':False}
    assert result['vp_binomial_6']==e and result['vp_binomial_j']>=1
    return result

def lifted_root_13(k:int)->int:
    root=8;mod=13
    for _ in range(1,k):
        digit=(-((root*root-root-4)//mod)*pow((2*root-1)%13,-1,13))%13
        root+=digit*mod;mod*=13
    assert (root*root-root-4)%mod==0
    return root

def family(e:int,h:int)->dict:
    root=lifted_root_13(e+1);mod=13**(e+1)
    j0=(root+13**e)%mod
    j0+=(-j0*pow(mod,-1,4)%4)*mod
    if j0<8:j0+=4*mod
    j=j0+4*mod*h;n=j*(j-1)//2+1
    w=witness(n,j,13,3)
    w.update({'family_e':e,'family_h':h,'rho_next':root,'j0':j0,'g':math.gcd(n,j),
        'U':j-2,'X':2,'Y':(j-2)*(j-3)//2,
        'failure_boundaries':['n is odd','actual g=1, not current g=10*3^t*c',
            'no assertion of global ten-square, pure-three quotient, negative central C or full q5 near'],
        'prime_trial_divisors':[2,3]})
    assert valuation(n-3,13)==e and j%4==0 and math.gcd(n,j)==1
    return w

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');a=ap.parse_args()
    signs=[]
    for C in (7,19):
        row={'C_representative':C,'chi2':jac(2,C),'chi3':jac(3,C),'chi5':jac(5,C),
             'chi30':jac(30,C),'effective_core_test':{str(d):jac(6*d,C) for d in (6,10,15)},
             'status_15':'excluded_for_all_square_parts'}
        signs.append(row)
    dump(a.out/'central_core_certificate.json',{'sign_cases':signs,'general_identity':'chi_C(6 alpha X)=chi_C(6 alpha Y)=1',
        'translation_even_a_forbidden_X_core':15,'translation_odd_a_forbidden_X_core':5,
        'conditional_effective_10_excluded_when_chi2_C':-1,
        'primewise_required_symbol3_for_effective15':1,'primewise_required_symbol2_for_effective10':1,
        'jacobi_masking_example':{'C':7*19**2,'full_factorization':{'7':1,'19':2},'chi2_C':jac(2,7*19**2),
            'chi3_C':jac(3,7*19**2),'chi6times10_C':jac(60,7*19**2),'obstruction_prime':19,
            'obstruction_prime_exponent':2,'symbol2_at_obstruction':legendre(2,19),
            'effective10_passes_jacobi_only':True,'effective10_passes_primewise':False,'ordinary_model':False},
        'ordinary_model_produced':False})
    tab=[]
    for r in (3,4):
        for b in range(r+1):
            tab.append({'r':r,'b':b,'denominator':r-1,'numerator_X':r*b*(b-1),
                        'numerator_Y':r*(r-b)*(r-b-1)})
    dump(a.out/'source_polynomial_certificate.json',{'source_rows':tab,
        'central_expansion_3njj1_minus8N':{'d':-2,'x':36,'dx':9,'x2':12,'dx2':3},
        'central_U_identity_rhs':'2(n-4)+3(j-2)(k-2)',
        'target_even_exponent_examples':[{'e':e,'forced_target_exponent':2*((e+1)//2),'original_source_exponent':e} for e in range(1,9)]})
    old=json.loads((ROOT/'sources/R8_canonical_factor_pairs.json').read_text())
    computed=[recover(row['n'],row['j']) for row in old]
    for row in computed:
        if row['C']>1:
            assert row['chi30_C']==row['chi6_alpha_X_C']==row['chi6_alpha_Y_C']==1
            if row['chi3_C']==-1:assert not row['effective15_X'] and not row['effective15_Y']
    dump(a.out/'ordinary_regressions.json',computed)
    cases=[witness(old[1]['n'],old[1]['j'],2963,3),witness(old[1]['n'],old[1]['j'],4751,4),
           witness(old[2]['n'],old[2]['j'],23,3),witness(29,8,13,3)]
    dump(a.out/'original_source_witnesses.json',cases)
    fam=[family(e,h) for e in (1,2,3,5,8) for h in (0,1)]
    dump(a.out/'unbounded_power_family_checks.json',fam)
    dump(a.out/'scope_and_boundary.json',{'historical_certified_net_deletion':0,'R7':[3,4,5,6,7,8,9],
        'B_RES10_closed':False,'E4_square_closed':False,'all_conditions_ordinary_model_found':False,
        'k4_terminal_contract_available':False,'k4_terminal_completed':False,
        'old_gap_core_rerun':False,'old_modular_counters_rerun':False,
        'U_minus_one_square_exclusion_new':False,
        'U_minus_one_mod8_for_even_g':[{'g_mod8':g,'z_mod8':z,'U_minus_one_mod8':(10*g*g*z*z-1)%8} for g in (2,4,6,8) for z in (1,2,3,4)],
        'C_negative_is_essential_boundary':{'n':162,'j':70,'alpha_X':1215,'factorization':'15*9^2','C':1},
        'evidence_level':'author paper proof + deterministic arithmetic + same-author separated implementation'})
    print('Generated 6 certificates; 4 inherited ordinary regressions, 4 original-source witnesses, 10 family checks. No global deletion claimed.')
if __name__=='__main__':main()

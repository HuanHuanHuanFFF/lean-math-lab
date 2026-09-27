#!/usr/bin/env python3
"""Separate exact acceptance. Does not import the discovery implementation."""
from __future__ import annotations
import argparse,json,math,sys
from pathlib import Path
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]

def require(t:bool,msg:str)->None:
    if not t:raise ValueError(msg)

def qr(a:int,p:int)->int:
    a%=p
    return 0 if not a else (1 if a in {x*x%p for x in range(1,(p+1)//2)} else -1)

def jchar(a:int,n:int)->int:
    # Only the actual tiny C=1,7 and sign-case C=19 are needed here.
    require(n in (1,7,19),'unexpected denominator in frozen regression')
    return 1 if n==1 else qr(a,n)

def strip(n:int)->int:
    for p in [5,3,2]:
        while n//p*p==n:n//=p
    return n

def val(n:int,p:int)->int:
    require(n!=0,'infinite valuation not allowed')
    power=p;e=0
    while n%power==0:e+=1;power*=p
    return e

def prime(p:int)->bool:
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,math.isqrt(p)+1,2))

def carry_val(n:int,j:int,p:int)->int:
    left=j;right=n-j;carry=0;total=0
    while left or right or carry:
        left,x=divmod(left,p);right,y=divmod(right,p)
        carry=(x+y+carry)//p;total+=carry
    return total

def deriv(n:int,j:int)->dict:
    require(7<=j<=n//2,'illegal original interval')
    g=math.gcd(j,n);alpha=n//g;beta=j//g;gamma=(n-j)//g;N=n-1
    require(j*(j-1)%N==0,'first-source division fails')
    U=j-j*(j-1)//N
    require(U%g==0,'nonintegral factor')
    X=beta-U//g;Y=gamma-U//g
    require(X>0 and Y>0,'nonpositive factor')
    q4=strip(n-4);C=math.gcd(j-2,q4);M=math.gcd(j-1,strip(n-2))
    tmp=alpha;a=0
    while tmp>1 and tmp%3==0:tmp//=3;a+=1
    square_num=U//(10*g*g);z=math.isqrt(square_num)
    ok=U==10*g*g*z*z and z>0
    if ok:
        delta=gamma-beta
        require(delta*delta+40*N*z*z==alpha*alpha,'primitive norm identity fails')
        require(beta*beta-alpha*X==10*z*z,'X norm identity fails')
        require(gamma*gamma-alpha*Y==10*z*z,'Y norm identity fails')
    windows=[math.prod(j-i for i in range(r+1))%strip(n-r)==0 for r in range(6)]
    return {'n':n,'j':j,'g':g,'alpha':alpha,'a':a if tmp==1 else None,'U':U,'X':X,'Y':Y,
        'M':M,'u_minus':X//M if X%M==0 else None,'u_plus':Y//M if Y%M==0 else None,
        'q4':q4,'C':C,'E4':math.gcd(q4,j*(n-j)),'chi2_C':jchar(2,C),'chi3_C':jchar(3,C),
        'chi10_C':jchar(10,C),'chi30_C':jchar(30,C),'chi6_alpha_X_C':jchar(6*alpha*X,C),
        'chi6_alpha_Y_C':jchar(6*alpha*Y,C),'central_unitary':math.gcd(C,q4//C)==1,
        'norm_ok':ok,'z':z if ok else None,
        'effective15_X':alpha*X%15==0 and math.isqrt(alpha*X//15)**2==alpha*X//15,
        'effective15_Y':alpha*Y%15==0 and math.isqrt(alpha*Y//15)**2==alpha*Y//15,
        'source_windows':windows,'all_q5_near':math.prod((j-1,j-4))%strip(n-5)==0,'current_model':False}

def independent_witness(n:int,j:int,p:int,r:int)->dict:
    require(prime(p) and r in (3,4) and (n-r)%p==0,'invalid original source prime')
    # Recover directly; witnesses need not have the small C used by deriv().
    g=math.gcd(n,j);alpha=n//g;N=n-1;k=n-j
    require(j*k%N==0,'nonintegral U')
    U=j*k//N;require(U%g==0,'nonintegral X/Y')
    X=(j-U)//g;Y=(k-U)//g;ax=alpha*X;ay=alpha*Y
    require(qr(ax,p)==qr(ay,p)==-1,'pair has no double-nonresidue obstruction')
    require(qr(3,p)==1 and (r==3 or qr(2,p)==1),'wrong source sign hypothesis')
    e=val(n-r,p);v6=carry_val(n,6,p);vj=carry_val(n,j,p)
    require(v6==e and vj>=1 and j%p>r,'original transfer failed')
    require(val(math.comb(n,6),p)==e,'direct binomial6 valuation failed')
    if n<=300000:require(val(math.comb(n,j),p)==vj,'direct binomial j failed')
    return {'n':n,'j':j,'p':p,'r':r,'e':e,'j_mod_p':j%p,'j_mod_full_power':j%(p**e),
        'square_class_coefficient_X':ax,'square_class_coefficient_Y':ay,'root_X':1,'root_Y':1,
        'chi3':qr(3,p),'chi2':qr(2,p),'chi_dX':qr(ax,p),'chi_dY':qr(ay,p),
        'vp_binomial_6':v6,'vp_binomial_j':vj,'actual_full_source_power':p**e,'current_model':False}

def brute_lift(k:int)->int:
    root=8;mod=13
    for _ in range(k-1):
        options=[root+i*mod for i in range(13) if ((root+i*mod)**2-(root+i*mod)-4)%(13*mod)==0]
        require(len(options)==1,'not a unique lift');root=options[0];mod*=13
    return root

def family_row(e:int,h:int)->dict:
    rho=brute_lift(e+1);period=13**(e+1)
    candidates=[(rho+13**e)%period+i*period for i in range(4)]
    j0=next(x for x in candidates if x%4==0)
    if j0<8:j0+=4*period
    j=j0+4*period*h;n=j*(j-1)//2+1
    out=independent_witness(n,j,13,3)
    out.update({'family_e':e,'family_h':h,'rho_next':rho,'j0':j0,'g':math.gcd(n,j),
        'U':j-2,'X':2,'Y':(j-2)*(j-3)//2,
        'failure_boundaries':['n is odd','actual g=1, not current g=10*3^t*c',
            'no assertion of global ten-square, pure-three quotient, negative central C or full q5 near'],
        'prime_trial_divisors':[2,3]})
    require(out['e']==e and out['g']==1 and n%2==1,'family scope mismatch')
    return out

def expected()->dict:
    outputs={}
    signs=[]
    for c in (7,19):
        signs.append({'C_representative':c,'chi2':qr(2,c),'chi3':qr(3,c),'chi5':qr(5,c),
            'chi30':qr(30,c),'effective_core_test':{str(d):qr(6*d,c) for d in (6,10,15)},
            'status_15':'excluded_for_all_square_parts'})
    outputs['central_core_certificate.json']={'sign_cases':signs,
        'general_identity':'chi_C(6 alpha X)=chi_C(6 alpha Y)=1',
        'translation_even_a_forbidden_X_core':15,'translation_odd_a_forbidden_X_core':5,
        'conditional_effective_10_excluded_when_chi2_C':-1,
        'primewise_required_symbol3_for_effective15':1,'primewise_required_symbol2_for_effective10':1,
        'jacobi_masking_example':{'C':2527,'full_factorization':{'7':1,'19':2},'chi2_C':qr(2,7)*qr(2,19)**2,
            'chi3_C':qr(3,7)*qr(3,19)**2,'chi6times10_C':qr(60,7)*qr(60,19)**2,'obstruction_prime':19,
            'obstruction_prime_exponent':2,'symbol2_at_obstruction':qr(2,19),
            'effective10_passes_jacobi_only':True,'effective10_passes_primewise':False,'ordinary_model':False},
        'ordinary_model_produced':False}
    table3=[(0,18),(0,6),(6,0),(18,0)]
    table4=[(0,48),(0,24),(8,8),(24,0),(48,0)]
    tab=[]
    for r,entries in [(3,table3),(4,table4)]:
        for b,(xx,yy) in enumerate(entries):
            require(xx==r*b*(b-1) and yy==r*(r-b)*(r-b-1),'source identity wrong')
            tab.append({'r':r,'b':b,'denominator':r-1,'numerator_X':xx,'numerator_Y':yy})
    # Exhaustion here is polynomial coefficient verification on a degree-bounded grid,
    # NOT a search of original integers or local solution families.
    for d in range(4):
        for x in range(5):
            n=4+d;j=2+x
            require(3*n*j*(j-1)-8*(n-1)==-2*d+36*x+9*d*x+12*x*x+3*d*x*x,'central expansion')
    for j in range(5):
        for k in range(5):
            require(3*j*k-4*(j+k-1)==2*(j+k-4)+3*(j-2)*(k-2),'central U identity')
    outputs['source_polynomial_certificate.json']={'source_rows':tab,
        'central_expansion_3njj1_minus8N':{'d':-2,'x':36,'dx':9,'x2':12,'dx2':3},
        'central_U_identity_rhs':'2(n-4)+3(j-2)(k-2)',
        'target_even_exponent_examples':[{'e':e,'forced_target_exponent':e+(e%2),'original_source_exponent':e} for e in range(1,9)]}
    inputs=json.loads((ROOT/'sources/R8_canonical_factor_pairs.json').read_text())
    rows=[deriv(x['n'],x['j']) for x in inputs]
    for row in rows:
        if row['C']>1:
            require(row['chi30_C']==row['chi6_alpha_X_C']==row['chi6_alpha_Y_C']==1,'central character failed')
            if row['chi3_C']==-1:require(not row['effective15_X'] and not row['effective15_Y'],'excluded core survived')
    outputs['ordinary_regressions.json']=rows
    outputs['original_source_witnesses.json']=[independent_witness(inputs[1]['n'],inputs[1]['j'],2963,3),
        independent_witness(inputs[1]['n'],inputs[1]['j'],4751,4),
        independent_witness(inputs[2]['n'],inputs[2]['j'],23,3),independent_witness(29,8,13,3)]
    outputs['unbounded_power_family_checks.json']=[family_row(e,h) for e in (1,2,3,5,8) for h in (0,1)]
    outputs['scope_and_boundary.json']={'historical_certified_net_deletion':0,'R7':[3,4,5,6,7,8,9],
        'B_RES10_closed':False,'E4_square_closed':False,'all_conditions_ordinary_model_found':False,
        'k4_terminal_contract_available':False,'k4_terminal_completed':False,
        'old_gap_core_rerun':False,'old_modular_counters_rerun':False,'U_minus_one_square_exclusion_new':False,
        'U_minus_one_mod8_for_even_g':[{'g_mod8':g,'z_mod8':z,'U_minus_one_mod8':7} for g in (2,4,6,8) for z in (1,2,3,4)],
        'C_negative_is_essential_boundary':{'n':162,'j':70,'alpha_X':1215,'factorization':'15*9^2','C':1},
        'evidence_level':'author paper proof + deterministic arithmetic + same-author separated implementation'}
    return outputs

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates')
    ap.add_argument('--expected-out',type=Path);args=ap.parse_args()
    want=expected()
    require({p.name for p in args.cert_dir.glob('*.json')}==set(want),'unexpected certificate set')
    for name,obj in want.items():
        actual=json.loads((args.cert_dir/name).read_text())
        require(actual==obj,'certificate mismatch: '+name)
        if args.expected_out:
            args.expected_out.mkdir(parents=True,exist_ok=True)
            (args.expected_out/name).write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: 6 exact certificates; residue-set signs, brute-force lifts, carry valuations and direct binomials agree. Scope flags preserved.')
if __name__=='__main__':
    try:main()
    except (ValueError,AssertionError,KeyError,TypeError) as exc:
        print('REJECT:',str(exc),file=sys.stderr);sys.exit(1)

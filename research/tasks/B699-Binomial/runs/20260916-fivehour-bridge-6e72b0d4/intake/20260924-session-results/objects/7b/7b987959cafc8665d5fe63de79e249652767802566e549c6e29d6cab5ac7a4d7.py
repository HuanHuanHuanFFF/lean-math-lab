"""Exact finite verifier (standard library).
Algorithm B enumerates nu and recovers h linearly, then tests DIVNORM.
It does not use the generator's quadratic discriminants or root sets.
"""
from __future__ import annotations
from collections import Counter
from fractions import Fraction as Q
from functools import lru_cache
from itertools import product
from math import comb,isqrt
from pathlib import Path
import argparse,copy,json

N0=194400000
DEN=2**14*3**10*5**6

def require(ok,detail='check failed'):
    if not ok:raise AssertionError(detail)

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def v2(n):
    require(n!=0,'valuation at zero')
    n=abs(n);out=0
    while n%2==0:n//=2;out+=1
    return out

@lru_cache(None)
def pell(q):
    u,x=1,0
    for _ in range(8*q+1):u,x=2*u+3*x,u+2*x
    d,y=(3*x-1)//2,u//2
    require(d*d+d+1==3*y*y)
    return d,y

def r_expanded(d,v):
    parts=[(1,0,10),(-12,0,7),(15,1,6),(-4,2,5),(-4,1,3),(12,2,2),(-12,3,1),(4,4,0)]
    total=0
    for coefficient,dp,n in parts:
        for i in range(n+1):total+=coefficient*comb(n,i)*d**(dp+n-i)*v**i
    return total

def base_verify(cert):
    require(cert['schema']=='B699-D-round24-base-q-2-3-5-v1')
    require([r['q'] for r in cert['rows']]==[2,3,5])
    result=[];total=0
    for row in cert['rows']:
        q=row['q'];d,y=pell(q)
        require(row['d']==d and row['y']==y)
        fac=row['factorization'];prod=1;seen=set()
        for p,e in fac:
            require(prime(p) and e>0 and p not in seen)
            seen.add(p);prod*=p**e
        require(prod==3*(d-1))
        divisors=[]
        for exps in product(*[range(e+1) for p,e in fac]):
            a=1
            for (p,e),k in zip(fac,exps):a*=p**k
            divisors.append(a)
        expected=[]
        for A in sorted(divisors):
            if A%2:continue
            B=prod//A
            if B%4:continue
            vr=v2(r_expanded(d,A*y));s=vr-1-v2(A)
            require(s<0 or 3*2**s<d*d,(q,A,B,s))
            expected.append([A,B,vr,s])
        require(expected==row['entries'],'base assignment mismatch')
        require(len(expected)==row['count'])
        require(max(z[3] for z in expected)==row['max_forced_s'])
        total+=len(expected)
        result.append({'q':q,'assignments':len(expected),'max_forced_s':row['max_forced_s']})
    require(total==cert['count']==3616)
    return {'status':'PASS','total_assignments':total,'rows':result}

@lru_cache(None)
def possible_V_direct(p,q):
    require(p>3 and prime(p))
    dd,yy=pell(q);d,y=dd%p,yy%p
    nh={c*pow(2,e,p)%p for c in (1,3) for e in range(p-1)}
    inv2=pow(2,-1,p);inv4=pow(4,-1,p);inv16=pow(16,-1,p)
    invd=pow(d,-1,p) if d else None
    target=3*(d-1)%p;vals=set();tested=0;models=0
    for a in range(p):
        bs=[target*pow(a,-1,p)%p] if a else (range(p) if target==0 else [])
        for b in bs:
            v=a*y%p;qq=(d+v)%p
            states=((nu,(2*nu+qq)*invd%p) for nu in range(p)) if d else ((-qq*inv2%p,h) for h in range(p))
            for nu,h in states:
                tested+=1
                # Unsquared DIVNORM; no division by v or A or B.
                rhs=(b*y+(h+3)*d*d+(2*h+3)*d*v+(h+1)*v*v)%p
                if (nu*nu-rhs)%p:continue
                pp=(qq+h*v)%p
                if (pp*qq*nu+2)%p not in nh:continue
                c=(4*b*h-16*a*d-120*y-27*b)%p
                z=(20*b-320*a-c)%p
                f=(3*z*z-64*(c*a+15)**2)%p
                cs=c*inv4%p;fs=f*inv16%p
                w=(5*fs+42*cs*cs-18000)%p
                vv=(w*w-97200*cs*cs+N0)%p
                vals.add(vv);models+=1
    return frozenset(vals),tested,models

def check_empty_record(q,step):
    p=step['p'];excluded=step['excluded_residues']
    require(excluded==sorted(set(excluded)) and all(0<=r<p for r in excluded))
    vals,tested,models=possible_V_direct(p,q)
    require(set(excluded)==set(range(p))-set(vals),('false local exclusion',q,p))
    return tested,models

def terminal_verify(cert):
    require(cert['schema']=='B699-D-round24-small-V-square-v1')
    require(cert['q_max']==276 and cert['V_power']==2)
    require(cert['q_allowed_mod3']==[0,2] and cert['V_mod16']==[0,9])
    qs=[q for q in range(1,277) if q%3!=1]
    require([row['q'] for row in cert['rows']]==qs,'missing or duplicate q row')
    total=after=steps=tested=models=empty_residues=0
    pc=Counter()
    for row in cert['rows']:
        q=row['q'];require(row['upper_V']==q*q)
        total+=q*q
        pending=[v for v in range(1,q*q+1) if v%16 in (0,9)];after+=len(pending)
        seen=set()
        for step in row['steps']:
            p=step['p'];require(p not in seen);seen.add(p)
            nt,nm=check_empty_record(q,step);tested+=nt;models+=nm;steps+=1
            excluded=set(step['excluded_residues']);empty_residues+=len(excluded)
            kept=[v for v in pending if v%p not in excluded]
            require(len(pending)-len(kept)==step['removed']>0)
            pc[p]+=step['removed'];pending=kept
        require(not pending,('incomplete cover',q,pending[:5]))
    require(total==cert['full_count']==4723004 and after==cert['after_mod16']==590341)
    require(sum(pc.values())==after)
    return {'status':'PASS','q_rows':len(qs),'full_grid':total,'mod16_excluded':total-after,
            'odd_prime_covered':after,'compressed_steps':steps,'empty_residue_cells':empty_residues,
            'direct_nu_h_candidates':tested,'local_models_retained':models,
            'max_prime':max(pc),'primes':sorted(pc),'uncovered':0,
            'covered_by_prime':{str(p):pc[p] for p in sorted(pc)}}

def parity_and_norm_obstruction():
    states=0
    for a in range(0,16,2):
        for b in range(0,16,4):
            for c in range(16):
                f=3*(5*b-80*a-c)**2-4*(4*a*c+15)**2
                w=5*f+42*c*c-18000
                V=w*w-97200*c*c+N0
                require(V%16==(9 if c%2 else 0))
                states+=1
    cases=[]
    for V in range(1,513):
        j=v2(V);K=DEN**2*V**4+7203*(V-N0)**7
        predicted=7*j if j<8 else 60 if j==8 else 56
        require(v2(K)==predicted)
        require(K%2**61!=0)
        cases.append(predicted)
    return {'status':'PASS','mod16_assignments':states,'zero_condition_samples':512,
            'zero_condition_max_v2':max(cases),'description':'The polynomial is the necessary norm equality for Theta=0, not Norm(Theta) in general.'}

def budgets():
    A=32;k=16;c=55
    tests={
      'Taylor_E4_tail':Q(5,32)+Q(432,16**3*32**4)<Q(1,4),
      'ell_square_remainder':Q(72)+Q(9)+Q(108,16*32**2)+Q(324,16**2*32**4)<100,
      'ell_displacement':3+Q(18,16*32**2)<4,
      'E4_substitution':Q(1,4)+Q(45,4*k*k)+Q(8,k*k*A)+Q(9,8*k)+Q(5,4*k*A)<Q(1,2),
      'C3_remainder':2+Q(720,16**3)+Q(864,16**4*32)<4,
      'b1_derivative':Q(45,128)+Q(288,16**3)<1,
      'Taylor_b0_inverse':2+Q(1200,16**2)<7,
      'inverse_k3_error':Q(3+7+4,4)+Q(1,8)<4,
      'k3_upper':Q(150,2560)<Q(1,16),
      'Z_tail_bound':Q(5,2)+Q(5,4*32)+Q(80,32**2)<3,
      'F_third_order_budget':2400+Q(600,80)+27<2**12,
      'H_lower_scaled':Q(225*5,16*3)>Q(25,2),
      'H_upper_scaled':Q(45*2*55,16*16)<20,
      'signed_gap_lower':Q(1,2)-Q(2**12,2**16)>Q(1,4),
      'signed_gap_upper':20+Q(2**12,2**16)<32,
      'small_A_tail':3**49>2**67,
      'C_min':6**3==216 and 220%4==0,
      'wL_lower':Q(300*69,109)>180,
      'wL_denominator':c*c-300>Q(9,10)*c*c,
      'wL_error':400000*4<2**21,
      'VL_upper':Q(10800000*107*160,9)<2**35,
      'H_correction':72+Q(24480,220)<256,
      'leading_V_error_1':14400+Q(15*2**21,4*220)<2**24,
      'leading_V_error_2':Q(5*90*2**14,8)+1600<2**21,
      'V_relative_error':2**22+2**17+2**35<2**36,
      'rA_inverse':Q(1,1)-Q(1,64)>Q(1,2),
      'Pell_relative_error':80+1+1<128,
      'Pell_combination':512+3*2**37<2**40,
      'eta_relative':Q(2**14,220)+Q(1,15)<256,
      'eta_power7':7*Q(17,16)**6<14 and 14*256<2**12,
      'kappa0':1<Q(1607445,128)<2**14,
      'denominator_constant':DEN<2**44,
      'first_embedding':44+14+41==99 and 99<100,
      'norm_constant':100+46==146 and 146<160,
      'global_T_branch':42<160,
      'M_over_A':13*2**18+1<2**22,
      'V_upper_global':1800+100*2**22<2**31,
      'N0_power':N0==2**8*3**5*5**5 and N0<2**28,
      'VL_small_C':Q(2**35,220)<2**28,
      'T_absorption_global':2**31+2**119<2**120,
      'A47_constants':160+7*120+21+80==1101,
      'A47_large_constants':160+7*45+21+80==576,
      'A47_prime_coefficient':13**20<2**80,
      'exponent_improvement':Q(20,47)<Q(3,7),
      'V_square_height':19+3*90+9+9*160==1738,
      'V_square_tail':N0+277**2<2**28 and 3**2217>2**3502,
      'V_square_monotonic':3**8*15**126>16**126,
      'height_final':1738+63*28==3502,
      'strong_cubic_constant':32*2**10==2**15,
      'strong_cone_constant':2**15*28**3<2**30,
    }
    require(all(tests.values()),{k:v for k,v in tests.items() if not v})
    return {'status':'PASS','check_count':len(tests),'checks':tests}

def bad_tests(cert):
    drop=copy.deepcopy(cert);drop['rows'].pop()
    try:terminal_verify(drop)
    except AssertionError:missing=True
    else:missing=False
    found=False
    for row in cert['rows']:
        for step in row['steps']:
            vals,_,_=possible_V_direct(step['p'],row['q'])
            if vals:
                forged=copy.deepcopy(step)
                forged['excluded_residues']=sorted(set(forged['excluded_residues'])|{min(vals)})
                try:check_empty_record(row['q'],forged)
                except AssertionError:found=True
                break
        if found:break
    require(missing and found)
    return {'status':'PASS','missing_q_row_rejected':missing,'false_local_exclusion_rejected':found}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,required=True);ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();cert=json.loads((args.certificates/'small_V_square.json').read_text())
    result={'base_cases':base_verify(json.loads((args.certificates/'base_q235.json').read_text())),
            'budgets':budgets(),'parity_zero_condition':parity_and_norm_obstruction(),
            'small_V_terminal':terminal_verify(cert),'bad_certificate_tests':bad_tests(cert),
            'evidence_level':'Exact finite checks and rational budgets; not Lean or external independent review.'}
    result['status']='ROUND24_VERIFY=PASS'
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print('RATIONAL_BUDGETS=PASS; CHECKS='+str(result['budgets']['check_count']))
    print('SMALL_V_TERMINAL=PASS; GRID='+str(result['small_V_terminal']['full_grid'])+'; UNCOVERED=0')
    print('DIRECT_LOCAL_CANDIDATES='+str(result['small_V_terminal']['direct_nu_h_candidates']))
    print('BAD_CERTIFICATES_REJECTED=PASS')
    print(result['status'])
if __name__=='__main__':main()

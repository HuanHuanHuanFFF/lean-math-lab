"""Replay only new coefficient, valuation and explicit-diagnostic obligations.

No search over unbounded n,a,E; no claim that these tests prove NC6 coverage.
The quantified proofs are in PROOFS.md. Standard library only.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
if not __debug__:
    raise RuntimeError("Run the verifier without Python -O; assertions are verification obligations.")
import argparse,copy,json,hashlib
from pathlib import Path
from fractions import Fraction
from math import gcd
from arithmetic import vp,mod_fraction,sqrt_lift_unit,binomial_vp
from polynomial import *
from recovery import polynomial_K
from models import local_family,coupled_model
ROOT=Path(__file__).resolve().parents[1]


def expected_K():
    return add(scale(power(X,2),10),scale(mul(X,Y),-36),scale(X,-34),
               scale(power(Y,2),27),scale(Y,81),const(12))


def certificate():
    return {'schema':1,'coordinates':['n','U'],'K':rows(expected_K()),
            'row5_B_values':[[0,1,23,1],[1,1,5,1],[3,2,17,16]],
            'frontier_reduction_claimed':False}


def algebra(c):
    K=from_rows(c['K']);assert K==expected_K()
    n,u=X,Y;N3=add(n,const(-3));N4=add(n,const(-4))
    linear=add(scale(n,5),scale(u,-18),const(-2))
    assert K==add(scale(mul(N3,linear),2),scale(mul(u,add(u,const(-1))),27))
    x=X;u=Y
    at3=sub(K,add(scale(x,3),const(3)),u)
    rhs=scale(add(scale(power(x,2),30),scale(mul(x,u),-36),
                  scale(mul(u,add(u,const(-1))),9),scale(x,26)),3)
    assert at3==rhs
    shift=add(scale(mul(N3,add(scale(n,5),const(-2))),2),scale(K,-1))
    assert shift==scale(mul(u,add(scale(n,4),const(-9),scale(u,-3))),9)
    assert add(K,scale(N3,-36))==add(scale(mul(N3,N4),10),scale(shift,-1))
    b=add(n,scale(u,-3))
    assert K==add(scale(power(b,2),3),scale(mul(b,add(scale(n,2),const(-9))),3),mul(N3,N4))
    T=add(scale(n,2),const(4),scale(u,-9))
    center=add(mul(add(n,const(-1)),add(u,const(-2))),const(2))
    assert add(scale(center,9),mul(add(n,const(-1)),T))==scale(power(N4,2),2)
    assert c['row5_B_values']==certificate()['row5_B_values']
    for an,ad,bn,bd in c['row5_B_values']:
        assert Fraction(polynomial_K(5,Fraction(an,ad)),4)==Fraction(bn,bd)
    # Fully symbolic resonance examples (P=X).
    P=X
    nn=add(const(4),scale(P,63));uu=scale(P,10)
    Kres=sub(K,nn,uu)
    assert add(Kres,scale(add(nn,const(-3)),-36))==scale(power(P,2),19710)
    return {'coefficient_identities':'PASS','q5_table':'PASS',
            'seven_exception_required':True,'new_consumers':0}


def verify_local(d):
    n,j,k,p,e,w=[d[t] for t in ['n','j','k','p','e','w']]
    u=d['U'];B=d['B'];E3=d['E3'];E4=d['E4'];I3=d['I3'];A4=d['A4'];C=d['C']
    L3=d['L3'];L4=d['L4'];y=d['y'];V4=d['V4'];g=1
    assert 7<=j<=n//2 and gcd(n,j)==1
    assert binomial_vp(n,6,p)==e and binomial_vp(n,j,p)==0
    assert vp(u,p)==w and vp(j*k,p)==w
    assert L3>0 and L4>0 and V4!=0 and vp(L3,p)==vp(L4,p)==0
    assert E3==A4*y+g*C*L3
    assert C*V4==9*g*I3*L3-2*E4*A4
    assert 24*E3*A4*C*L4==27*g*g*I3*C*L3*L3+9*g*L3*(2*n-9)+6*E3*E4*A4
    assert B==4*A4*C*C*L4
    assert 3*E3*I3-2*E4*A4*C==1
    if d['r']==3:
        assert vp(B-13,p)==1
        assert e-min(e,vp(B-13,p))==2*d['m']
    else:
        assert vp(B-18,p)==e
    D=5*n-2-B
    if d['r']==4: assert vp(D,p)==w  # local p=11, nonexceptional
    # Ten-square class exists at this prime to all precisions by the simple-root argument.
    f=u/Fraction(10*p**w)
    assert vp(f,p)==0
    r=sqrt_lift_unit(mod_fraction(f,p**5),p,5)
    assert (r*r-mod_fraction(f,p**5))%p**5==0
    return {'r':d['r'],'m':d['m'],'p':p,'source_e':e,'target_w':w,
            'local_defect_sqrt_exponent':d['m'],
            'B_minus_13_vp':vp(B-13,p),'B_minus_18_vp':vp(B-18,p),
            'L3_L4':'positive rational, p-adic units; not asserted globally integral',
            'global_RES10':False}


def verify_seven(m):
    p=7;P=p**(2*m);n=3*P+4;j=P+4;u=Fraction(j*(n-j),n-1)
    B=Fraction(polynomial_K(n,u),2*(n-3));D=5*n-2-B
    e=vp(n-4,p);w=vp(u,p)
    direct=max(2*e-w,0);raw=max(2*e-vp(D,p),0)
    assert direct==2*m and raw==2*m-1
    assert vp(4*n-9-3*u,p)==1
    assert p**direct==p*p**raw
    return {'m':m,'Delta4_7_part':str(p**direct),'uncorrected_7_part':str(p**raw)}


def verify_resonance(m):
    p=11;P=p**(2*m);n=4+63*P;u=10*P
    B=Fraction(polynomial_K(n,u),2*(n-3))
    assert B-18==Fraction(9855*P*P,63*P+1)
    assert vp(n-4,p)==vp(u,p)==2*m
    assert vp(B-18,p)==4*m
    assert n-3*u>0
    disc=n*n-4*(n-1)*u
    assert disc==1449*P*P+384*P+16 and disc>0
    return {'m':m,'source_e':2*m,'vp_U':2*m,'vp_B_minus_18':4*m,
            'defect_sqrt_exponent':m,'global_B_integer':B.denominator==1,
            'is_full_remaining_model':False}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--make-certificate',action='store_true')
    ap.add_argument('--json',action='store_true');args=ap.parse_args()
    if args.make_certificate: print(json.dumps(certificate(),indent=2));return
    c=json.loads((ROOT/'certificates/algebra.json').read_text())
    result=algebra(c)
    bad=copy.deepcopy(c);bad['K'][0][2]+=1
    rejected=False
    try:algebra(bad)
    except AssertionError:rejected=True
    assert rejected
    result['mutated_K_rejected']=True
    result['local_diagnostics']=[verify_local(local_family(r,m)) for r,m in [(3,1),(3,3),(4,1),(4,3)]]
    result['seven_boundary']=[verify_seven(m) for m in [1,3]]
    result['high_B18_does_not_absorb_defect']=[verify_resonance(m) for m in [1,3]]
    # e=1 at 7 cannot be a deficient even-target-valuation case.
    n=4+7+7**2;j=4+7;u=Fraction(j*(n-j),n-1)
    B=Fraction(polynomial_K(n,u),2*(n-3));D=5*n-2-B
    assert vp(n-4,7)==1 and vp(u,7)==2
    assert max(2-vp(D,7),0)==0
    # At w=2e the first-source leading terms may cancel: the gcd is capped at e.
    p=11;e=2;x=p**e;n=3*x+3;u=Fraction(10,3)*p**(2*e)
    B=Fraction(polynomial_K(n,u),2*(n-3))
    assert vp(B-13,p)==2*e and min(e,vp(B-13,p))==e
    result['cancellation_and_no_defect_boundaries']='PASS'
    models=[coupled_model(1,1,3),coupled_model(2,2,5,1)]
    for d in models:
        assert d['full_remaining_RES10_model'] is False and d['true_common_prime']==17
        G=d['G'];a=int(d['a']);beta=int(d['beta'])
        assert a>=2*G*beta*beta+10 and beta%3==1
        for t in d['selected_local_data']:
            p=t['p'];H=t['H'];mod=p**H
            nn=G*pow(3,a,mod)%mod;jj=G*beta%mod
            for h in range(1,H+1):assert jj%(p**h)<=nn%(p**h)
        stored=ROOT/'diagnostics'/f"coupled_m{d['m3']}_{d['m4']}_E{d['E']}.json"
        assert json.loads(stored.read_text())==d
    result['coupled_models']=[{'m3':d['m3'],'m4':d['m4'],'E':d['E'],
         'a_decimal_digits':len(d['a']),'actual_gcd':d['G'],
         'first_source_failure':True,'true_common_prime':17} for d in models]
    assert pow(5,6,72)==1
    conditional=[(q,r) for q in [1,17,23,391] for r in range(6) if (q*pow(5,r,72)+5)%72==18]
    assert conditional==[(17,1)]
    result['conditional_q5_divides_L4']={'gcd_divisor_bound':391,'q5':17,'E_mod_6':1,'closed':False}
    result['remaining_frontier_reduction']='NO_NEW_EMPTY_FAMILY_PROVED'
    result['absolute_bound']='NONE'
    result['certificate_status']='PASS_RES10_DEFECT_RECOVERY_NO_CLOSURE'
    if args.json:print(json.dumps(result,ensure_ascii=False,indent=2))
    else:print(result['certificate_status'])

if __name__=='__main__':main()

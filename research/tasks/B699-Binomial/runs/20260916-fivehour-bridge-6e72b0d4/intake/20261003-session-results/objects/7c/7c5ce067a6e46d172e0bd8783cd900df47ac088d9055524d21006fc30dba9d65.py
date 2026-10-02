#!/usr/bin/env python3
"""R06 exact finite certificates; elementary algebra, no external math packages.
The test integers are arithmetic witnesses, NOT recovered NC3 inputs.
"""
from __future__ import annotations
import argparse
import json
from fractions import Fraction
from math import factorial, gcd, isqrt, prod
from pathlib import Path


def factors(n: int) -> dict[int, int]:
    out: dict[int,int]={}
    d=2
    while d*d<=n:
        while n%d==0:
            out[d]=out.get(d,0)+1;n//=d
        d+=1
    if n>1:out[n]=out.get(n,0)+1
    return out


def divisors(n: int) -> list[int]:
    ds=[1]
    for p,e in factors(n).items():ds=[x*p**j for x in ds for j in range(e+1)]
    return sorted(ds)


def phi(n: int) -> int:
    for p in factors(n):n=n//p*(p-1)
    return n


def prime(n: int) -> bool:
    if n<2:return False
    return all(n%d for d in range(2,isqrt(n)+1))


def valuation(n: int,p: int) -> int:
    if n==0:raise ValueError('zero residue: insufficient precision')
    t=0
    while n%p==0:t+=1;n//=p
    return t


def order(a: int,p: int) -> int:
    if a%p==0:raise ValueError('nonunit')
    r=1
    while pow(a,r,p)!=1:r+=1
    return r


def mul(a: list[int],b: list[int]) -> list[int]:
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    while len(c)>1 and c[-1]==0:c.pop()
    return c


def monic_div(a: list[int],b: list[int]) -> list[int]:
    a=a.copy();q=[0]*(len(a)-len(b)+1)
    assert b[-1]==1
    for i in range(len(q)-1,-1,-1):
        c=a[i+len(b)-1];q[i]=c
        for j,x in enumerate(b):a[i+j]-=c*x
    assert not any(a)
    return q


def cycs(ns: list[int]) -> dict[int,list[int]]:
    needed=sorted({d for n in ns for d in divisors(n)})
    out={}
    for n in needed:
        f=[-1]+[0]*(n-1)+[1]
        for d in divisors(n)[:-1]:f=monic_div(f,out[d])
        out[n]=f
        assert len(f)-1==phi(n)
    return out


def capacity_rows():
    out=[]
    for g in [1,5,7,13,25,35,65,125,169,175,361,5005,1616615,37182145]:
        ds=divisors(g);terms=[[d,phi(d)] for d in ds]
        cum=0
        for d,v in terms:
            cum+=v
            if 2*cum>g:threshold=d;break
        out.append({'g':g,'factorization':[[p,e] for p,e in factors(g).items()],
                    'divisor_phi':terms,'sum_phi':sum(x[1] for x in terms),
                    'phi_g':phi(g),'full_order_forced':2*phi(g)>=g and g>1,
                    'first_capacity_threshold':threshold,
                    'necessary_M_at_least':2*threshold+1 if g>1 else None,
                    'claim_type':'integer_divisor_capacity_only_not_NC3'})
    return out


def crt(pairs: list[tuple[int,int]]) -> tuple[int,int]:
    a=0;m=1
    for b,n in pairs:
        assert gcd(m,n)==1
        a+=m*((b-a)*pow(m,-1,n)%n);m*=n;a%=m
    return a,m


def prime_in_progression(a: int,m: int) -> tuple[int,int]:
    n=a if a>=3 else a+m
    tries=0
    while not prime(n):n+=m;tries+=1
    return n,tries


def prime_phase_examples():
    rows=[]
    for g,k in [(1,1),(5,1),(13,1),(65,1),(169,1),(5005,1),(13,2)]:
        tau=valuation(g,13);g0=g//13**tau;a=k+tau;A0=3
        up=11*A0*pow(g0,-1,13)%13;uq=7*A0*pow(g0,-1,13)%13
        rp,mp=crt([(49,120),(1,7),(1+13**k*up,13**(k+1))])
        rq,mq=crt([(1,2),(pow(2,pow(g,-1,4),5),5),
                    (pow(3,pow(g,-1,6),7),7),(1+13**k*uq,13**(k+1))])
        p,np=prime_in_progression(rp,mp);z,nq=prime_in_progression(rq,mq)
        assert p!=z
        A,Am=crt([(5616%5670,5670),(13**a*A0,13**(a+1))])
        q,qm=crt([(3,9),(-13**(a-1)*A0,13**a)])
        if q<9:q+=qm
        mod=13**(a+1)
        Pm=pow(p,g,mod);Qm=pow(z,g,mod);Nm=(Pm*Qm*Qm-1)%mod
        assert [valuation((Pm-1)%mod,13),valuation((Qm-1)%mod,13),valuation(Nm,13)]==[a]*3
        assert A%24570==5616
        rows.append({'g':g,'e_P':g,'e_Q':g,'prime_P':p,'prime_Q':z,
                     'search_steps':[np,nq],'a13':a,'tau13_g':tau,'root_layer':k,'A0_mod13':A0,
                     'A':A,'A_period':Am,'q':q,'q_period':qm,'s_phase_representative':150,
                     'modulus':mod,'P_mod':Pm,'Q_mod':Qm,'norm_mod':Nm,
                     'root_units':[up,uq,(up+2*uq)%13],
                     'original_units':[((Pm-1)//13**a)%13,((Qm-1)//13**a)%13,(Nm//13**a)%13],
                     'claim_type':'prime_power_and_13_phase_only',
                     'original_global_equations_satisfied_claimed':False,
                     'H_or_RH_recovered':False,'NC3_claimed':False})
    return rows


def lte_examples():
    # These examples retain honest prime bases and common exponent g. They test
    # the valuation allocation, not the positive Pell/n/j recovery.
    configs=[(5,5,31,0,1),(7,7,29,1,1),(35,35,71,0,1),(25,25,101,0,1),
             (19,1,19,1,1),(361,1,19,1,1),(65,13,53,0,1),(35,5,31,1,1)]
    out=[]
    for g,d,l,b,e in configs:
        t=valuation(g,l);k=b+2*e-t;assert k>=1 and g%d==0 and (l-1)%d==0
        root=next(u for u in range(1,l) if order(u,l)==d)
        for j in range(1,k+1):
            root=next(root+z*l**j for z in range(l) if pow(root+z*l**j,d,l**(j+1))==1)
        m=l**(k+1);W_res=(root+l**k)%m
        rp,mp=crt([(1,4),(W_res*pow(9,-1,m)%m,m)])
        p,tries=prime_in_progression(rp,mp);W=9*p
        assert prime(p) and p!=3 and order(W,l)==d
        precision=b+2*e+1;mod=l**precision;norm_mod=(pow(W,g,mod)-1)%mod
        assert valuation(norm_mod,l)==b+2*e
        out.append({'g':g,'order':d,'ell':l,'b':b,'e':e,'tau':t,
                    'prime_P':p,'prime_Q':3,'root_integer':W,'search_steps':tries,
                    'precision':precision,'norm_mod':norm_mod,
                    'norm_valuation':b+2*e,'primitive_cyclotomic_valuation':k,
                    'claim_type':'LTE_arithmetic_test_not_Pell_core'})
    return out


def constants():
    coef=Fraction(1,10)+Fraction(3,2)+Fraction(1,60)+Fraction(1,90)
    # Positive rational series certifies log47<4; derivative gives log x<x/10.
    exp4lower=sum(Fraction(4**i,factorial(i)) for i in range(9))
    exp34lower=sum(Fraction(3,4)**i/factorial(i) for i in range(4))
    f6=Fraction(prod(p-1 for p in [5,7,11,13,17,19]),prod([5,7,11,13,17,19]))
    return {'minimum_log_H_strict':47,'minimum_primitive_root':45,
            'capacity_contradiction_coefficient':[coef.numerator,coef.denominator],
            'required_mass_coefficient':[5,3],
            'exp4_lower':[exp4lower.numerator,exp4lower.denominator],
            'exp34_lower':[exp34lower.numerator,exp34lower.denominator],
            'six_prime_totient_ratio':[f6.numerator,f6.denominator],
            'power_mass_constant':4*5**5,'power_mass_H_threshold':(4*5**5)**3,
            'pell_integer_comparison_left':3**49,
            'pell_integer_comparison_right':4*(4*5**5)**3,
            'direct_BL_no_gain_exponent_sum_threshold':2400,
            'factor_13_combined_unit':[11,7,-1],
            'q_from_primitive_core_denominator':16,
            'linear_M_height_denominator':32}


def certificate():
    gs=[5,7,13,25,35,65,125,169,175,361]
    cs=cycs(gs)
    return {'schema':'B699-D-R06-finite-certificate-v1',
            'polynomials': [{'n':n,'phi':phi(n),'coefficients':c} for n,c in sorted(cs.items())],
            'factorization_identity_indices':gs,
            'capacity':capacity_rows(), 'constants':constants(),
            'lte_examples':lte_examples(), 'prime_phase_examples':prime_phase_examples(),
            'proof_coverage_note':'Finite tests support the written uniform proofs; no NC3 enumeration or external BL proof.'}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    c=certificate();p=Path(args.output);p.parent.mkdir(parents=True,exist_ok=True)
    p.write_text(json.dumps(c,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','polynomials':len(c['polynomials']),
                      'capacity_rows':len(c['capacity']),'LTE_examples':len(c['lte_examples']),
                      'prime_phase_examples':len(c['prime_phase_examples'])}))
if __name__=='__main__':main()

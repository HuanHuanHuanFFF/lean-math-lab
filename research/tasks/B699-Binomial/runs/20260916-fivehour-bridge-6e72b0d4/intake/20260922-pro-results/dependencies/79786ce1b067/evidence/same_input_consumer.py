#!/usr/bin/env python3
"""Parameter gates and checked return to one original (n,j).

Parameter-only results are NOT original counterexamples or proof of their existence.
Input mode requires a proven prime q, exact core equalities and legal integer n,j.
"""
from __future__ import annotations
import argparse,json
from math import isqrt,gcd
from pathlib import Path
from native_phase import certify,verify


def gate(h: int, include_phase: bool=False) -> dict:
    if isinstance(h,bool) or not isinstance(h,int) or h<15 or h%2==0:
        return {'result':'OUTSIDE_BRANCH','h':h}
    exits=[]
    M=isqrt(h+1)
    if M*M==h+1 and M%2==0 and M>=128:
        exits.append({'theorem':'BSC_MINUS1','M':M})
    M=isqrt(h+3)
    if M*M==h+3 and M%2==0 and M>=256:
        exits.append({'theorem':'BSC_MINUS3','M':M})
    m=isqrt(h);d=h-m*m-m
    if d%2 and m>=128*(abs(d)+1)**2:
        r=(16*m**3-8*m*m+(24*d-18)*m-20*d-13)%16
        if r<=7:
            exits.append({'theorem':'MID128','m':m,'d':d,'phase_mod16':r})
    result={'h':h,'result':'PARAMETER_CARRY_GATE' if exits else 'NO_NAMED_GATE',
            'exits':exits,'logic':'Conditional on the frozen same-input core and native active q; not NC3.'}
    if include_phase:
        phase=certify(h)
        if 'Qmin' in phase:
            verify(phase)
        result['phase_certificate']=phase
        if phase['result']=='CARRY':
            result['result']='PARAMETER_CARRY_GATE'
    return result


def prime_proved(q: int, certificate: dict | None=None) -> bool:
    """Exact trial division for small q, or a recursive complete Lucas certificate."""
    if q<2:
        return False
    if q<=1_000_000:
        return all(q%d for d in range(2,isqrt(q)+1))
    if certificate is None or certificate.get('prime')!=q:
        raise ValueError('For q>10^6 provide a complete recursive Lucas primality certificate.')
    a=certificate.get('base')
    factors=certificate.get('factors')
    if not isinstance(a,int) or not isinstance(factors,list) or not factors:
        return False
    product=1;seen=set()
    for item in factors:
        p,e=item['prime'],item['exponent']
        if not isinstance(p,int) or not isinstance(e,int) or e<1 or p in seen:
            return False
        seen.add(p)
        if not prime_proved(p,item.get('certificate')):
            return False
        product*=p**e
        if gcd(pow(a,(q-1)//p,q)-1,q)!=1:
            return False
    return product==q-1 and pow(a,q-1,q)==1


def factorial_valuation(n:int,p:int)->int:
    total=0
    while n:
        n//=p;total+=n
    return total


def binomial_valuation(n:int,j:int,p:int)->int:
    return factorial_valuation(n,p)-factorial_valuation(j,p)-factorial_valuation(n-j,p)


def check_original(obj:dict)->dict:
    names=('n','j','P','Q','v','nu','h','q','r')
    if any(name not in obj or not isinstance(obj[name],int) or isinstance(obj[name],bool) for name in names):
        raise ValueError('All n,j,P,Q,v,nu,h,q,r fields must be integers.')
    n,j,P,Q,v,nu,h,q,r=(obj[name] for name in names)
    if not (n>=8 and 4<=j<=n//2 and q>=3 and r>=1 and Q==q**r and Q>=11):
        raise ValueError('Illegal original input or native prime-power data.')
    if not prime_proved(q,obj.get('q_certificate')):
        raise ValueError('q is not certified prime.')
    if not (h>=15 and h%2==1 and 0<v<Q and 3*v>Q and Q-v>=17 and nu>0):
        raise ValueError('Outside the precise adopted numerical core.')
    if not (P==Q+h*v and 2*nu==h*(Q-v)-Q and v*nu**2==P*Q**2-1):
        raise ValueError('Core recovery equality failed.')
    if not (n==P*Q*nu+2 and j==(P+nu)*Q**2):
        raise ValueError('n,j are not the SAME recovered input.')
    if binomial_valuation(n,3,q)<1:
        raise ValueError('q is not active in the original C(n,3); do not replace q by Q.')
    out=gate(h,include_phase=True)
    if out['result']!='PARAMETER_CARRY_GATE':
        return {'result':'INCONCLUSIVE','parameter_gate':out}
    assert j%(Q**3)>n%(Q**3)
    valuation=binomial_valuation(n,j,q)
    assert valuation>=1
    return {'result':'COMMON3_CERTIFIED_FOR_THIS_INPUT','n':n,'j':j,'prime':q,
            'v_q_binomial_n_j':valuation,'same_input_gcd':gcd(n,j),'gate':out}


def main()->None:
    parser=argparse.ArgumentParser(description=__doc__)
    group=parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--h',type=int)
    group.add_argument('--input',type=Path)
    parser.add_argument('--phase',action='store_true')
    args=parser.parse_args()
    if args.input:
        result=check_original(json.loads(args.input.read_text()))
    else:
        result=gate(args.h,args.phase)
    print(json.dumps(result,indent=2))

if __name__=='__main__':
    main()

#!/usr/bin/env python3
"""Independent exact value-interpolation and sieve endpoint checker.
Does not import the coefficient checker or its polynomial arithmetic.
A polynomial of degree <= d is determined by its values at 0,...,d.
"""
import argparse
import hashlib
import json
import math
import sys
from pathlib import Path


def value(coeff, x):
    if not coeff or not all(type(c) is int for c in coeff):
        raise ValueError('integer coefficients required')
    if len(coeff)>1 and coeff[-1]==0: raise ValueError('noncanonical degree')
    return sum(c * x**i for i,c in enumerate(coeff))


def matches(coeff, fun, degree):
    assert len(coeff)<=degree+1
    for x in range(degree+1): assert value(coeff,x)==fun(x)


def sieved_primes(limit):
    flags=bytearray(b'\x01')*(limit+1)
    flags[0:2]=b'\x00\x00'
    for p in range(2,math.isqrt(limit)+1):
        if flags[p]:
            start=p*p
            flags[start::p]=b'\x00'*(((limit-start)//p)+1)
    return [n for n in range(2,limit+1) if flags[n]]


def reconstruct_endpoints():
    primes=sieved_primes(math.isqrt(2**40-1))
    result=[]
    for D in [4,10]:
        for t in [1,2,3,4]:
            x=2**t; M=x**D-1; residue=M; fs=[]
            for p in primes:
                if p*p>residue: break
                e=0
                while residue%p==0:
                    residue//=p; e+=1
                if e: fs.append([p,e])
            if residue>1: fs.append([residue,1])
            pp=sorted(p**e for p,e in fs if p**e>=11)
            states=[]
            for P in pp:
                for Q in pp:
                    if P==Q: continue
                    quotient,rem=divmod(2*M,P*Q)
                    assert rem==0
                    capacity=P**3*Q**3>M**2
                    remainder=divmod(P*Q**2-1,quotient**2)[1]
                    assert not(capacity and remainder==0)
                    states.append([P,Q,quotient,capacity,remainder])
            result.append({'D':D,'t':t,'x':x,'M':M,'factors':fs,'eligible':pp,'states':states})
    return result


def main():
    if sys.flags.optimize:
        raise RuntimeError("Run exact verification without Python optimization (-O / PYTHONOPTIMIZE).")
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('certificate',nargs='?',default=str(Path(__file__).with_name('certificate.json')))
    args=ap.parse_args()
    doc=json.loads(Path(args.certificate).read_text(encoding='utf-8'))
    assert set(doc)=={'schema','scope','tail_start_x','endpoint_t','remainders',
        'positive_polynomials','endpoints','constants','failed_R14_size_claim'}
    assert doc['schema']==1
    assert doc['scope']=='NC3 canonical minimal branch; c_alpha=1; no row theorem'
    assert doc['tail_start_x']==32 and doc['endpoint_t']==[1,2,3,4]
    wanted_rem={f'R4_{e}_{o}' for e in (-1,1) for o in ('AB2','BA2')}|{'R10_AB2','R10_BA2'}
    rows=doc['remainders']; assert len(rows)==len(wanted_rem)
    assert {r['name'] for r in rows}==wanted_rem
    for row in rows:
        assert set(row)=={'name','left','modulus','quotient','remainder'}
        name=row['name']
        if name.startswith('R4_'):
            _,es,orient=name.split('_'); e=int(es)
            aa=lambda x:(x+e)**2+1
            bb=lambda x:x+2*e
            lf=(lambda x:aa(x)*bb(x)**2) if orient=='AB2' else (lambda x:bb(x)*aa(x)**2)
            mod=lambda x:x*x
            rf=(lambda x:8+16*e*x) if orient=='AB2' else (lambda x:8*e+20*x)
            degree=4 if orient=='AB2' else 5
            md=2; rd=1
        else:
            aa=lambda x:sum(x**i for i in range(5))
            bb=lambda x:sum((-x)**i for i in range(5))
            lf=(lambda x:aa(x)*bb(x)**2) if name=='R10_AB2' else (lambda x:bb(x)*aa(x)**2)
            mod=lambda x:(x*x-1)**2
            rf=(lambda x:-25*x**3+45*x*x+15*x-30) if name=='R10_AB2' else (lambda x:25*x**3+45*x*x-15*x-30)
            degree=12; md=4; rd=3
        matches(row['left'],lf,degree); matches(row['modulus'],mod,md)
        matches(row['remainder'],rf,rd)
        assert len(row['quotient'])<=degree-md+1
        for x in range(degree+1):
            assert lf(x)==mod(x)*value(row['quotient'],x)+rf(x)

    specs={
      'R4_same_block':(lambda x:(x*x-1)**2-(x*x+1),4,2,True),
      'R4_small_K':(lambda x:x**3-(x+5)**2,3,31,True),
      'R10_A_bound':(lambda x:2*x**4-sum(x**i for i in range(5)),4,2,True),
      'R10_AB_bound':(lambda x:4*x**8-3*sum(x**(2*i) for i in range(5)),8,2,True),
      'R10_C_bound':(lambda x:4*(x*x-1)-3*x*x,2,2,False),
      'R10_bad_allocation':(lambda x:(x**10-1)**2-(15*x**5)**3,20,8,True),
      'R10_plus_low':(lambda x:24*x**3+45*x*x-15*x-30,3,32,True),
      'R10_plus_high':(lambda x:(x*x-1)**2-(25*x**3+45*x*x-15*x-30),4,32,True),
      'R10_minus_sign':(lambda x:25*x**3-45*x*x-15*x+30,3,32,True),
      'R10_minus_low':(lambda x:(x*x-1)**2-26*x**3+45*x*x+15*x-30,4,32,True),
    }
    for e in (-1,1):
        specs[f'R4_Z_bound_{e}']=(lambda x,e=e:(x+5)*x*x-((x+e)**2+1)*(x+2*e),2,31,True)
        for orient in ('AB2','BA2'):
            def least(x,e=e,orient=orient):
                if orient=='BA2': return 20*x+8*e
                return 16*x+8 if e==1 else x*x-16*x+8
            specs[f'R4_{e}_{orient}_low']=(lambda x,f=least:f(x)-x,2,31,True)
            specs[f'R4_{e}_{orient}_high']=(lambda x,f=least:x*x-f(x),2,31,True)
    gaps=doc['positive_polynomials']
    assert len(gaps)==len(specs) and {r['name'] for r in gaps}==set(specs)
    for row in gaps:
        assert set(row)=={'name','coefficients','shift','shifted_coefficients','strict'}
        fun,d,shift,strict=specs[row['name']]
        assert row['shift']==shift and row['strict'] is strict
        matches(row['coefficients'],fun,d)
        matches(row['shifted_coefficients'],lambda x:fun(x+shift),d)
        assert all(c>=0 for c in row['shifted_coefficients'])
        if strict: assert row['shifted_coefficients'][0]>0
    assert doc['constants']=={'4096_lt_729_times_8':[4096,729*8]}
    assert 4096<729*8
    fail=doc['failed_R14_size_claim']
    assert set(fail)=={'coefficients','U','V','missing'}
    assert fail['U']==1 and fail['V']=='x^2+1'
    assert fail['missing']=='V need not divide its required cyclotomic block; no NC3 recovery'
    matches(fail['coefficients'],lambda x:sum(x**i for i in range(7))*sum((-x)**i for i in range(7))-(x*x-1)**2*(x*x+1)**3,12)
    ep=reconstruct_endpoints()
    assert doc['endpoints']==ep
    digest=hashlib.sha256(json.dumps(ep,sort_keys=True,separators=(',',':')).encode()).hexdigest()
    print(json.dumps({'status':'PASS_INDEPENDENT_VALUE_AND_SIEVE_CHECKS',
        'endpoint_digest':digest,'endpoint_count':len(ep),
        'ordered_pair_states':sum(len(e['states']) for e in ep),
        'capacity_survivors':sum(s[3] for e in ep for s in e['states']),
        'recovery_survivors':0,'positive_polynomials':len(gaps),
        'remainder_identities':len(rows)},sort_keys=True))

if __name__=='__main__': main()

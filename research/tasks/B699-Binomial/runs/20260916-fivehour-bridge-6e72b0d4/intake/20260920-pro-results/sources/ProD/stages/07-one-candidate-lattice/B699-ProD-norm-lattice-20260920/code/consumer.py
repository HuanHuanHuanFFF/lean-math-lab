#!/usr/bin/env python3
"""RES10 original-input consumer. OPEN_CANDIDATE is NOT a counterexample."""
from __future__ import annotations
import argparse,json
from math import gcd,isqrt,prod
from lattice_gate import row_gate,pure_power_exponent

def cofactor(x:int)->int:
    if x<=0:raise ValueError('positive source required')
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def valuation_binomial(n:int,j:int,p:int)->int:
    q=p;ans=0
    while q<=n:
        ans+=n//q-j//q-(n-j)//q
        q*=p
    return ans

def small_primes(limit:int=10000)->list[int]:
    sieve=bytearray(b'\1')*(limit+1);sieve[0:2]=b'\0\0'
    for p in range(2,isqrt(limit)+1):
        if sieve[p]:sieve[p*p:limit+1:p]=b'\0'*(((limit-p*p)//p)+1)
    return [p for p in range(7,limit+1) if sieve[p]]

def consume(n:int,j:int)->dict:
    if n%1800!=1530 or not 7<=j<=n//2:
        return {'status':'OUT_OF_SCOPE','reason':'B tail and original half-row required'}
    g=gcd(n,j);alpha=n//g
    a=pure_power_exponent(alpha)
    if a is None or a<2:return {'status':'OUT_OF_SCOPE','reason':'true quotient not 3^a, a>=2'}
    W=(n-1)*j*(n-j)
    if W%10 or isqrt(W//10)**2!=W//10:
        return {'status':'OUT_OF_SCOPE','reason':'original W is not ten times a square'}
    gate=row_gate(n)
    defects=[]
    for r in (1,3,4):
        qr=cofactor(n-r)
        delta=qr//gcd(qr,prod(j-b for b in range(r+1)))
        if delta>1:defects.append({'r':r,'q_r':qr,'defect':delta})
    excluded=gate['status']=='EMPTY' or gate['j']!=j
    if excluded:
        assert defects,'the complete F134 source contradiction should produce a defect'
    if not defects:
        return {'status':'OPEN_CANDIDATE','n':n,'j':j,'g':g,'a':a,
                'reason':'no NC claim; all remaining original conditions must still be checked'}
    result={'status':'COMMON6_CERTIFIED','n':n,'j':j,'g':g,'a':a,
            'gate_status':gate['status'],'gate_excludes_input':excluded,'defects':defects,
            'scope':'the same witness also divides C(n,5); no unconditional i4/i7/i8 claim'}
    for p in small_primes():
        if any(item['defect']%p==0 for item in defects):
            result['prime_witness']={'p':p,'v_choose_5':valuation_binomial(n,5,p),
                    'v_choose_6':valuation_binomial(n,6,p),'v_choose_j':valuation_binomial(n,j,p)}
            assert min(result['prime_witness'][k] for k in ('v_choose_5','v_choose_6','v_choose_j'))>0
            break
    if 'prime_witness' not in result:
        result['prime_witness_note']='a prime divisor of any listed defect is a witness; the composite defect itself is not called prime'
    return result

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('n',type=int);parser.add_argument('j',type=int)
    args=parser.parse_args()
    print(json.dumps(consume(args.n,args.j),indent=2,ensure_ascii=False))

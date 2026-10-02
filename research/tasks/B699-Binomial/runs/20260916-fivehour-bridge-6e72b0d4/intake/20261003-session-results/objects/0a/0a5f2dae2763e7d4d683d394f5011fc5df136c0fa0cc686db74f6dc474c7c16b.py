#!/usr/bin/env python3
"""Exact certificates for B699 E round 2. Standard library; no Lean/network.
General conclusions are justified in PROOFS.md. Computations do not certify
external dependencies or replace the general proofs.
"""
from __future__ import annotations
from fractions import Fraction as Q
from math import isqrt, gcd
from pathlib import Path
import hashlib, json, sys
if hasattr(sys, 'set_int_max_str_digits'):
    sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
NLOG=32

def log_series(t: Q) -> tuple[Q,Q]:
    assert 0 <= t < 1
    lo=sum((2*t**(2*k+1)/(2*k+1) for k in range(NLOG)),Q(0))
    return lo, lo+2*t**(2*NLOG+1)/((2*NLOG+1)*(1-t*t))
L2,U2=log_series(Q(1,3))

def logs(x: Q|int) -> tuple[Q,Q]:
    x=Q(x); assert x>0
    k=0
    while x>=2: x/=2; k+=1
    while x<1: x*=2; k-=1
    lo,hi=log_series((x-1)/(x+1))
    if k>=0:return lo+k*L2,hi+k*U2
    return lo+k*U2,hi+k*L2

def interval_text(lo:Q,hi:Q,scale:int=10**12)->dict:
    return {'scale':scale,'lower_floor':lo.numerator*scale//lo.denominator,
            'upper_ceil':-((-hi.numerator*scale)//hi.denominator)}

def lower_scaled(x:Q,scale:int=10**12)->int:
    return x.numerator*scale//x.denominator

def is_prime_trial(n:int)->bool:
    if n<2:return False
    if n%2==0:return n==2
    return all(n%d for d in range(3,isqrt(n)+1,2))

def primes_upto(n:int)->list[int]:
    s=bytearray(b'\1')*(n+1)
    s[:2]=b'\0\0'
    for p in range(2,isqrt(n)+1):
        if s[p]: s[p*p:n+1:p]=b'\0'*((n-p*p)//p+1)
    return [p for p in range(2,n+1) if s[p]]

def primecount_segmented(n:int)->int:
    ps=primes_upto(isqrt(n)); count=0
    for a in range(2,n+1,65536):
        b=min(n+1,a+65536); s=bytearray(b'\1')*(b-a)
        for p in ps:
            if p*p>=b:break
            t=max(p*p,((a+p-1)//p)*p)
            if t<b:s[t-a:b-a:p]=b'\0'*((b-1-t)//p+1)
        count+=sum(s)
    return count

def vp_choose(n:int,k:int,p:int)->int:
    assert 0<=k<=n and is_prime_trial(p)
    v=0; q=p
    while q<=n:
        e=n//q-k//q-(n-k)//q
        assert e in (0,1)
        v+=e; q*=p
    return v

def H(k:int)->int:
    return k-k//2-k//3-k//5+k//30

def make_results()->dict:
    result={}
    vals=[H(k) for k in range(30)]
    assert all(v in (0,1) for v in vals)
    assert vals[:6]==[0,1,1,1,1,1]
    assert Q(1)-Q(1,2)-Q(1,3)-Q(1,5)+Q(1,30)==0
    assert H(30)==H(0)
    result['period30']={'values':vals,'period_balance':0}
    a3,b3=logs(3); a5,b5=logs(5)
    cL=Q(7,15)*L2+Q(3,10)*a3+Q(1,6)*a5
    cU=Q(7,15)*U2+Q(3,10)*b3+Q(1,6)*b5
    assert Q(9,10)<cL<cU<Q(37,40)
    assert Q(2,3)<L2<U2<Q(7,10)
    assert logs(17)[1]<3
    result['kernel_constant_C']=interval_text(cL,cU)
    result['log2']=interval_text(L2,U2)
    # Explicit unbounded prime-supply bands; all comparisons are rational.
    bands=[]
    for R,k in [(Q(5),18),(Q(59,10),26),(Q(599,100),34),
                (Q(5999,1000),42),(Q(59999,10000),50)]:
        L=Q(7*k,10)
        error=L/2**(k//2)+5*(1+L)*(2+L)/2**k
        coeff=9*(6-R)/(50*R)
        margin=coeff-error
        assert margin>0
        bands.append({'R':str(R),'k':k,'threshold_n':2**k,
                      'coefficient':str(coeff),'error_upper':str(error),
                      'margin_lower_scaled_1e12':lower_scaled(margin)})
    result['source_supply_bands']=bands
    # Abel initial constant and derivative sign for x >= 256.
    S=sum((Q(2**k,k) for k in range(1,8)),Q(0))
    M_upper=Q(3,2)*(2+S)
    H_lower=Q(256)/(8*Q(7,10)-3)
    assert M_upper<H_lower
    assert 2*(8*Q(2,3))-9>0
    # Error terms: 5(L+2+1/L)+(125/4)L <=64L for L>=16/3.
    assert 5*(8*Q(2,3)+2+1/(8*Q(2,3)))+Q(125,4)*8*Q(2,3)<64*8*Q(2,3)
    result['abel_certificate']={'dyadic_sum':str(S),'M256_upper':str(M_upper),
        'H256_lower':str(H_lower),'count_constant':'111/100','log_error_constant':64}
    # Accepted A plus newly proved elementary counting bound.
    gates=[]
    for k,T in [(32,128),(64,64),(1024,32),(16384,31)]:
        I=2**k; low=k*L2; high=k*U2; c=Q(111,100)
        rhoU=c/(low-3)+64*high/I
        rhoLogU=c*low/(low-3)+64*high*high/I
        coef=Q(1,3)-Q(5,3*I)-rhoU
        logTL,_=logs(T); _,gapU=logs(Q(T,T-1))
        margin=coef*logTL-rhoLogU-3*high/I-gapU
        assert coef>0 and margin>0
        gates.append({'i_exponent_k':k,'T':T,
            'margin_lower_scaled_1e12':lower_scaled(margin)})
    result['normalized_A_gates']=gates
    # Limit of this scalar A/count relaxation, NOT a theorem about actual primes.
    aa=Q(308421,10000);bb=Q(154211,5000) # 30.8421, 30.8422
    def scalar(t:Q)->tuple[Q,Q]:
        l,u=logs(t);ll,uu=logs((t-1)/t)
        return l/3+ll-Q(111,100),u/3+uu-Q(111,100)
    assert scalar(aa)[1]<0<scalar(bb)[0]
    result['scalar_barrier']={'root_lower':str(aa),'root_upper':str(bb),
                             'status':'scalar relaxation only; not actual prime counts'}
    # One explicit real source, with the original n and several j, no row scan.
    n=5*2**20; i=2**20
    p=n
    while not is_prime_trial(p):p-=1
    assert p>n-i>n//2 and n-p<i and p>i
    js=[i+1,n//3,n//2]
    vv=[(j,vp_choose(n,i,p),vp_choose(n,j,p)) for j in js]
    assert all(v==1 and w==1 for _,v,w in vv)
    result['actual_source_example']={'n':n,'i':i,'p':p,'a':n//p,'r':n%p,
        'component_label_gcd':1,'complete_valuation_checks':vv,
        'trial_division_max':isqrt(p)}
    # Infinite marked-prime deletion model, instantiated once with actual primes.
    P=2**22+1
    while not is_prime_trial(P):P+=1
    i=P-1;n=16*P;j=8*P
    actual_small=primes_upto(i-1); m=len(actual_small)
    assert m==primecount_segmented(i-1)
    assert i>=2**22 and i<j<=n//2 and n<4096*i<i*i
    assert i%2==0 and i>2 and vp_choose(n,i,P)==1 and vp_choose(n,j,P)==0
    # All original 115 endpoints are <=131071, so below i, without rerunning them.
    assert i>131071
    L,U=logs(i); lt,ut=logs(Q(n,i)); lh,uh=logs(Q(n-i+1,n))
    rho=Q(m,i)
    coeff=Q(1,3)-Q(5,3*i)-rho
    assert coeff>0
    ALU=coeff*ut
    ARL=rho*L+3*L/i-uh
    assert ALU<ARL
    # Paper lower mass bound used for the entire infinite model.
    X=2**22
    theta_ratio_lower=Q(9,10)-Q(147,10)/2**10-5*Q(157,10)/2**21
    assert theta_ratio_lower*(1-Q(1,X))>Q(22,25)
    assert Q(X-1,16*(X+1))>=Q(3,50)
    assert Q(14,15)+Q(1,3*X)<Q(47,50)
    assert Q(7,5)*(Q(40,3)+3)/(Q(40,3)-Q(3,2))==Q(686,355)<2
    assert (Q(7*22,10)+Q(1,X))/X<Q(1,6)
    assert Q(8,3)-2-Q(1,6)==Q(1,2)
    result['deletion_model']={'P':P,'n':n,'i':i,'j':j,
        'actual_pi_i_minus_1':m,'primecount_checks':'full sieve and segmented sieve',
        'retained_large_sources':[{'p':P,'a':16,'r':0}],
        'retained_source_component_gcd':16,'complete_valuations':[1,0],
        'A_margin_lower_scaled_1e12':lower_scaled(ARL-ALU),
        'full_factorization_defect_log_lower':'i/2',
        'not_a_counterexample_to_actual_prime_source_generation':True}
    # Local exact tests of the NEW kernel identity using factorization exponents.
    ps=primes_upto(300)
    for n in range(1,301):
        for p in ps:
            if p>n:break
            lhs=0;q=p
            while q<=n:
                lhs+=n//q-(n//2)//q-(n//3)//q-(n//5)//q+(n//30)//q
                q*=p
            rhs=0;q=p
            while q<=n:
                rhs+=H(n//q);q*=p
            assert lhs==rhs and lhs>=0
    result['new_kernel_integer_regression']={'n_max':300,'status':'PASS',
        'not_a_general_proof':True,'no_E1_E5_regression_repeated':True}
    return result

def verify_dependencies()->dict:
    ov=ROOT/'sources/OVERVIEW.md'
    expected='96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066'
    assert hashlib.sha256(ov.read_bytes()).hexdigest()==expected
    return {'overview_sha256':expected,'R1_evidence_zip_sha256':
        '4f4859e57b17b565efacd3eb10370609ab583ecb811f058e204e406fd5365ef1',
        'R1_proofs_adopted_not_replayed':True}

def main()->None:
    result={'dependencies':verify_dependencies(),'certificates':make_results()}
    target=ROOT/'certificates/expected_results.json'
    if '--generate' in sys.argv:
        target.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print('GENERATED exact certificates')
    else:
        expected=json.loads(target.read_text(encoding='utf-8'))
        # JSON normalizes tuple-valued in-memory records into lists.
        result=json.loads(json.dumps(result))
        assert result==expected, 'certificate mismatch'
        print('PASS: exact certificates regenerated and matched')
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()

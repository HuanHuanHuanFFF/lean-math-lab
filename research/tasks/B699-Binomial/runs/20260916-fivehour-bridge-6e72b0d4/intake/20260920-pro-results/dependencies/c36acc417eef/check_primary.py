#!/usr/bin/env python3
"""New finite checks only; author paper proofs carry the infinite quantifiers."""
from __future__ import annotations
import sys
sys.dont_write_bytecode = True
import json
import math
from fractions import Fraction
from pathlib import Path
from consumer import factor, classify, totient_from_factors

# Sparse univariate polynomial arithmetic, exact integers.
def add(a, b):
    out = dict(a)
    for i, c in b.items():
        out[i] = out.get(i, 0) + c
    return {i: c for i, c in out.items() if c}
def scale(a, c):
    return {i: c*v for i, v in a.items() if c*v}
def mul(a, b):
    out = {}
    for i, u in a.items():
        for j, v in b.items():
            out[i+j] = out.get(i+j, 0) + u*v
    return {i: c for i, c in out.items() if c}
def power(a, n):
    out = {0: 1}
    for _ in range(n):
        out = mul(out, a)
    return out
def coeffs(a):
    if not a:
        return [0]
    return [a.get(i, 0) for i in range(max(a)+1)]
def shift(a, t):
    out = {}
    for degree, c in a.items():
        for j in range(degree+1):
            out[j] = out.get(j, 0)+c*math.comb(degree,j)*t**(degree-j)
    return {i: c for i, c in out.items() if c}

def source_polys():
    x={1:1}; one={0:1}
    A=add(add(power(x,2),x),one)
    B=add(add(power(x,2),scale(x,-1)),one)
    xm=add(x,{0:-1}); xp=add(x,one)
    product=mul(mul(xm,xp),mul(A,B))
    assert product==add(power(x,6),{0:-1})
    lin=add(add(power(x,4),{0:-1}),scale(mul(xp,A),-3))
    quad=add(scale(add(power(x,4),{0:-1}),3),scale(mul(A,B),-1))
    gap=add(power(add(power(x,6),{0:-1}),2),scale(power(add(power(x,4),{0:-1}),3),-1))
    gap_rhs=mul(power(mul(xm,xp),2),{4:3,2:4,0:2})
    assert gap==gap_rhs
    return {
        'six_factor_product':coeffs(product),
        'linear_three_at_5':coeffs(shift(lin,5)),
        'quadratics_at_2':coeffs(shift(quad,2)),
        'height_gap':coeffs(gap),
        'height_gap_at_2':coeffs(shift(gap,2)),
        'ramified_exponent_margin_at_5':[123,67],
    }

# Separate sparse four-variable expansion for the input-restoration identity.
def m_add(a,b):
    out=dict(a)
    for k,c in b.items(): out[k]=out.get(k,0)+c
    return {k:c for k,c in out.items() if c}
def m_mul(a,b):
    out={}
    for u,c in a.items():
        for v,d in b.items():
            k=tuple(i+j for i,j in zip(u,v));out[k]=out.get(k,0)+c*d
    return {k:c for k,c in out.items() if c}
def m_scale(a,c): return {k:c*v for k,v in a.items() if c*v}
def m_pow(a,n):
    out={(0,0,0,0):1}
    for _ in range(n):out=m_mul(out,a)
    return out

def check_restoration(nshift):
    P={(1,0,0,0):1};Q={(0,1,0,0):1};nu={(0,0,1,0):1};v={(0,0,0,1):1};one={(0,0,0,0):1}
    N=m_add(m_mul(m_mul(P,Q),nu),m_scale(one,nshift))
    R=m_add(m_add(m_mul(v,m_pow(nu,2)),m_scale(m_mul(P,m_pow(Q,2)),-1)),one)
    lhs=m_add(m_add(m_mul(v,m_pow(m_add(N,m_scale(one,-2)),2)),m_scale(m_mul(m_pow(P,3),m_pow(Q,4)),-1)),m_mul(m_pow(P,2),m_pow(Q,2)))
    rhs=m_mul(m_mul(m_pow(P,2),m_pow(Q,2)),R)
    assert lhs==rhs, 'incorrect n-2 restoration identity'

def divisors(n):
    ds=[1]
    for p,e in factor(n).items():
        old=ds[:]; ds=[d*p**k for d in old for k in range(e+1)]
    return sorted(ds)
def mobius(n):
    f=factor(n)
    if any(e>1 for e in f.values()):return 0
    return (-1)**len(f)
def cyclo_value(n,x):
    numerator=denominator=1
    for d in divisors(n):
        mu=mobius(n//d)
        if mu==1:numerator*=x**d-1
        elif mu==-1:denominator*=x**d-1
    assert numerator%denominator==0
    return numerator//denominator

def example_record(ell):
    D=70*ell; ph=totient_from_factors(D,factor(D))
    vals=[(e,cyclo_value(e,2)) for e in divisors(D)]
    maximum=max(v for e,v in vals)
    return {'ell':ell,'D':D,'phi':ph,'gap':D-3*ph,
            'max_phi_at_2':maximum,'maximizing_indices':[e for e,v in vals if v==maximum]}

def check_cert(c):
    assert c['version']=='B699-BINARY-CYC-1'
    assert c['contract']=={'canonical_minimal_branch_only':True,'whole_row_claim':False,
                           'distinct_full_odd_prime_powers':True,'source_minimum':11,
                           'old_high_side_bound':'4*v>Q','D_squarefree_required':True,
                           'D_even_required':True,'D_coprime_to_3_required':True}
    check_restoration(c['n_shift'])
    assert c['n_shift']==2
    assert c['residual_degree_bounds']==[3,4,2,1]
    expected=source_polys()
    assert c['polynomials']==expected
    for name in ('linear_three_at_5','quadratics_at_2','height_gap_at_2','ramified_exponent_margin_at_5'):
        cs=c['polynomials'][name]
        assert cs[0]>0 and all(v>=0 for v in cs)
    const=c['constants']
    head=Fraction(1,2)*Fraction(3,4)*Fraction(7,8)
    lb=head*Fraction(7,8)
    assert const=={'infinite_product_lower':[147,512],'cyclotomic_upper_constant':4,
                   'totient_two_odd_min':[12,35],'D_gap_threshold':8,
                   'ramified_cofactor_minimum':70}
    assert lb==Fraction(147,512)>Fraction(1,4)
    assert Fraction(12,35)>Fraction(1,3)
    assert 64*4==2**8
    endpoints=[]
    for x in (2,4):
        f=factor(x**6-1)
        eligible=sorted(p**e for p,e in f.items() if p%2 and p**e>=11)
        endpoints.append({'x':x,'factorization':[[p,e] for p,e in f.items()], 'eligible':eligible})
        assert len(eligible)<2
    assert c['small_endpoints']==endpoints
    ex=[example_record(p) for p in (11,13,17,19,23,29,31)]
    assert c['examples']==ex
    for row in ex:
        assert all(e==1 for e in factor(row['D']).values()) and row['D']%2==0 and row['D']%3
        assert row['gap']>=8 and row['max_phi_at_2']<4*2**row['phi']
    dg=c['diagnostics']
    assert dg['cross_3']=={'x':8,'factors':[7,9,73,57],'full_three_power':27}
    assert factor(8**6-1)[3]==3 and all(a%27 for a in [7,9,73,57])
    assert dg['without_coprime_3']=={'x':6,'P':43,'Q':31,'product':1333,'cap':1295}
    assert all(factor(6**6-1)[p]==1 for p in (43,31)) and 43*31>6**4-1
    assert dg['composite_blocks']=={'x':8,'U':27,'V':9709}
    assert 27*9709==8**6-1 and math.gcd(27,9709)==1 and len(factor(9709))==3
    assert dg['m10']=={'m':10,'M':1023,'P':31,'Q':11,'C_cube':39651821,'M_square':1046529,'nu':6,'v':[625,6]}
    assert 341**3==39651821>1023**2==1046529
    assert Fraction(31*121-1,36)==Fraction(625,6)
    assert (2**11-2)==31*11*6
    for test in c['consumer_tests']:
        result=classify(test['c'],test['s'],test['D'])
        assert result['closed_by_this_round']==test['closed']
        assert result['theorem']==test['theorem']
        assert not result['whole_row_claim']
    assert len(c['consumer_tests'])==12
    return {'status':'PASS_EXACT_BINARY_CYC_CHECKS','small_endpoints':2,
            'example_divisors':len(ex),'consumer_tests':len(c['consumer_tests']),
            'infinite_claims':'paper proof; not inferred from these checks'}

def main():
    path=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).parent/'certificates/evidence.json'
    c=json.loads(path.read_text(encoding='utf-8'))
    print(json.dumps(check_cert(c),ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()

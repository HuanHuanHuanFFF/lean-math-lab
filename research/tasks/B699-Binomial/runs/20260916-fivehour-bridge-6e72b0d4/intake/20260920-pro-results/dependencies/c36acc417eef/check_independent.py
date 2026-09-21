#!/usr/bin/env python3
"""Independent finite arithmetic implementation.

No imports from check_primary, make_certificate, or consumer. Polynomial
identities use degree-complete scalar grids and rational Vandermonde
interpolation; cyclotomic integer values use recursive division, not Mobius.
This remains a finite checker, not a formal verification of infinite theorems.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode = True
import json
import math
import itertools
from fractions import Fraction as F
from pathlib import Path

def evaluate(cs,x):
    out=0
    for a in reversed(cs): out=out*x+a
    return out

def interpolate(values):
    n=len(values)
    rows=[[F(x**i) for i in range(n)]+[F(values[x])] for x in range(n)]
    for col in range(n):
        pivot=next(i for i in range(col,n) if rows[i][col])
        rows[col],rows[pivot]=rows[pivot],rows[col]
        z=rows[col][col]; rows[col]=[a/z for a in rows[col]]
        for i in range(n):
            if i!=col and rows[i][col]:
                z=rows[i][col];rows[i]=[a-z*b for a,b in zip(rows[i],rows[col])]
    cs=[rows[i][-1] for i in range(n)]
    while len(cs)>1 and cs[-1]==0:cs.pop()
    assert all(a.denominator==1 for a in cs)
    return [int(a) for a in cs]

def decompose(n):
    # Sieve a complete list of trial primes first, unlike the first checker.
    assert isinstance(n,int) and n>=1
    cap=math.isqrt(n)
    sieve=bytearray(b'\x01')*(cap+1)
    if cap>=0:sieve[0]=0
    if cap>=1:sieve[1]=0
    for p in range(2,math.isqrt(cap)+1):
        if sieve[p]:
            for k in range(p*p,cap+1,p):sieve[k]=0
    out=[];rest=n
    for p in range(2,cap+1):
        if sieve[p] and rest%p==0:
            count=0
            while rest%p==0:rest//=p;count+=1
            out.append([p,count])
    if rest>1:out.append([rest,1])
    return out

def phi_count(n): return sum(math.gcd(k,n)==1 for k in range(1,n+1))
def cyclotomic_recursion(D,x):
    ds=[d for d in range(1,D+1) if D%d==0]
    vals={}
    for e in ds:
        previous=1
        for d in ds:
            if d>=e:break
            if e%d==0:previous*=vals[d]
        numerator=x**e-1
        assert numerator%previous==0
        vals[e]=numerator//previous
    return vals

def independent_classification(c,s,D):
    if c!=1 or s<3 or s%2==0:return False,None
    m=s-1
    if m%6==0:return True,'C6'
    if D is None:
        D=math.prod(p for p,e in decompose(m))
    fs=decompose(D)
    good=m%D==0 and D%2==0 and D%3!=0 and all(e==1 for p,e in fs)
    return (True,'CYC') if good and D-3*phi_count(D)>=8 else (False,None)

def check_cert(c):
    assert c['version']=='B699-BINARY-CYC-1'
    expected_contract={'canonical_minimal_branch_only':True,'whole_row_claim':False,
                       'distinct_full_odd_prime_powers':True,'source_minimum':11,
                       'old_high_side_bound':'4*v>Q','D_squarefree_required':True,
                       'D_even_required':True,'D_coprime_to_3_required':True}
    assert c['contract']==expected_contract
    # Degrees <=(3,4,2,1); the whole tensor grid is an exact identity check.
    assert c['residual_degree_bounds']==[3,4,2,1]
    for P,Q,nu,v in itertools.product(range(4),range(5),range(3),range(2)):
        n=P*Q*nu+c['n_shift']
        lhs=v*(n-2)**2-P**3*Q**4+P**2*Q**2
        rhs=P**2*Q**2*(v*nu**2-P*Q**2+1)
        assert lhs==rhs
    assert c['n_shift']==2
    pol=c['polynomials']
    assert set(pol)=={'six_factor_product','linear_three_at_5','quadratics_at_2',
                     'height_gap','height_gap_at_2','ramified_exponent_margin_at_5'}
    products=[]
    for x in range(7):
        product=(x-1)*(x+1)*(x*x+x+1)*(x*x-x+1)
        assert product==x**6-1
        products.append(product)
    assert pol['six_factor_product']==interpolate(products)
    lin=[];quad=[]
    for y in range(5):
        x=y+5;lin.append(x**4-1-3*(x+1)*(x*x+x+1))
        x=y+2;quad.append(3*(x**4-1)-(x**4+x*x+1))
    assert pol['linear_three_at_5']==interpolate(lin)
    assert pol['quadratics_at_2']==interpolate(quad)
    # Degree 12 before cancellation: thirteen nodes, no numerical root tests.
    gap=[];shifted=[]
    for x in range(13):
        value=(x**6-1)**2-(x**4-1)**3
        rhs=(x-1)**2*(x+1)**2*(3*x**4+4*x*x+2)
        assert value==rhs
        gap.append(value)
        z=x+2;shifted.append((z**6-1)**2-(z**4-1)**3)
    assert pol['height_gap']==interpolate(gap)
    assert pol['height_gap_at_2']==interpolate(shifted)
    vals=[70*((y+5)-3)-(3*(y+5)+2) for y in range(2)]
    assert pol['ramified_exponent_margin_at_5']==interpolate(vals)
    for key in ('linear_three_at_5','quadratics_at_2','height_gap_at_2','ramified_exponent_margin_at_5'):
        assert pol[key][0]>0 and all(a>=0 for a in pol[key])
    const=c['constants']
    assert const=={'infinite_product_lower':[147,512],'cyclotomic_upper_constant':4,
                   'totient_two_odd_min':[12,35],'D_gap_threshold':8,
                   'ramified_cofactor_minimum':70}
    lower=math.prod([F(1,2),F(3,4),F(7,8),1-F(1,8)])
    assert lower==F(*const['infinite_product_lower'])>F(1,4)
    assert F(1,2)*F(4,5)*F(6,7)==F(12,35)>F(1,3)
    assert 64*4==2**const['D_gap_threshold']
    assert [row['x'] for row in c['small_endpoints']]==[2,4]
    for row in c['small_endpoints']:
        x=row['x'];fs=decompose(x**6-1)
        assert row['factorization']==fs
        eligible=sorted(p**e for p,e in fs if p%2 and p**e>=11)
        assert row['eligible']==eligible and len(eligible)<2
    assert [row['ell'] for row in c['examples']]==[11,13,17,19,23,29,31]
    for row in c['examples']:
        D=row['D'];assert D==70*row['ell']
        fs=decompose(D)
        assert D%2==0 and D%3 and all(e==1 for p,e in fs)
        ph=phi_count(D)
        assert row['phi']==ph and row['gap']==D-3*ph>=8
        vals=cyclotomic_recursion(D,2)
        maximum=max(vals.values())
        assert row['max_phi_at_2']==maximum<4*2**ph
        assert row['maximizing_indices']==[d for d,v in vals.items() if v==maximum]
    dg=c['diagnostics']
    vals=[8-1,8+1,8*8+8+1,8*8-8+1]
    three=3**dict(decompose(8**6-1))[3]
    assert dg['cross_3']=={'x':8,'factors':vals,'full_three_power':three}
    assert three==27 and all(a%three for a in vals)
    assert dg['without_coprime_3']=={'x':6,'P':43,'Q':31,'product':43*31,'cap':6**4-1}
    assert dict(decompose(6**6-1))[43]==dict(decompose(6**6-1))[31]==1
    assert 43*31>6**4-1
    assert dg['composite_blocks']=={'x':8,'U':27,'V':9709}
    assert math.gcd(27,9709)==1 and 27*9709==8**6-1 and len(decompose(9709))==3
    assert dg['m10']=={'m':10,'M':1023,'P':31,'Q':11,'C_cube':341**3,
                      'M_square':1023**2,'nu':6,'v':[625,6]}
    assert 341**3>1023**2 and F(31*11**2-1,6**2)==F(625,6)
    assert len(c['consumer_tests'])==12
    for row in c['consumer_tests']:
        closed,thm=independent_classification(row['c'],row['s'],row['D'])
        assert (closed,thm)==(row['closed'],row['theorem'])
    return {'status':'PASS_INDEPENDENT_INTERPOLATION_AND_CYCLOTOMIC_RECURSION',
            'restoration_grid_points':120,'small_endpoints':2,'example_divisors':7,
            'infinite_claims':'paper proof; not inferred from these checks'}

def main():
    path=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).parent/'certificates/evidence.json'
    c=json.loads(path.read_text(encoding='utf-8'))
    print(json.dumps(check_cert(c),ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()

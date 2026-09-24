#!/usr/bin/env python3
"""Arithmetic/identity replay. Does not certify UFD proofs, NL, Lean, or NC3 existence."""
from __future__ import annotations
import json
from pathlib import Path
from math import gcd,isqrt,comb,prod
from fractions import Fraction
from algebra import (const,var,add,scale,mul,power,is_prime_trial,factor_trial,
                     order_two_prime_power,local_states,orbit_gcd_degree,crt_pair)
from orbit_gate import inspect
ROOT=Path(__file__).resolve().parents[1]

def load(s):return json.loads((ROOT/'certificates'/s).read_text())
def eq(p,q):assert p==q,(p,q)

def check_algebra():
    D=4;h,Q,v,nu=[var(i,D) for i in range(D)];one=const(1,D)
    P=add(Q,mul(h,v));n=add(mul(mul(P,Q),nu),const(2,D))
    F=add(mul(v,power(nu,2,D)),scale(mul(P,power(Q,2,D)),-1),one)
    C=add(scale(nu,2),scale(mul(add(h,scale(one,-1)),Q),-1),mul(h,v))
    T=add(mul(add(h,scale(one,-1)),power(nu,2,D)),scale(mul(mul(h,P),Q),-1))
    I=add(scale(n,2),scale(h,-1),const(-3,D),scale(mul(v,T),-1))
    eq(I,add(mul(mul(P,Q),C),scale(mul(add(h,scale(one,-1)),F),-1)))
    D=3;n,v,T=[var(i,D) for i in range(D)]
    hh=add(scale(n,2),const(-3,D),scale(mul(v,T),-1))
    K=add(power(hh,2,D),scale(hh,-6),const(-11,D))
    rhs=add(scale(add(power(n,2,D),scale(n,-6),const(4,D)),4),
            scale(mul(mul(add(n,const(-3,D)),v),T),-4),mul(power(v,2,D),power(T,2,D)))
    eq(K,rhs)
    # Full old overlap identity reconstructed from 4 times the original norm.
    D=4;h,d,v,W=[var(i,D) for i in range(D)]
    Q=add(d,v);P=add(d,mul(add(h,const(1,D)),v))
    twonu=add(mul(add(h,const(-1,D)),d),scale(v,-1))
    F4=add(mul(v,power(twonu,2,D)),scale(mul(P,power(Q,2,D)),-4),const(4,D))
    KK=add(power(h,2,D),scale(h,-6),const(-11,D))
    shared=add(mul(power(d,2,D),KK),scale(W,-4),
               scale(mul(mul(add(h,const(1,D)),d),v),-10),
               scale(mul(add(scale(h,4),const(3,D)),power(v,2,D)),-1))
    eq(F4,add(mul(v,shared),scale(add(mul(v,W),scale(power(d,3,D),-1),const(1,D)),4)))
    print('SAME_INPUT_NORM_LINK_IDENTITIES=PASS')

def check_fermat():
    D=2;a,b=[var(i,D) for i in range(D)]
    N=add(power(a,2,D),scale(mul(a,b),-1),power(b,2,D))
    A=add(power(a,3,D),scale(mul(a,power(b,2,D)),-3),power(b,3,D))
    B=scale(mul(mul(a,b),add(a,scale(b,-1))),3)
    C=add(A,B);E=add(scale(B,2),scale(A,-1))
    eq(add(power(C,2,D),scale(mul(C,E),-1),power(E,2,D)),scale(power(N,3,D),3))
    eq(add(C,E),scale(mul(mul(a,b),add(a,scale(b,-1))),9))
    eq(add(C,scale(E,-2)),scale(add(A,scale(B,-1)),3))
    eq(add(E,scale(C,-2)),scale(A,-3))
    for u in range(9):
        for v in range(9):
            for z in range(9):
                if all(t%3 for t in (u,v,z)):
                    assert (u**3+v**3-z**3)%9
    for u in [Fraction(-1,2),Fraction(1,2)]:
        for v in [Fraction(-1,2),Fraction(1,2)]:
            assert u*u-u*v+v*v<=Fraction(3,4)
    print('FERMAT3_DESCENT_ALGEBRA_AND_MOD9=PASS (paper supplies descent and UFD quantifiers)')

def check_trace():
    # Univariate V_n(1,Y) by recurrence, compared with the general closed formula.
    V=[[2],[1]]
    for n in range(2,102):
        a=V[-1]+[0]; b=[0]+V[-2]
        L=max(len(a),len(b));a +=[0]*(L-len(a));b +=[0]*(L-len(b))
        c=[x-y for x,y in zip(a,b)]
        while len(c)>1 and c[-1]==0:c.pop()
        V.append(c)
    for p in range(3,102):
        if not is_prime_trial(p):continue
        cs=[]
        for k in range((p-1)//2+1):
            num=p*comb(p-k,k);assert num%(p-k)==0
            cs.append((-1)**k*(num//(p-k)))
        assert cs==V[p] and cs[0]==1 and cs[1]==-p
        assert all(c%p==0 for c in cs[1:])
    for r in load('trace_examples.json')['examples']:
        assert r['V_coefficients_ascending_in_Y']==V[r['prime']]
    for e in range(1,20):
        # The image of the 2**e-power map on the six units is exactly {0,2,4}.
        assert {(2**e*k)%6 for k in range(6)}=={0,2,4}
    residues=[r for r in range(120) if gcd(r,120)==1 and r%3==1 and r%8==1 and r%5 in(1,4)]
    assert residues==[1,49]
    print('TRACE_RECURRENCE_AND_UNIT_CHECKS=PASS (finite diagnostic; universal proof is P5-P6)')

def check_orbits():
    data=load('orders_and_orbits.json');R={}
    for rec in data['records']:
        p,b,T=rec['prime'],rec['exponent'],rec['order'];M=p**b
        assert is_prime_trial(p) and M==rec['modulus']
        f={int(q):e for q,e in rec['order_factorization'].items()}
        assert prod(q**e for q,e in f.items())==T
        assert all(is_prime_trial(q) for q in f)
        assert pow(2,T,M)==1
        for q in f:
            assert pow(2,T//q,M)==rec['order_witnesses'][str(q)]!=1
        assert order_two_prime_power(p,b)==T
        if 'exponent_states' in rec:
            E=local_states(p,b,T)
            assert {str(c):x for c,x in E.items()}==rec['exponent_states']
            assert all(len(x)<=2 for x in E.values())
        if b==1:
            R[p]=rec
            for c in (1,3):
                deg,rem=orbit_gcd_degree(p,T,c)
                assert {'gcd_degree':deg,'remainder':list(rem)}==rec['fast_gates'][str(c)]
    a,b=R[409],R[1129];g=gcd(a['order'],b['order']);assert g==12
    for c in ('1','3'):
        ea,eb=a['exponent_states'][c],b['exponent_states'][c]
        assert ea and eb
        assert all((u-v)%g for u in ea for v in eb)
    for p in (601,1321442641):
        assert all(R[p]['fast_gates'][str(c)]['gcd_degree']==0 for c in (1,3))
    # Exact algorithm self-check against direct root/orbit enumeration for all small primes.
    for p in range(7,400):
        if not is_prime_trial(p):continue
        T=order_two_prime_power(p,1);E=local_states(p,1,T)
        for c in (1,3):assert (orbit_gcd_degree(p,T,c)[0]>0)==bool(E[c])
    # CRT implementation has an independent brute-force check over all small moduli.
    for m in range(1,15):
        for n in range(1,15):
            L=m*n//gcd(m,n)
            for a in range(m):
                for b in range(n):
                    r=crt_pair(a,m,b,n)
                    brute=[x for x in range(L) if x%m==a and x%n==b]
                    assert (r is None)==(not brute)
                    if brute:assert r==(brute[0],L)
    assert inspect([(409,1)])['status']=='NECESSARY_EXPONENT_CLASSES_ONLY'
    assert inspect([(1129,1)])['status']=='NECESSARY_EXPONENT_CLASSES_ONLY'
    assert inspect([(409,1),(1129,1)])['status']=='EXIT_NC3_MINIMAL_IF_G_DIVISIBLE'
    assert inspect([(1321442641,1)],10)['status']=='EXIT_NC3_MINIMAL_IF_G_DIVISIBLE'
    assert inspect([(409,2)],10)['status']=='INCONCLUSIVE_RESOURCE_LIMIT'
    print('COMPLETE_PERIOD_409_1129_AND_PRIME_POWER_409_SQUARED=PASS')
    print('SAME_C_S_CRT_PAIR_ALL_EXPONENTS=PASS')
    print('FAST_ORBIT_GCD_WITHOUT_PERIOD_SCAN=PASS')
    print('NONEMPTY_AND_RESOURCE_BOUNDARY_TESTS=PASS')

def check_weak():
    data=load('failure_models.json');x,y=3,1
    for row in data['pell_terms']:
        d=(x-1)//2
        assert row=={'k':row['k'],'x':x,'y':y,'Delta':d}
        assert x*x-12*y*y==-3 and d*d+d+1==3*y*y
        if row['k']%4==0:assert d%16==1
        x,y=7*x+24*y,2*x+7*y
    # Fourth matrix power has first row (1,0) mod32, not the full identity matrix.
    A=((7,24),(2,7));B=((1,0),(0,1))
    for _ in range(4):B=tuple(tuple(sum(B[i][k]*A[k][j] for k in range(2))%32 for j in range(2)) for i in range(2))
    assert B[0]==(1,0)
    r=data['square_cyclotomic'];d,l,v,W,Q=r['Delta'],r['ell'],r['v'],r['W'],r['Q']
    assert is_prime_trial(l) and d*d+d+1==3*l*l
    assert d%16==1 and l%120==1 and pow(5,(l-1)//2,l)==1
    assert v*W==d**3-1 and Q==v+d and 3*v>Q and v<Q
    assert r['Dv']==v//gcd(v,3*(d-1))==l
    assert r['DW']==W//gcd(W,3*(d-1))==l
    assert gcd(v,W)==l and 16*d<W*W+640*W
    S=(Q**5-d*d)//v;Y=isqrt(S)
    assert (Q**5-d*d)%v==0 and S==r['S'] and Y==r['floor_sqrt_S']
    assert S-Y*Y==r['lower_gap']>0 and (Y+1)**2-S==r['upper_gap']>0
    assert inspect([(l,1)],1)['status']=='EXIT_NC3_MINIMAL_IF_G_DIVISIBLE'
    print('PELL_WEAK_MODEL_AND_MISSING_INTEGER_NORM=PASS')

def main():
    check_algebra();check_fermat();check_trace();check_orbits();check_weak()
    ext=load('external_contract.json');assert ext['verified_by_this_program'] is False
    print('EXTERNAL_NL_CONTRACT=DECLARED_NOT_REPROVED')
    print('REPLAY=PASS')
if __name__=='__main__':main()

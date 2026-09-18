#!/usr/bin/env python3
"""Second implementation of bounded terminals; imports no constructor or SymPy.

The search box here follows from the six factorizations of A/D in the proof.
It is NOT a search of original B699 inputs or of unbounded parameters.
"""
from __future__ import annotations
from copy import deepcopy
from fractions import Fraction
from math import gcd,isqrt
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parents[1]


def verify(cert:dict) -> dict:
    assert cert['schema']==1
    p=cert['primary']
    assert p['remaining_states']==0
    assert p['terminal_factorization']=={'F':253,'F_factors':[11,23],'M_divides':64009}
    for prime in (11,23):
        assert all(prime%d for d in range(2,isqrt(prime)+1))
    expected=sorted(11**i*23**j for i in range(3) for j in range(3))
    rows=p['terminal_divisors']
    assert [r['M'] for r in rows]==expected
    for r in rows:
        M,x=r['M'],r['floor_root']
        assert r['M_plus_27']==M+27
        assert x*x<M+27<(x+1)**2
    expected_a=[(1,1,27,[]),(1,3,2187,[1]),(3,1,14348907,[1])]
    assert len(p['a_bounds'])==3
    for r,(kap,c,num,survivors) in zip(p['a_bounds'],expected_a):
        assert r==dict(kappa=kap,c=c,numerator=num,denominator=64,survivors=survivors)
        vals=[]
        # Completeness: num/64<=14348907/64<5^8; a odd, and 3 not dividing a for kappa=3.
        assert num <64*5**8
        for a in (1,3):
            if kap==3 and a%3==0:continue
            if 64*a**8<num: vals.append(a)
        assert vals==survivors
    assert len(p['small_d_nonunit_a'])==2
    for row,d in zip(p['small_d_nonunit_a'],(5,7)):
        a=d;M=d*d+6*d-18;B=d*d+3*d-27
        lhs=32*a**12*B**4;rhs=3**8*d**3*M**3
        assert row==dict(d=d,a=a,M=M,B=B,forbidden_lhs=lhs,required_rhs=rhs,gap=lhs-rhs)
        assert lhs>=rhs
    for row,d in zip(p['small_d_unit_a'],(5,7)):
        M=d*d+6*d-18
        assert row==dict(d=d,M=M,remainder=253**2%M)
        assert row['remainder']!=0
    assert len(p['small_d_unit_a'])==2

    sec=cert['secondary']
    assert sec['remaining_states']==0
    params={1:(1,1),9:(1,3),27:(3,1)}
    keys=('A','g','epsilon','u','T','z')
    def key(r):return tuple(r[k] for k in keys)
    # Independent bounded enumeration of w=u*T, rather than factor-pair reconstruction.
    all_states={};recovered={}
    for A,(lam,mu) in params.items():
        for g in range(1,15):
            for eps in range(1,14,2):
                for w in range(1,197,2):
                    numer=w*g*g-A
                    if numer<=0 or numer%(eps*eps):continue
                    z=numer//(eps*eps)
                    if z>169 or isqrt(w*z)**2!=w*z:continue
                    q=gcd(w,z)
                    if A%q:continue
                    f,h=isqrt(w//q),isqrt(z//q)
                    assert f*f==w//q and h*h==z//q and gcd(f,h)==1
                    X,Y=f*g,h*eps
                    for u in range(1,w+1,2):
                        if w%u:continue
                        T=w//u
                        r=dict(A=A,**{'lambda':lam},mu=mu,q=q,X=X,Y=Y,
                               g=g,epsilon=eps,u=u,T=T,z=z)
                        all_states[key(r)]=r
                        L=lam*mu
                        Hnum=eps+2*u*g*g;Cnum=4*z*u*g*g+4*z*eps+T
                        if Hnum%L or Cnum%(L*L):continue
                        H,C=Hnum//L,Cnum//(L*L)
                        n=2*mu*C*H+2
                        ds=Fraction(lam*mu*mu*C*C-z*(n-1),lam*g*g)
                        rr=dict(r,H=H,C=C,n=n,delta2_num=ds.numerator,delta2_den=ds.denominator)
                        if ds.denominator!=1:
                            rr['rejection']='delta_squared_not_integer'
                        elif ds.numerator<0:
                            rr['rejection']='delta_squared_negative'
                        else:
                            x=isqrt(ds.numerator)
                            assert x*x<ds.numerator<(x+1)**2
                            rr.update(rejection='delta_squared_not_square',floor_root=x)
                        recovered[key(rr)]=rr
    assert len(all_states)==30 and len(recovered)==17
    assert len(sec['all_norm_states'])==len(all_states)
    assert {key(r):r for r in sec['all_norm_states']}==all_states
    assert len(sec['integer_recoveries'])==len(recovered)
    assert {key(r):r for r in sec['integer_recoveries']}==recovered
    # Independent determination of all six base pairs by bounding X and Y.
    base=[]
    for A in params:
        for q in range(1,A+1):
            if A%q:continue
            for X in range(1,15):
                for Y in range(1,X):
                    if q*(X*X-Y*Y)==A:
                        base.append(dict(A=A,q=q,r=X-Y,t=X+Y,X=X,Y=Y))
    basetuple=lambda r:tuple(r[k] for k in ('A','q','r','t','X','Y'))
    assert sorted(map(basetuple,base))==sorted(map(basetuple,sec['norm_factorizations']))
    assert sec['factorization_count']==len(base)==6
    assert sec['norm_state_count']==30 and sec['integer_recovery_count']==17
    reasons={}
    for r in recovered.values():reasons[r['rejection']]=reasons.get(r['rejection'],0)+1
    return {'status':'PASS','primary_terminal_divisors':9,'small_d_nonunit_states':2,
            'secondary_base_factorizations':6,'secondary_norm_states':30,
            'secondary_integer_recoveries':17,'rejections':reasons,
            'remaining':0,'verification_grade':'same-author second implementation, not independent review or Lean'}


def main() -> None:
    cert=json.loads((ROOT/'outputs/certificate.json').read_text())
    result=verify(cert)
    mutations=[]
    tests=[]
    d=deepcopy(cert);d['primary']['terminal_divisors'].pop();tests.append(('missing_primary_divisor',d))
    d=deepcopy(cert);d['primary']['terminal_divisors'][0]['floor_root']+=1;tests.append(('wrong_square_bracket',d))
    d=deepcopy(cert);d['secondary']['integer_recoveries'].pop();tests.append(('missing_recovery_state',d))
    d=deepcopy(cert);d['secondary']['all_norm_states'].pop();tests.append(('missing_norm_state',d))
    d=deepcopy(cert);d['secondary']['integer_recoveries'][0]['delta2_num']+=1;tests.append(('altered_delta',d))
    d=deepcopy(cert);d['primary']['small_d_nonunit_a'][0]['gap']-=1;tests.append(('altered_low_case',d))
    for name,bad in tests:
        try:
            verify(bad)
        except AssertionError:
            mutations.append(name)
        else:
            raise AssertionError('corrupt certificate accepted: '+name)
    result['corruptions_rejected']=mutations
    (ROOT/'outputs/verification.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(json.dumps(result,ensure_ascii=False))

if __name__=='__main__':main()

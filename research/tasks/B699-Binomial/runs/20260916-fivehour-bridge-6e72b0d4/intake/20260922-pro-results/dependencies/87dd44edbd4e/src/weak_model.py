#!/usr/bin/env python3
"""One exact falsifier for an overstrong scalar-core-only carry assertion.
Not a B699 counterexample. Uses actual binomial gcd to label it correctly.
"""
import json,math

def factor(n):
    out={};p=2
    while p*p<=n:
        while n%p==0:out[str(p)]=out.get(str(p),0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[str(n)]=out.get(str(n),0)+1
    return out

def vp(n,p):
    z=0
    while n and n%p==0:n//=p;z+=1
    return z

def run():
    P,Q,nu,h,v=89,3,20,43,2
    n=P*Q*nu+2;sigma=(P+nu)*Q*Q;tau=n-sigma;j=min(sigma,tau)
    assert P==Q+h*v and h*Q==P+2*nu
    assert v*nu**2==P*Q**2-1 and P*nu**2==(P+nu)**2*Q-h
    common=math.gcd(math.comb(n,3),math.comb(n,j))
    carry=n//Q**3-sigma//Q**3-tau//Q**3
    assert carry==0 and common>1
    lam=3 if vp(n-1,3)==1 else 1
    mu=3 if vp((n-2)//2,3)==1 else 1
    actualK=(n-2)//(2*mu);actualH=math.gcd(actualK,j-1)
    return {'model_kind':'weak scalar core, NOT NC3',
      'P':P,'Q':Q,'nu':nu,'h':h,'v':v,'D':Q-v,'Rstar':0,
      'n':n,'j':j,'k':n-j,'g':math.gcd(n,j),
      'Q_cubed_carry':carry,'C_n_3_prime_factors':factor(math.comb(n,3)),
      'actual_common_prime_factors':factor(common),
      'actual_lambda':lam,'actual_mu':mu,'actual_K':actualK,'actual_H':actualH,
      'failures':['4 does not divide n','alpha is not c times a power of 2',
       'Q=3 is isolated once in n-2 and is not a source prime of C(n,3)',
       'n exceeds Q^4','h is outside the proved near-square band',
       'the core nu is not the actual 2*mu*H']}
if __name__=='__main__':print(json.dumps(run(),indent=2,sort_keys=True))

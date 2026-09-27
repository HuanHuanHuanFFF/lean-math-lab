#!/usr/bin/env python3
"""Exact ordinary-integer checker for ONE normalized menu. Never asserts NC6."""
from __future__ import annotations
import argparse,json,math

def v(n,p):
    if n==0:raise ValueError('zero has no finite valuation')
    k=0
    while n%p==0:n//=p;k+=1
    return k

def rough235(n):
    if n<=0:raise ValueError('positive source required')
    for p in (2,3,5):
        while n%p==0:n//=p
    return n

def jacobi(a,n):
    if n<=0 or n%2==0:raise ValueError('odd positive Jacobi denominator')
    a%=n;sign=1
    while a:
        while a%2==0:
            a//=2
            if n%8 in (3,5):sign=-sign
        a,n=n,a
        if a%4==n%4==3:sign=-sign
        a%=n
    return sign if n==1 else 0

def check(t:int,b:int,E:int,W:int):
    if t<0 or b<1 or E<2 or W==0:raise ValueError('t>=0,b>=1,E>=2,W!=0')
    if b+2*t>100000 or E>100000:raise ValueError('explicit-integer resource guard; not a mathematical cutoff')
    A=9**t;B=3**b;s=5**(E-1);S=5*s;inv=pow(B,-1,s)
    out=dict(t=t,b=b,E=E,W=W,NC_claim=False,all_historical_gates_checked=False)
    def stop(stage,**kw):out.update(stage=stage,**kw);return out
    if inv%(2*A):return stop('no_integral_c_from_inverse')
    c=inv//(2*A)
    if math.gcd(c,30)>1:return stop('c_not_primitive',c=c)
    R=s-inv*W
    if not(1<=R<=(S-1)//4):return stop('R_out_of_range',c=c)
    if math.gcd(abs(W),30*c*R)>1:return stop('W_not_primitive',c=c)
    n=10*A*c*B;q=(inv*B-1)//s
    if n%8!=2 or q%5==0:return stop('wrong_tail_or_inexact_E',c=c)
    numerator=W+B*R;den=100*S*c
    Z,rem=divmod(numerator,den)
    if rem or Z<=0:return stop('Z_not_positive_integer',c=c)
    z=math.isqrt(Z)
    if z*z!=Z:return stop('Z_not_square',c=c,Z_residue_mod11=Z%11)
    if z%3==0:return stop('z_not_3_primitive',c=c)
    Y=A*B*B-40*(n-1)*Z
    if Y<=0 or math.isqrt(Y)**2!=Y:return stop('delta_not_positive_square',c=c)
    delta=math.isqrt(Y);alpha=3**t*B;g=10*3**t*c;beta=(alpha-delta)//2;j=g*beta;k=n-j
    assert delta<alpha and (alpha-delta)%2==0
    assert 7<=j<=n//2 and math.gcd(n,j)==g
    assert math.gcd(delta,z)==1 and j*k==10*g*g*z*z*(n-1)
    assert q==rough235(n-5) and (j-1)*(j-4)%q==0
    sources=[]
    for r in range(6):
        qr=rough235(n-r);product=1
        for x in range(r+1):product=product*((j-x)%qr)%qr
        sources.append(dict(r=r,q=qr,complete_window=(product==0)))
    q4=sources[4]['q'];C=math.gcd(q4,j-2);E4=math.gcd(q4,j*k)
    return stop('ordinary_pair_recovered_NOT_NC',n=n,j=j,g=g,alpha=alpha,z=z,
       c=c,R=R,q=q,C=C,E4=E4,E4_square=math.isqrt(E4)**2==E4,
       chi3_C=jacobi(3,C),central_C2=((j-2)*(k-2))%(C*C)==0,
       source_windows=sources,base_gates=(t+b>=41 and E>=27 and v(n-2,2)>=65))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('t',type=int);p.add_argument('b',type=int)
    p.add_argument('E',type=int);p.add_argument('W',type=int);a=p.parse_args()
    print(json.dumps(check(a.t,a.b,a.E,a.W),ensure_ascii=False,indent=2))

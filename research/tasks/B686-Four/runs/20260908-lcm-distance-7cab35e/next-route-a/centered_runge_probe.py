"""Exact fixtures for the centered weighted Runge estimates.
These are finite transcription checks, not a proof for unrestricted k.
"""
from pathlib import Path
from fractions import Fraction as Q
from math import comb,prod
import hashlib,json
from datetime import datetime,timezone

BASE=Path(__file__).resolve().parent

def multiply(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):
            c[i+j]+=x*y
    return c

def evaluate(a,x):
    y=0
    for c in reversed(a):
        y=y*x+c
    return y

def fixture(k):
    r=k//2
    J=r//2
    f=[1]
    for i in range(1,r+1):
        f=multiply(f,[1,-(2*i-1)**2])
    c=[Q(1)]
    for j in range(1,J+1):
        c.append((Q(f[j])-sum(c[a]*c[j-a] for a in range(1,j)))/2)
    L=2**(2*J)
    A=[0]*(r+1)
    for j,v in enumerate(c):
        assert (L*v).denominator==1
        assert abs(v)<=comb(r+j-1,j)*k**(2*j) if j else v==1
        A[r-2*j]=int(L*v)
    R=[0]*(2*r+1)
    for j,v in enumerate(f):
        R[2*r-2*j]=v
    E=[a-L*L*b for a,b in zip(multiply(A,A),R)]
    while E and E[-1]==0:
        E.pop()
    assert E
    ell=len(E)-1
    assert ell%2==0 and ell<=r-(1 if r%2 else 2)
    B=2**(8*r)
    assert all(abs(a)<=2**(3*r)*k**(r-h) for h,a in enumerate(A))
    assert all(abs(e)<=B*k**(2*r-h) for h,e in enumerate(E))
    for n in [0,1,k]:
        X=2*n+k+1
        assert evaluate(R,X)==2**k*prod(n+i for i in range(1,k+1))
    X0=32*B*k**(r+1)
    e=E[-1]
    for X in [X0,X0+1,2*X0]:
        av,ev=evaluate(A,X),evaluate(E,X)
        assert av*av-L*L*evaluate(R,X)==ev
        assert 8*abs(av-L*X**r)<=L*X**r
        assert 8*abs(ev-e*X**ell)<=abs(e)*X**ell
        assert av>0 and 3*abs(ev)<av
    return {'k':k,'r':r,'J':J,'L':L,'degree_E':ell,'leading_E':e,
        'X0_decimal_digits':len(str(X0)),
        'coefficient_checks':True,'centering_checks':True,'sample_weighted_checks':True}

rows=[fixture(k) for k in range(2,66,2)]
result={'created_utc':datetime.now(timezone.utc).isoformat(),
    'scope':'32 exact even-k fixtures 2..64, no unrestricted theorem or legal-solution search claimed',
    'success':True,'rows':rows,
    'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(BASE/'centered-runge-probes.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
print('32 exact centered fixtures passed; universal proof is the separate paper argument.')

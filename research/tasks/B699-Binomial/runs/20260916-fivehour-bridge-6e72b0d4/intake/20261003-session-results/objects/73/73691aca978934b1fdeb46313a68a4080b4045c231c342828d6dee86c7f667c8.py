"""Independent, logarithm-free checking of the new BFT instantiations.
No import from seed_certify / intervals; rational powers only.
Conservative uniform min(N1,N2)>=2^11000 suffices for all three.
"""
from fractions import Fraction as Q
from math import isqrt,comb,gcd
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]

def plus(a,b):return(a[0]+b[0],a[1]+b[1])
def neg(a):return(-a[1],-a[0])
def mul(a,b):
    v=[x*y for x in a for y in b];return(min(v),max(v))
def inv(a):
    assert a[0]*a[1]>0;return(1/a[1],1/a[0])
def power(a,n):
    if n<0:return power(inv(a),-n)
    assert a[0]>=0
    return(a[0]**n,a[1]**n)
def const(a):return(Q(a),Q(a))
def root(a):
    scale=10**24
    v=isqrt((a*scale**2).numerator//(a*scale**2).denominator)
    r=(Q(v,scale),Q(v+1,scale))
    assert r[0]**2<=a<=r[1]**2
    return r

def polynomial_multiply(a,b):
    r=[Q(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):r[i+j]+=x*y
    return r

def integral(factors):
    polynomial=[Q(1)]
    for coeffs,n in factors:
        for _ in range(n):polynomial=polynomial_multiply(polynomial,coeffs)
    return sum((v/Q(r+1) for r,v in enumerate(polynomial)),Q(0))

def ratio(a,b):return mul(a,inv(b))
def singleton(v):return(Q(v),Q(v))

def check(p,q,a,b,k0,l0,c,d,L1,m0,epsmill,lower,upper,M,goal):
    P=p**k0;R=q**l0;D0=a*P-b*R
    assert D0>0 and gcd(c,d)==1 and M>m0
    s=Q(c,d);z=Q(D0,a*P);assert 1<s<1/z
    a_d=Q((c+d)**(c+d),(c-d)**(c-d)*d**(2*d))
    sq=root(s*s*z*z+4-4*z)
    u1=ratio(plus(const(s*(2-z)),neg(sq)),const(2*(1-z)*(s+1)))
    # Use original subtractive formula, independent of the producer's rationalization.
    u2=ratio(plus(const(s*z+2),neg(sq)),const(2*z*(s+1)))
    assert 0<u1[0]<=u1[1]<1 and 0<u2[0]<=u2[1]<1
    qd=mul(const(a_d),mul(power(u1,c-d),mul(power(plus(const(1),neg(u1)),d),power(plus(const(1),mul(const(z-1),u1)),d))))
    ed=mul(const(a_d),mul(power(u2,d),mul(power(plus(const(1),neg(u2)),d),power(plus(const(1),mul(const(-z),u2)),c-d))))
    om3=ratio(const(Q(P**(c-d),a**d*b**c)*L1**d),qd)
    om4=ratio(const(Q(min(P,R)**c,(a*P)**(c-d)*D0**(2*d))*L1**d),ed)
    assert om3[0]>1 and om4[0]>1
    # lambda in [lower,upper]/1000, with no log evaluations.
    assert om4[0]**(1000-lower)>max(P,R)**(c*lower)
    assert om4[1]**(1000-upper)<max(P,R)**(c*upper)
    assert lower-epsmill>=goal
    c1=[];c2=[];integrals=[]
    for delta in range(2):
        v1=integral([([0,1],c-d-1+delta),([1,-1],d-delta),([1,z-1],d-delta)])
        v2=integral([([0,1],d-delta),([1,-1],d-delta),([1,-z],c-d-1+delta)])
        assert v1>0 and v2>0;integrals.append([str(v1),str(v2)])
        sf=root(s*s-1)
        if delta:sf=inv(sf)
        pref=mul(const(a_d),mul(sf,(Q(1,8),Q(1,6))))
        c1.append(mul(ratio(pref,qd),const(v1)))
        c2.append(mul(ratio(pref,ed),const(v2)))
    kap1=(max(64*c1[delta][0]/((a*P)**delta) for delta in range(2)),max(64*c1[delta][1]/((a*P)**delta) for delta in range(2)))
    k2=[ratio(const(Q((a*P)**(1-delta),4)*Q(D0)**(2*delta-1)),c2[delta]) for delta in range(2)]
    kap2=(min(v[0] for v in k2),min(v[1] for v in k2))
    assert kap1[1]<om3[0]**M
    # These inequalities imply each of the two epsilon-dependent logarithmic M tests.
    denominator=Q(max(P,R)**c)*om4[0]
    first=Q(max(P,R)**c)/kap2[0]
    if first>1:assert first**(1000+upper)<denominator**(epsmill*M)
    if kap2[1]>1:assert kap2[1]**(1000+upper)<denominator**(epsmill*M)
    # Uniform 2^11000 exceeds x0, and it exceeds 2D.
    assert 2**(11000*(1000-upper))>max(P,R)**(1000*c*(M+1))
    return dict(pair=sorted([p,q]),seed=[p,k0,a,q,l0,b],c=c,d=d,L1=str(L1),m0=m0,
                D=32,epsilon_mill=epsmill,lambda_interval_mill=[lower,upper],M_integer=M,
                cofactor_exponent_mill=goal,min_height_bits=11000,integrals=integrals,
                checks='all exact rational-power inequalities passed')
if __name__=='__main__':
    ts=time.monotonic()
    rows=[check(17,2,1,1,1,4,7,5,Q('1.4135'),74,7,337,339,130,330),
          check(17,19,5,4,2,2,2,1,Q('1.9377'),150,2,192,194,505,190),
          check(23,11,1,2,1,1,7,4,Q('1.6219'),60,7,117,119,142,110)]
    expected=json.loads((ROOT/'outputs/seed_constants.json').read_text())['rows']
    for x,y in zip(rows,expected):assert x['integrals']==y['integrals']
    out=dict(status='PASS',method='no logarithms; rational powers and polynomial coefficient integrals',rows=rows)
    (ROOT/'outputs/seed_power_check.json').write_text(json.dumps(out,indent=2))
    print(json.dumps(dict(status='PASS',seconds=time.monotonic()-ts,rows=rows),indent=2))

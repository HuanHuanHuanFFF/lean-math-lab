from datetime import datetime, timezone
from fractions import Fraction
from hashlib import sha256
from math import comb, factorial, gcd
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parent

def trim(a):
    while len(a)>1 and a[-1]==0:a.pop()
    return a

def add(a,b,sign=1):
    out=[0]*max(len(a),len(b))
    for i,x in enumerate(a):out[i]+=x
    for i,x in enumerate(b):out[i]+=sign*x
    return trim(out)

def scale(a,t):return trim([t*x for x in a])
def shift(a,n):return [0]*n+a

def mul(a,b):
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    return trim(out)

def pq(u,v):
    p=[(-1)**(u+r)*comb(2*u+v+1,r)*comb(2*u-r,u) for r in range(u+1)]
    q=[(-1)**u*comb(2*u-r,u)*comb(v+r,r) for r in range(u+1)]
    return p,q

def d(u,v):
    assert u>=1 and v>=0
    return (-1)**(u+1)*comb(2*u+v,2*u-1)*comb(2*u,u)

def homogeneous(coeffs,n,x,y):
    return sum(a*x**r*y**(n-r) for r,a in enumerate(coeffs))

poly_cases=normalized_cases=recurrence_cases=0
examples=[]
for u in range(1,19):
    for v in range(16):
        p0,q0=pq(u,v);p1,q1=pq(u-1,v+1)
        delta=add(mul(p0,q1),mul(p1,q0),-1)
        assert delta==[0]*(2*u-1)+[d(u,v)]
        e1_zero=comb(2*u+v,2*u-1)
        assert d(u,v)==-e1_zero*q0[0]
        assert d(u,v)!=0
        g0=gcd(*q0);g1=gcd(*q1)
        assert g0>0 and g1>0
        assert all(a%g0==0 for a in p0) and all(a%g1==0 for a in p1)
        np0=[a//g0 for a in p0];nq0=[a//g0 for a in q0]
        np1=[a//g1 for a in p1];nq1=[a//g1 for a in q1]
        for x in [-3,-1,0,1,4]:
            for y in [-2,0,1,5]:
                nd=(homogeneous(np0,u,x,y)*homogeneous(nq1,u-1,x,y)
                    -homogeneous(np1,u-1,x,y)*homogeneous(nq0,u,x,y))
                assert g0*g1*nd==d(u,v)*x**(2*u-1)
                assert (nd!=0)==(x!=0)
                normalized_cases+=1
        if u<=3 and v<=1:examples.append({'u':u,'v':v,'D':d(u,v),'degree':2*u-1,'G_upper':g0,'G_lower':g1})
        if u>=2:
            p2,q2=pq(u-2,v+2)
            for f0,f1,f2 in [(p0,p1,p2),(q0,q1,q2)]:
                lhs=scale(f0,u*(u-1))
                rhs=add(scale(mul([2,-1],f1),-(u-1)*(2*u-1)),scale(shift(f2,2),(v+2)*(2*u+v)))
                assert lhs==rhs
                recurrence_cases+=1
            assert u*(u-1)*d(u,v)==-(v+2)*(2*u+v)*d(u-1,v+1)
        poly_cases+=1

integral_coefficient_cases=0
for u in range(6):
    for v in range(5):
        p,q=pq(u,v)
        k=Fraction(factorial(2*u+v+1),factorial(u)**2*factorial(v))
        for r in range(u+1):
            # Coefficients after expanding the actual BFT integrands and
            # integrating each t^a(1-t)^b monomial by its exact beta moment.
            pi=k*comb(u,r)*(-1)**(u-r)*Fraction(factorial(2*u-r)*factorial(v),factorial(2*u+v-r+1))
            qi=(-1)**u*k*comb(u,r)*Fraction(factorial(v+r)*factorial(2*u-r),factorial(2*u+v+1))
            assert pi==p[r] and qi==q[r]
            integral_coefficient_cases+=1

# The omitted source-domain hypotheses really matter.
p0,q0=pq(0,0);p1,q1=pq(0,1)
assert add(mul(p0,q1),mul(p1,q0),-1)==[0]
record={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS','script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
    'polynomial_determinant_cases':poly_cases,'range':'u=1..18; v=0..15; every polynomial coefficient',
    'integer_normalization_cases':normalized_cases,'integer_input_grid':'x in {-3,-1,0,1,4}; y in {-2,0,1,5}; includes y=0',
    'common_three_term_recurrence_checks':recurrence_cases,'recurrence_range':'u=2..18; v=0..15; both P and Q',
    'integral_coefficient_checks':integral_coefficient_cases,'integral_check_range':'u=0..5; v=0..4; all r<=u',
    'examples':examples,'boundary_failures':{'u0v0_determinant':0,'u0v0_naively_truncated_rhs':-1,'z0_nonvanishing':'fails for every allowed u,v'},
    'scope':'exact bounded integer/Fraction checks only; no Lean theorem acceptance and no original B699 coverage'}
(ROOT/'adjacent-determinant-check.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in record.items() if k!='examples'}))

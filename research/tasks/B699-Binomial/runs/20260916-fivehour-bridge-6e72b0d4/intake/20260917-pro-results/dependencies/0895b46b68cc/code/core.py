"""Exact utilities. No numerical approximation or third-party dependency."""
from fractions import Fraction
from math import comb, gcd, isqrt

def oddpart(x: int) -> int:
    if not isinstance(x, int) or x <= 0:
        raise ValueError('positive integer required')
    return x // (x & -x)

def choose3(x: int) -> int:
    return x * (x-1) * (x-2) // 6

def data(n: int, j: int) -> dict:
    if n < 8 or n % 4 or not 4 <= j <= n//2:
        raise ValueError('requires n=0 mod 4 and 4<=j<=n/2')
    k=n-j
    coeff=[choose3(k), j*k*(k-1)//2, k*j*(j-1)//2, choose3(j)]
    H=0
    for c in coeff: H=gcd(H,c)
    L=choose3(n)//H
    B=j*(n-1)*(n-2)//(2*H)
    C=j*(j-1)*(n-2)//(2*H)
    D=choose3(j)//H
    return dict(n=n,j=j,k=k,H=H,L=L,V=oddpart(L),B=B,C=C,D=D,
                moment_discriminant=B*B-3*L*C)

def square_case(n: int, j: int) -> dict:
    z=data(n,j);k=n-j;S=j*k*(n-1);s=isqrt(S)
    if s*s!=S: raise ValueError('j*(n-j)*(n-1) must be an exact square')
    roots=sorted(set([Fraction(j*(n-1)-s,n*(n-1)),
                      Fraction(j*(n-1)+s,n*(n-1))]))
    M=(n-2)//2;J=j*(j-1)*(j-2);G=gcd(M,J);Z=M//G
    bound=3*z['V'] if j%2 else 6*z['V']
    selected=[r for r in roots if bound%r.denominator==0]
    assert selected
    r=selected[0];a,b=r.numerator,r.denominator
    assert 0<a<b and gcd(a,b)==1
    assert (a*a*(b-a)**2)%G==0
    assert z['V']%Z==0
    V=z['V']; V0=gcd(V,n); V1=gcd(V,n-1); V2=gcd(V,M)
    assert V0*V1*V2==V and V2%Z==0
    assert gcd(b,M)==1 and b*b<=36*V0*V0*V1
    weighted=V0**4*V1**2*V2
    assert 162*weighted>=n-2 and 162*V**4>=n-2
    if V0==1: assert 162*V**2>=n-2
    if j%2:
        assert b*b<=9*V0*V0*V1
        assert 81*weighted>=8*(n-2)
    z.update(V0=V0,V1=V1,V2=V2)
    assert z['V']>1
    z.update(square_product=S,square_root=s,
             critical_roots=[[r.numerator,r.denominator] for r in roots],
             selected=[a,b], M=M,G=G,Z=Z)
    return z

def valuation_factorial(n:int,p:int)->int:
    s=0
    while n:
        n//=p;s+=n
    return s

def vp_choose(n:int,j:int,p:int)->int:
    return valuation_factorial(n,p)-valuation_factorial(j,p)-valuation_factorial(n-j,p)

# Dense univariate polynomials over Q for exact identity tests.
def add(a,b):
    out=[Fraction(0)]*max(len(a),len(b))
    for i,c in enumerate(a):out[i]+=c
    for i,c in enumerate(b):out[i]+=c
    while len(out)>1 and out[-1]==0:out.pop()
    return out

def scale(a,c):return [Fraction(c)*x for x in a]
def mul(a,b):
    out=[Fraction(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    while len(out)>1 and out[-1]==0:out.pop()
    return out

def val(a,x):
    out=Fraction(0)
    for c in reversed(a):out=out*x+c
    return out

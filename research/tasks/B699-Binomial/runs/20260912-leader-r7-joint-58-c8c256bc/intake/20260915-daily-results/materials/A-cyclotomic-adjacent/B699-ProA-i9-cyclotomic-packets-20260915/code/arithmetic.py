"""Exact arithmetic for the new cyclotomic-packet diagnostics, not a proof kernel."""
from math import gcd, isqrt
from functools import lru_cache

@lru_cache(None)
def divisors(n):
    if not isinstance(n, int) or n < 1:
        raise ValueError('positive integer required')
    lo, hi = [], []
    for d in range(1, isqrt(n)+1):
        if n % d == 0:
            lo.append(d)
            if d*d != n: hi.append(n//d)
    return tuple(lo + hi[::-1])

@lru_cache(None)
def phi(n):
    if n < 1: raise ValueError('positive index required')
    m, ans, p = n, n, 2
    while p*p <= m:
        if m%p == 0:
            ans -= ans//p
            while m%p == 0: m//=p
        p += 1
    if m > 1: ans -= ans//m
    return ans

@lru_cache(None)
def mobius(n):
    sign, p = 1, 2
    while p*p <= n:
        if n%p == 0:
            n//=p; sign=-sign
            if n%p == 0: return 0
            while n%p == 0: n//=p
        p+=1
    if n > 1: sign=-sign
    return sign

def valuation(n, p):
    if n <= 0 or p < 2: raise ValueError('positive n, p>=2 required')
    e=0
    while n%p==0:
        n//=p; e+=1
    return e

def smooth25(n):
    return 2**valuation(n,2)*5**valuation(n,5)

def pure_power(n,p):
    if n < 1: return None
    a=0
    while n%p==0: n//=p; a+=1
    return a if n==1 else None

def order5(B):
    if B%5==0: raise ValueError('5 must not divide B')
    for f in (1,2,4):
        if pow(B,f,5)==1: return f
    raise AssertionError('Fermat coverage')

def predicted_valuations(B,m):
    if B < 11 or gcd(B,10)!=1 or m<1: raise ValueError('outside theorem domain')
    if m==1: a=valuation(B-1,2)
    elif m==2: a=valuation(B+1,2)
    elif (pure_power(m,2) or 0)>=2: a=1
    else: a=0
    f=order5(B)
    if m==f: b=valuation(B**f-1,5)
    elif m%f==0 and (pure_power(m//f,5) or 0)>=1: b=1
    else: b=0
    return a,b

@lru_cache(maxsize=50000)
def cyclotomic_value(B,m):
    """First implementation: recursive divisor product, all divisions exact."""
    x=B**m-1
    for d in divisors(m):
        if d==m: continue
        y=cyclotomic_value(B,d)
        x, rem=divmod(x,y)
        if rem: raise ArithmeticError('non-exact cyclotomic divisor')
    return x

def cyclotomic_value_mobius(B,m):
    """Second implementation: the Mobius numerator/denominator identity."""
    a,b=1,1
    for d in divisors(m):
        u=mobius(m//d)
        if u==1: a*=B**d-1
        if u==-1: b*=B**d-1
    q,r=divmod(a,b)
    if r: raise ArithmeticError('Mobius evaluation not integral')
    return q

def profile(B,C,e,mults):
    if not all(isinstance(x,int) for x in (B,C,e)) or B<11 or gcd(B,10)!=1 or not(1<=C<B) or e<0:
        raise ValueError('bad base/coefficient/exponent')
    if any(not isinstance(m,int) or m<1 or not isinstance(c,int) or c<0 for m,c in mults.items()):
        raise ValueError('bad cyclotomic index/multiplicity')
    E=mults.get(1,0)+mults.get(2,0)+2*mults.get(4,0)
    G=sum(phi(m)*c for m,c in mults.items() if m not in (1,2,4))
    margin=840*e+551*G-210*E-200
    return {'E':E,'G':G,'margin':margin,'accepted':margin>=0}

def packet_value(B,C,e,mults):
    profile(B,C,e,mults)
    n=C*B**e
    for m,c in mults.items(): n*=cyclotomic_value(B,m)**c
    return n

def primes_of(n):
    out=[]; p=2
    while p*p<=n:
        if n%p==0:
            out.append(p)
            while n%p==0:n//=p
        p+=1
    if n>1:out.append(n)
    return out

def binomial_v(n,j,p):
    a,b,c=n,j,n-j; ans=0
    while a:
        a//=p;b//=p;c//=p
        ans+=a-b-c
    return ans

def common_witness(n,j):
    ps=sorted(set(p for r in range(9) for p in primes_of(n-r) if p>=11))
    return next((p for p in ps if binomial_v(n,j,p)>0),None)


def residual_shape_bounds(E):
    """Conditional bounds for a specified cyclotomic representation under NC9.

    This does not bound B, C, n, j or any general B699 parameters.
    """
    if not isinstance(E,int) or E<0: raise ValueError('E must be a nonnegative integer')
    M=210*E+199; G=M//551
    return {'E':E,'e_max':M//840,'G_max':G,'nonexceptional_order_max':2*G*G,
            'nonexceptional_total_multiplicity_max':G//2,
            'still_unbounded':['B','C','n','j'],
            'scope':'conditional on NC9, 400|n, and the specified representation; NOT global finite reduction'}

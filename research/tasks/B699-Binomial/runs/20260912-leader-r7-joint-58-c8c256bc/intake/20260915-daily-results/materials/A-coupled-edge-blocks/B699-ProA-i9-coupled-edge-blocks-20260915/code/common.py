"""Exact arithmetic helpers for the NEW obligations only (no old replay)."""
from fractions import Fraction as F
from math import gcd, isqrt

def primes_to(n):
    return [p for p in range(2,n+1) if all(p%d for d in range(2,isqrt(p)+1))]

def is_prime(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def vp(n,p):
    if n<=0 or p<2: raise ValueError('positive integer and base >=2 required')
    e=0
    while n%p==0: n//=p; e+=1
    return e

def vp_fact(n,p):
    out=0
    while n: n//=p; out+=n
    return out

def vp_binom(n,j,p):
    if not (0<=j<=n) or not is_prime(p): raise ValueError('invalid binomial or nonprime base')
    return vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)

def carry_count(n,j,p):
    # Different implementation: digitwise addition, rather than factorial floors.
    if not (0<=j<=n) or not is_prime(p): raise ValueError('invalid binomial or nonprime base')
    x,y=j,n-j; carry=count=0
    while x or y or carry:
        z=x%p+y%p+carry
        carry=int(z>=p); count+=carry; x//=p; y//=p
    return count

def factors(n):
    out={}; p=2
    while p*p<=n:
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def rough(n):
    for p in (2,3,5,7):
        while n%p==0:n//=p
    return n

def frac(x):
    return [F(x).numerator,F(x).denominator]

def poly_mul(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return c

def poly_pow(a,n):
    c=[1]
    for _ in range(n):c=poly_mul(c,a)
    return c

def poly_deriv(a):return [(i+1)*a[i+1] for i in range(len(a)-1)]

def block_decomposition(n,j,p,k):
    """Necessary digit consequences, not sufficient conditions for avoidance."""
    if p<11 or not is_prime(p) or n%p:raise ValueError('p >= 11 prime dividing n required')
    if not (0<=j<=n):raise ValueError('illegal j')
    e=vp(n,p);Q=p**e
    if k<e:raise ValueError('k >= e required for the advertised block interface')
    A,R=divmod(n//Q,p**k)
    if A<1 or R<1 or R%p==0:raise ValueError('positive leading block and exact trailing valuation required')
    if vp_binom(n,j,p):return {'p_common_if_i9_legal':True}
    assert j%Q==0
    B,S=divmod(j//Q,p**k)
    assert 0<=B<=A and 0<=S<=R
    if 2*j<=n:assert B<A
    assert B*n-A*j==Q*(B*R-A*S)
    return dict(Q=Q,A=A,R=R,B=B,S=S)

def power_product_ge(lhs,rhs,lshift=0,rshift=0,max_bits=2_000_000):
    """Exact comparison or conservative None; never a floating acceptance.
    Each side is a sequence of positive (base, nonnegative exponent) pairs.
    Binary-log *bounds* are attempted before allocating integer powers.
    """
    for side in (lhs,rhs):
        if any(b<1 or e<0 for b,e in side):raise ValueError('invalid monomial')
    def bounds(side,shift):
        lo=hi=shift
        for b,e in side:
            if b==1:continue
            k=b.bit_length()-1; lo+=k*e
            hi+=(k if b==(1<<k) else k+1)*e
        return lo,hi
    ll,lu=bounds(lhs,lshift);rl,ru=bounds(rhs,rshift)
    if ll>=ru:return True
    if lu<rl:return False
    if max(lu,ru)>max_bits:return None
    lv=1<<lshift;rv=1<<rshift
    for b,e in lhs:lv*=b**e
    for b,e in rhs:rv*=b**e
    return lv>=rv

def beta_consumer(n,j,strong=False):
    """Uses frozen double-high frontiers; False/None never asserts NC9."""
    if not (10<=j and 2*j<=n):return {'status':'NOT_APPLICABLE'}
    g=gcd(n,j);alpha=n//g;beta=j//g;m=alpha
    a=vp(m,2);m//=2**a;b=vp(m,5);m//=5**b
    if m not in (1,3) or a<4 or b<2:return {'status':'NOT_APPLICABLE'}
    if strong and m!=3:
        pos=[]
        for p in (3,7):
            es=[vp(n-r,p) for r in range(9)];mx=max(es)
            pos.append([r for r in range(9) if es[r]==mx])
        if len(pos[0])!=1 or len(pos[1])!=1 or (pos[0][0],pos[1][0]) not in ((1,3),(3,1)):
            return {'status':'NOT_APPLICABLE_STRONG_POSITION'}
    h,D=(54167,5000) if strong else (4963,500)
    ok=power_product_ge([(n,h)],[(beta,12*D)],rshift=615*D)
    return {'status':'COMMON9_BY_NEW_BETA' if ok is True else 'NO_CONCLUSION',
            'comparison_resolved':ok is not None,'strong':strong}

def elementary_consumer(n,j,use_rough_only=False):
    """New unconditional sufficient test; NOT_APPLICABLE/NO_CONCLUSION is not NC9.
    No factoring of the large rough cofactor is required.  Comparisons can safely
    return unresolved instead of allocating large integer powers.
    """
    if not (isinstance(n,int) and isinstance(j,int) and 10<=j and 2*j<=n and n%400==0):
        return {'status':'NOT_APPLICABLE'}
    g=gcd(n,j);w=rough(g) if use_rough_only else g
    ok=power_product_ge([(n,6),(w,4)],[(j,7)],rshift=213)
    return {'status':'COMMON9_BY_NEW_ELEMENTARY_EDGE' if ok is True else 'NO_CONCLUSION',
            'comparison_resolved':ok is not None,'rough_only':use_rough_only}

def elementary_beta_consumer(n,j):
    if not (isinstance(n,int) and isinstance(j,int) and 10<=j and 2*j<=n and n%400==0):
        return {'status':'NOT_APPLICABLE'}
    beta=j//gcd(n,j)
    ok=power_product_ge([(n,3)],[(beta,4)],rshift=205)
    return {'status':'COMMON9_BY_NEW_ELEMENTARY_BETA' if ok is True else 'NO_CONCLUSION',
            'comparison_resolved':ok is not None}

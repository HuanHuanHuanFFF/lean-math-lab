"""Exact arithmetic for new obligations; not a universal proof kernel."""
from math import comb, gcd, isqrt
from fractions import Fraction


def prime(n):
    if n < 2: return False
    if n % 2 == 0: return n == 2
    return all(n % d for d in range(3,isqrt(n)+1,2))


def vp(n,p):
    if n == 0: return None
    n=abs(n); k=0
    while n % p == 0: n//=p; k+=1
    return k


def coefficient(n,j,c,d,degree=9):
    if not (0<=j<=n and 0<c<d): raise ValueError('invalid coefficient arguments')
    return sum((-1)**k*(d-c)**k*c**(degree-k)*comb(j,k)*comb(n-j,degree-k)
               for k in range(degree+1) if k<=j and degree-k<=n-j)


def coefficient_recurrence(n,j,c,d,degree=9):
    u,v=d-c,c; L=c*n-d*j
    H=[1,L]
    for h in range(1,degree):
        H.append((L-(v-u)*h)*H[-1]-u*v*h*(n-h+1)*H[-2])
    f=1
    for h in range(2,degree+1): f*=h
    q,r=divmod(H[degree],f)
    if r: raise ArithmeticError('coefficient integrality failed')
    return q


def phi(b,C,B,S): return (C-S)*B**9-S*(b-B)**9


def lambdas(b,C,B,S):
    V=b-B
    return {r:(C-S)*(-1)**(r-1)*B**r-S*V**r for r in range(1,10)}


def second_numerator(b,C,B,S):
    t=lambdas(b,C,B,S)
    return 315*t[1]*t[8]+180*t[2]*t[7]+140*t[3]*t[6]+126*t[4]*t[5]


def iroot(n,k):
    if n<0 or k<1: raise ValueError('invalid root')
    lo,hi=0,1
    while hi**k<=n:hi*=2
    while hi-lo>1:
        m=(lo+hi)//2
        if m**k<=n:lo=m
        else:hi=m
    return lo


def balanced_masks(b,C):
    """Complete exact enumeration, cost O(C**(2/9)); no exponent scan."""
    if b<1 or C<1: raise ValueError('digits must be positive')
    m=iroot(C-1,9); ans=[]
    for u in range(1,m+1):
        for v in range(1,m+1):
            if gcd(u,v)!=1 or u==v:continue
            z=u**9+v**9
            if b%(u+v)==0 and C%z==0:
                ans.append({'u':u,'v':v,'B':b*u//(u+v),'S':C*u**9//z})
    return sorted(ans,key=lambda a:(a['B'],a['S']))


def choose_valuation(n,j,p):
    r=n-j; val=0
    while n:
        n//=p;j//=p;r//=p;val+=n-j-r
    return val


def first_carry(n,j,p):
    """Returns a full prime-power level witnessing divisibility, or None."""
    k=1;q=p
    while q<=n:
        if j%q>n%q:return k
        q*=p;k+=1
    return None


def make_n(p,e,K,h,b,C):
    return p**e*(p**(K+h)+b*p**K+C)

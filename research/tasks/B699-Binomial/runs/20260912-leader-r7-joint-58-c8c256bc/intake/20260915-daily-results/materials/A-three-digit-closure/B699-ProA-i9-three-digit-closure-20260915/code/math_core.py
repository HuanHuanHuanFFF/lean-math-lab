"""Exact arithmetic for NEW Pro A obligations. No historical receiver is imported."""
from math import comb, gcd, isqrt
from fractions import Fraction


def prime_trial(p: int) -> bool:
    if not isinstance(p,int) or p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,isqrt(p)+1,2))


def verify_pratt(cert: dict) -> bool:
    """Full p-1 factorization + Lucas order certificate, recursively checked.
    A claim of probable primality is deliberately not an accepted certificate.
    """
    try:
        p=int(cert['p'])
        if p==2:return cert.get('factors',[])==[]
        if p<3 or p%2==0:return False
        g=int(cert['witness']); prod=1;seen=set()
        for item in cert['factors']:
            q=int(item['prime']['p']);a=int(item['exponent'])
            if q in seen or a<1 or not verify_pratt(item['prime']):return False
            seen.add(q);prod*=q**a
            if gcd(pow(g,(p-1)//q,p)-1,p)!=1:return False
        return prod==p-1 and pow(g,p-1,p)==1
    except (KeyError,TypeError,ValueError,ZeroDivisionError):
        return False


def checked_prime(p: int, cert=None):
    if cert is not None:return int(cert.get('p',0))==p and verify_pratt(cert)
    if p<=1_000_000:return prime_trial(p)
    return None  # never silently treat a large input as prime


def rough7(n: int) -> int:
    if n<=0:raise ValueError('positive input required')
    for p in (2,3,5,7):
        while n%p==0:n//=p
    return n


def vp(n: int,p: int) -> int:
    if n==0:raise ValueError('v_p(0) is not a finite integer')
    n=abs(n);e=0
    while n%p==0:n//=p;e+=1
    return e


def vfact(n,p):
    out=0
    while n:n//=p;out+=n
    return out


def vbin(n,j,p):
    if not 0<=j<=n:raise ValueError('invalid binomial')
    return vfact(n,p)-vfact(j,p)-vfact(n-j,p)


def carries(n,j,p):
    if not 0<=j<=n:raise ValueError('invalid binomial')
    x,y=j,n-j;carry=0;out=0
    while x or y or carry:
        carry=int(x%p+y%p+carry>=p);out+=carry
        x//=p;y//=p
    return out


def first_carry(n,j,p):
    q=p;h=1
    while q<=n:
        if j%q>n%q:return {'prime':p,'layer':h,'modulus':q,'source_residue':n%q,'target_residue':j%q}
        q*=p;h+=1
    return None


def coefficient(n,j,c,d,h=9):
    """Degree-h coefficient only. Never constructs binomial(n,j)."""
    return sum((-1)**r*(d-c)**r*c**(h-r)*comb(j,r)*comb(n-j,h-r) for r in range(h+1))


def coefficient_recurrence(n,j,c,d,h=9):
    from math import factorial
    L=c*n-d*j;u=d-c;v=c
    if h==0:return 1
    a,b=1,L
    for k in range(1,h):a,b=b,(L-(v-u)*k)*b-u*v*k*(n-k+1)*a
    q,r=divmod(b,factorial(h));assert r==0
    return q


def poly_mul(a,b):
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for k,y in enumerate(b):out[i+k]+=x*y
    return out


def rational_unit_consumer(n,j,c,d,max_bits=1_000_000):
    """Sufficient Common9 test; failure is NO_CONCLUSION, never an NC9 verdict.
    It does not factor the rough gcd and uses its full multiplicities.
    """
    if not all(isinstance(x,int) for x in (n,j,c,d)) or not (n>0 and n%400==0 and 10<=j and 2*j<=n and 1<=c<d):
        return {'status':'NOT_APPLICABLE'}
    if max(n.bit_length(),d.bit_length())>max_bits:return {'status':'UNRESOLVED_RESOURCE_LIMIT'}
    if (1<<26)*d**6>n:return {'status':'NO_CONCLUSION','reason':'denominator'}
    L=c*n-d*j
    if 128*abs(L)**9>n**6:return {'status':'NO_CONCLUSION','reason':'distance'}
    g=gcd(n,j);a=n//g;b=j//g;W=rough7(g)
    T=(a*pow(c,9,W)-b*(pow(c,9,W)+pow(d-c,9,W)))%W
    if T==0:return {'status':'NO_CONCLUSION','reason':'nonzero_certificate_missing'}
    return {'status':'COMMON9_BY_FULL_ROUGH_NONZERO_BAND','uses_frozen_finite':False}


def source_consumer(p,e,H,K,C=2,kind='I',prime_certificate=None):
    """Symbolic complete-row classifier. Modular powers avoid materializing n.
    For primes >10^6 supply a verified Pratt certificate. The mathematical
    theorem itself has no prime-size restriction.
    """
    if not all(isinstance(x,int) for x in (p,e,H,K,C)) or p<11 or e<1 or not H>K>=1:
        return {'status':'NOT_APPLICABLE'}
    prime=checked_prime(p,prime_certificate)
    if prime is None:return {'status':'PRIMALITY_CERTIFICATE_REQUIRED'}
    if not prime:return {'status':'NOT_APPLICABLE','reason':'nonprime'}
    if kind=='I' and 2<=C<p:b=1
    elif kind=='II' and C==1:b=2
    else:return {'status':'NOT_APPLICABLE','reason':'profile'}
    residue=pow(p,e,400)*(pow(p,H,400)+b*pow(p,K,400)+C)%400
    if residue:return {'status':'NOT_APPLICABLE','reason':'400_does_not_divide_n'}
    lower_bits=(e+H)*(p.bit_length()-1)
    high=lower_bits>=2048
    if not high:
        # Since the lower bound is <2048, this computation is small.
        n=p**e*(p**H+b*p**K+C)
        high=n>=1<<2048
    return {'status':'ALL_LEGAL_J_COMMON9','profile':kind,
            'e_is_full_valuation':True,'elementary_high_segment':high,
            'uses_frozen_A9_FINITE':not high,
            'actual_target_count_enumerated':0}

"""Exact original-input interfaces. Standard library; no network, floats or CAS.
A row is accepted only for two complete powers of DIFFERENT odd primes.
The source windows are necessary conditions, never sufficient NC3 models.
"""
from __future__ import annotations
from functools import lru_cache
from math import gcd, lcm
import json, hashlib


def canonical(obj):
    return (json.dumps(obj, ensure_ascii=False, sort_keys=True, indent=2)+'\n').encode()


def digest(obj):
    return hashlib.sha256(canonical(obj)).hexdigest()


@lru_cache(maxsize=8192)
def factor(n):
    if type(n) is not int or n < 1:
        raise ValueError('positive integer required')
    out=[]; p=2
    while p*p <= n:
        a=0
        while n%p == 0:
            n//=p; a+=1
        if a: out.append((p,a))
        p=3 if p==2 else p+2
    if n>1: out.append((n,1))
    return tuple(out)


def prime_power(n):
    f=factor(n)
    return f[0] if len(f)==1 and f[0][0]%2 else None


def vp(n,p):
    if n==0: raise ValueError('infinite valuation not supported')
    n=abs(n); a=0
    while n%p==0: n//=p; a+=1
    return a


def odd(n):
    if n<1: raise ValueError('positive integer required')
    while n%2==0: n//=2
    return n


def eta(n):
    return 3 if n%3==0 and n%9 else 1


def active(n):
    return odd(n)//eta(n)


def factorial_valuation(n,p):
    a=0
    while n:
        n//=p; a+=n
    return a


def binomial_valuation(n,j,p):
    if not 0<=j<=n: raise ValueError('invalid binomial index')
    return factorial_valuation(n,p)-factorial_valuation(j,p)-factorial_valuation(n-j,p)


def lucas(n,j,p):
    if not 0<=j<=n: return False
    while n or j:
        if j%p>n%p: return False
        n//=p; j//=p
    return True


def digits(n,base,length=None):
    a=[]
    while n:
        n,r=divmod(n,base); a.append(r)
    if not a: a=[0]
    if length is not None:
        if len(a)>length: raise ValueError('too many blocks')
        a += [0]*(length-len(a))
    return a


def original_row(P,Q,require_powers=True):
    if not (type(P) is int and type(Q) is int and 5<=P<Q and P%2 and Q%2 and gcd(P,Q)==1):
        raise ValueError('coprime odd 5 <= P < Q required')
    pa=prime_power(P); qb=prime_power(Q)
    if require_powers and (not pa or not qb or pa[0]==qb[0]):
        raise ValueError('two complete powers of DIFFERENT odd primes required')
    n=P*Q+1
    j=P*pow(P,-1,Q)
    j=min(j,n-j)
    if not 4<=j<=n//2: raise ValueError('original legal half-row candidate missing')
    s=j%P; t=j%Q; eps=t-s
    assert {s,t}=={0,1}
    X=(j-s)//P; Y=(j-t)//Q
    ds=digits(Q,P); xs=digits(X,P,len(ds)); d=ds[0]; H=max(ds)
    assert (d*Y+eps)%P==0
    z=(d*Y+eps)//P
    cs=[d*xs[i]-z*ds[i]+eps*(ds[i+1] if i+1<len(ds) else 0) for i in range(len(ds))]
    carries=[0]
    for c in cs:
        assert (c+carries[-1])%P==0
        carries.append((c+carries[-1])//P)
    assert carries[-1]==0
    slots=[]
    if len(ds)==2:
        d,k=ds
        for r in range(3):
            A=z+d*(t-r)
            R=k+eps*d*A-A*A
            slots.append(dict(slot=r,A=A,R=R))
    if len(ds)==3:
        d,k,e=ds
        for r in range(3):
            A=z+d*(t-r)
            R=e*eps+k*A+eps*d*A*A-A**3
            slots.append(dict(slot=r,A=A,R=R))
    return dict(P=P,Q=Q,power_P=pa,power_Q=qb,n=n,j=j,s=s,t=t,epsilon=eps,
                X=X,Y=Y,z=z,d=d,H=H,Q_blocks=ds,X_blocks=xs,coefficients=cs,
                carries=carries,block_pass=all(x<=y for x,y in zip(xs,ds)),
                two_full_Lucas=[lucas(n,j,pa[0]),lucas(n,j,qb[0])] if pa and qb else None,
                band=P<d*H<2*P,slots=slots)


def sources(r):
    n=r['n']; j=r['j']; Rs=[s['R'] for s in r['slots']]
    if not Rs or not all(Rs): raise ValueError('nonzero three-constant interface required')
    L=lcm(*[abs(x) for x in Rs]); T0=active(n); T2=active(n-2)
    return dict(T0=T0,eta0=eta(n),T0_divides_j=j%T0==0,T2=T2,eta2=eta(n-2),
                LCM=L,odd_LCM=odd(L),T2_divides_LCM=L%T2==0)


def witness(n,j,p):
    if factor(p)!=((p,1),) or p<3: raise ValueError('legal prime witness required')
    v3=binomial_valuation(n,3,p); vj=binomial_valuation(n,j,p)
    if not (v3>0 and vj>0): raise ValueError('not a common prime for the original input')
    source=next(r for r in range(3) if (n-r)%p==0)
    a=vp(n-source,p)
    return dict(prime=p,source=source,full_exponent=a,full_power=p**a,
                original_j_residue=j%(p**a),valuation_Cn3=v3,valuation_Cnj=vj,
                original_n=n,original_j=j)


"""Exact M2ZERO consumers. Python >=3.10, standard library, no network.
All primality/factorization claims use deterministic trial division.
Rows require the two ACTUAL different odd prime powers, not a divisor proxy.
"""
from __future__ import annotations
from functools import lru_cache
from math import gcd, lcm
import hashlib, json

def canonical(obj):
    return (json.dumps(obj, sort_keys=True, ensure_ascii=False, indent=2)+'\n').encode()

def digest(obj): return hashlib.sha256(canonical(obj)).hexdigest()

@lru_cache(maxsize=30000)
def factor(n):
    if type(n) is not int or n<1: raise ValueError('positive integer required')
    ans=[]; p=2
    while p*p<=n:
        a=0
        while n%p==0: n//=p; a+=1
        if a: ans.append((p,a))
        p=3 if p==2 else p+2
    if n>1: ans.append((n,1))
    return tuple(ans)

def merge_factors(*parts):
    ans={}
    for n in parts:
        for p,a in factor(n): ans[p]=ans.get(p,0)+a
    return tuple(sorted(ans.items()))

def odd(n):
    if n<1: raise ValueError('positive integer required')
    while n%2==0: n//=2
    return n

def vp(n,p):
    if n==0: raise ValueError('v_p(0) not finite')
    n=abs(n); a=0
    while n%p==0: n//=p; a+=1
    return a

def eta(n): return 3 if n%3==0 and n%9!=0 else 1

def active(n): return odd(n)//eta(n)

def pp(n):
    fs=factor(n)
    return fs[0] if len(fs)==1 and fs[0][0]%2==1 else None

def vpf(n,p):
    a=0
    while n: n//=p; a+=n
    return a

def vbinom(n,j,p):
    if not 0<=j<=n: raise ValueError('binomial index out of range')
    return vpf(n,p)-vpf(j,p)-vpf(n-j,p)

def lucas(n,j,p):
    if not 0<=j<=n: return False
    while n or j:
        if j%p>n%p: return False
        n//=p; j//=p
    return True

def digits(x,P):
    a=[]
    while x: x,r=divmod(x,P); a.append(r)
    return a or [0]

def candidate(P,Q):
    if gcd(P,Q)!=1: raise ValueError('coprime inputs required')
    j=P*pow(P,-1,Q)
    return min(j,P*Q+1-j)

def row(P,Q,require_pp=True):
    if not (5<=P<Q and P%2 and Q%2 and gcd(P,Q)==1):
        raise ValueError('5 <= P < Q coprime odd integers required')
    pa,qb=pp(P),pp(Q)
    if require_pp and (not pa or not qb or pa[0]==qb[0]):
        raise ValueError('ACTUAL complete powers of DIFFERENT odd primes required')
    n=P*Q+1; j=candidate(P,Q)
    if not 4<=j<=n//2: raise ValueError('original half row required')
    s,t=j%P,j%Q; eps=t-s
    assert {s,t}=={0,1}
    X,Y=(j-s)//P,(j-t)//Q
    ds=digits(Q,P);d=ds[0];H=max(ds)
    assert (d*Y+eps)%P==0
    z=(d*Y+eps)//P
    xs=digits(X,P)
    xs += [0]*(len(ds)-len(xs))
    assert len(xs)==len(ds)
    coefficients=[d*xs[i]-z*ds[i]+eps*(ds[i+1] if i+1<len(ds) else 0)
                  for i in range(len(ds))]
    carry=[0]
    for c in coefficients:
        assert (c+carry[-1])%P==0
        carry.append((c+carry[-1])//P)
    assert carry[-1]==0
    slots=[]
    if len(ds)==3:
        d,k,e=ds
        for r in range(3):
            A=z+d*(t-r)
            R=e*eps+k*A+eps*d*A*A-A**3
            slots.append({'r':r,'A':A,'R':R})
    return dict(P=P,Q=Q,power_P=pa,power_Q=qb,n=n,j=j,s=s,t=t,
                X=X,Y=Y,epsilon=eps,z=z,d=d,H=H,digits=ds,
                x_digits=xs,coefficients=coefficients,carry=carry,
                block_pass=all(a<=b for a,b in zip(xs,ds)),
                full_two_Lucas=[lucas(n,j,pa[0]),lucas(n,j,qb[0])] if pa and qb else None,
                slots=slots,band=P<d*H<2*P)

def normalize(r):
    zero=[a for a in r['slots'] if a['R']==0]
    if len(zero)!=1: raise ValueError('one actual zero slot required')
    sl=zero[0];e=r['digits'][2];d=r['d'];P=r['P'];Q=r['Q']
    if sl['r']==0 and r['epsilon']==-1 and sl['A']==1:
        J=r['j']; complement=False
    elif sl['r']==2 and r['epsilon']==1 and sl['A']==-1:
        J=r['n']-r['j']; complement=True
    else: raise AssertionError('branch classification failed on an ACTUAL odd row')
    assert r['digits'][1]==d+e+1 and (P+1)%d==0
    v=(P+1)//d;V=e*P*P+(d+1)*P-1
    assert J==Q*v and r['n']-2==d*v*V
    assert gcd(Q,d*V)==1 and gcd(J,r['n']-2)==v
    assert d*J==(P+2)*V+e*P+d+2
    a=2*d+e-2;b=(d-2)*(2*d-1)-e
    assert a!=0 and b!=0
    cap=3*odd(lcm(abs(a),abs(b)))
    return dict(original_n=r['n'],original_j=r['j'],auxiliary_J=J,
                complement_used=complement,zero_slot=sl['r'],zero_integer=sl['A'],
                epsilon_original=r['epsilon'],e=e,d=d,v=v,V=V,
                gcd_J_F=v,odd_overlap=gcd(odd(v),odd(d*V)),a=a,b=b,
                necessary_NC_capacity=cap,capacity_contradiction=V>cap,
                T0=active(r['n']),T0_divides_original_j=r['j']%active(r['n'])==0)

def window_witness(n,j,fs):
    """Require a failure of an ACTUAL complete source-2 window (not just high digits)."""
    product=1
    for p,a in fs:
        assert factor(p)==((p,1),)
        product*=p**a
    assert product==n-2
    for p,a in fs:
        if p==2 or (p==3 and a==1): continue
        residue=j%(p**a)
        if residue>2:
            v3=vbinom(n,3,p); vj=vbinom(n,j,p)
            assert v3>0 and vj>0 and not lucas(n,j,p)
            return dict(prime=p,full_exponent=a,full_power=p**a,
                        residue_original_j=residue,valuation_Cn3=v3,valuation_Cnj=vj)
    raise AssertionError('no complete-window failure: investigate, do not call NC3')

def consume(P,Q):
    r=row(P,Q);out={'row':r,'accepted':False,'theorems':[]}
    if len(r['digits'])!=3 or r['digits'][2] not in (1,2): return out
    if r['n']%4!=0: return out # prior consumer, not charged as new
    if not any(s['R']==0 for s in r['slots']):return out
    nr=normalize(r);out['normalization']=nr
    if r['band']: out['theorems'].append('M2_ZERO_BAND2')
    if nr['e']==2: out['theorems'].append('M2_E2_ZERO_NO_BAND')
    if out['theorems']:
        out['accepted']=True
        out['source2_witness']=window_witness(r['n'],r['j'],merge_factors(nr['d'],nr['v'],nr['V']))
    return out

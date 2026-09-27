"""Deterministic integer arithmetic. Standard library only; no probable-prime tests."""
from functools import lru_cache
from math import comb, gcd, isqrt, lcm
import hashlib
import json


def canonical(obj):
    return (json.dumps(obj, ensure_ascii=False, sort_keys=True, indent=2)+'\n').encode()


def sieve(limit):
    mark=bytearray(b'\x01')*(limit+1)
    if limit>=0: mark[0]=0
    if limit>=1: mark[1]=0
    for p in range(2,isqrt(limit)+1):
        if mark[p]:
            start=p*p
            mark[start::p]=b'\x00'*((limit-start)//p+1)
    return mark


@lru_cache(maxsize=None)
def factor(n):
    if n<1: raise ValueError('factor requires a positive integer')
    out=[]
    p=2
    while p*p<=n:
        a=0
        while n%p==0:
            n//=p; a+=1
        if a: out.append((p,a))
        p+=1 if p==2 else 2
    if n>1: out.append((n,1))
    return tuple(out)


def prime_power(n):
    f=factor(n)
    return f[0] if len(f)==1 and f[0][0]%2 else None


def digits(n,base):
    if n<0 or base<2: raise ValueError('invalid digit arguments')
    out=[]
    while n:
        n,a=divmod(n,base);out.append(a)
    return out or [0]


def lucas_nonzero(n,j,p):
    if not 0<=j<=n: return False
    while n or j:
        if j%p>n%p:return False
        n//=p;j//=p
    return True


def vp_factorial(n,p):
    out=0
    while n:
        n//=p;out+=n
    return out


def vp_binomial(n,j,p):
    return vp_factorial(n,p)-vp_factorial(j,p)-vp_factorial(n-j,p)


def eta(n):
    return 3 if n%3==0 and n%9!=0 else 1


def active_odd_part(n):
    x=n
    while x%2==0:x//=2
    return x//eta(n)


def candidate(P,Q):
    j0=P*pow(P,-1,Q)
    return min(j0,P*Q+1-j0)


def raw_row(P,Q,p,a,q,b):
    n=P*Q+1;j=candidate(P,Q)
    s=j%P;t=j%Q
    assert s in (0,1) and t in (0,1) and s!=t and 4<=j<=n//2
    X=(j-s)//P;Y=(j-t)//Q;ep=t-s;ds=digits(Q,P)
    d=ds[0];H=max(ds)
    assert (d*Y+ep)%P==0
    z=(d*Y+ep)//P
    xs=digits(X,P)
    xs+= [0]*(len(ds)-len(xs))
    cs=[d*xs[i]-z*ds[i]+ep*(ds[i+1] if i+1<len(ds) else 0) for i in range(len(ds))]
    carry=[0]
    for c in cs:
        assert (c+carry[-1])%P==0
        carry.append((c+carry[-1])//P)
    assert carry[-1]==0 and sum(c*P**i for i,c in enumerate(cs))==0
    return dict(P=P,Q=Q,p=p,a=a,q=q,b=b,n=n,j=j,s=s,t=t,X=X,Y=Y,
                epsilon=ep,z=z,d=d,H=H,digits=ds,x_digits=xs,c=cs,carry=carry,
                block_pass=all(x<=di for x,di in zip(xs,ds)),
                two_lucas=[lucas_nonzero(n,j,p),lucas_nonzero(n,j,q)])


def witness(row):
    n=row['n'];j=row['j']
    fs={r for v in (n,n-1,n-2) for r,a in factor(v) if r>=3}
    for r in sorted(fs):
        v3=vp_binomial(n,3,r);vj=vp_binomial(n,j,r)
        if v3 and vj:
            assert not lucas_nonzero(n,j,r)
            return dict(prime=r,valuation_Cn3=v3,valuation_Cnj=vj)
    raise AssertionError('No common prime found; do not treat a model as a counterexample.')


def residuals(row):
    """Homogenized resultant for f(P)=P*Q-1, same original input."""
    ds=row['digits'];m=len(ds)-1
    d=row['d'];z=row['z'];ep=row['epsilon'];t=row['t']
    As=[z+d*(t-r) for r in (0,1,2)]
    return [sum(di*ep**(i+1)*A**(m-i) for i,di in enumerate(ds))-A**(m+1) for A in As]


def consume(P,Q):
    if not 5<=P<Q: raise ValueError('Requires 5 <= P < Q')
    pa,pb=prime_power(P),prime_power(Q)
    if pa is None or pb is None or pa[0]==pb[0]:
        raise ValueError('P,Q must be powers of distinct odd primes')
    row=raw_row(P,Q,*pa,*pb)
    n=row['n'];d=row['d'];H=row['H']
    reasons=[]
    if n%4:reasons.append('INHERITED_N_MOD4')
    if Q>=3*P*P:reasons.append('INHERITED_Q_SIZE')
    if P>d*H:reasons.append('INHERITED_DIGIT_GAP')
    if Q<2*P and (Q-P-1)**2<2*P:reasons.append('NEW_NEAR_CARRY2_ROW')
    if P<d*H<2*P and row['block_pass'] and not any(row['c']):
        reasons.append('NEW_CARRY0_BAND2_CANDIDATE')
    if n%4==0:
        rr=residuals(row)
        row['residuals']=rr
        if all(rr):
            L=lcm(*map(abs,rr));T2=active_odd_part(n-2)
            row.update(T2=T2,lcm_residuals=L)
            if L%T2:reasons.append('NEW_RES_LCM_CANDIDATE')
        else:row['lcm_status']='ZERO_RESULTANT_NO_SIZE_CONCLUSION'
    # The two source-prime tests are exact consumers but not new theorems.
    if not all(row['two_lucas']):reasons.append('EXACT_SOURCE_P_OR_Q_WITNESS')
    row['whole_row_sufficient_reasons']=reasons
    row['whole_row_proved_by_listed_consumers']=bool(reasons)
    if reasons:row['candidate_witness']=witness(row)
    return row

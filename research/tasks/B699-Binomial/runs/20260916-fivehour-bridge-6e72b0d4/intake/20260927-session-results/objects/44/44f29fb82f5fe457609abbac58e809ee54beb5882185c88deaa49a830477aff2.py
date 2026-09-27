"""Exact arithmetic and guarded consumers. Python 3.10+, standard library only.
No probabilistic primality tests, no floating point arithmetic, no repository writes.
"""
from __future__ import annotations
from functools import lru_cache
from math import gcd, isqrt, lcm
import hashlib
import json


def canonical(obj) -> bytes:
    return (json.dumps(obj, ensure_ascii=False, sort_keys=True, indent=2) + '\n').encode()


def digest(obj) -> str:
    return hashlib.sha256(canonical(obj)).hexdigest()


@lru_cache(maxsize=50000)
def factor(n: int) -> tuple[tuple[int, int], ...]:
    if not isinstance(n, int) or n < 1:
        raise ValueError('factor requires a positive integer')
    ans = []
    p = 2
    while p * p <= n:
        e = 0
        while n % p == 0:
            n //= p
            e += 1
        if e:
            ans.append((p, e))
        p = 3 if p == 2 else p + 2
    if n > 1:
        ans.append((n, 1))
    return tuple(ans)


def is_prime(p: int) -> bool:
    return p >= 2 and factor(p) == ((p, 1),)


def odd_prime_power(n: int):
    f = factor(n)
    return f[0] if len(f) == 1 and f[0][0] % 2 else None


def valuation(n: int, p: int) -> int:
    if n == 0:
        raise ValueError('valuation of zero is not finite')
    n = abs(n)
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def odd_part(n: int) -> int:
    while n % 2 == 0:
        n //= 2
    return n


def eta(n: int) -> int:
    return 3 if n % 3 == 0 and n % 9 else 1


def active_part(n: int) -> int:
    return odd_part(n) // eta(n)


def vp_factorial(n: int, p: int) -> int:
    s = 0
    while n:
        n //= p
        s += n
    return s


def vp_binomial(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n:
        raise ValueError('requires 0 <= j <= n')
    return vp_factorial(n, p) - vp_factorial(j, p) - vp_factorial(n-j, p)


def lucas_nonzero(n: int, j: int, p: int) -> bool:
    if not 0 <= j <= n:
        return False
    while n or j:
        if j % p > n % p:
            return False
        n //= p
        j //= p
    return True


def digits(x: int, base: int) -> list[int]:
    a = []
    while x:
        x, r = divmod(x, base)
        a.append(r)
    return a or [0]


def candidate(P: int, Q: int) -> int:
    if gcd(P, Q) != 1:
        raise ValueError('coprime source powers required')
    a = P * pow(P, -1, Q)
    return min(a, P * Q + 1 - a)


def row_data(P: int, Q: int) -> dict:
    if not 5 <= P < Q:
        raise ValueError('requires 5 <= P < Q')
    pa, qb = odd_prime_power(P), odd_prime_power(Q)
    if pa is None or qb is None or pa[0] == qb[0]:
        raise ValueError('requires powers of distinct odd primes, no omitted multiplier')
    n = P * Q + 1
    j = candidate(P, Q)
    s, t = j % P, j % Q
    assert {s, t} == {0, 1} and 4 <= j <= n // 2
    X, Y, eps = (j-s)//P, (j-t)//Q, t-s
    ds = digits(Q, P)
    d, H = ds[0], max(ds)
    assert (d*Y+eps) % P == 0
    z = (d*Y+eps)//P
    xs = digits(X, P) + [0] * len(ds)
    xs = xs[:len(ds)]
    cs = [d*xs[i]-z*di+eps*(ds[i+1] if i+1<len(ds) else 0)
          for i, di in enumerate(ds)]
    carry = [0]
    for c in cs:
        assert (c+carry[-1]) % P == 0
        carry.append((c+carry[-1])//P)
    assert carry[-1] == 0
    R = None
    if len(ds) == 2:
        k = ds[1]
        R = [k-z*(d+z), k+z*(d-z), k-(d-z)*(2*d-z)]
    return dict(P=P, Q=Q, p=pa[0], a=pa[1], q=qb[0], b=qb[1], n=n, j=j,
                s=s,t=t,X=X,Y=Y,epsilon=eps,z=z,d=d,H=H,digits=ds,
                x_digits=xs,coefficients=cs,carry=carry,
                block_pass=all(x<=di for x,di in zip(xs,ds)),
                two_lucas=[lucas_nonzero(n,j,pa[0]),lucas_nonzero(n,j,qb[0])],
                residuals=R, T0=active_part(n), T2=active_part(n-2))


def witness(n: int, j: int, source: int) -> dict:
    """Find a certified common prime among factors of the specified source."""
    for p, a in factor(source):
        if p < 3:
            continue
        v3, vj = vp_binomial(n,3,p), vp_binomial(n,j,p)
        if v3 > 0 and vj > 0:
            assert not lucas_nonzero(n,j,p)
            e = valuation(n-2,p) if (n-2)%p == 0 else None
            return dict(prime=p, source_factor_exponent=a,
                        full_exponent_in_n_minus_2=e,
                        residue_mod_full_power=(j % p**e) if e else None,
                        valuation_Cn3=v3, valuation_Cnj=vj)
    raise AssertionError('No witness in the declared source; investigate, do not label NC3.')


def target_pair(d: int, v: int) -> dict:
    if d < 3 or d % 2 == 0 or v < 1:
        raise ValueError('pair theorem requires odd d >= 3 and v >= 1')
    P=d*v-1; Q=d*(d+1)*v-1
    n=P*Q+1; j=Q*v; W=d*(d+1)*v-d-2
    assert 4 <= j <= n//2
    assert n-2 == d*v*W and gcd(j,n-2) == v
    assert gcd(d,W) == 1 and gcd(Q,d*W) == 1
    assert d*j-(d+2) == (d*v+1)*W
    assert W > 3*(d-2)
    w = witness(n,j,W)
    return dict(d=d,v=v,P=P,Q=Q,n=n,j=j,W=W,
                W_factorization=[list(x) for x in factor(W)],
                gcd_v_W=gcd(v,W), eta_W=eta(W), witness=w)


def normalize_zero(row: dict) -> dict:
    """An auxiliary complementary expression never changes the original input."""
    P,Q,n,j,d,z = (row[k] for k in ('P','Q','n','j','d','z'))
    R=row['residuals']
    assert R is not None and 0 in R
    if R[0] == 0:
        w=z; J=j; eps=row['epsilon']; Y=row['Y']; slot=0
    else:
        assert R[2] == 0
        w=d-z; J=n-j; eps=-row['epsilon']; Y=P-row['Y']; slot=2
    k=Q//P
    assert k == w*(d+w) and 1<=w<d and gcd(w,d)==1
    assert P*w == d*Y+eps
    U=w*P+1; V=(d+w)*P-1
    assert U*V==n-2
    if eps == -1:
        A=Y; B=d*V; C=Q; controlled=V; kind='V'
        assert U == d*Y
    else:
        A=P+Y; B=d*U; C=w*w*P; controlled=U; kind='U'
        assert V==d*A
    assert J==A*C and n-2==A*B and gcd(B,C)==1
    assert gcd(J,n-2)==A
    # The upper bound below is a NECESSARY NC condition, never asserted for raw models.
    capacity=6*w*abs(d-2*w)
    return dict(original_n=n,original_j=j,zero_slot=slot,
                auxiliary_J=J,complement_used=(slot==2),
                epsilon=eps,w=w,Y=Y,U=U,V=V,A=A,B=B,C=C,
                odd_overlap=gcd(odd_part(A),odd_part(B)),
                controlled_factor=kind,controlled_value=controlled,
                necessary_NC_upper_bound=capacity)


def consume(P: int, Q: int) -> dict:
    r=row_data(P,Q)
    d=r['d']; k=Q//P; n=r['n']; j=r['j']
    reasons=[]
    if len(r['digits'])==2 and k==d+1 and d>=3 and d%2==1 and (P+1)%d==0:
        v=(P+1)//d
        if v%2==0 and j==Q*v:
            pair=target_pair(d,v)
            reasons.append('NEW_ZERO_RESTORE_ROW')
            r['target_pair']=pair
    if (len(r['digits'])==2 and n%4==0 and P<d*r['H']<2*P
            and r['residuals'] is not None and 0 in r['residuals']):
        reasons.append('NEW_M1_ZERO_BAND2_ROW')
        r['normalization']=normalize_zero(r)
        r['third_source_witness']=witness(n,j,n-2)
    r['new_sufficient_consumers']=reasons
    r['new_whole_row_closed']=bool(reasons)
    # This diagnostic is not a claim that the old tests exhaust previous research.
    r['prior_diagnostic_flags']={
        'n_mod4_rejects':n%4!=0,
        'old_digit_gate':P>d*r['H'],
        'old_near_gate':Q<2*P and (Q-P-1)**2<2*P,
        'old_zero_carry_gate':P<d*r['H']<2*P and not any(r['coefficients']),
        'n_source_rejects_candidate':j%r['T0']!=0,
        'p_or_q_full_lucas_rejects':not all(r['two_lucas']),
    }
    return r

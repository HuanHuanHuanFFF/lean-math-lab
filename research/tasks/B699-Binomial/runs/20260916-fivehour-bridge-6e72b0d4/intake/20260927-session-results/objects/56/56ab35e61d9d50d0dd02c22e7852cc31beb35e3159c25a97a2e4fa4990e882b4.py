"""Exact original-input arithmetic. Standard library only; no repository access."""
from __future__ import annotations
from math import gcd, lcm, isqrt
from typing import Any


def v_p(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError('valuation requires a positive integer and p >= 2')
    r = 0
    while n % p == 0:
        n //= p
        r += 1
    return r


def odd(n: int) -> int:
    if n <= 0:
        raise ValueError('odd part requires a positive integer')
    return n >> v_p(n, 2)


def prime_trial(p: int) -> bool:
    """Deterministic trial division; used only on the bounded certificate bases."""
    if p < 2:
        return False
    if p % 2 == 0:
        return p == 2
    return all(p % q for q in range(3, isqrt(p) + 1, 2))


def binom_v(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n:
        raise ValueError('invalid binomial input')
    def fact_v(x: int) -> int:
        r = 0
        while x:
            x //= p
            r += x
        return r
    return fact_v(n) - fact_v(j) - fact_v(n-j)


def lucas_nonzero(n: int, j: int, p: int) -> bool:
    if not 0 <= j <= n:
        return False
    while n or j:
        if j % p > n % p:
            return False
        n //= p
        j //= p
    return True


def source_parts(n: int) -> dict[str, int]:
    if n % 4 != 0:
        raise ValueError('the retained source interface requires 4 | n')
    alpha = v_p(n, 2)
    e0 = 3 if v_p(n, 3) == 1 else 1
    e2 = 3 if v_p(n-2, 3) == 1 else 1
    return {'alpha': alpha, 'eta0': e0, 'eta2': e2,
            'T0': n // (2**alpha * e0), 'T2': (n-2) // (2 * e2)}


def linear_slots(k: int, z: int, a: int, eps: int) -> tuple[int, int, int]:
    if eps == -1:
        return (k*a-(k+1)*z+1, k*a+(k-1)*z,
                (k-1)*(2*k-1)*z-k*a-(2*k-1))
    if eps == 1:
        return (k*a+(k+1)*z, k*a-(k-1)*z+1,
                (k-1)*(2*k-1)*z+k*a-2*(k-1))
    raise ValueError('eps must equal -1 or 1')


def restore(k: int, z: int, a: int, eps: int) -> dict[str, Any]:
    if k < 3 or z < 3 or eps not in (-1, 1):
        raise ValueError('requires k >= 3, z >= 3, eps in {-1,1}')
    d = k*z-1
    P = d*a + eps*k
    Q = k*P+d
    n = P*Q+1
    X, Y = P+a+z, z*a+eps
    j = P*X+(1-eps)//2
    Ds = linear_slots(k,z,a,eps)
    basic = (P >= 5 and P < Q < P*P and P % 2 == Q % 2 == 1
             and n % 4 == 0 and 0 <= a+z <= d and P < d*d < 2*P
             and 4 <= j <= n//2 and j == Q*Y+(1+eps)//2)
    out: dict[str, Any] = {'k':k,'z':z,'a':a,'eps':eps,'d':d,'P':P,'Q':Q,
                           'n':n,'j':j,'X':X,'Y':Y,'D':list(Ds),
                           'integer_interface': basic}
    if n > 2 and n % 4 == 0 and min(Ds) > 0:
        parts=source_parts(n)
        LL=odd(lcm(*Ds))
        H=k*a-(k-1)*z+1 if eps == -1 else k*a+(k-1)*z
        out.update(parts)
        out.update({'linear_lcm':LL,'T0_linear':H,'T0_divides_j':j%parts['T0']==0,
                    'T0_divides_linear':H%parts['T0']==0,
                    'T2_divides_linear_lcm':LL%parts['T2']==0,
                    'linear_capacity_rejects':parts['T2']>LL,
                    'source_contradiction':LL%parts['T2']!=0})
    return out


def source_witness_check(n: int, j: int, p: int) -> dict[str, Any]:
    if not prime_trial(p) or p < 3:
        raise ValueError('witness must be a proved odd prime')
    v3, vj=binom_v(n,3,p),binom_v(n,j,p)
    assert (vj == 0) == lucas_nonzero(n,j,p)
    out={'prime':p,'binom_n3_v':v3,'binom_nj_v':vj,'common':v3>0 and vj>0}
    if (n-2)%p==0:
        E=v_p(n-2,p)
        out.update({'source':'n-2','full_exponent':E,'residue':j%(p**E),
                    'low_full_slot':j%(p**E) in (0,1,2)})
    elif n%p==0:
        E=v_p(n,p)
        out.update({'source':'n','full_exponent':E,'residue':j%(p**E)})
    return out

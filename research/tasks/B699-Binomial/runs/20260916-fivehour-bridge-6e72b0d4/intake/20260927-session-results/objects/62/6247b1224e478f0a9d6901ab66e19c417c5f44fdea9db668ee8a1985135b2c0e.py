"""Algorithm A: original top digit a; exact formulas, no primality filter."""
from math import gcd, lcm
from typing import Iterator
from schema import FIELDS


def rows(eps: int) -> Iterator[tuple[int, ...]]:
    if eps not in (-1, 1):
        raise ValueError('eps must be -1 or 1')
    zmax = 461 if eps == -1 else 768
    for z in range(3, zmax + 1):
        d = 6*z-1
        first = 3*z + (3-3*z) % 4
        for a in range(first, 5*z, 4):
            P = d*a+6*eps
            Q = 6*P+d
            n = P*Q+1
            X = P+a+z
            j = P*X+(1-eps)//2
            if eps == -1:
                C = (6*a-7*z+1, 6*a+5*z, 55*z-6*a-11)
                H0 = 6*a-5*z+1
            else:
                C = (6*a+7*z, 6*a-5*z+1, 55*z+6*a-10)
                H0 = 6*a+5*z
            alpha = (n & -n).bit_length()-1
            eta0 = 3 if n % 3 == 0 and n % 9 != 0 else 1
            F = n-2
            eta2 = 3 if F % 3 == 0 and F % 9 != 0 else 1
            T0 = (n >> alpha)//eta0
            T2 = F//(2*eta2)
            zero = sum((1 << s) for s, c in enumerate(C) if c == 0)
            assert zero == 0 and min(C) > 0
            raw = lcm(*C)
            cap = raw//(raw & -raw)
            assert 5 <= P < Q < P*P and P % 2 and Q % 2
            assert n % 4 == 0 and F % 4 == 2 and gcd(P, Q) == 1
            assert 0 <= a+z <= d < P and P < d*d < 2*P
            assert 4 <= j <= n//2
            assert j % P == (1-eps)//2 and j % Q == (1+eps)//2
            assert T0 % 2 and T2 % 2 and T0*eta0*(1 << alpha) == n
            assert 2*eta2*T2 == F
            yield (eps,z,a,d,P,Q,n,j,*C,alpha,eta0,T0,eta2,T2,cap,
                   cap % T2,j % T0,H0,H0 % T0,zero)

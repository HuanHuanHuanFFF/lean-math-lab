"""Algorithm B: d and original P congruence intervals; Bezout evaluations.
No call to algorithm A or its arithmetic, recovery, source or LCM routines.
"""
from math import gcd
from typing import Iterator


def rows(eps: int) -> Iterator[tuple[int, ...]]:
    if eps not in (-1, 1):
        raise ValueError('eps must be -1 or 1')
    # Floor the strict general bounds independently, rather than copy zmax.
    numerator = (19683 if eps < 0 else 32805)*6
    last_z = (numerator-1)//256
    for d in range(17, 6*last_z, 6):
        z = (d+1)//6
        lo = d*d//2+1
        hi = min(d*d-1, d*(d-z)+6*eps)
        modulus = 4*d
        residue = (3*d+6*eps) % modulus
        start = lo + (residue-lo) % modulus
        for P in range(start, hi+1, modulus):
            assert (P-6*eps) % d == 0
            a = (P-6*eps)//d
            Q = 6*P+d
            Y = z*a+eps
            X = P+a+z
            j = Q*Y+(1+eps)//2
            n = P*Q+1
            F = n-2
            if eps < 0:
                V = (Y, X, Q-X)
                AA = (z, z, -5*(5*z-1))
                BB = (36-d*Q, 6-d*P, 5*a*d*d-36*(5*z-1))
                H0 = z*n+(36-d*Q)*Y
            else:
                V = (X, Y, 2*Q-X)
                AA = (-z, -z, -11*(11*z-2))
                BB = (d*P+6, d*Q+36, 11*a*d*d+36*(11*z-2))
                H0 = -z*n+(d*P+6)*X
            C = tuple(AA[s]*F+BB[s]*V[s] for s in range(3))
            zero = sum(2**s for s, c in enumerate(C) if c == 0)
            assert zero == 0 and min(C) > 0
            v2 = 0
            odd_n = n
            while odd_n % 2 == 0:
                odd_n //= 2
                v2 += 1
            w, e3 = n, 0
            while w % 3 == 0:
                w //= 3
                e3 += 1
            eta0 = 3 if e3 == 1 else 1
            T0 = odd_n//eta0
            odd_f, f2 = F, 0
            while odd_f % 2 == 0:
                odd_f //= 2
                f2 += 1
            w, e3 = F, 0
            while w % 3 == 0:
                w //= 3
                e3 += 1
            eta2 = 3 if e3 == 1 else 1
            T2 = odd_f//eta2
            cap = 1
            for c in C:
                cap = cap//gcd(cap, abs(c))*abs(c)
            while cap % 2 == 0:
                cap //= 2
            assert f2 == 1 and v2 >= 2
            assert a % 4 == 3 and P % 2 == 1 and Q % 2 == 1
            assert 0 <= a+z <= d and d*d < 2*P and P < d*d
            assert P >= 5 and Q < P*P and 4 <= j and 2*j <= n
            yield (eps,z,a,d,P,Q,n,j,*C,v2,eta0,T0,eta2,T2,cap,
                   cap % T2,j % T0,H0,H0 % T0,zero)

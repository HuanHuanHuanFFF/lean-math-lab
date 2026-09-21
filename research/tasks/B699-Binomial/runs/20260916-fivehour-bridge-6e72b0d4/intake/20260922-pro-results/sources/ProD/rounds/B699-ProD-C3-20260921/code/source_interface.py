"""C1's frozen exact full-source interfaces, reimplemented for new norm output.
The equivalences are adopted at author-paper level from sources/C_PROOFS.md §2.
All returned True values together remain necessary conditions, not NC6.
"""
from math import gcd


def coarse(x: int) -> int:
    if x < 1:
        raise ValueError('coarse expects a positive integer')
    for p in (2,3,5):
        while x % p == 0:
            x //= p
    return x


def assess(n: int, j: int) -> dict:
    if not 7 <= j <= n//2:
        raise ValueError('illegal i6 pair')
    k=n-j; N=n-1
    if j*k % N:
        return {'source1': False}
    U=j*k//N
    q2,q3,q4,q5=(coarse(n-r) for r in (2,3,4,5))
    E2=gcd(q2,U);M2=gcd(q2,j-1)
    C=gcd(q4,j-2);A4=gcd(q4,(j-1)*(k-1))
    result=dict(source1=True,
                source2=U*U*(U-1)%(q2*q2)==0,
                source3=U*(U-1)%q3==0,
                source4=U*U*(U-1)*(U-1)*(j-2)*(k-2)%(q4*q4)==0,
                source5=U*(U-1)*(2*U-3)%q5==0,
                all_nearside5=(U-1)%q5==0,
                center_less_nearside=C<A4,
                low_mass=8*gcd(n,j)**4<n,
                C=C,A4=A4)
    # The deficit equality is a full-exponent check, not radical arithmetic.
    deficit=q2//(E2*M2)
    result['q2_deficit_identity']=(q2*q2//gcd(q2*q2,U*U*(U-1))==deficit*deficit)
    return result

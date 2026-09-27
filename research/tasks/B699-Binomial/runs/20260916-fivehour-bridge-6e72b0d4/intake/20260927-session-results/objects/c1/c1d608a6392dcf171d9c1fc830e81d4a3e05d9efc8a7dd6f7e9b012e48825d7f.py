"""Deterministic integer arithmetic. No randomized primality test."""
from math import isqrt
from typing import Sequence


def primes_up_to(limit: int) -> list[int]:
    if limit < 2:
        return []
    sieve = bytearray(b'\x01')*(limit+1)
    sieve[0:2] = b'\x00\x00'
    for p in range(2, isqrt(limit)+1):
        if sieve[p]:
            sieve[p*p:limit+1:p] = b'\x00'*((limit-p*p)//p+1)
    return [i for i in range(2, limit+1) if sieve[i]]


def prime_power(n: int, primes: Sequence[int]) -> tuple[int,int,int,int]:
    """(base, exponent, least-divisor, cofactor).
    If not a single-base prime power, base=exponent=0 and
    n=least-divisor^r * cofactor for its entire first prime valuation.
    The caller supplies all primes through sqrt(n).
    """
    if n < 2:
        raise ValueError('n must be >=2')
    if not primes or primes[-1] < isqrt(n)-20:
        # Actual caller uses a conservative global bound; this check is a guard,
        # not the proof of sufficient coverage.
        if not primes or primes[-1]*primes[-1] < n:
            raise ValueError('prime list too short')
    for p in primes:
        if p*p > n:
            return n,1,n,1
        if n % p == 0:
            q, e = n, 0
            while q % p == 0:
                q //= p
                e += 1
            if q == 1:
                return p,e,p,1
            return 0,0,p,q
    raise AssertionError('sieve coverage exhausted')


def lucas(n: int, j: int, p: int) -> bool:
    if not 0 <= j <= n or p < 2:
        raise ValueError('invalid Lucas input')
    while n or j:
        if j % p > n % p:
            return False
        n //= p
        j //= p
    return True


def vp_binom(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n or p < 2:
        raise ValueError('invalid valuation input')
    a,b,c = n,j,n-j
    s=0
    while a:
        a//=p;b//=p;c//=p
        s+=a-b-c
    return s


def v_p(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError('valuation requires a positive integer')
    e=0
    while n % p == 0:
        n//=p;e+=1
    return e


def trial_prime(n: int) -> bool:
    if n < 2: return False
    if n % 2 == 0: return n == 2
    d=3
    while d*d<=n:
        if n%d==0:return False
        d+=2
    return True


def verify_factorization(n: int, fac: list[list[int]]) -> None:
    product=1
    previous=1
    for p,e in fac:
        assert p>previous and e>=1 and trial_prime(p)
        product*=p**e
        previous=p
    assert product==n

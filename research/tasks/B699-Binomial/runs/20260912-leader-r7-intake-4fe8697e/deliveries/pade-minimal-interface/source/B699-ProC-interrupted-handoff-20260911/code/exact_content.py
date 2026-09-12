"""Exact integer arithmetic for the proved content identities."""
from math import comb, gcd
from typing import Iterable
from transport import saturated_transport

def primes_to(limit: int) -> list[int]:
    if limit < 2:
        return []
    sieve = bytearray(b'\1') * (limit + 1)
    sieve[0:2] = b'\0\0'
    for p in range(2, int(limit**0.5) + 1):
        if sieve[p]:
            start = p*p
            sieve[start:limit+1:p] = b'\0' * ((limit-start)//p+1)
    return [p for p in range(2, limit + 1) if sieve[p]]

def factorial_valuation(n: int, p: int) -> int:
    if n < 0 or p < 2:
        raise ValueError('nonnegative factorial and base >=2 required')
    result = 0
    while n:
        n //= p
        result += n
    return result

def binomial_valuation(n: int, r: int, p: int) -> int:
    if not 0 <= r <= n:
        raise ValueError('0 <= r <= n required')
    return factorial_valuation(n,p)-factorial_valuation(r,p)-factorial_valuation(n-r,p)

def pade_g_direct(A: int, B: int, C: int) -> int:
    if min(A,B,C) < 0:
        raise ValueError('nonnegative parameters required')
    q = comb(A+C,C)
    result = q
    for r in range(A):
        numerator = q*(A-r)*(B+r+1)
        denominator = (A+C-r)*(r+1)
        q, rem = divmod(numerator,denominator)
        if rem:
            raise ArithmeticError('coefficient recurrence was not integral')
        result = gcd(result,q)
        if result == 1:
            return 1
    return result

def pade_g_valuation(A: int, B: int, C: int, p: int) -> int:
    q, result = p, 0
    while 2*q-1 <= A+B+C:
        result += (A%q + B%q + C%q >= 2*q-1)
        q *= p
    return result

def pade_g_formula(A: int, B: int, C: int) -> int:
    result=1
    for p in primes_to((A+B+C+1)//2):
        result *= p**pade_g_valuation(A,B,C,p)
    return result

def shared_normalizer(x: int,y: int,z: int, defects: int=2, primes: Iterable[int] | None=None) -> int:
    if min(x,y,z)<1 or defects not in [1,2]:
        raise ValueError('positive coordinates and one or two defects required')
    result=1;limit=(x+y+z-(defects-1))//2
    for p in (primes if primes is not None else primes_to(limit)):
        if p>limit:
            break
        q=p
        while q<=limit:
            if x%q+y%q+z%q >= 2*q+defects-1:
                result*=p
            q*=p
    return result

def pade_minimizing_index(A: int,B: int,C: int,p: int) -> int:
    q=p
    while q<=A+B+C+1:
        q*=p
    J,K=q-1-B,q-1-C
    return saturated_transport([J,K],[A,J+K-A],p)[0][0]

def content_direct(n: int,i: int,j: int) -> int:
    result=0
    for r in range(max(0,i-(n-j)),min(i,j)+1):
        result=gcd(result,comb(j,r)*comb(n-j,i-r))
    return result

def overlap_divisor(n: int,i: int,j: int) -> int:
    result=1
    for p in primes_to(n):
        q=p
        while q<=n:
            if i%q>n%q and j%q>n%q:
                result*=p
            q*=p
    return result

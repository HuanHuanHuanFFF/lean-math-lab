#!/usr/bin/env python3
"""Exact arithmetic for the central-defect transfer theorem; stdlib only."""
from math import gcd, lcm, isqrt

def factor(n):
    out={};p=2
    while p*p<=n:
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
        p+=1
    if n>1:out[n]=1
    return out

def prime(n):return n>=2 and all(n%d for d in range(2,isqrt(n)+1))
def kernel(i,d):
    assert i>=2 and d>=0
    M=i if prime(i) else 1
    for u in range(d-i+1,d+i):
        if u%2:M=lcm(M,abs(u))
    K=1
    for p,e in factor(M).items():
        if p>=i:K*=p**e
    return K

def c(i):
    assert 2<=i<=14
    return 3 if i in [8,9,12,13,14] else 1

def bound(i,d):return i-1+c(i)*kernel(i,d)
if __name__=='__main__':
    for D in [1,2,4,8,12,16]:
        cells=[(bound(i,d),i,d,kernel(i,d)) for i in range(2,15) for d in range(D+1)]
        print('D',D,'max',max(cells),'sum heights',sum(x[0] for x in cells))

"""Exact integer diagnostic for the center subsystem, NOT a RES10/NC model.

The construction deliberately makes alpha divisible by 13 and leaves the
previous h-inequality false. It cannot refute the full remaining system.
"""
from __future__ import annotations
from math import gcd

def crt(congruences):
    r,m=0,1
    for a,q in congruences:
        if gcd(m,q)!=1:raise ValueError('CRT moduli are not coprime')
        r+=m*((a-r)*pow(m,-1,q)%q);m*=q;r%=m
    return r,m

def exact_5_root(E: int):
    if E<3:raise ValueError('This diagnostic uses E>=3')
    A=86*4301**2; B=861
    r,m=1,5
    for level in range(1,E-1):
        assert (A*r*r-B)%m==0
        c=-((A*r*r-B)//m)*pow(2*A*r,-1,5)%5
        r+=c*m;m*=5
    root_digit=-((A*r*r-B)//m)*pow(2*A*r,-1,5)%5
    nonroot=(root_digit+1)%5
    return r+nonroot*m,5*m

def model(E: int, lift: int=0):
    if lift<0:raise ValueError('Require lift>=0')
    residue,mod=exact_5_root(E)
    w0,period=crt([(residue,mod),(1,18),(3,13),(0,331),
                  (0,307),(1,269),(1,7)])
    w=w0+period*lift;g=430;t=4301
    alpha=t*t*w*w-10;beta=t*w*w
    n=g*alpha;j=g*beta;k=n-j;N=n-1;U=10*g*g*w*w
    C=gcd((n-4)//2,j-2)
    return {'E':E,'lift':lift,'w':w,'w0':w0,'period':period,
            'n':n,'j':j,'g':g,'alpha':alpha,'beta':beta,'U':U,
            'Y':g*N*w,'C':C,'V4':(2*n+4-9*U)//(C*C),
            'E3':gcd((n-3)//3,j*k),'E4':gcd((n-4)//2,j*k),
            'q5':(n-5)//5**E}

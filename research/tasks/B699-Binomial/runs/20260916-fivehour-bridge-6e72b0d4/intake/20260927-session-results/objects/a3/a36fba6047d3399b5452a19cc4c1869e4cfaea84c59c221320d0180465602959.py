#!/usr/bin/env python3
"""Exact primitive W10/first-source/three-power recovery for a fixed even 3-row.

This is not an NC6 solver. An output candidate still needs every original source.
No factorization or external CAS is used. All transformations have determinant +1.
"""
from __future__ import annotations
import argparse,json,sys
from math import gcd,isqrt
from typing import Any
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def vp(x:int,p:int)->int:
    if x==0:raise ValueError('valuation of zero is not used')
    x=abs(x); e=0
    while x%p==0:x//=p;e+=1
    return e

def rough(x:int)->int:
    if x<=0:raise ValueError('rough requires a positive integer')
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def jacobi(a:int,n:int)->int:
    if n<=0 or n%2==0:raise ValueError('positive odd denominator required')
    sign=1;a%=n
    while a:
        while a%2==0:
            a//=2
            if n%8 in (3,5):sign=-sign
        a,n=n,a
        if a%4==n%4==3:sign=-sign
        a%=n
    return sign if n==1 else 0

def matmul(m:tuple[int,...],t:tuple[int,...])->tuple[int,...]:
    a,b,c,d=m;e,f,g,h=t
    return (a*e+b*g,a*f+b*h,c*e+d*g,c*f+d*h)

def reduce_form(a:int,b:int,c:int)->tuple[tuple[int,int,int],tuple[int,...],int]:
    if a<=0 or 4*a*c-b*b<=0:raise ValueError('positive definite form required')
    m=(1,0,0,1);steps=0
    while True:
        s=(a-b)//(2*a)
        if s:
            c=a*s*s+b*s+c;b+=2*a*s
            m=matmul(m,(1,s,0,1));steps+=1
        if a>c or (a==c and b<0):
            a,b,c=c,-b,a;m=matmul(m,(0,-1,1,0));steps+=1
            continue
        if b==-a:
            c=a+b+c;b+=2*a;m=matmul(m,(1,1,0,1));steps+=1
        assert abs(b)<=a<=c
        assert not (abs(b)==a or a==c) or b>=0
        return (a,b,c),m,steps

def recover_row(n:int, *, certificates:bool=True, min_a:int=1)->dict[str,Any]:
    if n<6 or n%6:raise ValueError('the recovery domain is n>=6, 6|n')
    if min_a<1:raise ValueError('min_a must be positive')
    A=vp(n,3);K=10*(n-1);q=1;r=0;records=[];candidates=[]
    for t in range(1,2*A+1):
        r=next(r+c*q for c in range(3) if ((r+c*q)**2+K)%(3*q)==0)
        q*=3
        if t%2:continue
        a=t//2
        if a<min_a:continue
        alpha=3**a
        c=(r*r+K)//q
        reduced,m,steps=reduce_form(q,2*r,c)
        rec={'a':a,'modulus':q,'root':r,'initial':[q,2*r,c],
             'reduced':list(reduced),'matrix':list(m),'steps':steps}
        if reduced[0]==1:
            assert reduced==(1,0,K)
            x=q*m[0]+r*m[2];y=m[2]
            assert x*x+K*y*y==q
            assert x%3 and y%3 and y%2==0
            delta=abs(x);z=abs(y)//2;beta=(alpha-delta)//2;g=n//alpha;j=g*beta
            assert (alpha-delta)%2==0 and z>0 and 0<2*beta<alpha
            assert gcd(n,j)==g and beta*(alpha-beta)==10*(n-1)*z*z
            candidate={'a':a,'alpha':alpha,'g':g,'beta':beta,'delta':delta,'z':z,'j':j,
                       'legal_i6':7<=j<=n//2,'mass_8g4_lt_n':8*g**4<n}
            candidates.append(candidate)
        if certificates:records.append(rec)
    assert len(candidates)<=1
    return {'n':n,'A_v3_n':A,'K':K,'min_a':min_a,
            'status':'CANDIDATE' if candidates else 'EMPTY','candidates':candidates,'forms':records}

def central_data(n:int,j:int)->dict[str,Any]:
    if n<6 or n%6 or not 0<2*j<n:raise ValueError('even 3-row and oriented positive pair required')
    g=gcd(n,j);al=n//g;a=0;t=al
    while t%3==0:t//=3;a+=1
    if t!=1 or a==0:raise ValueError('actual alpha is not a positive power of 3')
    if j*(n-j)% (10*g*g*(n-1)):raise ValueError('exact normalized W10 source recovery fails')
    z2=j*(n-j)//(10*g*g*(n-1));z=isqrt(z2)
    if z==0 or z*z!=z2:raise ValueError('normalized square fails')
    de=al-2*(j//g);H=(al*al-120*z*z)//3
    q4=rough(n-4);C=gcd(q4,j-2)
    assert H>0 and H%C==0 and gcd(H,de)==C
    T=H//C;E4=gcd(q4,j*(n-j))
    return {'a':a,'alpha':al,'g':g,'z':z,'delta':de,'q4':q4,'E4':E4,'C':C,'H':H,'T':T,
            'central_defect':gcd(C,T),'old_central_defect':gcd(C,q4//C),
            'chi3_C':jacobi(3,C),'chi3_T':jacobi(3,T),
            'U4_trigger':jacobi(10,q4)!=jacobi(10,E4*C)}

def main()->None:
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('n',type=int)
    ap.add_argument('--min-a',type=int,default=1);ap.add_argument('--output')
    args=ap.parse_args();out=recover_row(args.n,min_a=args.min_a)
    txt=json.dumps(out,indent=2)+'\n'
    if args.output:
        from pathlib import Path
        Path(args.output).write_text(txt)
    else:print(txt,end='')
if __name__=='__main__':main()

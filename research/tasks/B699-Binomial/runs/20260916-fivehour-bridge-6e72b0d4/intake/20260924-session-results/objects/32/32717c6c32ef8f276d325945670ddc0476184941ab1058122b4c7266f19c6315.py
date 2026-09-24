#!/usr/bin/env python3
"""Exact arithmetic only; no repository, network, or proof-assistant operations."""
from __future__ import annotations
from math import isqrt

def prime(n:int)->bool:
    if n<2:return False
    if n%2==0:return n==2
    return all(n%d for d in range(3,isqrt(n)+1,2))

def vp(n:int,p:int)->int:
    if n==0:raise ValueError('valuation of zero is not finite')
    n=abs(n);e=0
    while n%p==0:n//=p;e+=1
    return e

def mul(a:tuple[int,int],b:tuple[int,int],m:int|None=None)->tuple[int,int]:
    z=(a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
    return z if m is None else (z[0]%m,z[1]%m)

def power(a:tuple[int,int],e:int,m:int|None=None)->tuple[int,int]:
    z=(1,0)
    while e:
        if e&1:z=mul(z,a,m)
        a=mul(a,a,m);e//=2
    return z

def pell_linear(t:int)->tuple[int,int]:
    U,X=1,0
    for _ in range(t):U,X=2*U+3*X,U+2*X
    return U,X

def defects(A:int,B:int,cstar:int)->tuple[int,int,int]:
    f=3*(5*B-80*A-cstar)**2-4*(4*A*cstar+15)**2
    w=5*f+42*cstar*cstar-18000
    V=w*w-97200*cstar*cstar+194400000
    return f,w,V

def row(A:int,B:int,h:int,nu:int,d:int,y:int,m:int)->dict[str,int]:
    v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(P*Q*nu+2)%m
    C=(4*B*h-16*A*d-120*y-27*B)%m
    cs=C*pow(4,-1,m)%m
    f,w,V=defects(A,B,cs)
    return {k:z%m for k,z in dict(A=A,B=B,h=h,nu=nu,d=d,y=y,
                                 P=P,Q=Q,n=n,C=C,cstar=cs,fstar=f,w=w,V=V).items()}

def models_h(p:int,q:int)->list[dict[str,int]]:
    """Generator: enumerate A,B,h and use EH; all zero residues retained."""
    U,X=power((2,1),8*q+1,p)
    d=(3*X-1)*pow(2,-1,p)%p;y=U*pow(2,-1,p)%p
    out=[]
    for A in range(p):
      for B in range(p):
        if (A*B-3*(d-1))%p:continue
        for h in range(p):
          EH=d*d*(h*h-6*h-11)-10*A*d*y*(h+1)-A*A*y*y*(4*h+3)-4*B*y
          if EH%p:continue
          Q=(d+A*y)%p;nu=(h*d-Q)*pow(2,-1,p)%p
          out.append(row(A,B,h,nu,d,y,p))
    return sorted(out,key=lambda z:(z['A'],z['B'],z['h'],z['nu']))

def models_nu(p:int,q:int)->tuple[list[dict[str,int]],int]:
    """Verifier: exact integer Pell recurrence; enumerate nu and solve linear h."""
    U,X=pell_linear(8*q+1)
    d=((3*X-1)//2)%p;y=(U//2)%p
    out=[];count=0
    for A in range(p):
      for B in range(p):
        if (A*B-3*(d-1))%p:continue
        v=A*y%p;Q=(d+v)%p
        for nu in range(p):
          if d:hs=[(2*nu+Q)*pow(d,-1,p)%p]
          elif (2*nu+Q)%p==0:hs=range(p)
          else:hs=[]
          for h in hs:
            count+=1
            rhs=B*y+(h+3)*d*d+(2*h+3)*d*v+(h+1)*v*v
            if (nu*nu-rhs)%p:continue
            P=(Q+h*v)%p
            if (v*nu*nu-P*Q*Q+1)%p:raise ArithmeticError('DIVNORM/original norm mismatch')
            out.append(row(A,B,h,nu,d,y,p))
    return sorted(out,key=lambda z:(z['A'],z['B'],z['h'],z['nu'])),count

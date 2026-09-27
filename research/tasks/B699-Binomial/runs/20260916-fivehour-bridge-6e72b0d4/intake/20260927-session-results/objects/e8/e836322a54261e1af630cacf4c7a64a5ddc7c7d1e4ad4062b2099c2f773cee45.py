#!/usr/bin/env python3
"""Reproducible finite route diagnostic; not itself an infinite-domain proof."""
from __future__ import annotations
import math

def step(d,y,m):return ((18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m)
def orbit(m):
    out=[];d=y=1
    while True:
        out.append((d,y));d,y=step(d,y,m)
        if (d,y)==(1,1):return out
        if len(out)>20000:raise RuntimeError('period cap reached')
def S(d,y,A,B,m):
    v=A*y
    return (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
for m in (5,25,125,625,3125):
    cyc=orbit(48*m);T=math.lcm(12,len(cyc));sq={z*z%m for z in range(m)};ok=[];total=0
    for q in range(T):
        if q%12 not in (4,8):continue
        d,y=cyc[q%len(cyc)];B,rem=divmod(d-1,48)
        if rem:raise ValueError('lost actual B')
        v=S(d,y,144,B,m);total+=1
        if v in sq:ok.append(q)
        if m in (5,25):print('ACTUAL_QUOTIENT',m,q,'d,y=',d%m,y%m,'B=',B%m,'S=',v,'square=',v in sq)
    print('PERIOD_DIAGNOSTIC',m,'source',len(cyc),'joint',T,'tested',total,'surviving',len(ok),'first',ok[:20])
print('SAME_INPUT_FN5')
for q,(d,y) in enumerate(orbit(5)):
    v=144*y%5;Q=(d+v)%5;out=[]
    for H in range(5):
        f=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%5
        if f==0:out.append((H,(4*v*H**3+H+Q)%5))
    print('q mod3=',q,'d,y,v,Q=',d,y,v,Q,'F roots (H,N)=',out)
print('DIAGNOSTIC END: A144 closure requires same-input n, not just S mod5^k.')

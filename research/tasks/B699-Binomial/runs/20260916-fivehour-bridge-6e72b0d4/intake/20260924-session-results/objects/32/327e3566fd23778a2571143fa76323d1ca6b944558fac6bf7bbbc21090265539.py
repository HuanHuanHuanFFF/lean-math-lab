#!/usr/bin/env python3
from __future__ import annotations
import json
from pathlib import Path
from probe import pow_alpha, v2, Rpoly

ROOT=Path(__file__).resolve().parents[1]
EXPECTED=json.loads((ROOT/'certificates'/'fixed_m_small_w.json').read_text())

def fmod_q(rho:int,w:int,m:int,bits:int)->int:
    q=(1<<(rho-3))*w
    coordbits=bits+rho+10
    mod=1<<coordbits
    V,X=pow_alpha(4*q,mod)
    assert v2(X)==rho
    U=(2*V+3*X)%mod
    x=X>>rho
    y=(U*V-1)%mod
    d=(3*U*X+1)%mod
    chi=(x*y)%mod
    rb=bits+3; modr=1<<rb
    rr=Rpoly(d%modr,(2*(chi%modr)*m)%modr,modr)
    assert rr%8==0
    return (rr//8)%(1<<bits)

def root_w(rho:int,m:int,L:int)->int:
    w=1
    assert fmod_q(rho,w,m,1)==0
    for k in range(1,L):
        a=fmod_q(rho,w,m,k+1)
        b=fmod_q(rho,w+(1<<k),m,k+1)
        assert (a==0)^(b==0)
        if b==0:w+=1<<k
    return w

def val_fixed(rho:int,m:int,w:int)->int:
    for bits in (16,32,64,128,256):
        z=fmod_q(rho,w,m,bits)
        if z:return v2(z)+3
    raise AssertionError('unexpected >=256 valuation')

def row_power(rho:int,w:int,bits:int=80):
    q=(1<<(rho-3))*w; K=rho+4
    coordbits=bits+rho+10; mod=1<<coordbits
    V,X=pow_alpha(4*q,mod); assert v2(X)==rho
    U=(2*V+3*X)%mod; x=X>>rho
    y=(U*V-1)%mod; d=(3*U*X+1)%mod; chi=x*y%mod
    m=1
    for k in range(1,K):
        rb=k+4; modr=1<<rb
        def ff(mm):
            rr=Rpoly(d%modr,(2*(chi%modr)*mm)%modr,modr)
            return (rr//8)%(1<<(k+1))
        a,b=ff(m),ff(m+(1<<k)); assert (a==0)^(b==0)
        if b==0:m+=1<<k
    bound=27*(1<<(rho-1))
    z=fmod_q(rho,w,m,bits)
    return {'rho':rho,'w':w,'q':q,'m':m,'bound':bound,'in_range':m<bound,
            'v2R':(v2(z)+3 if z else bits+3),'passes_80':z==0}

fixed=[]
for m in (1,3,9):
    for rho in range(12,56):
        L=56-rho; w=root_w(rho,m,L)
        assert 1<=w<(1<<L) and w&1
        q=(1<<(rho-3))*w
        fixed.append({'m':m,'rho':rho,'L':L,'w':w,'q':q,
                      'v2R':val_fixed(rho,m,w),'required':45*q})
small=[]
for rho in range(12,56):
    for w in (1,3,5):
        if w<(1<<(56-rho)):small.append(row_power(rho,w))

assert fixed==EXPECTED['fixed_m']
assert small==EXPECTED['small_w']
print(json.dumps({'status':'PASS','fixed_m_cases':len(fixed),'small_w_cases':len(small),
                  'fixed_m_max_v2R':max(x['v2R'] for x in fixed),
                  'small_w_max_v2R':max(x['v2R'] for x in small)},indent=2))

#!/usr/bin/env python3
from __future__ import annotations
import json, random, subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def mul(z,w,mod):
    a,b=z;c,d=w
    return ((a*c+3*b*d)%mod,(a*d+b*c)%mod)
def powa(n,mod):
    r=(1,0);b=(2%mod,1%mod)
    while n:
        if n&1:r=mul(r,b,mod)
        b=mul(b,b,mod);n//=2
    return r
def Rpoly(d,v,mod):
    Q=(d+v)%mod
    return (pow(Q,10,mod)-12*pow(Q,7,mod)+15*d*pow(Q,6,mod)-4*d*d*pow(Q,5,mod)-4*d*pow(Q,3,mod)+12*d*d*pow(Q,2,mod)-12*d*d*d*Q+4*pow(d,4,mod))%mod
def f(rho,w,m,bits):
    cb=bits+rho+10;mod=1<<cb;q=(1<<(rho-3))*w
    V,X=powa(4*q,mod); U=(2*V+3*X)%mod
    assert (X & -X).bit_length()-1==rho
    x=X>>rho;y=(U*V-1)%mod;d=(3*U*X+1)%mod;chi=x*y%mod
    mr=1<<(bits+3); rr=Rpoly(d%mr,(2*(chi%mr)*m)%mr,mr)
    assert rr%8==0
    return (rr//8)%(1<<bits)
def root_bit(rho,m):
    L=56-rho;w=1
    assert f(rho,w,m,1)==0
    for k in range(1,L):
        a=f(rho,w,m,k+1);b=f(rho,w+(1<<k),m,k+1)
        assert (a==0)^(b==0)
        if b==0:w+=1<<k
    z=f(rho,w,m,80)
    val=(z & -z).bit_length()-1+3 if z else 83
    return w,val
rng=random.Random(0xB699D18)
samples=[]
for rho in range(12,28):
    bound=27*(1<<(rho-1))
    vals={1,3,5,7,bound-1,bound-3}
    while len(vals)<16:
        vals.add(rng.randrange(1,bound,2))
    for m in sorted(vals):samples.append((rho,m))
proc=subprocess.run([str(ROOT/'evidence'/'sample_oracle')],input=''.join(f'{r} {m}\n' for r,m in samples),text=True,capture_output=True,check=True)
cpp={}
for line in proc.stdout.splitlines():
    r,m,w,v=map(int,line.split());cpp[(r,m)]=(w,v)
records=[]
for r,m in samples:
    py=root_bit(r,m); assert cpp[(r,m)]==py,(r,m,cpp[(r,m)],py)
    records.append({'rho':r,'m':m,'w':py[0],'v2R':py[1]})
out={'status':'PASS','sample_count':len(records),'records':records}
(ROOT/'certificates'/'crosscheck_samples.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
print(json.dumps({'status':'PASS','sample_count':len(records),'max_v2R':max(x['v2R'] for x in records)},indent=2))

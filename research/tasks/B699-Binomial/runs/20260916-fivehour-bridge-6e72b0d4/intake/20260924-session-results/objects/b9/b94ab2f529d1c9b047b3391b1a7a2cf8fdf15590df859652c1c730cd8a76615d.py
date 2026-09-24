#!/usr/bin/env python3
from __future__ import annotations
import json, subprocess, sys
from pathlib import Path
from probe import pow_alpha,v2,Rpoly
ROOT=Path(__file__).resolve().parents[1]
BIN=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'build'/'row_oracle'
expected=json.loads((ROOT/'certificates'/'crosscheck_samples.json').read_text())

def pyrow(rho,w,bits=80):
    q=(1<<(rho-3))*w;K=rho+4;mod=1<<(bits+rho+10)
    V,X=pow_alpha(4*q,mod); assert v2(X)==rho
    U=(2*V+3*X)%mod;x=X>>rho;y=(U*V-1)%mod;d=(3*U*X+1)%mod;chi=x*y%mod
    m=1
    for k in range(1,K):
        rb=k+4;modr=1<<rb
        def f(mm):
            rr=Rpoly(d%modr,(2*(chi%modr)*mm)%modr,modr)
            return (rr//8)%(1<<(k+1))
        a,b=f(m),f(m+(1<<k)); assert (a==0)^(b==0)
        if b==0:m+=1<<k
    bound=27*(1<<(rho-1));rb=bits+3;modr=1<<rb
    rr=Rpoly(d%modr,(2*(chi%modr)*m)%modr,modr);z=(rr//8)%(1<<bits)
    return {'rho':rho,'w':w,'m':m,'inrange':m<bound,'v2R':v2(z)+3 if z else bits+3}

for e in expected['rows']:
    p=pyrow(e['rho'],e['w'])
    assert p==e,(p,e)
    c=json.loads(subprocess.check_output([str(BIN),str(e['rho']),str(e['w'])],text=True))
    assert c['m']==e['m'] and c['inrange']==e['inrange'] and c['v2R']==e['v2R'],(c,e)
print(json.dumps({'status':'PASS','samples':len(expected['rows'])},indent=2))

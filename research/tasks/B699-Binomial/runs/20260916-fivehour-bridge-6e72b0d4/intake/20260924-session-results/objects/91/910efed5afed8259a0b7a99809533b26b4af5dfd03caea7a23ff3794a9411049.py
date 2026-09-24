#!/usr/bin/env python3
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
def mul(z,w,mod):
 a,b=z;c,d=w;return((a*c+3*b*d)%mod,(a*d+b*c)%mod)
def powa(n,mod):
 r=(1,0);b=(2%mod,1%mod)
 while n:
  if n&1:r=mul(r,b,mod)
  b=mul(b,b,mod);n//=2
 return r
def R(d,v,mod):
 Q=(d+v)%mod
 return (pow(Q,10,mod)-12*pow(Q,7,mod)+15*d*pow(Q,6,mod)-4*d*d*pow(Q,5,mod)-4*d*pow(Q,3,mod)+12*d*d*pow(Q,2,mod)-12*d*d*d*Q+4*pow(d,4,mod))%mod
def data(z,rho,mod):
 V,X=z;U=(2*V+3*X)%mod;x=X>>rho;y=(U*V-1)%mod;d=(3*U*X+1)%mod;return d,x*y%mod
def fq(z,rho,m,bits,mod):
 d,chi=data(z,rho,mod);mr=1<<(bits+3);rr=R(d%mr,2*(chi%mr)*m%mr,mr);assert rr%8==0;return rr//8%(1<<bits)
rho=12;L=44;bits=80;cb=bits+rho+10;mod=1<<cb
base=powa(1<<(rho-1),mod);steps=[base]
for _ in range(1,L):steps.append(mul(steps[-1],steps[-1],mod))
bound=27*(1<<(rho-1));maxv=0;maxm=maxw=None;passing=0
for m in range(1,bound,2):
 w=1;cur=base
 for k in range(1,L):
  a=fq(cur,rho,m,k+1,mod);alt=mul(cur,steps[k],mod);b=fq(alt,rho,m,k+1,mod)
  assert (a==0)^(b==0)
  if b==0:w+=1<<k;cur=alt
 z=fq(cur,rho,m,bits,mod);v=(z&-z).bit_length()-1+3 if z else 83
 if not z:passing+=1
 if v>maxv:maxv,maxm,maxw=v,m,w
out={'status':'PASS','rho':rho,'count':bound//2,'pass_quotient_2pow80':passing,'max_v2R':maxv,'max_m':maxm,'max_w':maxw}
assert out=={'status':'PASS','rho':12,'count':27648,'pass_quotient_2pow80':0,'max_v2R':61,'max_m':649,'max_w':4508396523561},out
(ROOT/'certificates'/'independent_rho12.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
print(json.dumps(out,indent=2))

#!/usr/bin/env python3
"""Check ONE ordinary input and a claimed square-class pair/source prime.
This is not a search, a complete NC test, or a Lean proof.
Primality implementation is exact trial division, limited to supplied p<=10^7.
"""
import argparse,json,math,sys
from pathlib import Path
sys.set_int_max_str_digits(0)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('input',type=Path);a=ap.parse_args()
    d=json.loads(a.input.read_text());n=int(d['n']);j=int(d['j'])
    if not 7<=j<=n//2:raise ValueError('illegal original interval')
    k=n-j;g=math.gcd(n,j);alpha=n//g;N=n-1
    if j*k%N:raise ValueError('N does not divide jk')
    U=j*k//N
    if U%g:raise ValueError('ordinary X/Y do not exist')
    X=(j-U)//g;Y=(k-U)//g
    if min(X,Y)<=0:raise ValueError('nonpositive X/Y')
    dx=int(d['d_X']);dy=int(d['d_Y']);hx=int(d['h_X']);hy=int(d['h_Y'])
    if min(dx,dy,hx,hy)<=0 or alpha*X!=dx*hx*hx or alpha*Y!=dy*hy*hy:
        raise ValueError('square-class certificate does not equal the original factors')
    p=int(d['p']);r=int(d['r'])
    if p<7 or p>10**7 or any(p%m==0 for m in range(2,math.isqrt(p)+1)):
        raise ValueError('source prime must pass exact trial division and be <=10^7')
    if r not in (3,4) or (n-r)%p:raise ValueError('wrong original source')
    leg=lambda v: -1 if pow(v%p,(p-1)//2,p)==p-1 else pow(v%p,(p-1)//2,p)
    trigger=leg(dx)==leg(dy)==-1 and leg(3)==1 and (r==3 or leg(2)==1)
    def vpchoose(m):
        e=0;q=p
        while q<=n:e+=n//q-m//q-(n-m)//q;q*=p
        return e
    result={'status':'NO_CONCLUSION','n':n,'j':j,'g':g,'alpha':alpha,'X':X,'Y':Y,
            'source_prime':p,'source':r,'whole_NC_test':False,'current_model_claim':False}
    if trigger:
        v6=vpchoose(6);vj=vpchoose(j)
        if min(v6,vj)<=0:raise ArithmeticError('the original witness failed verification')
        result.update(status='VERIFIED_ORIGINAL_COMMON6_WITNESS',vp_Cn6=v6,vp_Cnj=vj)
    print(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':
    try:main()
    except (ValueError,KeyError,TypeError,ArithmeticError) as e:
        print('REJECT: '+str(e),file=sys.stderr);sys.exit(1)

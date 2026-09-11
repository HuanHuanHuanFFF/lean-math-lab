#!/usr/bin/env python3
"""Diagnostic only: maximal prime-power residue relaxation for i=3."""
import argparse,json,math,time
from pathlib import Path

def factor_sieve(N):
    spf=list(range(N+1))
    for p in range(2,math.isqrt(N)+1):
        if spf[p]==p:
            for a in range(p*p,N+1,p):
                if spf[a]==a:spf[a]=p
    def fac(n):
        f={}
        while n>1:
            p=spf[n];f[p]=f.get(p,0)+1;n//=p
        return f
    return fac

def valuation_binom(n,j,p):
    ans=0;q=p
    while q<=n:
        ans+=n//q-j//q-(n-j)//q;q*=p
    return ans

def run(N):
    start=time.monotonic();fac=factor_sieve(N);examples=[];count=0;actual=[];hist={}
    for n in range(8,N+1):
        blocks=[];step=1
        for r in range(3):
            for p,a in fac(n-r).items():
                if p==2 or (p==3 and a==1):continue
                q=p**a;blocks.append((r,p,q))
                if r==0:step*=q
        for j in range(max(step,((4+step-1)//step)*step),n//2+1,step):
            if any(j%q>r for r,p,q in blocks):continue
            count+=1
            h=next(((p,valuation_binom(n,j,p)) for r,p,q in blocks if valuation_binom(n,j,p)),None)
            row={'n':n,'j':j,'alpha':n//math.gcd(n,j),'beta':j//math.gcd(n,j),'blocks':blocks,'higher_carry':h}
            if len(examples)<100:examples.append(row)
            if h is None:actual.append(row)
            u=(n&-n).bit_length()-1;hist[u]=hist.get(u,0)+1
    return {'scope':{'i':3,'8<=n<=':N,'4<=j<=floor(n/2)':True},'weak_survivors':count,'actual_noCommon':actual,'examples':examples,'v2n_hist':hist,'elapsed_seconds':time.monotonic()-start,'status':'finite diagnostic, not global proof'}
if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--N',type=int,default=20000);a.add_argument('--output',required=True);args=a.parse_args()
    out=run(args.N);Path(args.output).write_text(json.dumps(out,indent=2));print(json.dumps({k:v for k,v in out.items() if k not in ('examples','actual_noCommon')},indent=2));print('sample',out['examples'][:8])

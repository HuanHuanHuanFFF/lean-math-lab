#!/usr/bin/env python3
"""Exact regressions for the independently proved simultaneous row family.
The universal quantifiers are handled in PROOFS.md, not by these examples.
"""
from __future__ import annotations
import argparse,json,math,time
from pathlib import Path

def prime(x:int)->bool:
    return x>=2 and all(x%d for d in range(2,math.isqrt(x)+1))

def binomial_valuation(n:int,k:int,p:int)->int:
    result=0;power=p
    while power<=n:
        result+=n//power-k//power-(n-k)//power
        power*=p
    return result

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();start=time.monotonic();rows=[];checks=0
    # Each terminal prime is independently trial-division checked, then checked to
    # divide (n-1)/3. No claim that this is always the least terminal prime.
    for P,terminal in [(17,83),(19,251),(23,17),(31,113)]:
        M,E,t=14,60,1
        assert prime(P) and P>M
        q=P**(E*t);n=4*q
        assert n%9==4 and all(n%r==4 for r in (5,7,11,13))
        assert prime(terminal) and terminal>M and ((n-1)//3)%terminal==0
        entries=[]
        for j in sorted({4,15,q-1,q,q+1,2*q-1,2*q}):
            p=P if j%q else terminal
            vj=binomial_valuation(n,j,p)
            vis=[binomial_valuation(n,i,p) for i in range(3,min(M,j-1)+1)]
            assert vj>0 and all(v>0 for v in vis)
            entries.append(dict(j=str(j),prime=p,v_Cnj=vj,v_Cni_3_to_min14=vis))
            checks+=1+len(vis)
        rows.append(dict(P=P,M=M,E=E,t=t,n=str(n),q=str(q),n_decimal_digits=len(str(n)),
                         terminal_prime=terminal,checked_j=entries))
    out=dict(status='PASS',method='trial-division primality + full Legendre valuation sums',
             family='n=4*P^(60*t), prime P>=17,t>=1; finite regression uses t=1 and four P',
             checked_binomial_valuations=checks,rows=rows,elapsed_seconds=time.monotonic()-start,
             scope='regression only; the full row and all-parameter proof is in notes/PROOFS.md')
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='rows'},indent=2))
if __name__=='__main__':main()

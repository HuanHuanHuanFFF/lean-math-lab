#!/usr/bin/env python3
"""Apply the paper's sufficient whole-row consumer; exact trial factoring.
For very large inputs, trial factorization may be expensive. No speed guarantee.
"""
import argparse,json
from exact_core import factor,digits,c3_factorization,lucas_nonzero,vp_binomial

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--P',type=int,required=True)
    ap.add_argument('--Q',type=int,required=True)
    ap.add_argument('--j',type=int)
    a=ap.parse_args();P,Q=sorted((a.P,a.Q))
    if not (3<=P<Q and P%2==Q%2==1):
        ap.error('Require distinct positive odd powers 3 <= P < Q.')
    fp,fq=factor(P),factor(Q)
    if len(fp)!=1 or len(fq)!=1 or fp[0][0]==fq[0][0]:
        ap.error('P and Q must be powers of different odd primes.')
    n=P*Q+1;ds=digits(Q,P);d,H=ds[0],max(ds)
    closed=P==3 or P>d*H
    out=dict(n=n,P=P,Q=Q,digits=ds,d=d,H=H,gate=P>d*H,
             status='CLOSED_ROW_BY_PAPER_THEOREM' if closed else 'OUTSIDE_CONSUMER_NO_CONCLUSION',
             theorem='PROOFS §9' if P==3 else 'TWOPP-DIGIT-GAP',
             evidence_level='author-level paper theorem, not Lean')
    if a.j is not None:
        j=a.j
        if not 4<=j<=n//2:ap.error('Require 4 <= j <= floor(n/2).')
        if closed:
            witness=next((p for p in c3_factorization(n)
                          if p>=3 and not lucas_nonzero(n,j,p)),None)
            if witness is None:raise AssertionError('Consumer regression failure')
            out.update(j=j,witness=witness,v_c3=vp_binomial(n,3,witness),
                       v_cj=vp_binomial(n,j,witness))
    print(json.dumps(out,indent=2,sort_keys=True))
if __name__=='__main__':main()

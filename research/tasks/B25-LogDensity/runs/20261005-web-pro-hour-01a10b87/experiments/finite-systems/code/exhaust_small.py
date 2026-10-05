#!/usr/bin/env python3
"""Exact singleton congruence enumeration, omitting modulus 1.
Tests H(active union <= N) <= Haar(union)*H_N by integer arithmetic.
Every modulus 2..N is absent or carries one of its n residues.
No Lean or asymptotic conclusions.
"""
import argparse,json,math,time
from fractions import Fraction
from pathlib import Path

def run(N):
    start=time.monotonic(); L=math.lcm(*range(1,N+1))
    weight=[0]*(1<<N)
    ints=[L//x for x in range(1,N+1)]
    for m in range(1,1<<N):
        b=m&-m;weight[m]=weight[m-b]+ints[b.bit_length()-1]
    Hnum=sum(ints)
    rows={}
    for n in range(2,N+1):
        rows[n]=[(0,0,None)]
        for a in range(n):
            bm=sum(1<<x for x in range(a,L,n))
            lm=sum(1<<(x-1) for x in range(n,N+1) if x%n==a)
            rows[n].append((bm,lm,a))
    count=0;best=-10**100;argbest=None;worst_ratio=Fraction(0)
    path=[]
    def visit(n,bm,lm):
        nonlocal count,best,argbest,worst_ratio
        if n>N:
            count+=1;pop=bm.bit_count();disc=weight[lm]*L-pop*Hnum
            if disc>best:
                best=disc;argbest=(path.copy(),weight[lm],pop)
            if pop:
                worst_ratio=max(worst_ratio,Fraction(weight[lm],pop))
            return
        for bb,mm,a in rows[n]:
            if a is not None:path.append([n,a])
            visit(n+1,bm|bb,lm|mm)
            if a is not None:path.pop()
    visit(2,0,0)
    return {'N':N,'period':L,'systems':count,'seconds':time.monotonic()-start,
      'max_discrepancy_exact':str(Fraction(best,L*L)),
      'best_rows':argbest[0],'best_local_harmonic':str(Fraction(argbest[1],L)),
      'best_haar':str(Fraction(argbest[2],L)),
      'max_local_mass_over_haar':str(worst_ratio),'H_N':str(Fraction(Hnum,L))}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--max-n',type=int,default=8);ap.add_argument('--out',default='../data/exhaust_small.json');args=ap.parse_args()
    results=[]
    for n in range(2,args.max_n+1):
        r=run(n);results.append(r);print(json.dumps(r),flush=True)
    Path(args.out).write_text(json.dumps(results,indent=2))

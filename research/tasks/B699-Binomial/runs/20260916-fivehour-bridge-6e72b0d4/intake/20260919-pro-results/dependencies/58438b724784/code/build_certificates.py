#!/usr/bin/env python3
"""Regenerate the finite Q17 certificates into a separate directory.

The absolute cap and final heights are justified in PROOFS.md, not inferred
from observed growth. This builder is not imported by verify.py.
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import sys
sys.dont_write_bytecode=True
from consumer import vp_positive, qig_sides


def build(out: Path) -> None:
    out.mkdir(parents=True,exist_ok=True)
    for p,offset,h,last,period,a in [(2,3,2,43,1,0),(3,5,1,28,2,1)]:
        trace=[]
        while h<=last:
            mod=p**h
            assert (17*pow(5,a,mod)+offset)%mod==0
            trace.append(dict(h=h,modulus=mod,period=period,root=a))
            if h==last:
                assert a>10**12
                break
            choices=[a+t*period for t in range(p)
                     if (17*pow(5,a+t*period,mod*p)+offset)%(mod*p)==0]
            assert len(choices)==1
            a=choices[0];h+=1;period*=p
        (out/f'root_p{p}.json').write_text(json.dumps(trace,indent=2)+'\n')
    rows=[]
    for E in range(7,43,6):
        n=17*5**E+5;u=vp_positive(n-2,2);v=vp_positive(n,3)
        T,lhs,rhs=qig_sides(n)
        assert lhs<rhs
        rows.append(dict(E=E,k=(E-1)//6,n=n,u=u,v=v,T4=T,lhs=lhs,rhs=rhs,strict_QIG=lhs<rhs))
    (out/'finite_tail.json').write_text(json.dumps(rows,indent=2)+'\n')

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output-dir',type=Path,required=True)
    a=p.parse_args()
    sealed_evidence=Path(__file__).resolve().parents[1]/'evidence'
    if a.output_dir.resolve()==sealed_evidence.resolve():
        p.error('choose a separate output directory; do not mutate the sealed evidence')
    build(a.output_dir)
    print('REBUILT_Q17_FINITE_CERTIFICATES')

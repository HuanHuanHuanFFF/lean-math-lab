#!/usr/bin/env python3
"""Checker B: independent Pell-square route for the same finite scan.

Unlike checker A, it never solves the quadratic discriminant in h. It first
checks W^2=Q^2 m+Q+D and reconstructs h from hD^2=2Q^2+QD+2W.
"""
import argparse, json, math
from pathlib import Path


def fac(n):
    r={}; p=2
    while p*p<=n:
        while n%p==0:
            r[p]=r.get(p,0)+1; n//=p
        p=3 if p==2 else p+2
    if n>1:r[n]=r.get(n,0)+1
    return r


def all_divs(D):
    fi={}
    for x in (D-1,D*D+D+1):
        for p,e in fac(x).items():fi[p]=fi.get(p,0)+e
    a=[1]
    for p,e in sorted(fi.items()):
        a=[x*p**k for x in a for k in range(e+1)]
    return sorted(a)


def recompute(limit):
    count=0; core=[]; width=[]
    for D in range(3,limit+1,2):
        for v in all_divs(D):
            count+=1; Q=D+v
            if (Q**3-1)%v: raise AssertionError("divisor generation")
            m=(Q**3-1)//v
            T=Q*Q*m+Q+D
            W=math.isqrt(T)
            if W*W!=T: continue
            hnum=2*Q*Q+Q*D+2*W
            if hnum%(D*D): continue
            h=hnum//(D*D)
            nd=h*D-Q
            if h<=0 or h%2==0 or nd<=0 or nd%2: continue
            nu=nd//2; P=Q+h*v
            if D*nu-Q*Q != W: continue
            if v*nu*nu != P*Q*Q-1: continue
            if v*(nu*nu-h*Q*Q) != Q**3-1: continue
            rec={"D":D,"v":v,"Q":Q,"h":h,"P":P,"nu":nu}; core.append(rec)
            t=P+nu
            if P>=4*Q and t<Q*Q: width.append({**rec,"t":t})
    return count,core,width


def main():
    ap=argparse.ArgumentParser(); ap.add_argument("certificate",type=Path); args=ap.parse_args()
    d=json.loads(args.certificate.read_text(encoding="utf-8"))
    got=recompute(int(d["limit_D"]))
    exp=(d["divisor_pair_count"],d["core_solutions"],d["current_width_solutions"])
    if got!=exp: raise SystemExit(f"REJECT checker-B: got={got!r} expected={exp!r}")
    print("PASS checker-B (Pell-square reconstruction)")

if __name__=="__main__": main()

#!/usr/bin/env python3
"""Reproducible low-cost route diagnostic for A208 only; not a global proof."""
from __future__ import annotations
import json, math
from generate import orbit,S,F,N

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def main():
    results=[]
    for p in range(3,44):
        if not prime(p):continue
        os=orbit(208*p if 208%p==0 else p);period=len(os);T=math.lcm(period,12)
        roots={z*z%p for z in range(p)};nset={c*pow(2,k,p)%p for c in (1,3) for k in range(1,p)}
        sqrows=[];fnrows=[]
        for q in range(T):
            if q%12 not in (0,8):continue
            d,y=os[q%period]
            if 208%p:
                b=3*(d-1)*pow(208,-1,p)%p
            else:
                if 3*(d-1)%208:continue
                b=3*(d-1)//208%p
            if S(d,y,208,b,p) not in roots:continue
            sqrows.append(q);v=208*y%p;Q=(d+v)%p
            if any(F(d,v,Q,H,p)==0 and 2*N(v,Q,H,p)%p in {n*Q%p for n in nset} for H in range(p)):fnrows.append(q)
        results.append({'auxiliary_prime':p,'source_period':period,'entry_joint_period':T,'square_surviving_q':sqrows,'square_plus_FN_surviving_q':fnrows})
    print(json.dumps({'scope':'A208 only; low-cost diagnostic, not an independent certificate or count of NC3','all_rows_are_finite_ring_necessary_states':True,'results':results},ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()

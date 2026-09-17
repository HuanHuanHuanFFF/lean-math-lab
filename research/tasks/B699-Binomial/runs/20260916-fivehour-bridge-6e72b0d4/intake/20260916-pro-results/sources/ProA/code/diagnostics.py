#!/usr/bin/env python3
"""Independent finite probes, not substitutes for the infinite proof."""
from __future__ import annotations
import argparse,json,math,time,itertools
from pathlib import Path
import numpy as np
from verify_certificate import ROOT,ROWS,WEIGHTS,basis_and_equations

def vp(x,p):
    if x==0:raise ValueError('valuation of zero')
    t=0
    while x%p==0:x//=p;t+=1
    return t

def binomial_v(n,j,p):
    s=0;d=p
    while d<=n:s+=n//d-j//d-(n-j)//d;d*=p
    return s

def carries(n,j,p):
    x,y=j,n-j;carry=0;s=0
    while x or y or carry:
        carry=(x%p+y%p+carry)//p;s+=carry;x//=p;y//=p
    return s

def mul(A,B,p):
    C={}
    for (i,j),a in A.items():
        for (k,l),b in B.items():C[i+k,j+l]=(C.get((i+k,j+l),0)+a*b)%p
    return {k:v for k,v in C.items() if v}

def explicit_F(v,p):
    basis,_=basis_and_equations();G={}
    for (a,b),c in zip(basis,v):
        if not c:continue
        for t in range(a+1):
            ij=(b+t,b+a-t);G[ij]=(G.get(ij,0)+c*math.comb(a,t))%p
    Z={(i,j):a*b%p for i,a in [(1,2),(2,-3),(3,1)] for j,b in [(1,2),(2,-3),(3,1)]}
    return mul(G,Z,p)

def run():
    start=time.perf_counter();cert=json.loads((ROOT/'evidence/two_kernel_certificate.json').read_text());p0=cert['auxiliary_prime'];checks=0;termcounts=[]
    # Directly expand F(U,V), then check ALL original nodes, without N/X row constraints.
    for v in cert['normalized_modular_kernels']:
        F=explicit_F(v,p0);termcounts.append(len(F));terms=list(F);coef=np.array([F[z] for z in terms],dtype=np.int64)
        require=len(terms)*(p0-1)**2<2**63
        assert require
        for r,w in zip(ROWS,WEIGHTS):
            for s in range(r+1):
                x,y=s,r-s
                px=[pow(x,a,p0) for a in range(56)];py=[pow(y,b,p0) for b in range(56)]
                for a in range(w):
                    for b in range(w-a):
                        row=np.array([0 if i<a or j<b else math.comb(i,a)*math.comb(j,b)%p0*px[i-a]%p0*py[j-b]%p0 for i,j in terms],dtype=np.int64)
                        assert int(coef@row)%p0==0,(r,s,a,b)
                        checks+=1
    # Full prime-power layers, with exact upper digit carries kept.
    valchecks=0;layerchecks=0;nonzero_upper=0
    for p in (11,13,17,19,23):
        for e in range(1,9):
            Q=p**e
            for r in range(9):
                for A in (1,2,p+1):
                    if A%p==0:continue
                    n=Q*A+r
                    for K in (0,A//2):
                        for s in sorted(set([0,r,min(r+1,Q-1)])):
                            j=Q*K+s
                            if not 0<=j<=n:continue
                            val=binomial_v(n,j,p);assert val==carries(n,j,p);valchecks+=1
                            if s<=r:
                                assert val==binomial_v(A,K,p)+binomial_v(r,s,p);layerchecks+=1
                                nonzero_upper+=int(binomial_v(A,K,p)>0)
                            if val==0:assert j%Q<=r
    # All four-to-three maximum-position assignments, not just (2,5) collision.
    collisions=0
    for a in itertools.product((0,1,3),repeat=4):
        pairs=[(u,v) for u in range(4) for v in range(u+1,4) if a[u]==a[v]]
        assert pairs
        u,v=pairs[0];comp=[w for w in range(4) if w not in (u,v)]
        assert len(comp)==2;collisions+=1
    # Small H013 rows diagnostic: cost bound and actual Common9.
    hrows=0;legalpairs=0
    for n in range(20,601):
        positions=[]
        for p in (2,3,5,7):
            vv=[vp(n-r,p) for r in range(9)];positions.append([r for r in (0,1,3) if vv[r]==max(vv)])
        if not all(positions):continue
        hrows+=1
        for r in ROWS:
            sm=math.prod(p**vp(n-r,p) for p in (2,3,5,7));assert sm<=840
        primes=[p for p in range(11,n+1) if all(p%d for d in range(2,math.isqrt(p)+1)) and binomial_v(n,9,p)>0]
        for j in range(10,n//2+1):assert any(binomial_v(n,j,p)>0 for p in primes);legalpairs+=1
    return {'status':'PASS_FINITE_CROSSCHECKS','original_Taylor_conditions_per_kernel':checks//2,'kernels':2,'original_Taylor_conditions_total':checks,'expanded_modular_F_terms':termcounts,'valuation_crosschecks':valchecks,'complete_power_recursion_checks':layerchecks,'nonzero_upper_carry_cases':nonzero_upper,'four_to_three_position_assignments':collisions,'small_H013_rows':hrows,'small_legal_pairs':legalpairs,'finite_checks_are_not_infinite_proofs':True,'seconds':time.perf_counter()-start}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path);ar=ap.parse_args();v=run()
    if ar.out:ar.out.parent.mkdir(parents=True,exist_ok=True);ar.out.write_text(json.dumps(v,indent=2)+'\n')
    print(json.dumps(v,indent=2))

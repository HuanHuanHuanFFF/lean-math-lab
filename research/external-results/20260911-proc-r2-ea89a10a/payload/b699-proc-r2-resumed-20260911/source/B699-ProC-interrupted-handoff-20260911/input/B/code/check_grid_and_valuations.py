#!/usr/bin/env python3
"""Independent integer-grid interpolation check + boundary diagnostics.
No import from check_algebra or the finite-certificate generator/checker.
Grid identities are exact given the proved bidegree <=(12,12).
Valuation tests are finite diagnostics; general valuation proofs are in PROOFS.
"""
from __future__ import annotations
import argparse,json
from math import comb,prod,gcd
from pathlib import Path

if not __debug__:
    raise RuntimeError("Do not run with -O or -OO")

def vp(n:int,p:int)->int:
    if n<=0 or p<2:raise ValueError('positive n, p>=2 required')
    ans=0
    while n%p==0:n//=p;ans+=1
    return ans

def vf(n:int,p:int)->int:
    s=0
    while n:n//=p;s+=n
    return s

def run()->dict:
    grid=0
    for j in range(5,18):
        for k in range(5,18):
            n=j+k;e,d,c,b,a=[comb(j,r)*comb(k,4-r) for r in range(5)]
            I=12*a*e-3*b*d+c*c
            J=72*a*c*e+9*b*c*d-27*a*d*d-27*b*b*e-2*c**3
            W=2*I**3-J**2
            Q=j*j+j*k+k*k-3*j-3*k+2
            assert 8*I==j*k*(j-1)*(k-1)*(n-3)*(n-2)
            assert 16*J==-j*j*k*k*(j-1)*(k-1)*(n-3)**2*(n-2)
            assert 256*W==-j**3*k**3*(j-1)**2*(k-1)**2*(n-3)**3*(n-2)**2*Q
            assert Q>0 and I>0 and W<0
            grid+=1
    # Each signed difference formula is explicitly checked, including t=1.
    formulas=0
    for t in range(1,513):
        sign=(-1)**t
        assert vp(2**t-sign,3)==1+vp(t,3)
        assert vp(2**t+sign,3)==0
        assert vp(3**t-1,2)==(1 if t%2 else 2+vp(t,2))
        assert vp(3**t+1,2)==(2 if t%2 else 1)
        assert max(3**vp(2**t-1,3),3**vp(2**t+1,3))<=3*t
        assert max(2**vp(3**t-1,2),2**vp(3**t+1,2))<=4*t
        formulas+=6
    rows=0
    for a in range(13):
        for b in range(13):
            N=2**a*3**b
            for r in range(4):
                n=N+r
                if n<10:continue
                q2=2**max(vp(n-s,2) for s in range(4))
                q3=3**max(vp(n-s,3) for s in range(4))
                U=2**vp(comb(n,4),2)*3**vp(comb(n,4),3)
                assert 4*U<=q2*q3
                if a>=2 and b>=2:
                    assert q2*q3==N and 4*U<=N
                else:
                    e=max(a,b)
                    assert e>=2 and U<=e*n and 2**e<=n
                rows+=1
    # Genuine nonvacuous avoiding-part examples: D need not equal V.
    avoiding=[]
    for n,i,j,p in [(50,4,25,5),(78,4,13,13),(169,13,14,13),(4394,13,2197,13)]:
        N=comb(n,i);M=comb(n,j)
        e=vp(N,p);carry=vf(n,p)-vf(j,p)-vf(n-j,p)
        assert carry==vp(M,p)
        if (n,i,j)==(4394,13,2197):
            assert e==2 and carry==0 and n%(p**(e+1))<i
        avoiding.append({'n':n,'i':i,'j':j,'p':p,'v_first':e,'v_second':carry,
                         'p_equals_i':p==i})
    # Exact modular transfer constants. No enormous binomial is constructed.
    mods=[5,7,11,13]
    residues={str(p):pow(2,60,p) for p in mods}
    assert all(v==1 for v in residues.values()) and prod(mods)==5005
    assert (1<<52)-186624*52**6==813929369436160
    assert 2*52**6-53**6==17376858199
    assert 1024*(44-14)-729*(44-2)==102
    assert 4*2**40-729*40**6==1412062511104
    assert 2*40**6-41**6==3441895759
    assert 3**24-1024*24**6==86740089057
    assert 3*24**6-25**6==329168303
    return {'status':'independent_grid_and_finite_diagnostics_passed',
            'grid_points':grid,'identity_equalities':3*grid,
            'grid_bidegree_bound':[12,12], 'valuation_formula_checks':formulas,
            'smooth_window_diagnostic_rows':rows,'actual_prime_power_examples':avoiding,
            'fermat_period':60,'period_residues':residues,'product':5005,
            'interpretation':'grid proves polynomial identities with degree bounds; finite valuation tests do not prove infinite valuation lemmas'}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    out=run();args.out.parent.mkdir(parents=True,exist_ok=True);args.out.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()

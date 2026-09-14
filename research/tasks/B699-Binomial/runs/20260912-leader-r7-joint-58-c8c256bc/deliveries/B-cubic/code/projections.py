"""Nonempty exact-projection checks, full prime powers, and cubic reconstruction."""
from __future__ import annotations
import argparse,json
from pathlib import Path
from math import gcd,comb,isqrt
from fractions import Fraction
from exact import canonical,iroot,params,vp_choose,valuation

def factor_window(n):
    ps=set()
    for x in (n,n-1,n-2):
        d=2
        while d*d<=x:
            if x%d==0:
                ps.add(d)
                while x%d==0:x//=d
            d+=1
        if x>1:ps.add(x)
    return sorted(ps)

def run():
    records=[]
    for n,j in [(76672,26775),(76672,76672-26775),(18610024,7865522),(18610024,18610024-7865522)]:
        # reflected j used only to check symmetric canonical arithmetic
        j0=min(j,n-j);d=canonical(n,j0)
        C=d['C'][1];h=d['h'];mu=d['mu'];U=d['U'];ell=d['lambda_']*mu
        numerator=n*h//2;denominator=mu*U
        assert numerator==denominator*C**3+ell*C+h
        assert denominator*C**3<numerator<denominator*(C+1)**3
        assert iroot(numerator//denominator,3)==C
        z=Fraction(d['alpha']*d['R'],2*mu*U)
        assert not(iroot(z.numerator,3)**3==z.numerator and iroot(z.denominator,3)**3==z.denominator)
        common=[]
        for p in factor_window(n):
            a=vp_choose(n,3,p);b=vp_choose(n,j0,p)
            if p>=3 and min(a,b)>0:common.append([p,a,b])
        assert common
        K=(n-2)//(2*mu);tested_C=[gcd(K,j-s) for s in range(3)]
        assert tested_C==(d['C'] if j==j0 else list(reversed(d['C'])))
        records.append({**d,'tested_j':j,'tested_C':tested_C,'fraction':[z.numerator,z.denominator],
                        'cube_floor':C,'full_common_prime_valuations':common})
    # p=i=3: a single removed 3 must not replace a full 3^3 numerator block.
    n,j=56,11;la,mu,N,K=params(n)
    assert K==27 and j*(j-1)*(j-2)%27==18 and j*(j-1)*(j-2)%9==0
    p3={'n':n,'j':j,'p':3,'vp_numerator_window':3,
        'binomial_valuations':[vp_choose(n,3,3),vp_choose(n,j,3)],
        'exact_K':K,'exact_projection_remainder':18,'wrong_reduced_modulus':9}
    assert p3['binomial_valuations']==[2,1]
    # v3(n-1)=2 must keep 3^2: dividing a 3 here admits the wrong projection.
    n,j=496,210;la,mu,N,K=params(n)
    assert la==1 and N==495 and j*(j-1)%N!=0 and j*(j-1)%(N//3)==0
    boundary={'n':n,'j':j,'N':N,'correct_remainder':j*(j-1)%N,'incorrect_N':N//3}
    # The general same-layer content still is NOT gcd.
    n,j=30,10;k=n-j
    H=0
    for r in range(4):H=gcd(H,comb(j,r)*comb(k,3-r))
    L=comb(n,3)//H;G=gcd(comb(n,3),comb(n,j))
    assert (L,G)==(203,1015)
    # A denominator-clearing countermodel when h<ell*C is deleted.
    # C=1,ell=3,h=4,n=4,mu=1,U=1: n*h/(2muU)=8.
    assert 4*4//2==1+3+4 and not 4<3
    return {'status':'PASS','nonempty_exact_projection_records':records,'p_equals_i':p3,
            'complete_three_power_guard':boundary,'same_layer_not_gcd':{'L':L,'gcd':G,'n':30,'j':10},
            'false_relaxation':{'C':1,'ell':3,'h':4,'n':4,'mu':1,'U':1,'ratio':8,
              'interpretation':'arithmetic countermodel only, illegal original n; strict h-bound cannot be discarded'}}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    r=run();a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: nonempty projections, rational cube exclusion, full-power boundaries; no weak point labeled noCommon')

#!/usr/bin/env python3
"""Finite regression and arithmetic witnesses; the infinite proof is in PROOFS.md.
Only Python's standard library is used. No floating-point arithmetic.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from fractions import Fraction
from math import comb, gcd, isqrt
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def factors(n: int) -> dict[int, int]:
    if n < 1:
        raise ValueError('factorization requires a positive integer')
    ans = {}
    p = 2
    while p * p <= n:
        while n % p == 0:
            n //= p
            ans[p] = ans.get(p, 0) + 1
        p = 3 if p == 2 else p + 2
    if n > 1:
        ans[n] = ans.get(n, 0) + 1
    return ans

def valuation_binomial(n: int, j: int, p: int) -> int:
    out = 0
    q = p
    while q <= n:
        out += n // q - j // q - (n-j) // q
        q *= p
    return out

def small_parts(n: int) -> tuple[int, int]:
    return (3 if n % 9 in (4,7) else 1,
            3 if n % 9 in (5,8) else 1)

def raw_s(n: int, j: int) -> int:
    return (n-1)*(n-2)*((n-2*j)**2-3*n+2)

def window_record(n: int, j: int) -> dict:
    la, mu = small_parts(n)
    k = n-j
    g = gcd(n,j)
    N, K = (n-1)//la, (n-2)//(2*mu)
    H = gcd(K,j-1)
    rr = dict(n=n,j=j,g=g,alpha=n//g,lambda_=la,mu=mu,
              N=N,K=K,H=H,first=(j*(j-1))%N == 0,
              second=(j*(j-1)*(j-2))%K == 0)
    S=raw_s(n,j)
    rr['split_square'] = S >= 0 and isqrt(S)**2 == S
    if rr['split_square']:
        th=Fraction((n-1)*(n-2),2*j*k)
        rho=isqrt(th.numerator); sigma=isqrt(th.numerator-2*th.denominator)
        assert rho*rho==th.numerator and sigma*sigma==th.numerator-2*th.denominator
        rhs=9*th.denominator**2-20*th.denominator+16
        assert 8*n<=rhs
        rr.update(theta_num=th.numerator,delta=th.denominator,rho=rho,sigma=sigma,split_height_rhs=rhs)
    rr['reflected_k_den'] = Fraction((j-1)*(j-2), k).denominator
    rr['reflected_j_den'] = Fraction((k-1)*(k-2), j).denominator
    if rr['first'] and rr['second']:
        a,b,L,R = gcd(N,j),gcd(N,j-1),gcd(K,j),gcd(K,j-2)
        C=L*R
        t=(j//g)*(k//g)//N
        u=t//C
        rr.update(a=a,b=b,L=L,R=R,C=C,t3=t,u=u,
                  z=((j-1)*(k-1))//(N*H*H),
                  u_beta=(j//g)//(a*L),u_gamma=(k//g)//(b*R))
        saturated=all(C%p==0 for p in factors(u))
        rr['saturated_extra_support']=saturated
        if saturated:
            dk=g//gcd(g,2)*rr['u_gamma']; dj=g//gcd(g,2)*rr['u_beta']
            assert dk==rr['reflected_k_den'] and dj==rr['reflected_j_den']
            rr['vieta_denominator_predictions']={'reflected_k':dk,'reflected_j':dj}
    return rr

def scan_raw(nmax: int) -> dict:
    rows=[];pairs=0;positive=0
    for n in range(8,nmax+1,4):
        A=(n-1)*(n-2)
        for j in range(4,n//2+1):
            pairs+=1
            B=(n-2*j)**2-3*n+2
            if B<=0:
                continue
            positive+=1
            S=A*B
            r=isqrt(S)
            if r*r != S:
                continue
            G=gcd(comb(n,3),comb(n,j))
            fp=factors(G)
            common=[p for p in sorted(fp) if p>=3]
            if not common:
                raise ArithmeticError('unexpected counterexample in finite diagnostic')
            row=window_record(n,j)
            row.update(square_root=r,binomial_gcd=G,
                       common_odd_primes=common,witness=common[0])
            rows.append(row)
    return dict(n_max=nmax,pairs=pairs,positive_discriminants=positive,hits=rows)

def family_record(r: int) -> dict:
    if r<17 or r%16 !=1:
        raise ValueError('family parameter must be 1 modulo 16 and at least 17')
    n=(9*r**3+3*r*r+4)//4
    j=3*(r*r-1)*(3*r-2)//8
    delta=(r*r-1)//2
    # r=81^v can be huge; 3 is a known prime factor in that branch.
    p=3 if r%3==0 else min(factors(r))
    rec=window_record(n,j)
    source_e=0; rest=n-1
    while rest%p==0:
        source_e+=1; rest//=p
    rec.update(rho=r,delta=delta,square_root=(n-1)*(n-2)//r,
               witness=p,carry_power=(9 if p==3 else p),full_source_power=p**source_e,
               vp_choose3=valuation_binomial(n,3,p),
               vp_choosej=valuation_binomial(n,j,p))
    assert rec['vp_choose3']>0 and rec['vp_choosej']>0
    assert raw_s(n,j)==rec['square_root']**2
    return rec

def norm_records(rmax: int,zmax: int) -> dict:
    rows=[];count=0
    for rho in range(3,rmax+1,2):
        for sigma in range(1,rho,2):
            if gcd(rho,sigma)>1:
                continue
            delta=(rho*rho-sigma*sigma)//2
            for la,mu in ((1,1),(3,1),(1,3)):
                if gcd(rho,la*mu)>1:
                    continue
                for z in range(1,zmax+1):
                    count+=1
                    num=z*rho**4+la
                    den=la*mu*delta
                    if num%den:
                        continue
                    C=num//den
                    if C%2==0:
                        continue
                    n=2*mu*C*rho*rho+2
                    if small_parts(n)!=(la,mu):
                        continue
                    X=sigma*sigma*n+3*delta
                    K=delta*(9*delta+4*sigma*sigma)
                    margin=2*X-1-K
                    if margin<=0:
                        raise ArithmeticError('failed strict square-gap bound')
                    rows.append(dict(rho=rho,sigma=sigma,delta=delta,lambda_=la,mu=mu,
                                     z=z,C=C,n=n,X=X,gap_constant=K,margin=margin))
    return dict(scope='abstract norm data; no integer j is asserted',
                trials=count,rows=rows)

def build(cfg: dict) -> dict:
    rs=sorted(set([16*h+1 for h in cfg['family_h_values']]
                  +[81**v for v in cfg['family_power81_exponents']]))
    return dict(version=1,proof='SPLIT-QUOTIENT-OBSTRUCTION',
                raw_scan=scan_raw(cfg['raw_scan_n_max']),
                infinite_family_samples=[family_record(r) for r in rs],
                norm_square_gap=norm_records(cfg['norm_rho_max'],cfg['norm_z_max']),
                weak_window_diagnostics=[window_record(n,j) for n,j in cfg['weak_window_pairs']])

def main() -> None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--input',type=Path,default=ROOT/'inputs.json')
    ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args()
    cfg=json.loads(args.input.read_text())
    obj=build(cfg)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(dict(status='BUILT',raw_hits=len(obj['raw_scan']['hits']),
         norm_rows=len(obj['norm_square_gap']['rows']),
         family_rows=len(obj['infinite_family_samples']),
         certificate_sha256=hashlib.sha256(args.output.read_bytes()).hexdigest()),sort_keys=True))

if __name__=='__main__':
    main()

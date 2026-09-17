#!/usr/bin/env python3
"""Separate implementation: square-free kernels, factorial valuations, gcd cancellation.
Does not import the producer or use math.comb. It validates finite evidence only.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import json
from math import gcd,isqrt
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]

def factor_positive(a: int) -> dict[int,int]:
    if a<1: raise ValueError('nonpositive factorization input')
    out={}
    q=2
    while q*q<=a:
        e=0
        while a%q==0:
            e+=1; a//=q
        if e: out[q]=e
        q+=1 if q==2 else 2
    if a>1: out[a]=out.get(a,0)+1
    return out

def v(a: int,p: int) -> int:
    if a<=0: raise ValueError('valuation requires a positive integer')
    e=0
    while a%p==0:
        a//=p;e+=1
    return e

def small(n: int) -> tuple[int,int]:
    return (3 if v(n-1,3)==1 else 1,3 if v((n-2)//2,3)==1 else 1)

def factorial_v(n: int,p: int) -> int:
    s=0
    while n:
        n//=p;s+=n
    return s

def choose_v(n: int,j: int,p: int) -> int:
    return factorial_v(n,p)-factorial_v(j,p)-factorial_v(n-j,p)

def root_binary(x: int) -> int:
    if x<0: raise ValueError('negative radicand')
    lo,hi=0,1<<((x.bit_length()+1)//2)
    while lo<hi:
        mid=(lo+hi+1)//2
        if mid*mid<=x:lo=mid
        else:hi=mid-1
    return lo

def divides_product(q: int, terms: tuple[int,...]) -> bool:
    for a in terms:q//=gcd(q,a)
    return q==1

def exact_div(a: int,b: int) -> int:
    q,r=divmod(a,b)
    if r: raise ValueError('noninteger purported canonical quotient')
    return q

def model(n: int,j: int) -> dict:
    la,mu=small(n);k=n-j;g=gcd(n,j)
    N=(n-1)//la;K=(n-2)//(2*mu);H=gcd(K,j-1)
    first=divides_product(N,(j,j-1))
    second=divides_product(K,(j,j-1,j-2))
    rad=(n*n-3*n+2)*((n-2*j)**2-3*n+2)
    ans=dict(n=n,j=j,g=g,alpha=n//g,lambda_=la,mu=mu,N=N,K=K,H=H,
             first=first,second=second,split_square=rad>=0 and root_binary(rad)**2==rad,
             reflected_k_den=k//gcd(k,(j-1)*(j-2)),
             reflected_j_den=j//gcd(j,(k-1)*(k-2)))
    if ans['split_square']:
        nn=(n-1)*(n-2);dd=2*j*k;gg=gcd(nn,dd);nn//=gg;dd//=gg
        rho=root_binary(nn);sigma=root_binary(nn-2*dd)
        if rho*rho!=nn or sigma*sigma!=nn-2*dd:raise ValueError('split rational roots missing')
        X=sigma*sigma*n+3*dd;Y=rho*sigma*(n-2*j)
        if X%4 or Y%4 or not X>Y:raise ValueError('four-lattice square gap failed')
        if X*X-Y*Y!=dd*(9*dd+4*sigma*sigma):raise ValueError('split square identity failed')
        if dd*(9*dd+4*sigma*sigma)<8*X-16:raise ValueError('incorrect square gap')
        ans.update(theta_num=nn,delta=dd,rho=rho,sigma=sigma,split_height_rhs=9*dd*dd-20*dd+16)
    if first and second:
        a=gcd(N,j);b=gcd(N,j-1);L=gcd(K,j);R=gcd(K,j-2);C=L*R
        beta=j//g;gamma=k//g;t=exact_div(beta*gamma,N);u=exact_div(t,C)
        z=exact_div((j-1)*(k-1),N*H*H)
        if C*u*g*g-z*H*H !=la:raise ValueError('norm identity failed')
        if L*H*R!=K or a*b!=N:raise ValueError('incomplete allocation')
        ans.update(a=a,b=b,L=L,R=R,C=C,t3=t,u=u,z=z,
                   u_beta=exact_div(beta,a*L),u_gamma=exact_div(gamma,b*R))
        extra=u
        while gcd(extra,C)>1:extra//=gcd(extra,C)
        ans['saturated_extra_support']=extra==1
        if extra==1:
            dk=(g//gcd(g,2))*ans['u_gamma']; dj=(g//gcd(g,2))*ans['u_beta']
            if (dk,dj)!=(ans['reflected_k_den'],ans['reflected_j_den']):raise ValueError('Vieta denominator identity failed')
            ans['vieta_denominator_predictions']={'reflected_k':dk,'reflected_j':dj}
    return ans

def raw_truth(nmax: int) -> dict:
    pairs=0;positive=0;rows=[]
    for n in range(8,nmax+1,4):
        A=(n-1)*(n-2)
        exps=factor_positive(n-1)
        for p,e in factor_positive(n-2).items():exps[p]=exps.get(p,0)+e
        sf=1
        for p,e in exps.items():
            if e%2:sf*=p
        for j in range(4,n//2+1):
            pairs+=1;E=(n-2*j)**2-3*n+2
            if E<=0:continue
            positive+=1
            if E%sf:continue
            if isqrt(E//sf)**2 != E//sf:continue
            # Independent root from the two square-free decompositions.
            r=isqrt(A//sf)*sf*isqrt(E//sf)
            if r*r!=A*E:raise ValueError('square-free reconstruction error')
            source=set(factor_positive(n))|set(exps)
            val={p:min(choose_v(n,3,p),choose_v(n,j,p)) for p in source}
            G=1
            for p,e in val.items():G*=p**e
            common=sorted(p for p,e in val.items() if p>=3 and e>0)
            if not common:raise ValueError('no witness for a finite hit')
            row=model(n,j)
            row.update(square_root=r,binomial_gcd=G,common_odd_primes=common,witness=common[0])
            rows.append(row)
    return dict(n_max=nmax,pairs=pairs,positive_discriminants=positive,hits=rows)

def family_truth(r: int) -> dict:
    # Reconstruct n using the factor pair of the split conic, not the producer's cubic.
    delta=(r*r-1)//2
    a=(r-1)//2
    b=(r+1)*(9*r*r-1)//2
    X=(a+b)//2;Y=(b-a)//2
    n=X-3*delta
    T=exact_div(Y,r)
    j=exact_div(n-T,2)
    if n%4 or not(4<=j<n//2):raise ValueError('illegal family member')
    p=3 if r%3==0 else min(factor_positive(r))
    power=9 if p==3 else p
    if n%power!=1 or j%power<=1:raise ValueError('family carry witness failed')
    rec=model(n,j)
    root=root_binary((n-1)*(n-2)*(T*T-3*n+2))
    # Theta's denominator really is delta, with no hidden cancellation.
    num=(n-1)*(n-2);den=2*j*(n-j);gg=gcd(num,den)
    if (num//gg,den//gg)!=(r*r,delta):raise ValueError('family quotient mismatch')
    rec.update(rho=r,delta=delta,square_root=root,witness=p,carry_power=power,full_source_power=p**v(n-1,p),
               vp_choose3=choose_v(n,3,p),vp_choosej=choose_v(n,j,p))
    return rec

def norm_truth(rmax: int,zmax: int) -> dict:
    out=[];trials=0
    for rho in range(3,rmax+1,2):
        for sigma in range(1,rho,2):
            if gcd(rho,sigma)!=1:continue
            delta=(rho*rho-sigma*sigma)//2
            for la,mu in ((1,1),(3,1),(1,3)):
                if gcd(rho,la*mu)!=1:continue
                for z in range(1,zmax+1):
                    trials+=1
                    numerator=z*rho**4+la;denominator=la*mu*delta
                    if numerator%denominator:continue
                    C=numerator//denominator
                    if not C%2:continue
                    n=2*mu*C*rho*rho+2
                    if small(n)!=(la,mu):continue
                    X=sigma*sigma*n+3*delta
                    # Were T integral, this expression would be (rho*sigma*T)^2.
                    candidate=sigma*sigma*(sigma*sigma*n*n+6*delta*n-4*delta)
                    if not (X-1)**2<candidate<X*X:
                        raise ValueError('necessary square was not excluded')
                    K=X*X-candidate
                    margin=candidate-(X-1)**2
                    out.append(dict(rho=rho,sigma=sigma,delta=delta,lambda_=la,mu=mu,z=z,
                                    C=C,n=n,X=X,gap_constant=K,margin=margin))
    return dict(scope='abstract norm data; no integer j is asserted',trials=trials,rows=out)

def expected(cfg: dict) -> dict:
    rs=sorted(set(16*h+1 for h in cfg['family_h_values'])|
              set(81**v for v in cfg['family_power81_exponents']))
    return dict(version=1,proof='SPLIT-QUOTIENT-OBSTRUCTION',
                raw_scan=raw_truth(cfg['raw_scan_n_max']),
                infinite_family_samples=[family_truth(r) for r in rs],
                norm_square_gap=norm_truth(cfg['norm_rho_max'],cfg['norm_z_max']),
                weak_window_diagnostics=[model(n,j) for n,j in cfg['weak_window_pairs']])

def equal(a, b, path='certificate') -> None:
    if type(a) is not type(b):raise ValueError(path+': wrong type')
    if isinstance(b,dict):
        if set(a)!=set(b):raise ValueError(path+': keys differ')
        for key in b:equal(a[key],b[key],path+'.'+key)
    elif isinstance(b,list):
        if len(a)!=len(b):raise ValueError(path+': length differs')
        for i,(x,y) in enumerate(zip(a,b)):equal(x,y,f'{path}[{i}]')
    elif a!=b:raise ValueError(path+': independently reconstructed arithmetic differs')

def bad_tests(good: dict,truth: dict) -> list[dict]:
    mutations=[]
    def add(name, edit):mutations.append((name,edit))
    add('missing_raw_hit',lambda x:x['raw_scan']['hits'].pop())
    add('duplicated_raw_hit',lambda x:x['raw_scan']['hits'].append(copy.deepcopy(x['raw_scan']['hits'][0])))
    add('wrong_square_root',lambda x:x['raw_scan']['hits'][0].__setitem__('square_root',511))
    add('p_equal_2',lambda x:x['raw_scan']['hits'][0].__setitem__('witness',2))
    add('false_common_prime',lambda x:x['raw_scan']['hits'][0]['common_odd_primes'].append(97))
    add('wrong_original_gcd',lambda x:x['raw_scan']['hits'][0].__setitem__('binomial_gcd',1))
    add('missing_scan_pairs',lambda x:x['raw_scan'].__setitem__('pairs',0))
    add('drop_huge_family_member',lambda x:x['infinite_family_samples'].pop())
    idx=next(i for i,r in enumerate(good['infinite_family_samples']) if r['witness']==3)
    add('remove_3_carry_layer',lambda x:x['infinite_family_samples'][idx].__setitem__('carry_power',3))
    add('truncate_full_3_source',lambda x:x['infinite_family_samples'][idx].__setitem__('full_source_power',3))
    add('wrong_family_denominator',lambda x:x['infinite_family_samples'][0].__setitem__('delta',1))
    add('wrong_binomial_valuation',lambda x:x['infinite_family_samples'][0].__setitem__('vp_choosej',0))
    add('wrong_norm_delta',lambda x:x['norm_square_gap']['rows'][0].__setitem__('delta',1))
    add('false_zero_gap',lambda x:x['norm_square_gap']['rows'][0].__setitem__('margin',0))
    add('wrong_isolated_3',lambda x:x['weak_window_diagnostics'][0].__setitem__('lambda_',1))
    add('incorrect_vieta_cancellation',lambda x:x['weak_window_diagnostics'][3].__setitem__('reflected_k_den',1))
    results=[]
    for name,edit in mutations:
        broken=copy.deepcopy(good);edit(broken)
        try:equal(broken,truth)
        except ValueError as exc:results.append(dict(test=name,status='REJECTED',reason=str(exc)))
        else:raise ValueError('a corrupted certificate was accepted: '+name)
    return results

def main() -> None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--input',type=Path,default=ROOT/'inputs.json')
    ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--negative-tests',action='store_true')
    args=ap.parse_args()
    cfg=json.loads(args.input.read_text());good=json.loads(args.certificate.read_text())
    truth=expected(cfg);equal(good,truth)
    negative=bad_tests(good,truth) if args.negative_tests else []
    report=dict(status='PASS',independent_algorithms='square-free kernels / factorial valuations / gcd cancellation',
                evidence_grade='same-author separate implementation; not independent researcher or Lean',
                raw_scan_pairs=truth['raw_scan']['pairs'],raw_scan_hits=len(truth['raw_scan']['hits']),
                infinite_family_samples=len(truth['infinite_family_samples']),
                abstract_norm_rows=len(truth['norm_square_gap']['rows']),
                negative_tests=negative,
                source_certificate_sha256=hashlib.sha256(args.certificate.read_bytes()).hexdigest())
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(report,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k not in ('negative_tests','evidence_grade','independent_algorithms')},sort_keys=True))
    print('damaged certificates rejected:',len(negative))

if __name__=='__main__':main()

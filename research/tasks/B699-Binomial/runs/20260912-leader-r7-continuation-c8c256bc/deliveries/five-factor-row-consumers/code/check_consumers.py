#!/usr/bin/env python3
"""Exact finite regressions, weak-model rejection, and original-problem witnesses.

These finite rows are diagnostics; only the analytic/congruence proof supplies
unbounded coverage. No primality oracle, sympy, or giant binomial is required.
"""
from __future__ import annotations
import json
from math import comb, gcd, isqrt


def require(ok, message):
    if not ok: raise ValueError(message)


def factor(n: int) -> dict[int,int]:
    require(n>=1,'positive factorization input')
    out={}; p=2
    while p*p<=n:
        if n%p==0:
            out[p]=0
            while n%p==0: n//=p; out[p]+=1
        p=3 if p==2 else p+2
    if n>1: out[n]=1
    return out


def valuation(n: int,p: int) -> int:
    require(n>0 and p>=2,'valuation arguments')
    v=0
    while n%p==0: n//=p; v+=1
    return v


def binomial_v(n: int,j: int,p: int) -> int:
    require(0<=j<=n,'binomial range')
    out=0; q=p
    while q<=n:
        out+=n//q-j//q-(n-j)//q; q*=p
    return out


def v_choose3(n,p):
    return sum(valuation(n-r,p) for r in range(3))-(1 if p in (2,3) else 0)


def data_for_row(n):
    M=(n-2)//2
    lam=3 if valuation(n-1,3)==1 else 1
    mu=3 if valuation(M,3)==1 else 1
    return M,lam,mu,(n-1)//lam,M//mu


def odd_witness_candidates(n):
    support=set()
    for r in range(3): support.update(factor(n-r))
    return [p for p in sorted(support) if p>=3 and v_choose3(n,p)>0]


def witness(n,j,candidates):
    for p in candidates:
        if binomial_v(n,j,p)>0: return p
    raise ValueError(f'no witness among supplied candidates n={n},j={j}')


def primes_up_to(bound):
    sieve=bytearray(b'\1')*(bound+1); sieve[0:2]=b'\0\0'
    for p in range(2,isqrt(bound)+1):
        if sieve[p]:
            for q in range(p*p,bound+1,p): sieve[q]=0
    return [p for p in range(2,bound+1) if sieve[p]]


def main():
    # Compare real binomial integers to floor valuations on all small inputs.
    small=0
    for n in range(8,121):
        candidates=odd_witness_candidates(n)
        for j in range(4,n//2+1):
            A,B=comb(n,3),comb(n,j)
            d=gcd(A,B)
            while d%2==0: d//=2
            require(d>1,'original i3 small counterexample')
            p=witness(n,j,candidates)
            require(valuation(A,p)==v_choose3(n,p),'C(n,3) valuation')
            require(valuation(B,p)==binomial_v(n,j,p),'C(n,j) valuation')
            small+=1
    # Non-vacuous validation of the elementary gcd bound from its weaker input.
    projected_inputs=0
    for n in range(12,2001,4):
        M,lam,mu,N,K=data_for_row(n)
        for j in range(4,M+1):
            if j*(j-1)%N: continue
            projected_inputs+=1
            for s in range(3):
                q=gcd(n-2,j-s)
                rhs=[j*(n+j-2),(j-1)*(n-j-1),(n-j)*(2*n-j-2)][s]
                require((n-1)*q*q<=lam*rhs,'position-specific gcd bound')
                require((n-1)*q*q<2*lam*(n-2)**2,'uniform gcd bound')
    # Complete finite rows in the claimed consumers, not an alleged proof of infinity.
    row_count=pair_count=0
    for n in range(12,4001,4):
        M,lam,mu,N,K=data_for_row(n)
        fM,fK,fN=factor(M),factor(K),factor(N)
        has_sqrt=any((n-1)*(p**e)**2>=2*lam*(n-2)**2 for p,e in fM.items())
        if len(fK)>2 and len(fN)>1 and not has_sqrt: continue
        candidates=odd_witness_candidates(n)
        for j in range(4,n//2+1): witness(n,j,candidates); pair_count+=1
        row_count+=1
    # Actual weak model: two projections are true but the full original condition is not.
    n,j=18610024,7865522
    M,lam,mu,N,K=data_for_row(n); g=gcd(n,j)
    bins=[gcd(K,j-s) for s in range(3)]
    require(j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0,'weak-model projections')
    require(bins==[1,3691,2521],'weak-model bins')
    require(factor(M)=={2521:1,3691:1},'weak-model prime factors')
    require(factor(n)=={2:3,1453:1,1601:1},'weak-model n factorization')
    vs={str(p):[v_choose3(n,p),binomial_v(n,j,p)] for p in (1453,1601)}
    require(all(v==[1,1] for v in vs.values()),'weak-model true witnesses')
    beta,gamma=j//g,(n-j)//g
    fb,fc=factor(beta),factor(gamma)
    require(beta>2**20 and all(beta//p>7 for p in fb),'old beta condition is excluded')
    require(all(gamma//p>7 for p in fc),'old gamma condition is excluded')
    require(isqrt(n)**2!=n,'not the square-row input')
    old_cube=[any((p**e)**3>=(n-r)**2 for p,e in factor(n-r).items() if p%2) for r in range(3)]
    require(old_cube==[False]*3,'old cube row criteria not excluded')
    weak={'n':n,'j':j,'lambda':lam,'mu':mu,'N':N,'K':K,'bins':bins,
          'g':g,'alpha':n//g,'beta':beta,'gamma':gamma,
          'beta_factorization':fb,'gamma_factorization':fc,'common_prime_valuations':vs,
          'old_cubic_criteria':[False]*3,'is_original_counterexample':False}
    require(gcd(n*(n-1)*(n-2)//6,105)==1,'weak model row also meets R7 transfer criterion')
    weak['whole_row_R7_transfer_criterion']=True
    weak['selected_j_same_prime_valuations']={}
    for p in (1453,1601):
        values=[binomial_v(n,i,p) for i in range(3,10)]
        require(all(z>0 for z in values),'same witnesses for all R7 indices')
        weak['selected_j_same_prime_valuations'][str(p)]=values
    # A row which needs the square-root criterion even after the new prime-count test.
    n=30172; M,lam,mu,N,K=data_for_row(n); Q=431
    require(factor(N)=={89:1,113:1} and factor(K)=={5:1,7:1,431:1},'sqrt example factors')
    require(Q*Q>=6*n,'sqrt example threshold')
    old=[any((p**e)**3>=(n-r)**2 for p,e in factor(n-r).items() if p%2) for r in range(3)]
    require(old==[False]*3,'sqrt example must fail old cubic conditions')
    candidates=odd_witness_candidates(n)
    for j in range(4,n//2+1): witness(n,j,candidates)
    j=n//2; p=witness(n,j,candidates)
    require(binomial_v(n,j,Q)==0,'large prime-power base need not be the witness')
    sqrt_example={'n':n,'N_factors':factor(N),'K_factors':factor(K),'Q':Q,
                  'Q_squared':Q*Q,'six_n':6*n,'complete_j_checks':n//2-3,
                  'old_cubic_criteria':old,'base_is_not_universal':{'j':j,
                  'base_valuation':binomial_v(n,j,Q),'true_witness':p,
                  'witness_valuations':[v_choose3(n,p),binomial_v(n,j,p)]}}
    # Complete p=3 powers and the equality endpoint are explicitly exercised.
    endpoint=[]
    for n,j in ((28,14),(56,11),(16,5),(32,7)):
        M,lam,mu,N,K=data_for_row(n)
        endpoint.append({'n':n,'j':j,'lambda':lam,'mu':mu,'N':N,'K':K,
                         'p3_valuations':[v_choose3(n,3),binomial_v(n,j,3)]})
    require(endpoint[0]['N']==27 and endpoint[1]['K']==27,'do not drop higher 3 powers')
    require(endpoint[0]['p3_valuations']==[2,3],'p=i=3 witness retained')
    # Test same-prime transfer on selected huge-n inputs, without forming C(n,j).
    large=[]; prime_list=primes_up_to(10000)
    for P,Q in ((11,13),(17,19)):
        n=2*(P*Q)**12+2
        require(n%9==4 and n%5==4 and n%7==4,'large family congruences')
        candidates=[p for p in prime_list if p>=11 and v_choose3(n,p)>0]
        js=set(range(4,101))|{n//2,n//2-1,n//3,n//4,P**12,Q**12}
        for j in sorted(js):
            require(4<=j<=n//2,'large regression legality')
            p=witness(n,j,candidates)
            for i in range(3,min(9,j-1)+1):
                require(binomial_v(n,i,p)>0 and p>=i,'same-prime transfer')
        large.append({'P':P,'Q':Q,'t':1,'n':str(n),'selected_j_checked':len(js),
                      'prime_search_bound_diagnostic_only':10000})
    print(json.dumps({'status':'PASS','small_actual_binomial_pairs':small,
                      'gcd_bound_projected_inputs':projected_inputs,
                      'whole_row_regression':{'n_min':12,'n_max':4000,'n_step':4,
                                             'rows':row_count,'original_pairs':pair_count},
                      'weak_model':weak,'sqrt_row_example':sqrt_example,
                      'p3_endpoint_cases':endpoint,'large_same_witness_regressions':large,
                      'scope':'finite regression and exact witnesses; not a proof of infinite coverage'},sort_keys=True))


if __name__=='__main__':main()

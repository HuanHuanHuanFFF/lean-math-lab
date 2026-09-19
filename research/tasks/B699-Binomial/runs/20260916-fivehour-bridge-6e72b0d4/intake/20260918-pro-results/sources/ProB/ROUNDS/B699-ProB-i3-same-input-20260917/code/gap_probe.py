#!/usr/bin/env python3
"""Complete bounded-delta enumeration AFTER a proved infinite-to-finite reduction.
Discovery implementation. A separate, same-author verifier is written without sharing this implementation.
"""
from math import isqrt,gcd
from functools import lru_cache
import sympy as sp
import json,time,argparse

@lru_cache(maxsize=None)
def square_divisors(m):
    roots=[1]
    for p,e in sp.factorint(m).items():
        roots=[a*int(p)**k for a in roots for k in range(int(e)//2+1)]
    return tuple(sorted(roots))

def actual_lam_mu(n):
    lam=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    x=(n-2)//2
    mu=3 if x%3==0 and x%9!=0 else 1
    return lam,mu

def explore(max_delta):
    counts={k:0 for k in ['triples','u_divides','g_values','H_integral','C_integral','second_identity','legal','true_gcd','true_smallparts','C_ge_5','dyadic_alpha']}
    solutions=[];states=[]
    for de in range(1,max_delta+1,2):
        for la,mu in [(1,1),(1,3),(3,1)]:
            A=la**4*mu**2*de*de
            for z in range(1,isqrt((A-1)//8)+1):
                for u in range(1,(A-1)//(8*z*z)+1,2):
                    for ep in range(1,(A-1)//(8*u*z*z)+1,2):
                        counts['triples']+=1
                        B=z*ep*ep+la**3*mu**2
                        if B%u:continue
                        counts['u_divides']+=1
                        for g in square_divisors(B//u):
                            counts['g_values']+=1;G=g*g
                            hn=2*u*G+ep
                            if hn%(la*mu):continue
                            counts['H_integral']+=1;H=hn//(la*mu)
                            if (z*H*H+la)%(u*G):continue
                            counts['C_integral']+=1;C=(z*H*H+la)//(u*G)
                            n=2*mu*C*H+2
                            if la*(mu*mu*C*C-G*de*de)!=z*(n-1):continue
                            counts['second_identity']+=1
                            j=(mu*C-g*de)*H+1
                            row=dict(delta=de,lam=la,mu=mu,u=u,z=z,epsilon=ep,g=g,H=H,C=C,n=n,j=j)
                            states.append(row)
                            if not (n%4==0 and 4<=j and 2*j<n):continue
                            counts['legal']+=1
                            if gcd(n,j)!=g:continue
                            counts['true_gcd']+=1
                            if actual_lam_mu(n)!=(la,mu):continue
                            counts['true_smallparts']+=1
                            if C<5:continue
                            counts['C_ge_5']+=1
                            al=n//g;odd=al//(al&-al)
                            if odd not in (1,3) or (odd==3 and (n%3!=0 or n%9==0)):continue
                            counts['dyadic_alpha']+=1;row['alpha']=al;solutions.append(row)
    return dict(max_delta=max_delta,counts=counts,algebraic_states=states,source_candidates=solutions,square_factor_cache=square_divisors.cache_info()._asdict())

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--max-delta',type=int,default=31);ap.add_argument('--output',required=True);a=ap.parse_args();tic=time.monotonic()
    if a.max_delta<1:ap.error('--max-delta must be positive')
    result=explore(a.max_delta)
    with open(a.output,'w') as f:json.dump(result,f,indent=2)
    print(json.dumps({k:v for k,v in result.items() if k not in ['algebraic_states','source_candidates']},indent=2));print('states',result['algebraic_states'][:10]);print('candidates',result['source_candidates'])

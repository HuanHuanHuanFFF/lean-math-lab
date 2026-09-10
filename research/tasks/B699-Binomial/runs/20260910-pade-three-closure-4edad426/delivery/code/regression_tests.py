#!/usr/bin/env python3
"""Exact bounded regressions and deliberate certificate corruption tests.
These supplement, and do not replace, the symbolic proof.
"""
from pathlib import Path
from math import comb,prod
from copy import deepcopy
import json,time
from check_targets import (ROOT,FIXED,parameters,block_row,verify_profile,
                           check_block_chain,small_primes,require)

def vp(n,p):
    e=0
    while n%p==0:
        n//=p;e+=1
    return e

def structural(n,i,j,par,factors):
    k=n-j;r,s=par['r'],par['s'];ell=par['L']
    D=prod(p**e for p,e in factors.items() if p>=i and comb(n,j)%p)
    Z=prod(comb(j,h)*comb(k,h) for h in range(1,s+1))*prod(comb(n-i+h,h) for h in range(1,ell+1))
    require(Z%D**par['lam']==0,'actual avoidingPart full-power transfer')
    require(par['K']*Z<=n**par['E'],'normalized upper bound')
    return D

def factor_choose(n,i):
    rest=comb(n,i);fac={}
    for p in small_primes(n):
        if rest%p==0:
            e=vp(rest,p);fac[p]=e;rest//=p**e
    require(rest==1,'factorization completeness')
    return fac

def main():
    ts=time.monotonic();rows=0;localization=0;nontrivial=0;endpoint=0;fullpower=0
    for i,(r,s,*_) in FIXED.items():
        par=parameters(i,r,s)
        for n in range(2*i+2,131):
            fac=factor_choose(n,i)
            for p in par['ps']:
                if p>=i:continue
                require(fac.get(p,0)+vp(i,p)<=max(vp(n-a,p) for a in range(i)),'max-valuation localization')
                localization+=1
            for j in range(i+1,n//2+1):
                D=structural(n,i,j,par,fac);rows+=1
                nontrivial+=D>1
                endpoint+= i==11 and D%11==0
                fullpower+=any(D%(p**2)==0 for p in fac)
    n,i,j=3993,11,1331
    fac=factor_choose(n,i);par=parameters(i,3,7)
    require(fac[11]==2 and comb(n,j)%11!=0,'targeted endpoint seed')
    D=structural(n,i,j,par,fac)
    require(D%121==0,'endpoint full square missing')
    require(n%(11**3)==j%(11**3)==(n-j)%(11**3)==0,'p=i compensation modulus')

    original=json.loads((ROOT/'results'/'terminal_certificate_11.json').read_text())
    up=check_block_chain(11);mutations=[]
    def rejected(name,fun):
        try:fun()
        except ValueError as e:mutations.append(dict(test=name,rejected=True,reason=str(e)))
        else:raise AssertionError('Corruption accepted: '+name)
    b=json.loads((ROOT/'results'/'block_11_2_3.json').read_text())
    c=deepcopy(b);c['blocks'][0]['inverse_hex']='0x0'
    rejected('zero modular inverse',lambda:block_row(c,11,2,3,4096))
    c=deepcopy(b);c['blocks'][0]['K']+=1
    rejected('uncovered exponent at block start',lambda:block_row(c,11,2,3,4096))
    c=deepcopy(b);c['blocks'].pop()
    rejected('uncovered exponent tail',lambda:block_row(c,11,2,3,4096))
    def mutated(name,change):
        c=deepcopy(original);change(c)
        rejected(name,lambda:verify_profile(c,up))
    mutated('omitted candidate interval',lambda c:c['candidate_intervals'].pop())
    mutated('omitted large-divisor witness',lambda c:c['large_divisor_rows'].pop())
    mutated('divisor replaced by 1',lambda c:c['large_divisor_rows'][0].__setitem__(1,'1'))
    mutated('CRT induction height changed',lambda c:c['bound_stages'][1].__setitem__('H',str(int(c['bound_stages'][1]['H'])+1)))
    mutated('composite prime witness',lambda c:c['prime_witnesses'].__setitem__(0,4))
    mutated('special j=165 omitted',lambda c:c['special_binomial_rows'][0]['intervals'][-1].__setitem__(1,164))
    mutated('special wrong common prime',lambda c:c['special_binomial_rows'][0]['intervals'][-1].__setitem__(2,163))
    mutated('unresolved row falsely retained',lambda c:c.__setitem__('unresolved_rows',[330]))
    result=dict(status='PASS',bounded_range='i in {11,16,21}; 2i+2<=n<=130; all i<j<=floor(n/2)',
        legal_triples=rows,localization_checks=localization,nontrivial_avoiding_parts=nontrivial,
        endpoint_p_eq_i_cases=endpoint,avoiding_parts_with_prime_square=fullpower,
        targeted_endpoint=dict(n=n,i=i,j=j,p=11,choose_exponent=2,raw_modulus=1331),
        deliberate_corruptions=mutations,seconds=time.monotonic()-ts,
        scope='Bounded regressions, not a replacement for the universal symbolic proof or a formal kernel.')
    (ROOT/'results'/'regression_tests.json').write_text(json.dumps(result,indent=2))
    print(json.dumps({k:v for k,v in result.items() if k!='deliberate_corruptions'}))
    print('Deliberate corruptions rejected:',len(mutations))
if __name__=='__main__':main()

#!/usr/bin/env python3
"""Independent finite checker: no imports from the generator or SymPy.
Rows are reconstructed as four axis families; U is stripped from the actual
binomial integer. CRT is solved starting from the NEW congruence, using an
independent extended Euclidean routine. Prime witnesses undergo full trial division.
"""
from __future__ import annotations
import argparse,json
from functools import lru_cache
from math import comb,gcd,isqrt
from pathlib import Path

class Rejected(ValueError):
    pass

def require(flag: bool, message: str) -> None:
    if not flag:
        raise Rejected(message)

@lru_cache(None)
def prime_trial(p: int) -> bool:
    if type(p) is not int or p < 2:
        return False
    if p % 2 == 0:
        return p == 2
    return all(p % d for d in range(3,isqrt(p)+1,2))

def inverse(a: int,m: int) -> int:
    if m == 1:
        return 0
    old_r,r,old_s,s = a,m,1,0
    while r:
        q=old_r//r
        old_r,r=r,old_r-q*r
        old_s,s=s,old_s-q*s
    require(old_r==1,'noncoprime CRT moduli')
    return old_s % m

def actual_u(n: int) -> int:
    x=comb(n,4);u=1
    for p in (2,3):
        while x%p==0:
            x//=p;u*=p
    return u

def expected_rows() -> dict[int,list[list[int]]]:
    out={}
    exponents=set()
    for e in range(52):
        exponents.update(((e,0),(e,1),(0,e),(1,e)))
    for a,b in sorted(exponents):
        for r in range(4):
            n=(1<<a)*3**b+r
            if n>=10:
                out.setdefault(n,[]).append([a,b,r])
    return out

def check(data: dict) -> dict:
    require(data.get('schema')=='B699-i4-smooth-window-v1','schema')
    tail=data.get('tail',{})
    require(tail=={'first_excluded_exponent':52,'constant':256*729,
                    'endpoint_margin':(1<<52)-256*729*52**6,
                    'ratio_margin':2*52**6-53**6},'tail binding')
    require(tail['endpoint_margin']>0 and tail['ratio_margin']>0,'tail comparisons')
    expected=expected_rows();rows=data.get('rows',[])
    require([x.get('n') for x in rows]==sorted(expected),'incomplete/duplicate/unordered row set')
    stats={'rows':len(rows),'I':0,'W':0,'crt':0,'crt_steps':0,
           'max_live_classes':1,'max_crt_n':0,'selected_primes':set(),'max_power_exponent':0}
    for rec in rows:
        n=rec['n'];u=actual_u(n)
        require(rec.get('sources')==expected[n],f'source mapping n={n}')
        require(rec.get('U')==u,f'wrong full U n={n}')
        kind=rec.get('kind')
        require(kind in ('I','W','crt'),'unknown reason')
        stats[kind]+=1
        if kind=='I':
            require(9*(n-2)*u**2 < 2*(n-1)**2*(n-3),f'I false n={n}')
        elif kind=='W':
            require(729*(n-2)*u**6 <= (n-1)**5*(n-3)**3,f'W false n={n}')
        else:
            stats['max_crt_n']=max(stats['max_crt_n'],n)
            cap=n//2;old_mod=1;old=[0];seen=set();peak=1
            steps=rec.get('steps',[])
            require(bool(steps),'empty CRT certificate')
            for w in steps:
                p,e,r=w.get('p'),w.get('e'),w.get('r')
                require(type(e) is int and 1<=e<=n.bit_length(),'bad exponent')
                require(type(r) is int and 0<=r<4,'bad window position')
                require(prime_trial(p) and p>=5,'not an eligible prime')
                require(p not in seen,'duplicate prime')
                seen.add(p);Q=p**e
                require((n-r)%Q==0 and (n-r)%(Q*p)!=0,'not the full numerator prime power')
                require(comb(n,4)%Q==0,'prime-power transfer to first binomial false')
                new_mod=old_mod*Q;inv=inverse(Q,old_mod);new=set()
                for s in range(r+1):
                    for a in old:
                        z=s+Q*((a-s)*inv % old_mod)
                        # Intersect z + new_mod*Z with the FULL legal j interval.
                        lo=-((z-5)//new_mod)
                        hi=(cap-z)//new_mod
                        if lo<=hi:
                            new.add(z)
                old_mod,old=new_mod,sorted(new)
                peak=max(peak,len(old))
                require(w.get('states')==old,'wrong CRT states')
                stats['crt_steps']+=1
                stats['selected_primes'].add(p)
                stats['max_power_exponent']=max(stats['max_power_exponent'],e)
            require(not old,f'nonempty j coverage n={n}')
            require(rec.get('max_live_classes')==peak,'wrong live-class count')
            stats['max_live_classes']=max(stats['max_live_classes'],peak)
    ps=sorted(stats.pop('selected_primes'))
    stats.update({'distinct_prime_witnesses':len(ps),'max_prime_witness':max(ps),
                  'status':'accepted_finite_certificate_not_Lean'})
    return stats

def main() -> None:
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);ap.add_argument('--out',type=Path,required=True)
    args=ap.parse_args();data=json.loads(args.certificate.read_text());res=check(data)
    args.out.parent.mkdir(parents=True,exist_ok=True);args.out.write_text(json.dumps(res,indent=2)+'\n');print(json.dumps(res))

if __name__=='__main__':main()

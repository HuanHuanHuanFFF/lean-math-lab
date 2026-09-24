#!/usr/bin/env python3
"""Conditional necessary-core gate. A surviving exponent class is not NC3."""
from __future__ import annotations
import argparse,json
from algebra import (is_prime_trial,order_two_prime_power,orbit_gcd_degree,
                     local_states,crt_pair)

def inspect(factors: list[tuple[int,int]], max_period: int=2_000_000) -> dict:
    if max_period < 1: raise ValueError('max_period must be a positive integer')
    if not factors or len({p for p,b in factors})!=len(factors):
        raise ValueError('supply a nonempty list of distinct prime bases')
    records=[];current={1:[(0,1)],3:[(0,1)]}
    for p,b in factors:
        if p>10**12:raise ValueError('trial-primality limit exceeded; provide a separate certified implementation')
        if p<=5 or p%3!=1 or b<1 or not is_prime_trial(p):
            raise ValueError('a shared cyclotomic factor must be a prime >5, 1 mod 3, with exponent >=1')
        T=order_two_prime_power(p,b)
        T0=order_two_prime_power(p,1)
        rem={c:orbit_gcd_degree(p,T0,c) for c in (1,3)}
        # A prime-level obstruction already removes every higher power.
        for c in (1,3):
            if rem[c][0]==0:current[c]=[]
        record={'prime':p,'exponent':b,'order':T,
                'prime_level_gcd_degrees':{str(c):rem[c][0] for c in (1,3)},
                'prime_level_remainders':{str(c):list(rem[c][1]) for c in (1,3)}}
        if not current[1] and not current[3]:
            records.append(record)
            return {'status':'EXIT_NC3_MINIMAL_IF_G_DIVISIBLE','local':records,
                    'logic':'Only a conditional theorem for the frozen original-input branch; the auxiliary prime is not claimed to be the common witness.'}
        if T>max_period:
            records.append(record)
            return {'status':'INCONCLUSIVE_RESOURCE_LIMIT','local':records,
                    'logic':'No emptiness claim for uncomputed exponent classes.'}
        E=local_states(p,b,T)
        record['exact_exponents']={str(c):E[c] for c in (1,3)};records.append(record)
        for c in (1,3):
            nxt=set()
            for a,m in current[c]:
                for z in E[c]:
                    w=crt_pair(a,m,z,T)
                    if w is not None:nxt.add(w)
            current[c]=sorted(nxt)
    status='EXIT_NC3_MINIMAL_IF_G_DIVISIBLE' if not current[1] and not current[3] else 'NECESSARY_EXPONENT_CLASSES_ONLY'
    return {'status':status,'local':records,
            'classes':{str(c):[{'s':a,'modulus':m} for a,m in current[c]] for c in (1,3)},
            'logic':'Same c and same exponent s in every modulus; nonempty classes are not NC3 and do not reconstruct n,j.'}

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--shared-factors',required=True,help='comma separated p:exponent, e.g. 409:1,1129:1')
    ap.add_argument('--max-period',type=int,default=2_000_000)
    args=ap.parse_args()
    try:
        factors=[tuple(map(int,t.split(':'))) for t in args.shared_factors.split(',')]
        if any(len(t)!=2 for t in factors):raise ValueError('expected p:exponent')
        print(json.dumps(inspect(factors,args.max_period),indent=2,ensure_ascii=False))
    except (ValueError,TypeError) as e:ap.error(str(e))
if __name__=='__main__':main()

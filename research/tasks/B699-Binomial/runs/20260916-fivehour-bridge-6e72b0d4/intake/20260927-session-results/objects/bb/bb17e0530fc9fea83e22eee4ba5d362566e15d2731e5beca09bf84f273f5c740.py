#!/usr/bin/env python3
"""Exact, same-input consumer. Arbitrary parameters do NOT certify prime powers."""
import argparse,json,math
from pathlib import Path
from core import *
ROOT=Path(__file__).resolve().parents[1]

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--case')
    for arg in ('k','u','z','a','eps'):ap.add_argument('--'+arg,type=int)
    args=ap.parse_args()
    certified=False
    if args.case:
        cases=json.loads((ROOT/'certificates'/'examples.json').read_text())
        old=next((c for c in cases if c['name']==args.case),None)
        if old is None:ap.error('unknown case name; see certificates/examples.json')
        # This is not an unverified probable-prime flag: accept the frozen proofs first.
        from verify import primes_check
        proven=primes_check()
        for key,N in [('P_power',old['P']),('Q_power',old['Q'])]:
            p,e=old[key];assert p in proven and p**e==N
        certified=old['P_power'][0]!=old['Q_power'][0]
        r=restore(*[old[k] for k in ('k','u','z','a','eps')])
    else:
        if any(getattr(args,k) is None for k in ('k','u','z','a','eps')):
            ap.error('provide --case, or all of --k --u --z --a --eps')
        r=restore(args.k,args.u,args.z,args.a,args.eps)
    check_integer_interface(r)
    cs=constants(r['k'],r['u'],r['z'],r['a'],r['eps'])
    T0=source(r['n']);T2=source(r['n']-2)
    L=None if 0 in cs else odd(math.lcm(*map(abs,cs)))
    T2_reject=(L is not None and L%T2!=0)
    T0_reject=(r['j']%T0!=0)
    rejected=T0_reject or T2_reject
    print(json.dumps(dict(original_input=r,C=cs,T0=T0,T2=T2,Lambda=L,
          original_T0_divides_j=not T0_reject,
          T2_divides_Lambda=None if L is None else not T2_reject,
          zero_constant_means_capacity_not_applicable=(L is None),
          pair_Common3_certified=rejected,
          full_distinct_odd_prime_powers_certified=certified,
          whole_row_Common3_certified=bool(rejected and certified),
          NC3_witness=False,
          warning='Without --case, the prime-power assumptions are not certified; any row claim is conditional. Passing necessary checks is not NC3.'),ensure_ascii=False,indent=2))

if __name__=='__main__':main()

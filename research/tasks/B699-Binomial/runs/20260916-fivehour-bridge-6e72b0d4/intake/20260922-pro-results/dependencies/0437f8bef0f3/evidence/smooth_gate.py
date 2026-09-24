#!/usr/bin/env python3
"""Complete conditional recovery when A or B has a prescribed finite prime support.

An EMPTY result assumes the same-original-input balanced core stated in PROOFS.
Returned integer candidates are NOT NC3 counterexamples. Resource exhaustion
never returns EMPTY. No network, repository access, or external packages.
"""
from __future__ import annotations
import argparse, json, sys
from arithmetic import *


def main() -> int:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--support',default='2,3,5,7',help='Comma-separated distinct primes; default 2,3,5,7')
    parser.add_argument('--bound-only',action='store_true')
    parser.add_argument('--side',choices=['A','B','either'],default='either')
    parser.add_argument('--max-prime',type=int,default=1000,help='Explicit resource guard, not a mathematical bound')
    parser.add_argument('--max-index',type=int,default=1000,help='Explicit resource guard, not a mathematical bound')
    args=parser.parse_args()
    try:
        primes=tuple(sorted(set(int(s.strip()) for s in args.support.split(',') if s.strip())))
        if any(p<2 for p in primes):raise ValueError('Invalid prime support')
        if primes and max(primes)>args.max_prime:
            print(json.dumps({'status':'INCONCLUSIVE_RESOURCE_LIMIT','reason':'prime cap'},indent=2));return 2
        if not all(prime_trial(p) for p in primes):raise ValueError('The supplied support contains a composite')
        contract=support_contract(primes)
        if args.bound_only:
            print(json.dumps({'status':'PROVED_CONDITIONAL_INDEX_BOUND','contract':contract},indent=2));return 0
        if contract['T']>args.max_index:
            print(json.dumps({'status':'INCONCLUSIVE_RESOURCE_LIMIT','reason':'index cap','contract':contract},indent=2));return 2
        fibres,rows=finite_rows(primes,contract['T'],False)
        chosen=[r for r in rows if args.side=='either' or r['side']==args.side]
        candidates=[];sqrt_hits=0
        for row in chosen:
            if row['lower_gap']==0:sqrt_hits+=1
            d,y=balanced_pell(row['t']);candidate=recover_if_square(row,d,y)
            if candidate is not None:
                candidate['t']=row['t'];candidate['side']=row['side'];candidates.append(candidate)
        result={'status':'EMPTY_CONDITIONAL_INTEGER_CORE' if not candidates else 'NECESSARY_CANDIDATES_NOT_NC3',
                'contract':contract,'side':args.side,'terminal_states':len(chosen),
                'square_targets':sqrt_hits,'integer_candidates':candidates,
                'scope':'same (n,j), i=3 canonical minimal critical two-base branch; Dv=DW=y; A or B supported on supplied primes',
                'not_proved':['all finite supports at once','all balanced indices without the support condition','general i=3','Lean']}
        print(json.dumps(result,indent=2));return 0
    except (ValueError,ArithmeticError) as exc:
        print(json.dumps({'status':'ERROR_NOT_AN_EMPTINESS_RESULT','message':str(exc)},indent=2));return 1

if __name__=='__main__':raise SystemExit(main())

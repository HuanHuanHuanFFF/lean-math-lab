#!/usr/bin/env python3
"""Consume a new U1 original-input row, with explicit proof-status separation."""
from __future__ import annotations
import argparse,json
from pathlib import Path
from core import restore,lucas_nonzero
from verify import check_prime_certificates
ROOT=Path(__file__).resolve().parents[1]

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--case');ap.add_argument('--k',type=int);ap.add_argument('--z',type=int)
    ap.add_argument('--a',type=int);ap.add_argument('--eps',type=int,choices=(-1,1))
    args=ap.parse_args();actual=False
    if args.case:
        cases=json.loads((ROOT/'certificates/cases.json').read_text())
        c=next((r for r in cases if r['id']==args.case),None)
        if c is None:raise SystemExit('unknown certified case')
        r=restore(**c['input']);proved=check_prime_certificates();bases=[]
        for key in ('P','Q'):
            p=c['complete_powers'][key]['prime'];e=c['complete_powers'][key]['exponent']
            assert p in proved and p**e==r[key];bases.append(p)
        assert bases[0]!=bases[1]
        assert all(lucas_nonzero(r['n'],r['j'],p) for p in bases)
        actual=True
    else:
        if any(getattr(args,f) is None for f in ('k','z','a','eps')):
            ap.error('supply --case, or all of --k --z --a --eps')
        r=restore(args.k,args.z,args.a,args.eps)
    reject=bool(r['integer_interface'] and r.get('source_contradiction'))
    out={'original_input':r,'actual_different_complete_prime_powers_verified':actual,
         'original_pair_Common3_proved_by_new_source':reject,
         'whole_row_Common3_proved':reject and actual,
         'conditional_whole_row_consumer':reject,
         'condition':'For a whole row outside certified case mode, prove P,Q are different odd-prime-base complete powers.',
         'u':1,'NC_status':'source-rejected' if reject else 'not decided'}
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()

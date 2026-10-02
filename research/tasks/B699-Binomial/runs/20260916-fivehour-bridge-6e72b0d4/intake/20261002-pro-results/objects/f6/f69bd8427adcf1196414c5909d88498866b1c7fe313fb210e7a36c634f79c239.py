"""Bounded-height interface and conditional same-input consumer. No NC assertions."""
import argparse,json
from pathlib import Path
from arith import *
ROOT=Path(__file__).resolve().parents[1]
if __name__=='__main__':
    ap=argparse.ArgumentParser()
    ap.add_argument('--bounds',type=int);ap.add_argument('--case')
    for f in ('k','u','z','a','epsilon'):ap.add_argument('--'+f,type=int)
    args=ap.parse_args()
    if args.bounds is not None:
        result=fixed_k_bounds(args.bounds)
    elif args.case:
        arr=json.loads((ROOT/'certificates/actual_cases.json').read_text())
        old=next((x for x in arr if x['id']==args.case),None)
        if old is None:raise SystemExit('Unknown certified case.')
        r=restore(*(old[x] for x in ('k','u','z','a','epsilon')))
        p,q=old['bases'];rho,sigma=old['exponents']
        assert prime(p) and prime(q) and p!=q and p**rho==r['P'] and q**sigma==r['Q']
        result={'input':r,**assess(r)}
        result['row_status']='COMMON3_ROW_BY_CERTIFIED_COMPLETE_POWERS_AND_CRT' if result['pair_common3'] else 'NOT_DECIDED'
    else:
        vals=[getattr(args,f) for f in ('k','u','z','a','epsilon')]
        if any(v is None for v in vals):raise SystemExit('Use --bounds K, --case ID, or all five integer parameters.')
        r=restore(*vals);result={'input':r,**assess(r)}
        result['prime_powers_certified']=False
    print(json.dumps(result,ensure_ascii=False,indent=2))

"""Apply the proved native i6/H02 row theorem; not a general B699 solver."""
from __future__ import annotations
import argparse,json
from common import in_H02


def main()->None:
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--n',type=int,required=True)
    ap.add_argument('--j',type=int)
    args=ap.parse_args()
    if args.n<0:ap.error('n must be a natural number')
    if args.j is not None and not 6<args.j<=args.n//2:
        ap.error('require 6 < j <= floor(n/2)')
    if args.n<14:
        status='VACUOUS_NO_LEGAL_J'
    elif in_H02(args.n):
        status='COMMON6_ALL_LEGAL_J_BY_NEW_THEOREM'
    else:
        status='NOT_COVERED_BY_THIS_CONSUMER'
    print(json.dumps(dict(n=args.n,j=args.j,status=status,
                         target=6,prime_threshold='p >= 7 (equivalent to p >= 6 for primes)',
                         requires_no_factorization=True),ensure_ascii=False))

if __name__=='__main__':main()

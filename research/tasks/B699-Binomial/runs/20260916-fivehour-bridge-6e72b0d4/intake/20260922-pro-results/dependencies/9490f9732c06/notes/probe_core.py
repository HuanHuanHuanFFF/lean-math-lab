#!/usr/bin/env python3
"""Optional exploratory core scan, NOT a finite terminal proof of NSB64.

The scan omits original source primality, n=c*2^s, and the full NC3 conditions.
It records weak integer algebraic points only. The universal proof in PROOFS.md
and the main replay never depend on this scan or its cutoff.
"""
from __future__ import annotations
import argparse
import json
from math import isqrt
from pathlib import Path
from sympy import divisors


def scan(limit: int) -> tuple[list[dict[str, int]], int]:
    out: list[dict[str, int]] = []
    count = 0
    for Q in range(3, limit + 1, 2):
        for dv in divisors(Q**3 - 1):
            v = int(dv)
            if v % 2 or not (Q < 3*v and v < Q):
                continue
            delta = Q-v
            value = Q**5-delta*delta
            if value % v:
                continue
            root = isqrt(value//v)
            if root*root != value//v:
                continue
            for Y in (root, -root):
                if (Y+Q*Q) % delta:
                    continue
                nu = (Y+Q*Q)//delta
                if nu <= 0 or (2*nu+Q) % delta:
                    continue
                h = (2*nu+Q)//delta
                P = Q+h*v
                if h < 15 or h % 2 == 0 or v*nu*nu != P*Q*Q-1:
                    continue
                out.append(dict(Q=Q, v=v, Delta=delta, nu=nu,
                                h=h, P=P, n=P*Q*nu+2))
        count += 1
    return out, count


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--limit', type=int, default=20000)
    parser.add_argument('--write', action='store_true',
                        help='Replace notes/core_scan.json; normally verify it instead.')
    args = parser.parse_args()
    if args.limit < 3:
        parser.error('--limit must be >=3')
    records, count = scan(args.limit)
    target = Path(__file__).resolve().with_name('core_scan.json')
    if args.write:
        target.write_text(json.dumps(records, indent=2)+'\n', encoding='utf-8')
    elif args.limit == 20000:
        assert records == json.loads(target.read_text(encoding='utf-8'))
    for record in records:
        print(json.dumps(record, sort_keys=True))
    print(f'EXPLORATORY_SCAN_ONLY: odd_Q_count={count}; weak_hits={len(records)}; limit={args.limit}')
    print('NOT_USED_AS_UNIVERSAL_PROOF_OR_FRONTIER_COUNT')


if __name__ == '__main__':
    main()

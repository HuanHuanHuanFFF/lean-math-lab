#!/usr/bin/env python3
"""Optional source-rank diagnostic; NOT part of the M39 theorem acceptance.

Read only the 9.5 KiB mask member of the previous evidence ZIP.  This reports
rank over a finite field, not rational rank, and deletes no source family.
"""
from __future__ import annotations
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import sys
import time
import zipfile

PRIME = 1000003
MEMBER = ('B699-ProA-i9-weight7-20260917-c82e5a17/'
          'evidence/weight7_residual_masks.txt')
EXPECTED_ZIP_SHA256 = '61ca2267be0d29b9565e15f30d34c553fc17a9fb12b7619fec651a848edd6ca2'
MONOMIALS = [(a, b) for b in range(4) for a in range(8-2*b)
             if (a,b) not in [(6,0),(7,0)]]
POINTS = [(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)]


def rank_mod(matrix: list[list[int]]) -> int:
    A = [row[:] for row in matrix]
    pivot_row = 0
    for column in range(len(MONOMIALS)):
        k = next((k for k in range(pivot_row,len(A)) if A[k][column]), None)
        if k is None:
            continue
        A[pivot_row], A[k] = A[k], A[pivot_row]
        inv = pow(A[pivot_row][column], -1, PRIME)
        A[pivot_row] = [inv*x % PRIME for x in A[pivot_row]]
        for k in range(pivot_row+1,len(A)):
            v = A[k][column]
            if v:
                A[k] = [(x-v*y) % PRIME for x,y in zip(A[k],A[pivot_row])]
        pivot_row += 1
        if pivot_row == len(A):
            break
    return pivot_row


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--source-zip', type=Path, required=True)
    ap.add_argument('--out', type=Path, required=True)
    args = ap.parse_args()
    if args.out.exists() and any(args.out.iterdir()):
        raise ValueError('--out must be nonexistent or empty')
    raw_hash = hashlib.sha256(args.source_zip.read_bytes()).hexdigest()
    if raw_hash != EXPECTED_ZIP_SHA256:
        raise ValueError('not the frozen source ZIP')
    with zipfile.ZipFile(args.source_zip) as z:
        if z.getinfo(MEMBER).file_size > 100000:
            raise ValueError('unexpectedly large source member')
        raw = z.read(MEMBER)
    masks = [int(x) for x in raw.decode('utf-8').split()]
    if len(masks) != 1303 or len(set(masks)) != 1303:
        raise ValueError('unexpected mask set')
    if any(m <= 0 or m >= 1 << len(POINTS) for m in masks):
        raise ValueError('out-of-grid mask')
    rows = [[pow(r,a,PRIME)*pow(v,b,PRIME) % PRIME for a,b in MONOMIALS]
            for r,v in POINTS]
    start = time.perf_counter()
    cases = [{'mask':m,'z':m.bit_count(),
              'rank_mod':rank_mod([row for i,row in enumerate(rows) if m >> i & 1])}
             for m in masks]
    hist = Counter((x['z'],x['rank_mod']) for x in cases)
    expected = {(14,14):56,(15,15):325,(16,16):800,(17,16):2,(17,17):120}
    if dict(hist) != expected:
        raise ValueError('histogram differs from initial diagnostic')
    result = {'status':'PASS_OPTIONAL_SOURCE_RANK_GATE',
              'scope':'finite-field diagnostic only; no rational rank or original-input elimination',
              'prime':PRIME,'monomials':MONOMIALS,'cases':cases,
              'histogram':[{'z':k[0],'rank_mod':k[1],'count':v} for k,v in sorted(hist.items())],
              'source_zip_sha256':raw_hash,'member':MEMBER,
              'member_sha256':hashlib.sha256(raw).hexdigest(),
              'elapsed_seconds':time.perf_counter()-start}
    args.out.mkdir(parents=True,exist_ok=True)
    (args.out/'SOURCE_RANK_GATE.json').write_text(json.dumps(result,indent=2)+'\n')
    print(result['status'])
    print('histogram='+str(sorted(hist.items())))
    print(f"elapsed={result['elapsed_seconds']:.6f}s; no source families deleted")

if __name__ == '__main__':
    try:
        main()
    except (ValueError, OSError, KeyError, zipfile.BadZipFile) as error:
        print(f'FAIL: {error}', file=sys.stderr)
        raise SystemExit(1)

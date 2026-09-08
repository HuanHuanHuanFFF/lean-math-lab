"""Necessary low-digit CRT constraints, then exact Lucas checks for B699.

No finite run proves the conjecture. Unknown/limit results remain unknown.
All factorization uses sympy.factorint and checks prime/product consistency.
"""
from __future__ import annotations

import argparse
from functools import lru_cache
from math import comb, gcd, prod
from pathlib import Path
import json
import random
import time

from sympy import factorint, isprime, prevprime


@lru_cache(maxsize=100000)
def factors(n: int) -> tuple[tuple[int, int], ...]:
    if n < 1:
        raise ValueError(n)
    fs = tuple((int(p), int(e)) for p, e in factorint(n).items())
    assert prod(p**e for p, e in fs) == n
    assert all(isprime(p) and e > 0 for p, e in fs)
    return fs


def lucas_nonzero(n: int, k: int, p: int) -> bool:
    """Exactly p does not divide binomial(n,k), by Lucas digit criterion."""
    while k:
        if k % p > n % p:
            return False
        n //= p
        k //= p
    return True


def interval_has_residue(r: int, m: int, lo: int, hi: int) -> bool:
    return r + max(0, (lo - r + m - 1) // m) * m <= hi


def direct_bad(n: int, i: int, strict: bool) -> list[int]:
    a = comb(n, i)
    ps = [p for p, _ in factors(a) if p > i or (p == i and not strict)]
    return [j for j in range(i + 1, n // 2 + 1)
            if all(comb(n, j) % p for p in ps)]


def constraints(n: int, i: int) -> list[tuple[int, int, int]]:
    """Tuples (prime-power modulus, allowed max residue, prime)."""
    out = []
    for a in range(i):
        out.extend((p**e, a, p) for p, e in factors(n - a) if p > i)
    assert len({p for _, _, p in out}) == len(out)
    return sorted(out, key=lambda x: x[0] / (x[1] + 1), reverse=True)


def solve_pair(n: int, i: int, strict: bool = False,
               state_cap: int = 200000, direct_cap: int = 100000,
               prime_gap_sieve: bool = True) -> dict:
    if not (1 <= i < n // 2):
        raise ValueError((n, i))
    t0 = time.monotonic()
    if prime_gap_sieve:
        p0 = int(prevprime(n + 1))
        if p0 > n // 2 and p0 > n - i and p0 > i:
            return dict(n=n, i=i, strict=strict, status='proved-empty-prime',
                        witness_prime=p0, survivors=[], states_max=0, steps=0,
                        elapsed=time.monotonic()-t0)
    cs = constraints(n, i)
    lo, hi = i + 1, n // 2
    mod, residues = 1, [0]
    states_max, steps = 1, 0
    candidate_js = None
    processed = []
    for idx, (q, a, p) in enumerate(cs):
        processed.append((q, a, p))
        if candidate_js is not None:
            candidate_js = [j for j in candidate_js if j % q <= a]
            steps += len(candidate_js)
            if not candidate_js:
                break
            continue
        inv = pow(mod, -1, q)
        new_mod = mod * q
        new_rs = []
        for r in residues:
            for b in range(a + 1):
                nr = r + mod * (((b - r) * inv) % q)
                steps += 1
                if interval_has_residue(nr, new_mod, lo, hi):
                    new_rs.append(nr)
                    if len(new_rs) > state_cap:
                        return dict(n=n, i=i, strict=strict, status='unknown-state-cap',
                                    states_max=len(new_rs), steps=steps,
                                    elapsed=time.monotonic()-t0)
        mod, residues = new_mod, new_rs
        states_max = max(states_max, len(residues))
        if not residues:
            candidate_js = []
            break
        count = sum((hi-r)//mod - max(0,(lo-r+mod-1)//mod) + 1
                    for r in residues)
        if count <= direct_cap:
            candidate_js = []
            for r in residues:
                start = r + max(0, (lo-r+mod-1)//mod) * mod
                candidate_js.extend(range(start, hi+1, mod))
    if candidate_js is None:
        count = sum((hi-r)//mod - max(0,(lo-r+mod-1)//mod) + 1
                    for r in residues)
        if count > direct_cap:
            return dict(n=n, i=i, strict=strict, status='unknown-direct-cap',
                        candidate_count=count, states_max=states_max, steps=steps,
                        elapsed=time.monotonic()-t0)
        candidate_js = []
        for r in residues:
            start = r + max(0, (lo-r+mod-1)//mod) * mod
            candidate_js.extend(range(start, hi+1, mod))
    # All primes >i dividing C(n,i) occur in cs. p=i is separate.
    ps = [p for _, _, p in cs]
    if not strict and isprime(i) and not lucas_nonzero(n, i, i):
        ps.append(i)
    survivors = sorted(j for j in candidate_js
                       if all(lucas_nonzero(n, j, p) for p in ps))
    return dict(n=n, i=i, strict=strict, status='complete',
                survivors=survivors, low_digit_survivors=len(candidate_js),
                constraint_count=len(cs), used_constraints=processed,
                states_max=states_max, steps=steps,
                elapsed=time.monotonic()-t0)


def validate(max_n: int = 150) -> dict:
    t0 = time.monotonic()
    pairs = 0
    strict_exceptions = []
    for n in range(4, max_n + 1):
        for i in range(1, n // 2):
            for strict in (False, True):
                out = solve_pair(n, i, strict)
                exact = direct_bad(n, i, strict)
                assert out['status'].startswith(('complete', 'proved-empty')), out
                assert out['survivors'] == exact, (out, exact)
                pairs += n // 2 - i
                strict_exceptions.extend((n,i,j) for j in exact if strict)
    for n,i,j in ((16,2,6),(28,5,14),(244,3,122),(2188,3,1094)):
        d = gcd(comb(n,i),comb(n,j))
        assert all(p<=i for p,_ in factors(d))
        assert j in solve_pair(n,i,True)['survivors']
        assert j not in solve_pair(n,i,False)['survivors']
    # Probe the key necessary condition directly, independent of CRT algorithm.
    rng = random.Random(699)
    for _ in range(1000):
        n = rng.randrange(4,1000)
        i = rng.randrange(1,n//2)
        j = rng.randrange(i+1,n//2+1)
        for q,a,p in constraints(n,i):
            if comb(n,j) % p:
                assert j % q <= a
    return dict(validation='passed', max_n=max_n,
                compared_pair_decisions=pairs,
                strict_exceptions=strict_exceptions,
                elapsed=time.monotonic()-t0)


def family_rows() -> list[tuple[str,int]]:
    rows = set()
    for base, max_exp in ((2,59),(3,37),(5,25),(7,21),(11,17)):
        for exp in range(2,max_exp+1):
            n0=base**exp
            if n0 < 10**8 or n0 > 10**18:
                continue
            for offset in (0,1,2,3,4,5):
                rows.add((f'{base}^{exp}+{offset}',n0+offset))
    return sorted(rows,key=lambda v:v[1])


def run_family(path: Path, max_i: int, limit: int, direct_cap: int) -> None:
    path.parent.mkdir(parents=True,exist_ok=True)
    with path.open('w',encoding='utf-8') as f:
        for rownum,(label,n) in enumerate(family_rows()):
            if rownum >= limit:
                break
            gap=n-int(prevprime(n+1))
            print(json.dumps(dict(event='row-start',label=label,n=n,gap=gap)),flush=True)
            for i in range(3,min(max_i,gap,n//2-1)+1):
                out=solve_pair(n,i,direct_cap=direct_cap)
                out['family']=label
                f.write(json.dumps(out)+'\n')
                f.flush()
                if out.get('survivors') or out['status'].startswith('unknown'):
                    print(json.dumps(out),flush=True)
            print(json.dumps(dict(event='row-done',label=label,n=n)),flush=True)


def main() -> None:
    parser=argparse.ArgumentParser()
    parser.add_argument('mode',choices=['validate','pair','family'])
    parser.add_argument('--n',type=int,default=28)
    parser.add_argument('--i',type=int,default=5)
    parser.add_argument('--strict',action='store_true')
    parser.add_argument('--max-n',type=int,default=150)
    parser.add_argument('--max-i',type=int,default=20)
    parser.add_argument('--limit',type=int,default=30)
    parser.add_argument('--direct-cap',type=int,default=100000)
    parser.add_argument('--output',type=Path,default=Path(__file__).with_name('family-results.jsonl'))
    args=parser.parse_args()
    if args.mode=='validate':
        print(json.dumps(validate(args.max_n)),flush=True)
    elif args.mode=='pair':
        print(json.dumps(solve_pair(args.n,args.i,args.strict,direct_cap=args.direct_cap)),flush=True)
    else:
        run_family(args.output,args.max_i,args.limit,args.direct_cap)

if __name__=='__main__':
    main()


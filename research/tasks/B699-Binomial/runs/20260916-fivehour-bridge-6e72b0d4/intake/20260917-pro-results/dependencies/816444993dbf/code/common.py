"""New native-i6 finite reduction. Python standard library only."""
from __future__ import annotations
import hashlib, json, math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
PRIMES = (2, 3, 5)
WEIGHTS = {1: 8, 3: 4, 4: 3, 5: 2}


def canonical_bytes(value: object) -> bytes:
    return (json.dumps(value, ensure_ascii=False, sort_keys=True, indent=2) + '\n').encode()


def write_json(path: Path, value: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(canonical_bytes(value))


def prime(n: int) -> bool:
    return n >= 2 and all(n % d for d in range(2, math.isqrt(n) + 1))


def vp(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError('valuation needs n>0 and p>=2')
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def power_part(n: int, p: int) -> int:
    return p ** vp(n, p)


def small6(n: int) -> int:
    return math.prod(power_part(n, p) for p in PRIMES)


def source_v(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n:
        raise ValueError('illegal binomial input')
    total, q = 0, p
    while q <= n:
        total += n // q - j // q - (n-j) // q
        q *= p
    return total


def capped_part(z: int, p: int, cap: int) -> int:
    r = z % cap
    return cap if r == 0 else power_part(r, p)


def residue_data() -> dict:
    data = {}
    for p, cap in ((2, 8), (3, 9), (5, 25)):
        allowed = []
        for r in range(cap):
            values = [capped_part(r-h, p, cap) for h in range(6)]
            if max(values[0], values[2]) == max(values):
                allowed.append(r)
        data[str(p)] = {'modulus': cap, 'allowed': allowed}
    return data


def in_H02(n: int) -> bool:
    # Exact all-exponent position condition, not a scan of large valuations.
    return (n % 8 in (0, 2, 6) and n % 9 in (0, 2, 6, 8)
            and n % 25 in (0, 2, 7, 10, 12, 15, 17, 20, 22))


def gap(n: int) -> str | None:
    ss = [small6(n-r) for r in range(6)]
    if math.prod(ss[:4])**6 * (3*n*n-12*n+8) < 2**20*(n-1)**6*(n-3)**3:
        return 'QIG'
    if math.prod(ss)**4 * (3*n*n-20*n+24) < 2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:
        return 'SIXG'
    return None


def recover_domain() -> dict:
    E, floor = 71, 256
    powers = {}
    for p in PRIMES:
        powers[p] = []
        z = p
        while z < 2**E:
            powers[p].append(z)
            z *= p
    stats = dict(power_pairs=0, position_templates=0, candidate_occurrences=0)
    high = set()
    for p, q in ((2,3), (2,5), (3,5)):
        for P in powers[p]:
            for Q in powers[q]:
                stats['power_pairs'] += 1
                inv = pow(P, -1, Q)
                for r, s in ((0,2), (2,0)):
                    stats['position_templates'] += 1
                    n = (r + P*((s-r)*inv % Q)) % (P*Q)
                    if n < floor or n >= 2**E or not in_H02(n):
                        continue
                    if power_part(n-r,p) != P or power_part(n-s,q) != Q:
                        continue
                    if max(power_part(n-h,p) for h in range(6)) != P:
                        continue
                    if max(power_part(n-h,q) for h in range(6)) != Q:
                        continue
                    stats['candidate_occurrences'] += 1
                    high.add(n)
    low = [n for n in range(14,floor) if in_H02(n)]
    reasons, terminal = {}, []
    for n in sorted(set(low) | high):
        tag = gap(n)
        reasons[tag or 'terminal'] = reasons.get(tag or 'terminal',0) + 1
        if tag is None:
            terminal.append(n)
    return dict(target=6, H=[0,2], exponent=E, mass_threshold=floor,
                low=low, high=sorted(high), stats=stats,
                gap_counts=reasons, terminal=terminal)


def shift(poly: list[list[int]], x0: int, y0: int) -> list[list[int]]:
    out = {}
    for a,b,c in poly:
        for u in range(a+1):
            for v in range(b+1):
                out[u,v] = out.get((u,v),0) + c*math.comb(a,u)*math.comb(b,v)*x0**(a-u)*y0**(b-v)
    return [[a,b,c] for (a,b),c in sorted(out.items()) if c]


def crt(items: list[tuple[int,int]]) -> tuple[int,int]:
    x, mod = 0, 1
    for residue, q in items:
        if math.gcd(mod,q) != 1:
            raise ValueError('CRT moduli must be pairwise coprime')
        x += mod*((residue-x)*pow(mod,-1,q) % q)
        mod *= q
    return x, mod

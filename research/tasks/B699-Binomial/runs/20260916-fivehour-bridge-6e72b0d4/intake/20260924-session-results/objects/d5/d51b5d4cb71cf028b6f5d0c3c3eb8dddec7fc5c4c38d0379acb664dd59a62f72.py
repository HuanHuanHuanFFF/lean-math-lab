#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path
from fractions import Fraction
from math import comb, gcd
import hashlib
import json

ROOT = Path(__file__).resolve().parents[1]

KERNEL = json.loads((ROOT / "outputs" / "kernel20.json").read_text())
HEIGHTS = json.loads((ROOT / "outputs" / "height_branches.json").read_text())
CANDIDATES = json.loads((ROOT / "outputs" / "candidate_rows.json").read_text())
FACT_DATA = json.loads((ROOT / "outputs" / "factorizations.json").read_text())
RECEIPTS = json.loads((ROOT / "outputs" / "crt_receipts.json").read_text())
REMAINING = json.loads((ROOT / "outputs" / "remaining_tail_bounds.json").read_text())
EXCEPTIONS = json.loads((ROOT / "outputs" / "bft_exception_pairs.json").read_text())

def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1 << 20), b""):
            h.update(block)
    return h.hexdigest()

# ----- polynomial arithmetic -----

def poly_mul(a, b):
    out = {}
    for (i, j), ca in a.items():
        for (u, v), cb in b.items():
            key = (i + u, j + v)
            out[key] = out.get(key, 0) + ca * cb
    return {k: v for k, v in out.items() if v}

def poly_shift(poly, a, b):
    out = {}
    for (i, j), c in poly.items():
        for u in range(i + 1):
            for v in range(j + 1):
                key = (u, v)
                out[key] = out.get(key, 0) + (
                    c * comb(i, u) * a**(i-u)
                    * comb(j, v) * b**(j-v)
                )
    return {k: v for k, v in out.items() if v}

def order(poly, a, b):
    shifted = poly_shift(poly, a, b)
    return min(i + j for (i, j), c in shifted.items() if c)

G = {(i, j): c for i, j, c in KERNEL["G6_terms"]}
H = {(i, j): c for i, j, c in KERNEL["H8_terms"]}
x2 = {(2, 0): 1}
y2 = {(0, 2): 1}
xm1 = {(1, 0): 1, (0, 0): -1}
ym1 = {(0, 1): 1, (0, 0): -1}
F = poly_mul(poly_mul(poly_mul(poly_mul(x2, y2), xm1), ym1), poly_mul(G, H))

actual_orders = {
    str(r): [order(F, b, r-b) for b in range(r+1)]
    for r in range(6)
}
assert actual_orders == KERNEL["source_orders"]
assert max(i+j for i, j in F) == 20
assert order(F, 0, 0) == 4
Gs = poly_shift(G, 7, 7)
Hs = poly_shift(H, 7, 7)
assert len(Gs) == 28 and min(Gs.values()) == 2 and all(c > 0 for c in Gs.values())
assert len(Hs) == 45 and min(Hs.values()) == 34 and all(c > 0 for c in Hs.values())

# Verify symmetric identities and weighted constants.
def expand_symmetric(terms):
    # term n^a J^b -> (x+y)^a (xy)^b
    out = {}
    for a, b, c in terms:
        for u in range(a + 1):
            key = (u + b, a - u + b)
            out[key] = out.get(key, 0) + c * comb(a, u)
    return {k: v for k, v in out.items() if v}

assert expand_symmetric(KERNEL["G6_symmetric_terms"]) == G
assert expand_symmetric(KERNEL["H8_symmetric_terms"]) == H

def weighted_constant(terms):
    ans = Fraction(0)
    for a, b, c in terms:
        ans += Fraction(abs(c), 4**b)
    return ans

CG = weighted_constant(KERNEL["G6_symmetric_terms"])
CH = weighted_constant(KERNEL["H8_symmetric_terms"])
CF = Fraction(1, 64) * CG * CH
assert CG == Fraction(64819, 64)
assert CH == Fraction(4569685, 32)
assert CF == Fraction(296202412015, 131072)

# ----- BFT exception table and exact height ledger -----

assert len(EXCEPTIONS) == 40
assert max(max(a, b) for a, b in EXCEPTIONS) == 1771561
by_diff = {}
for a, b in EXCEPTIONS:
    by_diff.setdefault(abs(a-b), []).append([a, b])
assert by_diff.get(2, []) == []
assert sorted(by_diff.get(5, [])) == [[1029,1024],[1215,1210],[30618,30613]]
assert all(max(pair) % 1800 not in {1280,1530} for pair in by_diff[5])

A23 = Fraction(57, 200)
A25 = Fraction(129, 500)
A35 = Fraction(27, 125)
UP_A = 512 * CF
UP_B = 7776 * CF
assert UP_A == Fraction(296202412015, 256)
assert UP_B == Fraction(71977186119645, 4096)

def dyadic_bound(upper, lower_coeff, delta):
    p, q = delta.numerator, delta.denominator
    rhs = (upper / lower_coeff)**q * 2**p
    K = 0
    while not (rhs < Fraction(2)**(K*(p-q))):
        K += 1
    return K

def g7_bound(c):
    return dyadic_bound(Fraction(2**22), Fraction(1, c**7), Fraction(399,200))

recomputed_heights = []
for c in (1,5):
    rows = [
        g7_bound(c),
        dyadic_bound(UP_A, Fraction(1,16*c**4), 4*A23+4*A25),
        dyadic_bound(UP_A, Fraction(7**4,48), 4*A23+A25),
    ]
    recomputed_heights.append(("A",c,rows,max(rows)))
for c in (1,2,5,10):
    rows = [
        g7_bound(c),
        dyadic_bound(UP_B, Fraction(1,c**4), 4*A23+4*A35),
        dyadic_bound(UP_B, Fraction(7**4), 4*A23+A35),
    ]
    recomputed_heights.append(("B",c,rows,max(rows)))

assert [x[3] for x in recomputed_heights] == [65,65,68,68,68,68]
assert [h["uniform_K"] for h in HEIGHTS] == [65,65,68,68,68,68]

# ----- candidate generation -----

def strip235(v):
    for p in (2,3,5):
        while v % p == 0:
            v //= p
    return v

def vp(v, p):
    e = 0
    while v % p == 0:
        v //= p
        e += 1
    return e

def enum_A():
    limit = 1 << 65
    out = []
    b = 2
    while 2*3**b < limit:
        A0 = 2*3**(b-1)
        s2 = 2*3**b
        E = 2
        while 3*5**E < limit:
            B0 = 5**E
            r = pow(A0, -1, B0)
            for q2 in (r, r+B0):
                if not (0 < 2*q2 < 3*B0):
                    continue
                num = A0*q2 - 1
                if num % B0:
                    continue
                q5 = num // B0
                if not (0 < q5 < 3**b):
                    continue
                if gcd(q2,30) != 1 or gcd(q5,30) != 1:
                    continue
                n = s2*q2 + 2
                if not (n < limit and n % 1800 == 1280):
                    continue
                if strip235(n-2) != q2 or strip235(n-5) != q5:
                    continue
                if vp(n-2,3) != b or vp(n-5,5) != E:
                    continue
                out.append({"tail":"A","b":b,"E":E,"q2":q2,"q5":q5,"n":n})
            E += 1
        b += 1
    return sorted(out, key=lambda z:(z["n"],z["b"],z["E"],z["q2"]))

def enum_B():
    limit = 1 << 68
    out = []
    b = 3
    while 2**b < limit:
        A0 = 2**b
        E = 2
        while 5**E < limit:
            B0 = 5**E
            q2 = (3*pow(A0,-1,B0)) % B0
            if not (0 < 2*q2 < B0):
                E += 1
                continue
            num = A0*q2 - 3
            if num % B0:
                E += 1
                continue
            q5 = num // B0
            if not (0 < 2*q5 < A0):
                E += 1
                continue
            if gcd(q2,30) != 1 or gcd(q5,30) != 1:
                E += 1
                continue
            n = A0*q2 + 2
            if not (n < limit and n % 1800 == 1530):
                E += 1
                continue
            if strip235(n-2) != q2 or strip235(n-5) != q5:
                E += 1
                continue
            if vp(n-2,2) != b or vp(n-5,5) != E:
                E += 1
                continue
            out.append({"tail":"B","b":b,"E":E,"q2":q2,"q5":q5,"n":n})
            E += 1
        b += 1
    return sorted(out, key=lambda z:(z["n"],z["b"],z["E"],z["q2"]))

A_rows = enum_A()
B_rows = enum_B()
assert A_rows == CANDIDATES["A_candidates"]
assert B_rows == CANDIDATES["B_candidates"]
assert len(A_rows) == 96 and len(B_rows) == 24

# ----- deterministic primality and factorization verification -----

MR_BASES_64 = (2, 325, 9375, 28178, 450775, 9780504, 1795265022)

def is_prime_64(n):
    if n < 2:
        return False
    small = (2,3,5,7,11,13,17,19,23,29,31,37)
    for p in small:
        if n % p == 0:
            return n == p
    assert n < 2**64
    d = n-1
    s = 0
    while d % 2 == 0:
        s += 1
        d //= 2
    for a in MR_BASES_64:
        if a % n == 0:
            continue
        z = pow(a, d, n)
        if z in (1, n-1):
            continue
        for _ in range(s-1):
            z = (z*z) % n
            if z == n-1:
                break
        else:
            return False
    return True

FACT = {int(q): [(int(p),int(e)) for p,e in fs]
        for q,fs in FACT_DATA["factorizations"].items()}
for q, fs in FACT.items():
    prod = 1
    for p, e in fs:
        assert is_prime_64(p)
        prod *= p**e
    assert prod == q

# ----- two independent complete CRT enumerators -----

ALLOWED = {
    0:(0,), 1:(0,1), 2:(0,2),
    3:(0,1,2,3), 4:(0,1,2,3,4), 5:(2,3),
}

def crt_pair(a,M,b,m):
    t = ((b-a)*pow(M,-1,m)) % m
    return (a+M*t) % (M*m), M*m

def interval_count(a,M,n):
    lo,hi = 7,n//2
    k = (lo-a+M-1)//M
    first = a+k*M
    if first > hi:
        return 0,None
    return (hi-first)//M+1,first

def constraints(n):
    qvals=[]
    cons=[]
    seen=set()
    for r in range(6):
        q=strip235(n-r)
        qvals.append(q)
        for p,e in FACT[q]:
            assert p not in seen
            seen.add(p)
            cons.append((p**e,ALLOWED[r],p,r))
    cons.sort(reverse=True,key=lambda z:z[0])
    return qvals,cons

def dfs_pp(n):
    _,cons=constraints(n)
    stack=[(0,0,1)]
    seen=0
    terminals=set()
    while stack:
        idx,a,M=stack.pop()
        seen+=1
        cnt,first=interval_count(a,M,n)
        if cnt==0:
            continue
        if idx==len(cons):
            for t in range(cnt):
                terminals.add(first+t*M)
            continue
        if cnt==1:
            if all(first%pp in allowed for pp,allowed,p,r in cons[idx:]):
                terminals.add(first)
            continue
        pp,allowed,p,r=cons[idx]
        for residue in allowed:
            na,nM=crt_pair(a,M,residue,pp)
            stack.append((idx+1,na,nM))
    return seen,len(terminals)

def row_residues(q,r):
    states=[(0,1)]
    for p,e in FACT[q]:
        pp=p**e
        new=[]
        for a,M in states:
            for residue in ALLOWED[r]:
                new.append(crt_pair(a,M,residue,pp))
        states=new
    return sorted({a for a,M in states})

def block_crt(n):
    blocks=[]
    for r in range(6):
        q=strip235(n-r)
        blocks.append((q,row_residues(q,r),r))
    blocks.sort(reverse=True,key=lambda z:z[0])
    states=[(0,1)]
    transitions=0
    for q,residues,r in blocks:
        new=[]
        for a,M in states:
            for residue in residues:
                na,nM=crt_pair(a,M,residue,q)
                cnt,first=interval_count(na,nM,n)
                transitions+=1
                if cnt:
                    new.append((na,nM))
        states=new
        if not states:
            break
    terminals=set()
    for a,M in states:
        cnt,first=interval_count(a,M,n)
        for t in range(cnt):
            terminals.add(first+t*M)
    return transitions,len(terminals)

receipt_map = {(r["tail"],r["n"]):r for r in RECEIPTS["receipts"]}
sum_dfs=sum_block=0
for rec in A_rows+B_rows:
    n=rec["n"]
    s1,t1=dfs_pp(n)
    s2,t2=block_crt(n)
    saved=receipt_map[(rec["tail"],n)]
    assert (s1,t1)==(saved["prime_power_dfs_states"],0)
    assert (s2,t2)==(saved["row_block_transitions"],0)
    sum_dfs+=s1
    sum_block+=s2
assert sum_dfs==RECEIPTS["total_prime_power_dfs_states"]
assert sum_block==RECEIPTS["total_row_block_transitions"]
assert RECEIPTS["total_terminals_algorithm_1"]==0
assert RECEIPTS["total_terminals_algorithm_2"]==0

# ----- remaining-tail bound ledger -----

assert [(r["tail"],r["c"],r["K"]) for r in REMAINING] == [
    ("A",1,198),("A",5,266),
    ("B",1,296),("B",2,353),("B",5,427),("B",10,484),
]

result = {
    "status": "PASS_C13_WORST_SOURCE_SHELL_CLOSURE",
    "closed_domain": "both H025 tails with M2=1 and Q50=Q51=1",
    "kernel20": {
        "degree": 20,
        "origin_order": 4,
        "source_orders": actual_orders,
        "weighted_constant": str(CF),
    },
    "height": {"A": "n < 2^65", "B": "n < 2^68"},
    "finite_terminal": {
        "A_rows": len(A_rows),
        "B_rows": len(B_rows),
        "algorithm_1_terminals": 0,
        "algorithm_2_terminals": 0,
        "unique_q_values": FACT_DATA["unique_q_values"],
        "unique_primes": FACT_DATA["unique_primes"],
        "max_prime": FACT_DATA["max_prime"],
    },
    "remaining_tail_bounds": REMAINING,
    "true_frontier_reduction": (
        "complete closure of the exact endpoint-q2 / central-q5 source shell"
    ),
    "remaining_unbounded_parameters_inside_two_tails": [],
    "not_claimed": [
        "closure of either complete H025 tail",
        "general i=6 closure",
        "new complete index",
        "NC-preserving descent",
        "Lean verification",
        "complete B699 closure",
    ],
    "source_hashes": {
        "kernel20.json": sha256(ROOT/"outputs"/"kernel20.json"),
        "candidate_rows.json": sha256(ROOT/"outputs"/"candidate_rows.json"),
        "factorizations.json": sha256(ROOT/"outputs"/"factorizations.json"),
        "crt_receipts.json": sha256(ROOT/"outputs"/"crt_receipts.json"),
    },
    "repository_actions": "none",
}
print(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True))

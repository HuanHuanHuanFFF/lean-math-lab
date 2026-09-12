"""Small independent regressions for the i18 downstream paper review.

No Lean, prime sieve, large certificate replay, generator import or downloads.
All writes are in this script's own review directory. These regressions do not
replace the unrestricted paper argument or the original full certificates.
"""
from __future__ import annotations

import ctypes
import hashlib
import itertools
import json
import math
import os
import platform
import shutil
import time
from datetime import datetime, timezone
from pathlib import Path

OUT = Path(__file__).resolve().parent
RUN = OUT.parents[1]
PKG = Path('D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911')
ADOPT = RUN / 'experiments/huan-i18-adoption-5e2d13bb'
PS = (2, 3, 5, 7, 11, 13, 17)
START = time.monotonic()


def trim(poly):
    while len(poly) > 1 and poly[-1] == 0:
        poly.pop()
    return poly


def mul(a, b):
    r = [0] * (len(a) + len(b) - 1)
    for j, x in enumerate(a):
        for k, y in enumerate(b):
            r[j + k] += x * y
    return trim(r)


def sub(a, b):
    return trim([(a[k] if k < len(a) else 0) - (b[k] if k < len(b) else 0)
                 for k in range(max(len(a), len(b)))])


def pade(A, B, C):
    N = A + B + C + 1
    P = [(-1) ** (C + r) * math.comb(N, r) * math.comb(A + C - r, A)
         for r in range(C + 1)]
    Q = [(-1) ** C * math.comb(A + C - r, C) * math.comb(B + r, r)
         for r in range(A + 1)]
    E = [(-1) ** r * math.comb(A + r, r) * math.comb(N, A + C + r + 1)
         for r in range(B + 1)]
    return P, Q, E


def vp(n, p):
    assert n > 0
    v = 0
    while n % p == 0:
        v += 1
        n //= p
    return v


def ceildiv(a, b):
    return -((-a) // b)


def prime(n):
    return n >= 2 and all(n % d for d in range(2, math.isqrt(n) + 1))


def resource_snapshot():
    class MEMORYSTATUSEX(ctypes.Structure):
        _fields_ = [('dwLength', ctypes.c_ulong), ('dwMemoryLoad', ctypes.c_ulong)] + [
            (k, ctypes.c_ulonglong) for k in ('ullTotalPhys', 'ullAvailPhys',
             'ullTotalPageFile', 'ullAvailPageFile', 'ullTotalVirtual',
             'ullAvailVirtual', 'ullAvailExtendedVirtual')]
    rec = {'cpu_count_visible': os.cpu_count(), 'disk_free_bytes': shutil.disk_usage(OUT).free,
           'scope': 'Visible Windows host values, not a dedicated allocation or cgroup quota.'}
    if os.name == 'nt':
        stat = MEMORYSTATUSEX()
        stat.dwLength = ctypes.sizeof(stat)
        if ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(stat)):
            rec.update(available_memory_bytes=stat.ullAvailPhys, total_memory_bytes=stat.ullTotalPhys)
    return rec


result = {'status': 'RUNNING', 'reviewer': '/root/i18_downstream_review',
          'started_utc': datetime.now(timezone.utc).isoformat(), 'python': platform.python_version(),
          'resources_before': resource_snapshot(),
          'scope': 'Small independent exact regressions; not full certificates or Lean.'}

# Exact low-degree polynomial identity and the adjacent-u nonzero determinant.
polynomial_cases = 0
for A, B, C in itertools.product(range(5), repeat=3):
    P, Q, E = pade(A, B, C)
    power = B + C + 1
    factor = [(-1) ** k * math.comb(power, k) for k in range(power + 1)]
    assert sub(P, mul(factor, Q)) == trim([0] * (A + C + 1) + E)
    polynomial_cases += 1
determinant_cases = 0
for c in range(2, 9):
    for d in range(1, c):
        if math.gcd(c, d) != 1:
            continue
        for m in range(1, 4):
            u = d * m - 1
            P, Q, E = pade(u, c * m - u - 1, u)
            PP, QQ, EE = pade(u + 1, c * m - u - 2, u + 1)
            det = sub(mul(P, QQ), mul(Q, PP))
            assert E[0] * QQ[0] != 0
            assert det == [0] * (2 * u + 1) + [E[0] * QQ[0]]
            for pol in (P, Q, PP, QQ):
                assert all(isinstance(x, int) for x in pol)
            G = math.gcd(*Q)
            GG = math.gcd(*QQ)
            assert G > 0 and GG > 0
            assert all(x % G == 0 for x in P) and all(x % GG == 0 for x in PP)
            determinant_cases += 1
result['pade_regression'] = {'polynomial_cases': polynomial_cases,
                           'adjacent_determinant_cases': determinant_cases,
                           'domains': 'A,B,C in 0..4; coprime 1<=d<c<=8, m in 1..3'}

data = json.loads((PKG / 'input/i18_cut_inputs.json').read_text(encoding='utf-8'))
cuts = data['cuts']
assert (data['i'], data['height_log2_Y']) == (18, 599999)
literal_cuts = [(2,13,57,224),(17,2,31,407),(17,2,351,365),(3,11,340,423),
                (5,7,390,263),(5,11,197,202),(13,5,332,162),(7,13,269,38),
                (7,13,110,218),(13,11,49,111)]
assert [(e['p'],e['q'],e['wp'],e['wq']) for e in cuts] == literal_cuts
position = {p:k for k,p in enumerate(PS)}
corners = []
for sides in itertools.product((0, 1), repeat=10):
    corner = [0] * 7
    for choice, (p, q, wp, wq) in zip(sides, literal_cuts):
        prime_choice, weight = (p, wp) if choice == 0 else (q, wq)
        corner[position[prime_choice]] = max(corner[position[prime_choice]], weight)
    corners.append(corner)
# Identity 24*x1+...+18*x7 = 18*sum(x)+sum of six shortest prefix sums.
weighted = [(18 * sum(z) + sum(sum(sorted(z)[:k]) for k in range(1, 7)), z)
            for z in corners]
weighted_min, weighted_witness = min(weighted)
collision = []
for a, b in itertools.combinations(range(7), 2):
    val = min(sum(z[k] for k in range(7) if k not in (a,b)) + max(1000,z[a]+z[b])
              for z in corners)
    collision.append({'primes': [PS[a], PS[b]], 'minimum': val})
assert len(corners) == 1024 and weighted_min == 24013
assert min(x['minimum'] for x in collision) == 1431
result['orientation_arithmetic'] = {'orthants': len(corners), 'weighted_min': weighted_min,
        'weighted_witness': weighted_witness, 'collision_pairs': collision}

# Maximum-position counting, including every tied maximum, against actual choose.
maximum_cases = 0
tie_cases = 0
for n in range(38, 257):
    Cn = math.comb(n, 18)
    for p in PS:
        vals = [vp(n-a, p) for a in range(18)]
        top = max(vals)
        positions = [a for a,v in enumerate(vals) if v == top]
        for r in positions:
            assert sum(vals) - vals[r] <= vp(math.factorial(17), p)
            assert vp(Cn, p) + vp(18, p) <= vals[r]
            for e in range(1, top + 1):
                assert sum((n-a) % (p**e) == 0 for a in range(18) if a != r) <= 17 // (p**e)
            maximum_cases += 1
            tie_cases += len(positions) > 1

transfer_cases = 0
top_prime_j_cases = 0
for n in range(38, 121):
    numerator = math.comb(n,18)
    big_primes = [p for p in range(19,n+1) if prime(p)]
    for j in range(19,n//2+1):
        middle = math.comb(n,j)
        for p in big_primes:
            if numerator % p == 0 and middle % p != 0:
                power = p ** vp(numerator,p)
                a,b,c = n%power,j%power,(n-j)%power
                assert 0 <= a <= 17 and a == b+c
                assert all(v % power == 0 for v in (n-a,j-b,n-j-c))
                transfer_cases += 1
            if n-18 < p <= n:
                assert numerator % p == 0 and middle % p == 0
                top_prime_j_cases += 1
result['structural_regression'] = {'n_maximum': [38,256], 'maximum_choices': maximum_cases,
        'tied_maximum_choices': tie_cases, 'n_transfer_and_terminal': [38,120],
        'full_power_transfer_cases': transfer_cases, 'top_prime_j_cases': top_prime_j_cases}

K = 2**156 * math.prod(math.factorial(h)**3 for h in range(1,13))
par = json.loads((PKG / 'input/i18_target.json').read_text(encoding='utf-8'))
assert int(par['K']) == K
f = math.factorial(18)
assert K**10 * 2**(46*92) > (2*f)**190
assert f < 2**53
assert 600000*13 > 24*1000*53 + 303013
assert 600000*2189 > 19000*53 + 46189
for a in range(18):
    for b in range(a+1):
        c = a-b
        assert max(a-5,0)+max(12-b,0)+max(12-c,0) >= 19
        assert max(12-b,0)+max(12-c,0) >= 24-a
result['height_arithmetic'] = {'K_bits': K.bit_length(), 'three_window_positions': 171,
        'distinct_gamma': 13, 'collision_gamma': 2189, 'cube_gamma': 92,
        'cube_height_bits': 46, 'cube_lhs_bits': (K**10*2**(46*92)).bit_length(),
        'cube_rhs_bits': ((2*f)**190).bit_length()}

# Synthetic tiny CRT systems: independently compare the symbolic z bounds with
# direct pairs, including d=0, d=+-17, B0=0, and Q compared with bmax.
crt_cases = 0
nonempty_shifts = set()
residue_zero_nonempty = 0
branches = {'Q>bmax':0, 'Q=bmax':0, 'Q<bmax':0}
for Q,R in [(4,9),(4,25),(8,9),(9,25),(16,27)]:
    for start,H in [(1,80),(38,121),(73,200)]:
        for bmax in [Q-1,Q,Q+1,2*Q+1]:
            amin,amax,bmin = 1, 2*R+1, 1
            branches['Q>bmax' if Q>bmax else 'Q=bmax' if Q==bmax else 'Q<bmax'] += 1
            for shift in range(-17,18):
                brute = []
                for A in range(amin,amax+1):
                    for B in range(bmin,bmax+1):
                        if Q*A-R*B != shift:
                            continue
                        low,high = max(start,Q*A,R*B),min(H-1,Q*A+17,R*B+17)
                        if low<=high:
                            brute.append((A,B,low,high))
                B0=(-shift*pow(R,-1,Q))%Q
                A0=(R*B0+shift)//Q
                low0,high0=max(Q*A0,R*B0),min(Q*A0+17,R*B0+17)
                period=Q*R
                lo=max(ceildiv(amin-A0,R),ceildiv(bmin-B0,Q),ceildiv(start-high0,period))
                hi=min((amax-A0)//R,(bmax-B0)//Q,(H-1-low0)//period)
                symbolic=[]
                for z in range(lo,hi+1):
                    symbolic.append((A0+R*z,B0+Q*z,max(start,low0+period*z),min(H-1,high0+period*z)))
                assert sorted(symbolic)==sorted(brute)
                if brute:
                    assert max(x[3] for x in brute)==min(H-1,high0+period*hi)
                    nonempty_shifts.add(shift)
                    residue_zero_nonempty += B0==0
                crt_cases += 1
assert {-17,0,17} <= nonempty_shifts and residue_zero_nonempty > 0
result['tiny_CRT_regression'] = {'systems_and_shifts':crt_cases,'power_pairs':5,
    'branches':branches,'nonempty_signed_shifts':sorted(nonempty_shifts),
    'B0_zero_nonempty_cases':residue_zero_nonempty,'largest_H':200,
    'note':'Checks the symbolic formula on synthetic small systems, not the production full CRT data.'}

tracked = [ADOPT/'REPORT.md', ADOPT/'notes/CORRECTED_THETA_TAIL.md',
           ADOPT/'code/content_bounds.py', ADOPT/'code/check_content_bounds.py',
           RUN/'reviews/huan-i18-correction-second-5e2d13bb/REPORT.md']
tracked += [PKG/p for p in ['REPORT.md','PROOF_MAP.json','SOURCE_MAP.md',
    'input/i18_cut_inputs.json','input/i18_target.json','code/certify_i18_pairs.py',
    'code/check_i18_pairs_independent.py','code/check_i18_height.py','code/check_blocks.cpp',
    'code/run_blocks.py','code/reverse_crt.py','code/check_i18_terminal.py',
    'code/vendor/check_certificate.py','code/vendor/rational_intervals.py',
    'outputs/i18_pair_certificate.json','outputs/i18_pairs_independent.json',
    'outputs/i18_height_certificate.json','outputs/block_summary_18.json',
    'outputs/block_python_check.json','outputs/crt_stages_18.json',
    'outputs/terminal_certificate_18.json','outputs/terminal_independent_18.json']]
manifest=[]
for p in tracked:
    payload=p.read_bytes()
    manifest.append({'path':str(p),'bytes':len(payload),'sha256':hashlib.sha256(payload).hexdigest()})
(OUT/'SOURCE_HASHES.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
result.update(status='PASS_BOUNDED_INDEPENDENT_REGRESSIONS',seconds=time.monotonic()-START,
              finished_utc=datetime.now(timezone.utc).isoformat())
(OUT/'BOUNDED_CHECKS.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in result.items() if k not in ('orientation_arithmetic',)},ensure_ascii=False,indent=2))
print('orthants=1024; weighted_min=24013; all_collision_pair_min=1431; sources='+str(len(manifest)))

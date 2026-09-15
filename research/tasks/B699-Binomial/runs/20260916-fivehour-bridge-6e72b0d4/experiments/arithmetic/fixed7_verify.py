"""Second implementation of the fixed-7 finite certificate, stdlib only.

Does not import the discovery program or trust its root table. It lifts powers of
4 instead of powers of 2, checks all small exponents directly at each level, and
certifies every remaining original binomial pair with a prime found by trial division.
The two programs have the same author; independent AI review is a separate record.
The paper is responsible for QIG, the p-adic theorem, and the absolute exponent cap.
"""
from datetime import datetime, timezone
from hashlib import sha256
from math import comb, gcd, isqrt
from pathlib import Path
import ctypes
import json
import os
import platform
import shutil
import sys
import time


def ord_p(z, p):
    result = 0
    while z % p == 0:
        z //= p
        result += 1
    return result


def s5(z):
    return 2**ord_p(z, 2) * 3**ord_p(z, 3) * (5 if ord_p(z, 5) == 1 else 1)


def trial_prime(p):
    return p >= 2 and all(p % d for d in range(2, isqrt(p)+1))


def source_hash(path):
    return sha256(path.read_bytes()).hexdigest()


def resource_snapshot():
    info = {'python': sys.version, 'platform': platform.platform(),
            'logical_cpus': os.cpu_count(), 'disk_d_free': shutil.disk_usage('D:/').free}
    class Memory(ctypes.Structure):
        _fields_ = [('length', ctypes.c_ulong), ('load', ctypes.c_ulong),
                    ('total', ctypes.c_ulonglong), ('avail', ctypes.c_ulonglong),
                    ('page_total', ctypes.c_ulonglong), ('page_avail', ctypes.c_ulonglong),
                    ('virtual_total', ctypes.c_ulonglong), ('virtual_avail', ctypes.c_ulonglong),
                    ('extended', ctypes.c_ulonglong)]
    m = Memory()
    m.length = ctypes.sizeof(m)
    if ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m)):
        info.update(memory_available=m.avail, memory_total=m.total)
    return info


def verify():
    start = time.perf_counter()
    # Avoid relying on an assumed parent-depth for actual source lookups.
    root_dir = next(p for p in Path(__file__).resolve().parents if (p/'AGENTS.md').is_file())
    prior = root_dir/'research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/deliveries/D-quartic-gap/notes/PROOFS.md'
    assert source_hash(prior) == '47cf4282825a4aa467973c0b27b1de914719beef17c162638107dedfb2568707'
    resources = resource_snapshot()
    cap = 100000000
    a_rows, by_exponent = [], {}
    level = 1
    mod = 3
    period4 = 1
    u = 0
    while True:
        assert 0 <= u < period4
        assert pow(4, u, mod) * 7 % mod == 1
        a_rows.append({'B': level, 'modulus': mod, 'period4': period4,
                       'u_for_base4': u, 'least_A_r1': 2*u, 'least_A_r2': 2*u+1})
        if 2*u > cap:
            break
        # Exhaust every exponent allowed by the already proved A<10B.
        for a in range(3, min(cap+1, 10*level)):
            r = 1 if a % 2 == 0 else 2
            if 7*pow(2, a, mod) % mod != r:
                continue
            n = 7*(1 << a)
            if ord_p(n-r, 3) != level:
                continue
            assert a not in by_exponent
            sm = [s5(n-r0) for r0 in range(4)]
            t = sm[0]*sm[1]*sm[2]*sm[3]
            lhs = t**6*(3*n*n-12*n+8)
            rhs = (1 << 20)*(n-1)**6*(n-3)**3
            by_exponent[a] = {'A':a, 'B':level, 'r':r, 'n':n, 'small_parts':sm,
                              'QIG_left':str(lhs), 'QIG_right':str(rhs),
                              'strict_QIG':lhs<rhs}
        # The 4-powers have period 3^(B-1); test all three possible lifts.
        nxt = [u+v*period4 for v in range(3)
               if 7*pow(4, u+v*period4, 3*mod) % (3*mod) == 1]
        assert len(nxt) == 1
        assert nxt[0] >= u
        u = nxt[0]
        level += 1
        mod *= 3
        period4 *= 3
    assert len(a_rows) == 18
    assert a_rows[-1]['least_A_r1'] == 106981814 > cap
    assert sorted(by_exponent) == [3,4,5,6,7,8,9,14,15,20,21,38,39]
    remaining = [a for a, row in by_exponent.items() if not row['strict_QIG']]
    assert remaining == [3]
    bottom = sorted(set([0,1,2]+remaining))
    witnesses, empty_rows = [], []
    for a in bottom:
        n = 7*(1 << a)
        if n//2 < 6:
            empty_rows.append({'A':a, 'n':n})
        for j in range(6, n//2+1):
            left, right = comb(n, 5), comb(n, j)
            common = gcd(left, right)
            candidates = [p for p in range(5, isqrt(common)+1)
                          if common % p == 0 and trial_prime(p)]
            if not candidates:
                # Removing small prime factors is valid before the final prime test.
                rem = common
                for p0 in (2,3):
                    while rem % p0 == 0:
                        rem //= p0
                assert trial_prime(rem) and rem >= 5, (a, n, j, common, rem)
                p = rem
            else:
                p = min(candidates)
            assert trial_prime(p) and p >= 5 and left % p == 0 and right % p == 0
            witnesses.append({'A':a,'n':n,'j':j,'p':p,'choose_n_5':left,
                              'choose_n_j':right,'gcd':common})
    assert len(witnesses) == 34
    # Important endpoint of the original statement: p=i=5 is retained.
    endpoint = next(z for z in witnesses if z['n']==28 and z['j']==14)
    assert endpoint['p'] == 5
    discovery = json.loads(Path(__file__).with_name('fixed7_probe.json').read_text(encoding='utf-8'))
    assert [z['A'] for z in discovery['candidates']] == sorted(by_exponent)
    assert all(row['root_for_r1']==new['least_A_r1']
               for row,new in zip(discovery['rows'],a_rows,strict=True))
    result = {'status':'all_exact_checks_passed', 'scope':'finite certificate for the paper theorem; no Lean',
              'timestamp_utc':datetime.now(timezone.utc).isoformat(), 'resources':resources,
              'source_QIG_sha256':source_hash(prior), 'script_sha256':source_hash(Path(__file__)),
              'exponent_cap_from_paper':cap, 'lifting':a_rows,
              'candidates':[by_exponent[a] for a in sorted(by_exponent)],
              'empty_rows':empty_rows, 'original_witnesses':witnesses,
              'elapsed_seconds':time.perf_counter()-start}
    out = Path(__file__).with_name('fixed7_certificate.json')
    out.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps({'status':result['status'], 'lifting_levels':len(a_rows),
                      'candidate_exponents':sorted(by_exponent), 'non_QIG_exponents':remaining,
                      'original_pairs':len(witnesses), 'endpoint_28_14_prime':endpoint['p'],
                      'seconds':result['elapsed_seconds'], 'output':str(out)}))


if __name__ == '__main__':
    verify()

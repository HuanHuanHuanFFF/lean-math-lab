"""Bounded read-only i11 structure statistics. Never invokes CRT, Lean, or Git."""
from pathlib import Path
from hashlib import sha256
from bisect import bisect_left, bisect_right
from math import comb, factorial, prod
from datetime import datetime, timezone
import argparse
import ctypes
from ctypes import wintypes
import json
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
REPO = RUN.parents[4]
OLD = RUN.parent / '20260910-pade-three-closure-4edad426/delivery'
PLAN = RUN / 'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
PRIMES = (2, 3, 5, 7)
I, R, S, LAMBDA, E, DELTA, EXP = 11, 3, 7, 11, 84, 7, 33
BF = lambda n: prod(factorial(k) for k in range(1, n + 1))
K = 2 ** (S * (S + 1)) * BF(S) ** 2 * BF(I - R - 1)


class MemoryCounters(ctypes.Structure):
    _fields_ = [('cb', wintypes.DWORD), ('PageFaultCount', wintypes.DWORD),
                ('PeakWorkingSetSize', ctypes.c_size_t), ('WorkingSetSize', ctypes.c_size_t),
                ('QuotaPeakPagedPoolUsage', ctypes.c_size_t), ('QuotaPagedPoolUsage', ctypes.c_size_t),
                ('QuotaPeakNonPagedPoolUsage', ctypes.c_size_t),
                ('QuotaNonPagedPoolUsage', ctypes.c_size_t),
                ('PagefileUsage', ctypes.c_size_t), ('PeakPagefileUsage', ctypes.c_size_t)]


KERNEL = ctypes.WinDLL('kernel32', use_last_error=True)
KERNEL.GetCurrentProcess.restype = wintypes.HANDLE
PSAPI = ctypes.WinDLL('psapi', use_last_error=True)
PSAPI.GetProcessMemoryInfo.argtypes = [wintypes.HANDLE, ctypes.POINTER(MemoryCounters), wintypes.DWORD]
PSAPI.GetProcessMemoryInfo.restype = wintypes.BOOL


def memory():
    m = MemoryCounters()
    m.cb = ctypes.sizeof(m)
    ok = PSAPI.GetProcessMemoryInfo(KERNEL.GetCurrentProcess(), ctypes.byref(m), m.cb)
    if not ok:
        raise OSError(ctypes.get_last_error(), 'GetProcessMemoryInfo failed')
    return {'working_set_bytes': m.WorkingSetSize, 'peak_working_set_bytes': m.PeakWorkingSetSize}


def digest(path):
    data = path.read_bytes()
    return {'bytes': len(data), 'sha256': sha256(data).hexdigest()}


def exact_outer(B):
    """Find adjacent power-of-two root bounds using integer comparisons only."""
    rhs = (2 * factorial(I)) ** LAMBDA * (1 << (DELTA * B))
    e = max(0, (rhs.bit_length() - K.bit_length()) // EXP)
    while K * (1 << (e * EXP)) >= rhs and e > 0:
        e -= 1
    while K * (1 << ((e + 1) * EXP)) < rhs:
        e += 1
    low, high = 1 << e, 1 << (e + 1)
    assert K * low ** EXP < rhs <= K * high ** EXP
    return low, high, e, rhs


def root_small(rhs):
    """Only used for B<=32 toy checks, never to compute the actual large M."""
    lo, hi = 0, 1
    while K * hi ** EXP < rhs:
        hi *= 2
    while hi - lo > 1:
        mid = (lo + hi) // 2
        if K * mid ** EXP < rhs:
            lo = mid
        else:
            hi = mid
    return hi


def pair_count(left, right):
    lows, highs = right
    return sum(bisect_right(lows, u) - bisect_left(highs, l)
               for l, u in zip(*left))


def toys():
    tests = []
    for B in (16, 32):
        H = 1 << B
        low, high, e, rhs = exact_outer(B)
        M = root_small(rhs)
        start = max(110, M + 1)
        groups = {}
        raw_checked = 0
        for p in PRIMES:
            Q = p
            lowers, uppers = [], []
            while Q < H:
                shell_lo, shell_hi = max(low + 1, Q), min(H - 1, high * Q + 10)
                if shell_lo <= shell_hi:
                    lowers.append(shell_lo)
                    uppers.append(shell_hi)
                amin = max(1, (start - I) // Q + 1)
                amax = min(M, (H - 1) // Q)
                for a in range(amin, amax + 1):
                    raw_checked += 1
                    assert raw_checked < 100000
                    actual_lo, actual_hi = max(start, Q * a), min(H - 1, Q * a + 10)
                    assert shell_lo <= actual_lo <= actual_hi <= shell_hi
                Q *= p
            groups[p] = (lowers, uppers)
        brute_pairs = 0
        for ix, p in enumerate(PRIMES):
            for q in PRIMES[ix + 1:]:
                count = sum(max(l1, l2) <= min(u1, u2)
                            for l1, u1 in zip(*groups[p]) for l2, u2 in zip(*groups[q]))
                assert pair_count(groups[p], groups[q]) == count
                brute_pairs += len(groups[p][0]) * len(groups[q][0])
        tests.append({'B': B, 'M': M, 'M_outer_exponents': [e, e + 1],
                      'actual_family_interval_endpoints_checked': raw_checked,
                      'brute_shell_pairs_checked': brute_pairs})
    assert comb(26, 11) % 13 == 0 and comb(26, 13) % 13 != 0
    return {'toy_shell_checks': tests,
            'arbitrary_large_prime_is_not_uniform_witness': {
                'n': 26, 'i': 11, 'j': 13, 'p': 13,
                'choose_n_i_mod_p': comb(26, 11) % 13,
                'choose_n_j_mod_p': comb(26, 13) % 13}}


def collect_evidence():
    proof_files = [
        RUN.parent / '20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean',
        RUN.parent / '20260909-low-index-structure-b41a5a63/lean/LargeDivisorWitness.lean',
        RUN.parent / '20260909-low-index-structure-b41a5a63/lean/FiniteCover.lean',
    ]
    evidence_path = RUN / 'verification/20260910T193504764901Z/evidence.json'
    evidence = json.loads(evidence_path.read_text(encoding='utf-8'))
    assert evidence['success'] and evidence['exit_code'] == 0
    assert evidence['all_new_project_closure_compiled']
    selected_records = []
    for path in proof_files:
        rel = str(path.relative_to(REPO)).replace('\\', '/')
        record = next(x for x in evidence['compile_records'] if x['source'] == rel)
        assert record['source_sha256_before'] == record['source_sha256_after'] == digest(path)['sha256']
        assert record['exit_code'] == 0 and not record['timed_out']
        log_path = REPO / record['log']
        log = log_path.read_text(encoding='utf-8')
        assert digest(log_path)['sha256'] == record['log_sha256']
        audits = [line for line in log.splitlines() if 'depends on axioms:' in line]
        assert audits and all('sorryAx' not in x for x in audits)
        selected_records.append({k: record[k] for k in
            ['source', 'source_sha256_before', 'source_sha256_after', 'exit_code', 'log', 'log_sha256']}
            | {'audit_lines': audits})
    paths = [PLAN / n for n in ['REPORT.md', 'FINAL_PLAN.json', 'COVERAGE_NEXT_CHECK.md',
                                'LEAN_OBLIGATIONS.json', 'FREEZE_V1.json']]
    paths += [OLD / n for n in ['vendor/crt_fast.py', 'vendor/crt_bound_probe.py',
                               'code/crt_descent.py', 'results/terminal_certificate_11.json',
                               'results/terminal_summary_11.json']]
    paths += proof_files + [evidence_path]
    source_hashes = {str(p.relative_to(REPO)).replace('\\', '/'): digest(p) for p in paths}
    return {'successful_generic_witness_evidence': str(evidence_path.relative_to(REPO)),
            'generic_proof_records': selected_records, 'input_hashes': source_hashes,
            'concrete_i11_lean_interval_list_adopted': [],
            'reason_no_concrete_list_adopted': 'No source/SHA/std3-bound i11 list found; old terminal JSON is separate finite evidence.'}


def run(B, seconds, family_cap, query_cap):
    started = time.perf_counter()
    mem_cap = 190 * 1024 * 1024
    guard_samples = 0
    query_count = 0

    def guard():
        nonlocal guard_samples
        guard_samples += 1
        assert time.perf_counter() - started <= seconds, 'Runtime resource cap reached'
        assert memory()['working_set_bytes'] <= mem_cap, 'Working-set resource cap reached'

    low, high, exponent, rhs = exact_outer(B)
    H = 1 << B
    assert H > 2 * high and low >= 110
    groups = {}
    counts = {}
    endpoint_digest = sha256()
    total = 0
    for p in PRIMES:
        lowers, uppers = [], []
        h, Q = 1, p
        while Q < H:
            lo, hi = max(low + 1, Q), min(H - 1, high * Q + 10)
            assert lo <= hi
            lowers.append(lo)
            uppers.append(hi)
            for value in (p, h, lo, hi):
                data = value.to_bytes((value.bit_length() + 7) // 8 or 1, 'big')
                endpoint_digest.update(len(data).to_bytes(4, 'big'))
                endpoint_digest.update(data)
            total += 1
            assert total <= family_cap
            if total % 128 == 0:
                guard()
            h, Q = h + 1, Q * p
        assert lowers == sorted(lowers) and uppers == sorted(uppers)
        groups[p] = (lowers, uppers)
        counts[p] = len(lowers)
    overlap = {}
    baseline = 0
    for ix, p in enumerate(PRIMES):
        for q in PRIMES[ix + 1:]:
            def bounded_pair(left, right):
                nonlocal query_count
                out = 0
                for lo, hi in zip(*left):
                    out += bisect_right(right[0], hi) - bisect_left(right[1], lo)
                    query_count += 2
                    assert query_count <= query_cap
                    if query_count % 512 == 0:
                        guard()
                return out
            count = bounded_pair(groups[p], groups[q])
            assert count == bounded_pair(groups[q], groups[p])
            raw = counts[p] * counts[q]
            baseline += raw
            overlap[f'{p},{q}'] = {'all_pairs': raw, 'shell_overlaps': count,
                                  'disjoint_shell_pairs': raw - count}
    old = json.loads((OLD / 'results/terminal_certificate_11.json').read_text(encoding='utf-8'))
    tops = old['top_prime_intervals']
    assert len(tops) == 1699
    assert all(p <= lo <= hi < p + 11 for lo, hi, p in tops)
    top_lo, top_hi = min(x[0] for x in tops), max(x[1] for x in tops)
    old_row_max = max(top_hi, max(int(x[0]) for x in old['large_divisor_rows']),
                      max(int(x['n']) for x in old['special_binomial_rows']))
    old_high_intersects = sum(hi >= low + 1 and lo < H for lo, hi, p in tops)
    covered_union = {}
    for p, (los, his) in groups.items():
        full = los[0] == low + 1 and his[-1] == H - 1 and all(
            los[k + 1] <= his[k] + 1 for k in range(len(los) - 1))
        covered_union[p] = full
    guard()
    total_overlap = sum(x['shell_overlaps'] for x in overlap.values())
    return {
        'B': B, 'H': f'2^{B}', 'i': 11, 'r': 3, 's': 7,
        'K': str(K), 'root_exponent': 33, 'height_exponent_delta': 7,
        'exact_root_outer': {'M_lower_exponent': exponent, 'M_upper_exponent': exponent + 1,
            'certificate': 'K*(2^e)^33 < (2*11!)^11*H^7 <= K*(2^(e+1))^33',
            'integer_comparisons_checked': True, 'H_gt_2_M_upper': H > 2 * high},
        'shell_definition': '[max(2^e+1,p^h), min(H-1,2^(e+1)*p^h+10)]',
        'family_counts': counts, 'total_families': total,
        'shell_endpoint_stream_sha256': endpoint_digest.hexdigest(),
        'all_different_prime_pairs': baseline, 'pair_statistics': overlap,
        'shell_overlap_pair_upper_bound': total_overlap,
        'reliably_removed_disjoint_shell_pairs': baseline - total_overlap,
        'pair_offset_loop_upper_bound_after_shell_pruning': total_overlap * 21,
        'baseline_pair_offset_loop_count': baseline * 21,
        'shell_union_covers_entire_high_range_by_each_prime': covered_union,
        'accepted_concrete_witness_intervals_subtracted': 0,
        'families_removed_by_accepted_witnesses': 0,
        'old_terminal_json_diagnostic_only': {
            'top_prime_intervals': len(tops), 'top_interval_min': top_lo, 'top_interval_max': top_hi,
            'all_terminal_witness_row_max': old_row_max,
            'top_interval_shapes_checked': True, 'prime_certificates_not_rerun_or_adopted': True,
            'top_intervals_intersecting_conservative_high_range': old_high_intersects,
            'all_old_witness_rows_below_M_lower': old_row_max < low},
        'elapsed_seconds': round(time.perf_counter() - started, 6),
        'resource_limits': {'seconds': seconds, 'max_families': family_cap,
                            'max_bisect_queries': query_cap, 'working_set_bytes': mem_cap},
        'resource_actual': memory() | {'guard_samples': guard_samples, 'bisect_queries': query_count},
        'not_executed': ['CRT inverses', 'pair-offset loops', 'cofactor enumeration',
                         'full n or j coverage', 'Lean', 'Git'],
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--mode', choices=['pilot', 'full'], required=True)
    args = parser.parse_args()
    if args.mode == 'pilot':
        result = {'utc': datetime.now(timezone.utc).isoformat(),
                  'status': 'bounded pilot and toy exact checks; not final coverage',
                  'toy_checks': toys(), 'statistics': run(64, 10, 2000, 25000),
                  'evidence': collect_evidence()}
    else:
        prior = json.loads((HERE / 'pilot.json').read_text(encoding='utf-8'))
        assert prior['statistics']['B'] == 64
        selected = json.loads((PLAN / 'FINAL_PLAN.json').read_text(encoding='utf-8'))['selected_plan']
        assert (selected['B'], selected['r'], selected['s'], selected['S'], selected['Delta']) == (15360, 3, 7, 640, 40)
        result = {'utc': datetime.now(timezone.utc).isoformat(),
                  'status': 'complete bounded shell statistics only; not final coverage',
                  'statistics': run(selected['B'], 30, 50000, 500000),
                  'evidence': collect_evidence(), 'pilot_sha256': digest(HERE / 'pilot.json')['sha256']}
        stats = result['statistics']
        sizing = selected['coverage_sizing']
        assert stats['total_families'] == sizing['total_families']
        assert stats['all_different_prime_pairs'] == sizing['different_prime_family_pairs']
        assert stats['baseline_pair_offset_loop_count'] == sizing['naive_pair_offset_steps']
        assert stats['old_terminal_json_diagnostic_only']['top_intervals_intersecting_conservative_high_range'] == 0
    path = HERE / (args.mode + '.json')
    path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    stats = result['statistics']
    print(json.dumps({key: stats[key] for key in ['B', 'total_families', 'all_different_prime_pairs',
          'shell_overlap_pair_upper_bound', 'pair_offset_loop_upper_bound_after_shell_pruning',
          'elapsed_seconds', 'resource_actual']}, ensure_ascii=False))


if __name__ == '__main__':
    main()

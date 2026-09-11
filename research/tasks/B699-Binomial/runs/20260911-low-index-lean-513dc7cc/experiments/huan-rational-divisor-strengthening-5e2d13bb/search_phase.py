"""Exhaust a very small balanced 3/3 factorial class using exact open cells."""
from pathlib import Path
from fractions import Fraction
from itertools import combinations_with_replacement
from collections import defaultdict, Counter
from hashlib import sha256
from datetime import datetime, timezone
from math import prod
import argparse
import ctypes
from ctypes import wintypes
import json
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
MAX_CANDIDATES = 200000
MAX_SECONDS = 60
MAX_MEMORY = 256 * 1024 * 1024


class PMC(ctypes.Structure):
    _fields_ = [('cb', wintypes.DWORD), ('PageFaultCount', wintypes.DWORD),
                ('PeakWorkingSetSize', ctypes.c_size_t), ('WorkingSetSize', ctypes.c_size_t),
                ('QuotaPeakPagedPoolUsage', ctypes.c_size_t), ('QuotaPagedPoolUsage', ctypes.c_size_t),
                ('QuotaPeakNonPagedPoolUsage', ctypes.c_size_t), ('QuotaNonPagedPoolUsage', ctypes.c_size_t),
                ('PagefileUsage', ctypes.c_size_t), ('PeakPagefileUsage', ctypes.c_size_t)]


KERNEL = ctypes.WinDLL('kernel32', use_last_error=True)
KERNEL.GetCurrentProcess.restype = wintypes.HANDLE
PSAPI = ctypes.WinDLL('psapi', use_last_error=True)
PSAPI.GetProcessMemoryInfo.argtypes = [wintypes.HANDLE, ctypes.POINTER(PMC), wintypes.DWORD]
PSAPI.GetProcessMemoryInfo.restype = wintypes.BOOL


def memory():
    m = PMC()
    m.cb = ctypes.sizeof(m)
    assert PSAPI.GetProcessMemoryInfo(KERNEL.GetCurrentProcess(), ctypes.byref(m), m.cb)
    return {'working_set_bytes': m.WorkingSetSize, 'peak_working_set_bytes': m.PeakWorkingSetSize}


def digest(path):
    data = path.read_bytes()
    return {'bytes': len(data), 'sha256': sha256(data).hexdigest()}


def floor(x):
    return x.numerator // x.denominator


def phi(c, d, x):
    den = x.denominator
    return int(2 * ((d * x.numerator) % den) + (((c - d) * x.numerator) % den) >= 2 * den)


def reduced(e):
    return {'numerator_slopes': [j for j, v in enumerate(e, 1) for _ in range(max(v, 0))],
            'denominator_slopes': [j for j, v in enumerate(e, 1) for _ in range(max(-v, 0))],
            'e_ascending_from_j1': list(e)}


def search(c, d, previous=None):
    start = time.perf_counter()
    prior_candidates = previous['cumulative_raw_balanced_pairs'] if previous else 0
    prior_seconds = previous['cumulative_elapsed_seconds'] if previous else 0
    raw = 0
    checks = 0
    samples = 0

    def guard():
        nonlocal samples
        samples += 1
        if prior_candidates + raw > MAX_CANDIDATES:
            raise RuntimeError('candidate cap reached')
        if prior_seconds + time.perf_counter() - start > MAX_SECONDS:
            raise RuntimeError('time cap reached')
        if memory()['peak_working_set_bytes'] > MAX_MEMORY:
            raise RuntimeError('memory cap reached')

    J = c + d
    cuts = sorted({Fraction(k, j) for j in range(1, J + 1) for k in range(j + 1)})
    # Closed-form phi changes only when d*x or b*x crosses an integer, or
    # J*x=2+2*floor(d*x)+floor(b*x). These cuts are already among k/j above.
    assert {d, c - d, J}.issubset(set(range(1, J + 1)))
    mids = [(a + b) / 2 for a, b in zip(cuts, cuts[1:])]
    phis = [phi(c, d, x) for x in mids]
    floors = [[floor(j * x) for j in range(1, J + 1)] for x in mids]
    for a, b, x, ph, fs in zip(cuts, cuts[1:], mids, phis, floors):
        for y in [(2 * a + b) / 3, (a + 2 * b) / 3]:
            assert phi(c, d, y) == ph
            assert [floor(j * y) for j in range(1, J + 1)] == fs
    triples = list(combinations_with_replacement(range(1, J + 1), 3))
    groups = defaultdict(list)
    for abc in triples:
        count = tuple(abc.count(j) for j in range(1, J + 1))
        fvec = tuple(sum(fs[j - 1] for j in abc) for fs in floors)
        growth = prod(j ** j for j in abc)
        groups[sum(abc)].append((abc, count, fvec, growth))
    expected_raw = sum(len(g) ** 2 for g in groups.values())
    assert prior_candidates + expected_raw <= MAX_CANDIDATES
    seen = set()
    accepted = []
    failure_counts = Counter()
    stream = sha256()
    complete = False
    interruption = None
    try:
        for total in sorted(groups):
            for num in groups[total]:
                for den in groups[total]:
                    raw += 1
                    if raw % 128 == 0:
                        guard()
                    e = tuple(a - b for a, b in zip(num[1], den[1]))
                    if e in seen:
                        continue
                    seen.add(e)
                    assert sum(e) == 0 and sum(j * v for j, v in enumerate(e, 1)) == 0
                    fail = -1
                    for cell, (a, b, ph) in enumerate(zip(num[2], den[2], phis)):
                        checks += 1
                        if a - b > ph:
                            fail = cell
                            break
                    stream.update(json.dumps([list(e), fail], separators=(',', ':')).encode('ascii'))
                    stream.update(b'\n')
                    if fail >= 0:
                        failure_counts[fail] += 1
                    else:
                        accepted.append({'e': e, 'growth': Fraction(num[3], den[3]),
                                         'raw_numerator_triple': num[0], 'raw_denominator_triple': den[0]})
        assert raw == expected_raw
        guard()
        complete = True
    except RuntimeError as ex:
        interruption = str(ex)
    accepted.sort(key=lambda x: (x['growth'], x['e']), reverse=True)
    baseline_num = [(c + d) // 2, (c - d) // 2]
    baseline_den = [d, c - d]
    assert (c + d) % 2 == 0 and (c - d) % 2 == 0
    baseline_e = tuple(baseline_num.count(j) - baseline_den.count(j) for j in range(1, J + 1))
    baseline_growth = Fraction(prod(j ** j for j in baseline_num), prod(j ** j for j in baseline_den))
    baseline_values = [sum(v * a for v, a in zip(baseline_e, fs)) for fs in floors]
    assert all(v <= ph for v, ph in zip(baseline_values, phis))
    assert not complete or any(x['e'] == baseline_e for x in accepted)
    best = accepted[0] if accepted else None
    best_certificate = None
    if best:
        values = [sum(v * a for v, a in zip(best['e'], fs)) for fs in floors]
        best_certificate = [
            {'left': str(a), 'right': str(b), 'midpoint': str(x), 'phi': ph, 'F_best': v,
             'slack': ph - v}
            for a, b, x, ph, v in zip(cuts, cuts[1:], mids, phis, values)]
        assert all(row['slack'] >= 0 for row in best_certificate)
    elapsed = time.perf_counter() - start
    sources = [RUN / 'lean/PadeInteger.lean',
               RUN / 'experiments/huan-G-factorial-divisor-test-5e2d13bb/REPORT.md',
               RUN / 'experiments/huan-G-factorial-divisor-test-5e2d13bb/check_phase_divisor.py',
               RUN / 'experiments/huan-G-rational-factorial-test-5e2d13bb/REPORT.md']
    def public(item):
        return reduced(item['e']) | {'growth_base_per_m': str(item['growth']),
            'raw_numerator_triple': list(item['raw_numerator_triple']),
            'raw_denominator_triple': list(item['raw_denominator_triple'])}
    return {
        'utc': datetime.now(timezone.utc).isoformat(),
        'status': 'complete finite open-phase search' if complete else 'resource-limited partial search',
        'complete': complete, 'interruption': interruption, 'c': c, 'd': d,
        'scope': {'factorials_per_side_before_cancellation': 3, 'positive_integer_slopes': [1, J],
                  'repeats_and_common_cancellation_allowed': True, 'balanced': True,
                  'D_itself_need_not_be_integer': True, 'open_cells_only': True},
        'limits': {'cumulative_candidates': MAX_CANDIDATES, 'cumulative_seconds': MAX_SECONDS,
                   'peak_working_set_bytes': MAX_MEMORY},
        'triples_per_side': len(triples), 'expected_raw_balanced_pairs': expected_raw,
        'raw_balanced_pairs_checked': raw, 'distinct_e_vectors': len(seen),
        'open_cells': len(mids), 'complete_cut_set': [str(x) for x in cuts],
        'phase_comparisons': checks, 'phase_passes': len(accepted),
        'first_failure_cell_histogram': dict(sorted(failure_counts.items())),
        'candidate_verdict_stream_sha256': stream.hexdigest(),
        'baseline': reduced(baseline_e) | {'growth_base_per_m': str(baseline_growth)},
        'best': public(best) if best else None,
        'strictly_better_than_baseline': bool(best and best['growth'] > baseline_growth),
        'best_growth_ratio_to_baseline': str(best['growth'] / baseline_growth) if best else None,
        'number_of_best_ties': sum(x['growth'] == best['growth'] for x in accepted) if best else 0,
        'top_10': [public(x) for x in accepted[:10]],
        'best_open_cell_certificate': best_certificate,
        'actual_delta_coefficient_divisibility_tested': False,
        'elapsed_seconds': round(elapsed, 6),
        'cumulative_elapsed_seconds': round(prior_seconds + elapsed, 6),
        'cumulative_raw_balanced_pairs': prior_candidates + raw,
        'resources': memory() | {'guard_samples': samples},
        'source_hashes': {p.relative_to(RUN).as_posix(): digest(p) for p in sources},
        'no_Lean_Git_or_downloads': True,
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--pair', choices=['5-3', '9-5'], required=True)
    args = ap.parse_args()
    c, d = map(int, args.pair.split('-'))
    prior = None
    if (c, d) == (9, 5):
        prior = json.loads((HERE / 'phase-5-3.json').read_text(encoding='utf-8'))
        assert prior['complete']
    result = search(c, d, prior)
    path = HERE / f'phase-{c}-{d}.json'
    path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({key: result[key] for key in ['c', 'd', 'status', 'raw_balanced_pairs_checked',
                     'distinct_e_vectors', 'open_cells', 'phase_passes', 'best',
                     'strictly_better_than_baseline', 'elapsed_seconds', 'resources']}, ensure_ascii=False))


if __name__ == '__main__':
    main()

"""Independent enumeration after cancellation; no new candidate class."""
from itertools import combinations_with_replacement
from collections import defaultdict
from fractions import Fraction
from math import floor, prod
from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
import json
import time
from search_phase import memory, MAX_CANDIDATES, MAX_SECONDS, MAX_MEMORY

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
START = time.perf_counter()
previous = [json.loads((HERE / f'phase-{c}-{d}.json').read_text(encoding='utf-8'))
            for c, d in [(5, 3), (9, 5)]]
prior_count = sum(x['raw_balanced_pairs_checked'] for x in previous)
prior_time = sum(x['elapsed_seconds'] for x in previous)
raw_visited = 0
results = []


def guard():
    assert prior_count + raw_visited <= MAX_CANDIDATES
    assert prior_time + time.perf_counter() - START <= MAX_SECONDS
    assert memory()['peak_working_set_bytes'] <= MAX_MEMORY


for source in previous:
    assert source['complete']
    c, d = source['c'], source['d']
    J = c + d
    # Every 3/3 ratio reduces to equally sized disjoint multisets with size <=3.
    # Conversely pad both sides with copies of slope 1 to return to size 3.
    points = sorted({Fraction(k, j) for j in range(1, J + 1) for k in range(j + 1)})
    assert [str(x) for x in points] == source['complete_cut_set']
    mids = [(a + b) / 2 for a, b in zip(points, points[1:])]
    labels = []
    for x in mids:
        dx, bx = d * x, (c - d) * x
        labels.append(int(2 * (dx - floor(dx)) + (bx - floor(bx)) >= 2))
    distinct = 0
    accepted = []
    comparisons = 0
    for size in range(4):
        groups = defaultdict(list)
        for bag in combinations_with_replacement(range(1, J + 1), size):
            groups[sum(bag)].append(bag)
        for total in sorted(groups):
            for A in groups[total]:
                for B in groups[total]:
                    raw_visited += 1
                    if raw_visited % 128 == 0:
                        guard()
                    if set(A).intersection(B):
                        continue
                    distinct += 1
                    passed = True
                    for x, ph in zip(mids, labels):
                        comparisons += 1
                        F = sum(floor(j * x) for j in A) - sum(floor(j * x) for j in B)
                        if F > ph:
                            passed = False
                            break
                    if passed:
                        growth = Fraction(prod(j ** j for j in A), prod(j ** j for j in B))
                        accepted.append((A, B, growth))
    accepted.sort(key=lambda x: x[2], reverse=True)
    assert distinct == source['distinct_e_vectors']
    assert len(accepted) == source['phase_passes'] == 2
    assert str(accepted[0][2]) == source['best']['growth_base_per_m']
    assert accepted[0][2] == Fraction(source['baseline']['growth_base_per_m'])
    assert accepted[1] == ((), (), Fraction(1))
    results.append({'c': c, 'd': d, 'distinct_reduced_vectors': distinct,
                    'phase_comparisons': comparisons,
                    'accepted': [{'numerator_slopes': list(a), 'denominator_slopes': list(b),
                                  'growth_base_per_m': str(g)} for a, b, g in accepted],
                    'search_result_sha256': sha256((HERE / f'phase-{c}-{d}.json').read_bytes()).hexdigest()})
    for rel, expected in source['source_hashes'].items():
        data = (RUN / rel).read_bytes()
        assert len(data) == expected['bytes'] and sha256(data).hexdigest() == expected['sha256']
guard()
out = {'utc': datetime.now(timezone.utc).isoformat(),
       'status': 'independent exact finite-class verification; not actual coefficient divisibility',
       'results': results, 'raw_balanced_pairs_visited_by_verifier': raw_visited,
       'total_candidates_including_both_searches_and_verifier': prior_count + raw_visited,
       'verifier_elapsed_seconds': round(time.perf_counter() - START, 6),
       'total_compute_seconds': round(prior_time + time.perf_counter() - START, 6),
       'resources': memory(), 'input_sources_unchanged': True,
       'actual_delta_valuation_tests_performed': False,
       'shifted_correction_search_performed': False}
(HERE / 'independent-check.json').write_text(json.dumps(out, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({k: out[k] for k in ['status', 'total_candidates_including_both_searches_and_verifier',
                                    'total_compute_seconds', 'resources']}, ensure_ascii=False))

"""Small exact constants/edge checks and source binding. Does not run Lean or CRT."""
from pathlib import Path
from hashlib import sha256
from math import factorial, prod
from itertools import product
from datetime import datetime, timezone
import json
import re
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
REPO = RUN.parents[4]
START = time.perf_counter()


def digest(p):
    blob = p.read_bytes()
    return {'bytes': len(blob), 'sha256': sha256(blob).hexdigest()}


K = 2 ** 56 * prod(factorial(j) for j in range(1, 8)) ** 3
constant_left = K ** 4 * 2 ** (98 * 5)
constant_right = (2 * factorial(11)) ** 44
assert K == 142131407644347048724404082572664265244672000000000
assert 2 ** 98 >= max(16, 110)
assert constant_left > constant_right
assert 4 * 11 * 11 - 11 * 13 - 4 * 84 == 5

# Exhaust small four-component products, not actual noCommon rows.
selection_cases = 0
selection_active = 0
for n in range(2, 9):
    for values in product(range(n + 1), repeat=4):
        U = prod(values)
        selection_cases += 1
        if U ** 4 > n ** 13:
            assert sum(x ** 4 > n ** 3 for x in values) >= 2
            selection_active += 1

quarter_cases = 0
cube_cases = 0
distance_cases = 0
for n in range(1, 101):
    for A in range(11):
        for X in range(21):
            if A * X <= n and X ** 4 > n ** 3:
                assert A ** 4 <= n
                quarter_cases += 1
for n in range(20, 257):
    for A in range(1, 5):
        if A ** 4 <= n:
            assert A ** 3 <= n - 10
            for a in range(11):
                for b in range(11):
                    assert A ** 3 <= min(n - a, n - b)
                    cube_cases += 1
for n in range(0, 41):
    for a in range(11):
        for b in range(11):
            Np, Nq = max(n - a, 0), max(n - b, 0)
            assert abs(Np - Nq) <= 10
            distance_cases += 1

# Boundaries of the proof mechanisms; neither is an actual B699 counterexample.
n, toyK, toyC, toyU = 16, 1, 32, 8192
assert toyK * n ** 121 == toyC * toyU ** 11 * n ** 84
assert toyK ** 4 * n ** 5 == toyC ** 4
assert toyU ** 44 == n ** 143 and toyU ** 4 == n ** 13
assert sum(x ** 4 > n ** 3 for x in [16, 8, 8, 8]) == 1
assert 2 ** 4 <= 16 and 2 ** 3 > 16 - 10
boundary_examples = {
    'strict_constant_cannot_be_weakened_in_scalar_argument': {
        'n': n, 'K': toyK, 'C': toyC, 'U': toyU,
        'components': [16, 8, 8, 8], 'all_three_critical_comparisons_are_equalities': True,
        'not_an_actual_noCommon_example': True},
    'n_ge_16_alone_not_enough_for_cube_le_n_minus_ten': {
        'n': 16, 'A': 2, 'A4': 16, 'A3': 8, 'n_minus_10': 6,
        'actual_bridge_also_has_n_ge_110': True}}

receipt_path = RUN / 'verification/huan-prerequisites/upper-height-i11.json'
receipt = json.loads(receipt_path.read_text(encoding='utf-8'))
assert digest(REPO / receipt['root'])['sha256'] == receipt['source_sha256']
accepted_evidence_path = REPO / receipt['evidence']
accepted = json.loads(accepted_evidence_path.read_text(encoding='utf-8'))
assert accepted['success'] and accepted['exit_code'] == 0
assert all(set(x['axioms']) <= {'propext', 'Classical.choice', 'Quot.sound'} for x in receipt['public_axiom_audit'])

shared_path = RUN / 'verification/20260911T004440769454Z/evidence.json'
shared = json.loads(shared_path.read_text(encoding='utf-8'))
assert shared['success'] and shared['exit_code'] == 0 and shared['all_new_project_closure_compiled']
shared_sources = []
for name in ['CofactorCover.lean', 'LargeSmallPowers.lean']:
    rec = next(x for x in shared['compile_records'] if x['source'].endswith('/' + name))
    assert digest(REPO / rec['source'])['sha256'] == rec['source_sha256_before'] == rec['source_sha256_after']
    assert rec['exit_code'] == 0
    shared_sources.append({'source': rec['source'], 'sha256': rec['source_sha256_after'],
                           'evidence': str(shared_path.relative_to(REPO)), 'log': rec['log']})

localization = RUN / 'experiments/huan-i11-small-prime-localization-5e2d13bb'
loc_freeze = json.loads((localization / 'FREEZE_V1.json').read_text(encoding='utf-8'))
for name in ['Components.lean', 'Window.lean', 'FourWindows.lean']:
    assert digest(localization / name) == loc_freeze['files'][name]

prefix = 'B699LowIndex.I11CubicBridge.'
modules = []
for name in ['CubicPowers.lean', 'CubicCofactors.lean', 'ActualCubic.lean']:
    p = HERE / name
    text = p.read_text(encoding='utf-8')
    assert 'UNCOMPILED CANDIDATE' in text
    assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*axiom\s', text, re.M)
    declarations = []
    for line, row in enumerate(text.splitlines(), 1):
        m = re.match(r'theorem\s+(\w+)', row)
        if m:
            declarations.append({'name': prefix + m[1], 'line': line})
    audits = re.findall(r'^#print axioms (\S+)', text, re.M)
    assert sorted(audits) == sorted(x['name'] for x in declarations)
    modules.append({'file': name, **digest(p), 'declarations': declarations,
                    'audit_roots': audits, 'imports': re.findall(r'^import (\S+)', text, re.M)})

report = RUN.parent / '20260910-pade-three-closure-4edad426/delivery/REPORT.md'
assert Path('D:/CodingProject/Math/.lake/packages/mathlib/.lake/build/lib/lean/Mathlib/Data/Nat/Dist.olean').is_file()
out = {
    'utc': datetime.now(timezone.utc).isoformat(),
    'status': 'exact fixed constant and bounded edge checks; new Lean uncompiled',
    'paper_source': {'path': str(report.relative_to(REPO)), **digest(report),
                     'declared_commit_from_handoff': '5c37f257401952ed85ddd104de8e56a4f2024031',
                     'Git_history_not_queried': True, 'section': 4},
    'constant': {'K': str(K), 'left_K4_2pow490': str(constant_left),
                 'right_2fact11_pow44': str(constant_right),
                 'strict_gap': str(constant_left - constant_right),
                 'left_bits': constant_left.bit_length(), 'right_bits': constant_right.bit_length()},
    'small_checks': {'selection_n_range': [2, 8], 'selection_cases': selection_cases,
                      'active_product_cases': selection_active, 'cofactor_four_cases': quarter_cases,
                      'cubic_both_window_cases': cube_cases, 'distance_cases': distance_cases},
    'boundary_examples': boundary_examples,
    'accepted_upper_i11_receipt': {'path': str(receipt_path.relative_to(REPO)), **digest(receipt_path),
                                  'source_sha256': receipt['source_sha256'], 'evidence': receipt['evidence']},
    'accepted_shared_sources': shared_sources,
    'localization_prerequisite': {'status': 'frozen candidate; parent acceptance still required',
                                  'freeze_sha256': digest(localization / 'FREEZE_V1.json')['sha256'],
                                  'required_files': {n: loc_freeze['files'][n] for n in ['Components.lean', 'Window.lean']}},
    'candidate_modules': modules, 'audit_roots': sum(len(m['audit_roots']) for m in modules),
    'elapsed_seconds': round(time.perf_counter() - START, 6),
    'new_Lean_invocations': 0, 'CRT_or_exponent_blocks_run': 0,
    'height_2pow109_accepted_here': False, 'B_original_count': '0/19'}
(HERE / 'candidate-checks.json').write_text(json.dumps(out, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({k: out[k] for k in ['status', 'small_checks', 'audit_roots', 'elapsed_seconds']}, ensure_ascii=False))

"""Bounded exact checks and static audit for the generic Nat candidates only."""
from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
import json
import re
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
PLAN = RUN / 'experiments/huan-i11-approximation-bridge-plan-5e2d13bb'
START = time.perf_counter()


def digest(p):
    data = p.read_bytes()
    return {'bytes': len(data), 'sha256': sha256(data).hexdigest()}


def least(Z, Y):
    assert Z > 1 and Y >= 0
    m, power = 0, 1
    while power <= 4 * Y:
        m += 1
        power *= Z
        assert m <= 32  # Toy domain only; never evaluate the actual five rows.
    return m


selector_rows = 0
capacity_checks = 0
joint_checks = 0
boundary_checks = {'J_zero': 0, 'alpha_zero': 0, 'threshold_predecessor_equality': 0,
                   'm_equals_M': 0, 'm_greater_M': 0}
for Z in range(2, 7):
    for Y in range(65):
        m = least(Z, Y)
        assert 4 * Y < Z ** m
        assert all(Z ** k <= 4 * Y for k in range(m))
        assert (m > 0) == (Y > 0)
        if Y > 0:
            assert Z ** (m - 1) <= 4 * Y
            boundary_checks['threshold_predecessor_equality'] += Z ** (m - 1) == 4 * Y
        selector_rows += 1
    for Y0 in range(1, 13):
        initial = least(Z, Y0)
        for M in range(1, initial + 1):
            assert Z ** (M - 1) <= 4 * Y0
            eligible = []
            for alpha in range(5):
                for J in range(13):
                    if (J <= Z ** alpha and J ** M <= Y0 ** alpha
                            and 4 ** alpha * J ** (M + 1) <= Z ** (alpha * M)):
                        eligible.append((J, alpha))
            for Y in sorted({Y0, Y0 + 1, 2 * Y0, 3 * Y0 + 1, 64}):
                m = least(Z, Y)
                assert m >= M
                for J, alpha in eligible:
                    assert J ** m <= Y ** alpha
                    if m > M:
                        k = m - M - 1
                        assert 4 ** alpha * J ** m <= Z ** (alpha * (M + k))
                        assert Z ** (alpha * (M + k)) <= (4 * Y) ** alpha
                    capacity_checks += 1
                    boundary_checks['J_zero'] += J == 0
                    boundary_checks['alpha_zero'] += alpha == 0
                    boundary_checks['m_equals_M'] += m == M
                    boundary_checks['m_greater_M'] += m > M
                nontrivial = [(J, a) for J, a in eligible if J > 1 and a > 0]
                if len(nontrivial) >= 2:
                    (Jp, ap), (Jq, aq) = nontrivial[0], nontrivial[-1]
                    assert Jp ** m <= Y ** ap and Jq ** m <= Y ** aq
                    joint_checks += 1

# Missing-premise examples are small exact arithmetic, not original-problem examples.
Z, Y0, M, J, alpha, Y = 5, 6, 2, 6, 2, 7
m = least(Z, Y)
assert Z ** (M - 1) <= 4 * Y0 and J <= Z ** alpha and J ** M <= Y0 ** alpha
assert 4 ** alpha * J ** (M + 1) > Z ** (alpha * M)
assert J ** m > Y ** alpha
no_lookahead = {'Z': Z, 'Y0': Y0, 'M': M, 'J': J, 'alpha': alpha, 'Y': Y, 'least_m': m,
                'capacity_left': J ** m, 'capacity_right': Y ** alpha,
                'omitted_condition': 'lookahead'}
Z, Y0, M, J, alpha, Y = 2, 4, 5, 2, 3, 4
m = least(Z, Y)
assert Z ** (M - 1) <= 4 * Y0 and J <= Z ** alpha and J ** M <= Y0 ** alpha
assert 4 ** alpha * J ** (M + 1) <= Z ** (alpha * M)
assert m == M and J ** m <= Y ** alpha
assert 4 * Y < Z ** (4 * Y) and J ** (4 * Y) > Y ** alpha
oversize = {'Z': Z, 'Y': Y, 'M': M, 'J': J, 'alpha': alpha, 'least_m': m,
            'existence_witness': 4 * Y, 'least_capacity_left': J ** m,
            'capacity_right': Y ** alpha, 'oversize_capacity_left': J ** (4 * Y)}

# Only tiny basis examples. No actual 81k-bit or 14M-bit five-row powers are expanded.
bases = [(2, 3, 1, 1, 1, 1), (3, 5, 2, 1, 2, 1), (5, 7, 5, 2, 5, 2),
         (7, 11, 3, 1, 3, 1), (0, 2, 0, 1, 1, 1), (1, 1, 0, 1, 0, 1)]
short_checks = {'rate': 0, 'base': 0, 'lookahead': 0, 'all_three': 0}
for p, Z, a, b, u, v in bases:
    assert b > 0 and v > 0 and p ** b <= 2 ** a and 2 ** u <= Z ** v
    for N in range(6):
        for alpha in range(6):
            for M in range(5):
                for H in range(6):
                    rate = a * v * N <= u * b * alpha
                    base = a * N * M <= b * H * alpha
                    look = 2 * alpha * b * v + a * v * N * (M + 1) <= u * b * alpha * M
                    if rate:
                        assert p ** N <= Z ** alpha
                        short_checks['rate'] += 1
                    if base:
                        assert (p ** N) ** M <= (2 ** H) ** alpha
                        short_checks['base'] += 1
                    if look:
                        assert 4 ** alpha * (p ** N) ** (M + 1) <= Z ** (alpha * M)
                        short_checks['lookahead'] += 1
                    short_checks['all_three'] += rate and base and look

prefix = 'Math.B699.DiscretePadeSelector.'
modules = []
for name in ['LeastExponent.lean', 'ShortPowerBounds.lean']:
    p = HERE / name
    text = p.read_text(encoding='utf-8')
    assert 'UNCOMPILED CANDIDATE' in text
    assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*axiom\s|Real\.log', text, re.M)
    declarations = []
    for line, row in enumerate(text.splitlines(), 1):
        match = re.match(r'(def|theorem)\s+(\w+)', row)
        if match:
            declarations.append({'kind': match[1], 'name': prefix + match[2], 'line': line})
    prints = re.findall(r'^#print axioms (\S+)', text, re.M)
    assert sorted(prints) == sorted(x['name'] for x in declarations)
    modules.append({'file': name, **digest(p), 'declarations': declarations, 'audit_roots': prints,
                    'imports': re.findall(r'^import (\S+)', text, re.M)})

mathlib = Path('D:/CodingProject/Math/.lake/packages/mathlib')
lean = Path('D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1')
cache = {}
for module in ['Mathlib.Data.Nat.Find', 'Mathlib.Data.Nat.Basic', 'Mathlib.Tactic.Ring']:
    p = mathlib / '.lake/build/lib/lean' / (module.replace('.', '/') + '.olean')
    assert p.is_file()
    cache[module] = True
assert (lean / 'lib/lean/Lean/Elab/Tactic/Omega.olean').is_file()
cache['Lean.Elab.Tactic.Omega'] = True
sources = [PLAN / n for n in ['REPORT.md', 'NEXT_LEMMA.md', 'short-power-bases.json',
                              'OBLIGATIONS.json', 'FREEZE_V1.json']]
sources += [mathlib / 'Mathlib/Data/Nat/Find.lean', mathlib / 'Mathlib/Data/Nat/Basic.lean',
            lean / 'src/lean/Init/Data/Nat/Basic.lean', lean / 'src/lean/Init/Data/Nat/Lemmas.lean']
result = {'utc': datetime.now(timezone.utc).isoformat(),
          'status': 'small exact arithmetic and static source audit; no Lean invoked',
          'selector_rows': selector_rows, 'capacity_checks': capacity_checks, 'same_m_joint_checks': joint_checks,
          'boundary_checks': boundary_checks, 'short_basis_checks': short_checks,
          'small_ranges': {'Z': [2, 6], 'Y': [0, 64], 'Y0': [1, 12], 'alpha': [0, 4], 'J': [0, 12]},
          'Y_zero_previous_bound_fails': {'Z': 2, 'Y': 0, 'm': 0, 'previous_power': 1, 'four_Y': 0},
          'lookahead_is_material': no_lookahead, 'existence_witness_is_not_selector': oversize,
          'candidate_modules': modules, 'total_audit_roots': sum(len(x['audit_roots']) for x in modules),
          'imports_already_cached': cache, 'source_hashes': {str(p): digest(p) for p in sources},
          'actual_five_row_power_instances_recomputed': 0,
          'elapsed_seconds': round(time.perf_counter() - START, 6)}
(HERE / 'small-checks.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({k: result[k] for k in ['status', 'selector_rows', 'capacity_checks',
                  'same_m_joint_checks', 'boundary_checks', 'short_basis_checks', 'total_audit_roots',
                  'elapsed_seconds']}, ensure_ascii=False))

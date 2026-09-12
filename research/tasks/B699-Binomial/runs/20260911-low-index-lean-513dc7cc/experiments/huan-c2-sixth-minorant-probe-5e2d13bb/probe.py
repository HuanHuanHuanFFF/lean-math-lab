"""One fixed sixth-grid LP, explicit free-variable split, 120-second limit.

No installations, Lean, or basis changes. Run once from the worktree root.
Existing result/timeout records prevent accidental solver reruns.
"""
from datetime import datetime, timezone
from decimal import Decimal, localcontext
from fractions import Fraction as F
from hashlib import sha256
from pathlib import Path
import json
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[6]
N = 30
DEN = 6
PERIOD = 6
SOLVER_LIMIT = 120


def save(name, data):
    (HERE / name).write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')


def floor(x):
    return x.numerator // x.denominator


def solve():
    begin = time.perf_counter()
    import sympy
    from sympy.solvers.simplex import linprog
    model = json.loads((HERE / 'model.json').read_bytes())
    c = model['reduced_cost_integer_1e9']
    reduced = [row[1:] for row in model['A']]
    print(json.dumps({'phase': 'solver_started', 'sympy': sympy.__version__,
                      'nonnegative_variables': 2 * (N - 1)}), flush=True)
    value, solution = linprog([-v for v in c] + c,
                             [row + [-v for v in row] for row in reduced], model['b'])
    rest = [F(str(solution[i] - solution[i + N - 1])) for i in range(N - 1)]
    weights = [-sum((F(j) * rest[j - 2] for j in range(2, N + 1)), F(0))] + rest
    save('candidate.json', {
        'status': 'SOLVER_CANDIDATE_PENDING_INDEPENDENT_EXACT_CHECK',
        'weights': list(map(str, weights)),
        'quantized_minimum': str(value),
        'sympy_version': sympy.__version__,
        'seconds_including_import': time.perf_counter() - begin,
        'not_a_true_log_optimality_claim': True,
    })
    print(json.dumps({'phase': 'solver_returned', 'seconds': time.perf_counter() - begin}), flush=True)


def main():
    for name in ('run-status.json', 'candidate.json', 'verification.json'):
        if (HERE / name).exists():
            raise SystemExit('Refusing another solver execution: ' + name + ' already exists')
    started = datetime.now(timezone.utc)
    source_names = [
        '../huan-c2-factorial-minorant-probe-5e2d13bb/REPORT.md',
        '../huan-c2-factorial-minorant-probe-5e2d13bb/model.json',
        '../huan-c2-factorial-minorant-probe-5e2d13bb/verification.json',
        '../huan-c2-factorial-minorant-probe-5e2d13bb/run_lp.py',
        '../huan-c2-factorial-minorant-probe-5e2d13bb/verify_exact.py',
        '../huan-c2-factorial-minorant-32-probe-5e2d13bb/REPORT.md',
        '../huan-c2-factorial-minorant-32-probe-5e2d13bb/model.json',
        '../huan-c2-factorial-minorant-32-probe-5e2d13bb/result.json',
        '../huan-c2-factorial-minorant-32-probe-5e2d13bb/probe.py',
        '../huan-c2-factorial-minorant-32-probe-5e2d13bb/independent-feasibility-recheck.json',
        '../../../../../../external-results/20260911-proc-r2-ea89a10a/payload/b699-proc-r2-resumed-20260911/notes/PROOFS.md',
    ]
    save('SOURCE_MAP.json', {'sources': [
        {'path': name, 'sha256': sha256((HERE / name).read_bytes()).hexdigest(),
         'bytes': (HERE / name).stat().st_size} for name in source_names]})
    save('route.json', {
        'owner': '/root/c2_growth_audit_resume',
        'task_start_utc': '2026-09-12T08:06:55+00:00',
        'checkpoint_utc': '2026-09-12T08:26:55+00:00',
        'checkpoint_is_total_deadline': False,
        'motivation': 'Denominator3/6 residue orbits were outside the old half-integer period2 basis.',
        'only_model': 'a=j/6,j=1..30; period6; sum a*w=0; f<=g',
        'extra_constraint_j': 54,
        'g': 'indicator(floor(9t)-2floor(4t)-floor(t)==2), a C1 layer',
        'bridge_to_C2': 'Paper C1/C2 divides9m; m>0; no new Lean acceptance',
        'target_rate': '0.910560352 per original m',
        'solver_limit_seconds': SOLVER_LIMIT,
        'old_positive_baseline': 'w(1/2)=1,w(1)=-1,w(4)=-1,w(9/2)=1; rate9log3-13log2',
        'expected_frontier': 'Only a superior feasible minorant could unlock elementary effective growth; actual C2/Padé and all residues still required.',
        'stop_rule': 'One solver call only; on insufficient result or timeout freeze without changing columns, period, family, objective scale, or dependencies.',
        'scope': 'This directory only; no Lean, downloads, installs, large prime tables, commits or pushes.',
    })
    basis_pts = {F(6 * k, j) for j in range(1, N + 1) for k in range(j + 1)}
    g_pts = {F(k, a) for a in (1, 4, 9) for k in range(PERIOD * a + 1)}
    points = sorted(basis_pts | g_pts)
    lefts = points[:-1]
    A = [[floor(F(j, DEN) * t) for j in range(1, N + 1)] for t in lefts]
    b = [int(floor(9 * t) - 2 * floor(4 * t) - floor(t) == 2) for t in lefts]
    assert F(1, 9) in points and F(1, 9) not in basis_pts
    assert all(row[0] == 0 for row in A)
    baseline = [0] * N
    for j, w in ((3, 1), (6, -1), (24, -1), (27, 1)):
        baseline[j - 1] = w
    assert sum(j * w for j, w in enumerate(baseline, 1)) == 0
    assert all(sum(a * w for a, w in zip(row, baseline)) <= rhs for row, rhs in zip(A, b))
    with localcontext() as context:
        context.prec = 50
        c = [int((Decimal(j) / 6 * Decimal(j).ln() * 10 ** 9).to_integral_value())
             for j in range(2, N + 1)]
    baseline_obj = sum(cost * w for cost, w in zip(c, baseline[1:]))
    assert baseline_obj > 0
    save('model.json', {
        'basis_numerators': list(range(1, N + 1)), 'basis_denominator': DEN,
        'period': PERIOD, 'basis_breakpoints': len(basis_pts),
        'g_only_breakpoints': list(map(str, sorted(g_pts - basis_pts))),
        'breakpoints': list(map(str, points)), 'intervals': len(lefts),
        'A': A, 'b': b, 'reduced_cost_integer_1e9': c,
        'eliminated': 'w1=-sum_(j=2..30) j*w_j; floor(t/6)=0 on[0,6)',
        'free_variable_implementation': '29 unrestricted variables expressed as58 nonnegative positive/negative parts',
        'objective': 'approximate discovery only: nearest integer to1e9*(j/6)*log(j)',
        'D_baseline_weights': baseline, 'D_baseline_quantized_objective': baseline_obj,
    })
    print(json.dumps({'phase': 'model_ready', 'intervals': len(lefts),
                      'g_only_breakpoints': len(g_pts - basis_pts), 'nonnegative_variables': 58}), flush=True)
    state = {'status': 'RUNNING_ONE_SOLVER_CALL', 'started_utc': started.isoformat(),
             'solver_calls': 1, 'solver_limit_seconds': SOLVER_LIMIT}
    save('run-status.json', state)
    begin = time.perf_counter()
    try:
        completed = subprocess.run([sys.executable, '-B', str(Path(__file__)), '--solve'],
                                   cwd=ROOT, capture_output=True, text=True, timeout=SOLVER_LIMIT)
        (HERE / 'run.log').write_text(completed.stdout + completed.stderr, encoding='utf-8')
        state.update(solver_exit_code=completed.returncode,
                     solver_seconds=time.perf_counter() - begin,
                     status='SOLVER_RETURNED' if completed.returncode == 0 else 'SOLVER_FAILED_STOPPED')
    except subprocess.TimeoutExpired as error:
        def decode(x):
            return x.decode(errors='replace') if isinstance(x, bytes) else (x or '')
        (HERE / 'run.log').write_text(decode(error.stdout) + decode(error.stderr), encoding='utf-8')
        state.update(status='SOLVER_TIMEOUT_STOPPED', solver_seconds=time.perf_counter() - begin)
        save('run-status.json', state)
        print(json.dumps(state), flush=True)
        return
    save('run-status.json', state)
    if completed.returncode != 0:
        print(json.dumps(state), flush=True)
        return
    checked = subprocess.run([sys.executable, '-B', str(HERE / 'verify_exact.py')],
                             cwd=ROOT, capture_output=True, text=True, timeout=30)
    (HERE / 'verification.log').write_text(checked.stdout + checked.stderr, encoding='utf-8')
    state.update(verification_exit_code=checked.returncode,
                 status='VERIFIED_CANDIDATE_STOPPED' if checked.returncode == 0 else 'EXACT_CHECK_FAILED_STOPPED')
    save('run-status.json', state)
    print(checked.stdout + checked.stderr, end='', flush=True)
    print(json.dumps(state), flush=True)


if __name__ == '__main__':
    if sys.argv[1:] == ['--solve']:
        solve()
    elif not sys.argv[1:]:
        main()
    else:
        raise SystemExit('Unexpected arguments')

"""Read-only exact stage checks, then create a hash manifest of frozen artifacts."""
from pathlib import Path
from fractions import Fraction
from datetime import datetime, timezone
import hashlib
import json

ROOT = Path(__file__).resolve().parent
WORKTREE = Path.cwd()
RUN = ROOT.parents[1]
ROWS = (1, 4, 5, 6)
POINTS = [(x, r-x) for r in ROWS for x in range(r+1)]


def record(path):
    data = path.read_bytes()
    return {'path': path.relative_to(WORKTREE).as_posix(), 'bytes': len(data),
            'sha256': hashlib.sha256(data).hexdigest()}


def main():
    data = json.loads((ROOT/'line_system_probe.json').read_text())
    lambdas = [Fraction(v) for v in data['dual']['weights']]
    assert all(v >= 0 for v in lambdas)
    assert all(sum(v for p, v in zip(POINTS, lambdas) if sum(p) == r) == 1 for r in ROWS)
    vectors = json.loads((ROOT/'finite_cone_vectors.json').read_text())
    assert all(sum(v*o for v, o in zip(lambdas, f['orders'])) <= f['degree'] for f in vectors)
    line_check = json.loads((ROOT/'grid_line_verification.json').read_text())
    assert line_check['verified'] and line_check['grid_lines'] == 99
    assert line_check['max_zero_branch_n_upper'] == 1098
    witness = (ROOT/'grid_line_witnesses.json').read_bytes()
    assert hashlib.sha256(witness).hexdigest() == line_check['witness_sha256']
    assert json.loads(witness) == [[1, -1, 1, 27, 13, 23]]
    files = [RUN/'notes/geometry/01-initial-route.md', RUN/'notes/geometry/02-first-decision.md']
    files += [ROOT/f for f in ['line_system_probe.py', 'line_system_probe.json',
              'finite_cone_vectors.json', 'verify_grid_lines.py', 'grid_line_verification.json',
              'grid_line_witnesses.json', 'freeze_stage1.py']]
    old = WORKTREE/'research/tasks/B699-Binomial/runs/20260916-paper-frontier-a1c74e93'
    sources = [old/'notes/h023/PROOFS.md', old/'experiments/h023/atoms.json',
               old/'experiments/h023/probe_dual.py', old/'experiments/h023/probe_gcd_frontier.py',
               old/'experiments/h023/discover_atoms.py']
    replay = WORKTREE/'.tools/replay/a1c74e93-h023'
    sources += [replay/f for f in ['exploration/oldodd/failure_models.json',
                'exploration/probe7_cubic_pool.json', 'evidence/height_certificates.json']]
    output = {'stage': 'geometry-stage1-grid-lines',
              'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
              'baseline': 'a7468a887224e35906d8486bd18d21d0e8368393',
              'checks': {'line_count': 99, 'row_count': 4, 'point_count': 20,
                         'finite_cone_vectors': len(vectors), 'all_rational_inequalities': True,
                         'n_upper': 1098, 'finite_witness': [27, 13, 23]},
              'artifacts': [record(p) for p in files], 'sources': [record(p) for p in sources],
              'remaining': 'nonlinear common factors; strict D<W nonzero system; H023 and R7 not closed; no Lean'}
    path = ROOT/'stage1_manifest.json'
    path.write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({'verified': True, 'artifacts': len(files), 'sources': len(sources),
                      'manifest_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
                      'checks': output['checks']}))


if __name__ == '__main__':
    main()

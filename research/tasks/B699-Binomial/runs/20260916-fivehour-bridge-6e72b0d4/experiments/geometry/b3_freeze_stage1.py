from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json

ROOT = Path(__file__).resolve().parent
WORKTREE = Path.cwd()
RUN = ROOT.parents[1]

def info(path):
    raw = path.read_bytes()
    return {'path': path.relative_to(WORKTREE).as_posix(), 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest()}

def main():
    v = json.loads((ROOT/'b3_verification.json').read_text())
    c = json.loads((ROOT/'b3_curve_models.json').read_text())
    assert v['status'] == 'PASS' and v['independent_no_root_checks'] == 2428
    assert sum(len(x) for x in v['eliminated_h'].values()) == 64
    assert c['verified'] and len(c['models']) == 6
    assert info(ROOT/'b3_cover_certificate.json')['sha256'] == v['certificate_sha256']
    files = [RUN/'notes/geometry/b3_01-scope.md', RUN/'notes/geometry/b3_02-period-and-curves.md']
    files += sorted(p for p in ROOT.iterdir() if p.is_file() and p.name.startswith('b3_') and p.name != 'b3_stage1_manifest.json')
    source = WORKTREE/'research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/intake/20260915-daily-results/materials/B-normalized-three-neighbor-and-square-rows/notes/PROOFS.md'
    out = {'stage': 'b3-m1-all-h-period-and-six-curves', 'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
           'artifacts': [info(p) for p in files], 'source': info(source),
           'checks': {'templates': 78, 'whole_templates_excluded': 64, 'remaining_templates': 14,
                      'period': 55440, 'no_root_tests': 2428, 'rational_curve_models': 6},
           'scope': 'normalized b=3,m=1 square-row family only; positive h25 prior parent closure not counted as new; no Lean',
           'remaining': 'height and complete-group acceptance for residual curves; local survivors are not original counterexamples'}
    path = ROOT/'b3_stage1_manifest.json'
    path.write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'files': len(files), 'total_bytes': sum(f['bytes'] for f in out['artifacts']),
                      'manifest_sha256': info(path)['sha256'], 'checks': out['checks']}))

if __name__ == '__main__':
    main()

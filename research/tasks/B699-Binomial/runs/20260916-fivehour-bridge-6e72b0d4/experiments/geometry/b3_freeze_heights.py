from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
WORKTREE = Path.cwd()

def item(path):
    data = path.read_bytes()
    return {'path': path.relative_to(WORKTREE).as_posix(), 'bytes': len(data), 'sha256': hashlib.sha256(data).hexdigest()}

def main():
    old = json.loads((ROOT/'b3_stage1_manifest.json').read_text())
    for r in old['artifacts']:
        assert item(WORKTREE/r['path'])['sha256'] == r['sha256']
    matrices = json.loads((ROOT/'b3_height_matrices.json').read_text())
    check = json.loads((RUN/'reviews/geometry/b3-height-matrix-check.json').read_text())
    generic = json.loads((RUN/'reviews/geometry/cubic-generic-height-check.json').read_text())
    assert matrices['status'] == check['status'] == generic['status'] == 'PASS'
    assert check['source_sha256'] == item(ROOT/'b3_height_matrices.json')['sha256']
    files = [ROOT/'b3_height_matrices.py', ROOT/'b3_height_matrices.json', ROOT/'b3_freeze_heights.py']
    files += [RUN/'reviews/geometry'/name for name in ('cubic-generic-height-check.py',
              'cubic-generic-height-check.json', 'cubic-generic-height-acceptance.md',
              'b3-height-matrix-check.py', 'b3-height-matrix-check.json')]
    sources = [RUN/'notes/cubic/09-FROZEN.json', RUN/'experiments/cubic/stage09_generic_height.py',
               RUN/'experiments/cubic/stage09-generic-height-20260915T205103Z.json',
               RUN/'experiments/main/b3_five_curve_mw-output-20260915T205232Z.txt']
    out = {'stage': 'b3-five-mw-height-matrices', 'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
           'artifacts': [item(p) for p in files], 'sources': [item(p) for p in sources],
           'previous_b3_artifacts_preserved': len(old['artifacts']),
           'constants': check['models'], 'generic_height': 'h-33<H<h+9',
           'inverse_height': 's<119+3H<=119+3C M^2',
           'status': 'exact arithmetic and paper certificate; 25 independent point/pair replays; no Lean',
           'remaining': 'RF/lattice M bounds and final full-period consumer for each residual branch'}
    path = ROOT/'b3_height_manifest.json'
    path.write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'files': len(files), 'total_bytes': sum(x['bytes'] for x in out['artifacts']),
                      'manifest_sha256': item(path)['sha256'], 'constants': out['constants']}))

if __name__ == '__main__':
    main()

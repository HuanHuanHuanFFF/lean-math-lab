"""Freeze boundary compression and bounded failed-structure probes."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json

ROOT = Path(__file__).resolve().parent
WORKTREE = Path.cwd()
RUN = ROOT.parents[1]


def info(path):
    data = path.read_bytes()
    return {'path': path.relative_to(WORKTREE).as_posix(), 'bytes': len(data),
            'sha256': hashlib.sha256(data).hexdigest()}


def main():
    stage2 = json.loads((ROOT/'stage2_manifest.json').read_text())
    for item in stage2['artifacts']:
        assert info(WORKTREE/item['path'])['sha256'] == item['sha256']
    boundary = json.loads((ROOT/'boundary_p32749_result.json').read_text())
    assert boundary['rank'] == 2387 and boundary['nullity'] == 2
    assert boundary['identity_with_frozen_pencil']['grid_identity_points'] == 14884
    assert boundary['identity_with_frozen_pencil']['all_equal']
    ode = json.loads((ROOT/'differential_structure.json').read_text())
    assert [t['rank'] for t in ode['tests']] == [39, 63, 93]
    assert all(t['nullity'] == 0 for t in ode['tests'])
    rec = json.loads((ROOT/'coefficient_recurrence.json').read_text())
    assert len(rec['tests']) == 28 and all(t['rank'] == 60 and t['nullity'] == 0 for t in rec['tests'])
    crt = json.loads((ROOT/'crt_v1/state.json').read_text())
    assert len(crt['primes']) == 17 and int(crt['modulus']).bit_length() == 334
    files = [RUN/'notes/geometry'/name for name in ('06-boundary-module-plan.md',
             '07-positive-basis-obstruction.md', '08-stage3-decision.md')]
    files += [ROOT/name for name in ('boundary_compressed.py', 'boundary_p32749.log',
              'boundary_p32749_result.json', 'boundary_p32749_kernel.npz', 'crt_probe.py',
              'crt_v1.log', 'differential_structure.py', 'differential_structure.json',
              'differential_structure.log', 'coefficient_recurrence.py', 'coefficient_recurrence.json',
              'coefficient_recurrence.log', 'freeze_stage3.py')]
    files += sorted(p for p in (ROOT/'crt_v1').iterdir() if p.is_file())
    out = {'stage': 'geometry-stage3-boundary-module-and-obstructions',
           'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
           'artifacts': [info(path) for path in files],
           'prior_stage_preserved': len(stage2['artifacts']),
           'checks': {'compressed_rank': 2387, 'columns': 2389, 'identity_grid': 14884,
                      'operator_ranks': [39, 63, 93], 'recurrence_full_rank_systems': 28,
                      'crt_modulus_bits': 334, 'crt_additional_primes': 16},
           'status': 'author paper/exact finite evidence; no new original-domain closure; no Lean',
           'next': 'parent-assigned independent review of cubic elliptic-logarithm/LLL evidence'}
    path = ROOT/'stage3_manifest.json'
    path.write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'verified': True, 'files': len(files),
                      'total_bytes': sum(f['bytes'] for f in out['artifacts']),
                      'manifest_sha256': info(path)['sha256']}))


if __name__ == '__main__':
    main()

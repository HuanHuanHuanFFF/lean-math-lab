"""Freeze the D246 rational-zero exclusion and effective-height evidence."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import math

ROOT = Path(__file__).resolve().parent
WORKTREE = Path.cwd()
RUN = ROOT.parents[1]


def info(path):
    raw = path.read_bytes()
    return {'path': path.relative_to(WORKTREE).as_posix(), 'bytes': len(raw),
            'sha256': hashlib.sha256(raw).hexdigest()}


def main():
    stage1 = json.loads((ROOT/'stage1_manifest.json').read_text())
    preserved = stage1['artifacts']+stage1['sources']
    for item in preserved:
        assert info(WORKTREE/item['path'])['sha256'] == item['sha256'], item['path']
    result = json.loads((ROOT/'projective_d246_result.json').read_text())
    integer = json.loads((ROOT/'d246_integer_verification.json').read_text())
    residual = json.loads((ROOT/'d246_residual_resultant.json').read_text())
    height = json.loads((ROOT/'d246_height_bound.json').read_text())
    assert result['rank'] == 7501 and result['nullity'] == 2
    assert result['all_kernel_equations_verified'] == 7501
    assert result['integer_dot_upper'] < 2**53
    assert integer['int64_full_taylor_zero_equations'] == 29920
    assert result['kernel_sha256'] == integer['kernel_sha256'] == residual['kernel_sha256']
    assert result['kernel_sha256'] == info(ROOT/'projective_d246_kernel.npz')['sha256']
    p = residual['p']
    polynomial = residual['coefficients_increasing']
    assert len(polynomial) == 79 and polynomial[-1] != 0
    roots = []
    for x in range(p):
        value = 0
        for c in reversed(polynomial):
            value = (value*x+c) % p
        if value == 0:
            roots.append(x)
    assert not roots
    assert sum(f['exponent'] for f in residual['source_factors']) == 29204
    assert height['absolute_n_bits'] == 6572261
    files = [RUN/'notes/geometry'/name for name in
             ('03-fixed-components-plan.md', '04-projective-compute-checkpoint.md', '05-h023-absolute-height.md')]
    names = ['unload_systems.py', 'unload_systems.json', 'projective_kernel.py',
             'projective_small_checkpoint.json', 'projective_small_result.json', 'projective_small_kernel.npz',
             'check_projective_small.py', 'projective_small_verification.json',
             'projective_d246_checkpoint.json', 'projective_d246_result.json', 'projective_d246_kernel.npz',
             'projective_d246.log', 'verify_d246_integer.py', 'd246_integer_verification.json',
             'tangent_probe.py', 'd246_tangent_probe.json', 'residual_resultant.py',
             'd246_residual_resultant.json', 'height_bound.py', 'd246_height_bound.json', 'freeze_stage2.py']
    files += [ROOT/name for name in names]
    out = {'stage': 'geometry-stage2-h023-rational-zero-exclusion',
           'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
           'source_baseline': 'a7468a887224e35906d8486bd18d21d0e8368393',
           'artifacts': [info(path) for path in files],
           'stage1_manifest_sha256': info(ROOT/'stage1_manifest.json')['sha256'],
           'prior_artifacts_and_sources_preserved': len(preserved),
           'checks': {'exact_modular_rank': 7501, 'kernel_dimension': 2,
                      'independent_int64_zero_conditions': 29920,
                      'residual_degree': 78, 'source_factor_degree': 29204,
                      'Fp_roots': 0, 'P1_infinity_root': False,
                      'absolute_n_bits': 6572261},
           'claim': 'H023 and NC7 imply n < 2^6572261, by paper bridge plus exact finite certificates',
           'status': 'author paper/computational claim, submitted for main-task review; no Lean',
           'remaining': 'enormous finite endpoint not completed; H023, i7, R7 remain open'}
    path = ROOT/'stage2_manifest.json'
    path.write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'verified': True, 'files': len(files),
                      'total_bytes': sum(f['bytes'] for f in out['artifacts']),
                      'manifest_sha256': info(path)['sha256'], 'checks': out['checks']}))


if __name__ == '__main__':
    main()

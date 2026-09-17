from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
WORKTREE = Path.cwd()


def item(path):
    data = path.read_bytes()
    return {'path': path.relative_to(WORKTREE).as_posix(), 'bytes': len(data),
            'sha256': hashlib.sha256(data).hexdigest()}


def main():
    source_manifest = RUN/'notes/cubic/11-FROZEN.json'
    fixed = json.loads(source_manifest.read_text())
    for record in fixed['files']:
        actual = item(RUN/record['path'])
        assert actual['bytes'] == record['bytes'] and actual['sha256'] == record['sha256']
    for record in fixed['primary_source_cache']+[fixed['adopted_old_proof']]:
        actual = item(WORKTREE/record['path'])
        assert actual['bytes'] == record['bytes'] and actual['sha256'] == record['sha256']
    check = json.loads((ROOT/'general-loss-check.json').read_text())
    assert check['status'] == 'PASS'
    assert check['source_hashes']['notes/cubic/11-FROZEN.json'] == item(source_manifest)['sha256']
    old = json.loads((ROOT/'b3-five-review-manifest.json').read_text())
    for record in old['artifacts']:
        assert item(WORKTREE/record['path'])['sha256'] == record['sha256']
    files = [ROOT/name for name in ('general-loss-check.py', 'general-loss-check.json',
             'general-loss-acceptance.md', 'general-loss-four-factor-bottleneck.md', 'general-loss-freeze.py')]
    sources = [source_manifest, WORKTREE/fixed['adopted_old_proof']['path'],
               WORKTREE/fixed['primary_source_cache'][0]['path'],
               RUN.parent/'20260916-paper-frontier-a1c74e93/OVERVIEW.md']
    output = {'stage': 'general-canonical-loss-height-independent-acceptance',
              'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
              'reviewer': '/root/geometry', 'artifacts': [item(path) for path in files],
              'sources': [item(path) for path in sources],
              'all_parameter_checks': 'PASS',
              'accepted': 'Every actual square-NC3 canonical loss b satisfies log(n)<=2*(960*b^3)^600000',
              'Masser_scope': 'all integral solutions in genus-one three-distinct-infinity-point case',
              'four_loss_identity': 'product b=c*(n-1), c in {1,3}',
              'not_new_coverage': 'LOSS product bound m^2<64827*2^(6s) is dominated by already adopted m^6<3*2^(2s)',
              'remaining': 'b and s unbounded, huge finite ends unexhausted, no smaller NC3 input constructed',
              'verification_level': 'paper and independent exact symbolic arithmetic, no Lean',
              'previous_five_curve_review_artifacts_preserved': len(old['artifacts'])}
    dest = ROOT/'general-loss-review-manifest.json'
    assert not dest.exists(), 'Keep frozen stages immutable.'
    dest.write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({'files': len(files), 'total_bytes': sum(r['bytes'] for r in output['artifacts']),
                      'manifest_sha256': item(dest)['sha256'],
                      'fixed_cubic_manifest_sha256': item(source_manifest)['sha256'],
                      'previous_stage_preserved': len(old['artifacts'])}))


if __name__ == '__main__':
    main()

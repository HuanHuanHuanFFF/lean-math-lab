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
    previous = [ROOT/'b3_stage1_manifest.json', ROOT/'b3_height_manifest.json']
    preserved = 0
    for manifest in previous:
        for record in json.loads(manifest.read_text())['artifacts']:
            assert item(WORKTREE/record['path'])['sha256'] == record['sha256']
            preserved += 1
    tail = json.loads((ROOT/'b3_conditional_tail.json').read_text())
    check = json.loads((ROOT/'b3_conditional_tail_verification.json').read_text())
    assert tail['status'] == check['status'] == 'PASS'
    assert not tail['unresolved'] and not check['unresolved']
    assert check['independent_Fp_gcd_checks'] == check['expected_sparse_exponents'] == 1794
    assert check['source_tail_sha256'] == item(ROOT/'b3_conditional_tail.json')['sha256']
    files = [ROOT/name for name in ('b3_conditional_tail.py', 'b3_conditional_tail.json',
             'b3_verify_conditional_tail.py', 'b3_conditional_tail_verification.json',
             'b3_freeze_tail.py')]
    files += [RUN/'notes/geometry/b3_03-conditional-tail-consumer.md']
    sources = previous+[ROOT/'b3_verification.json', ROOT/'b3_verify_certificate.py',
                        ROOT/'b3_period_sieve.json']
    output = {'stage': 'b3-ten-template-conditional-tail',
              'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
              'artifacts': [item(path) for path in files],
              'sources': [item(path) for path in sources],
              'prior_artifacts_preserved': preserved,
              'finite_scope': {'lower_s_inclusive': 10, 'upper_s_exclusive': 7125119,
                               'sparse_cases': 1794, 'max_witness_prime': 223,
                               'unresolved': []},
              'status': 'finite exact Fp certificate; conditional unbounded consumer; no Lean',
              'remaining': 'separate acceptance of initial log bound, lattice lower bound, UP30, and low-s original-problem certificate'}
    path = ROOT/'b3_tail_manifest.json'
    path.write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({'files': len(files), 'total_bytes': sum(x['bytes'] for x in output['artifacts']),
                      'manifest_sha256': item(path)['sha256'], 'scope': output['finite_scope']}))


if __name__ == '__main__':
    main()

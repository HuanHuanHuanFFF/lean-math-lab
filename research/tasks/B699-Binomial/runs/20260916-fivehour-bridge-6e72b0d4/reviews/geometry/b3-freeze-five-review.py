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
    manifests = [RUN/'notes/cubic/10-FROZEN.json', RUN/'notes/cubic/10bc-FROZEN.json']
    source_count = 0
    for path in manifests:
        source = json.loads(path.read_text())
        for record in source['files']:
            actual = item(RUN/record['path'])
            assert actual['sha256'] == record['sha256'] and actual['bytes'] == record['bytes']
            source_count += 1
    previous = [RUN/'experiments/geometry'/name for name in
                ('b3_stage1_manifest.json', 'b3_height_manifest.json', 'b3_tail_manifest.json')]
    preserved = 0
    for path in previous:
        for record in json.loads(path.read_text())['artifacts']:
            assert item(WORKTREE/record['path'])['sha256'] == record['sha256']
            preserved += 1
    rf_files = [ROOT/f'b3-five-rf-independent-k{k}.json' for k in (7, 11, 16, 20, 25)]
    log_count = 0
    target_count = 0
    for path in rf_files:
        result = json.loads(path.read_text())
        assert result['status'] == 'PASS'
        assert result['conditional_common_M_lt'] == 250
        for record in result['source_hashes']:
            assert item(RUN/record['path'])['sha256'] == record['sha256']
        log_count += len(result['normalized_logs'])
        for phase in result['integer_lattice_checks']:
            assert phase['DIST100']
            assert all(v['distance_squared_over_M0_squared_floor'] > 100 for v in phase['margins'])
            target_count += len(phase['margins'])
    assert log_count == 28 and target_count == 30
    analytic_path = ROOT/'b3-five-analytic-independent.json'
    analytic = json.loads(analytic_path.read_text())
    assert analytic['status'] == 'PASS'
    for path, digest in analytic['source_hashes'].items():
        assert item(RUN/path)['sha256'] == digest
    files = rf_files+[analytic_path, ROOT/'b3-five-rf-independent.py',
                      ROOT/'b3-five-analytic-independent.py', ROOT/'b3-five-analytic-acceptance.md',
                      ROOT/'b3-freeze-five-review.py']
    pdf = WORKTREE/'.tools/replay/6e72b0d4-cubic/sources/Ellqua-v2.pdf'
    assert item(pdf)['sha256'] == '4d10be33587e7c398cf95184686e941caa139d0806eeba70ef215d8c5b25bd97'
    sources = manifests+previous+[pdf, ROOT/'cubic-rf-independent.py',
                RUN/'experiments/main/b3_five_curve_mw-output-20260915T205232Z.txt']
    output = {'stage': 'five-curve-independent-analytic-rf-lattice-acceptance',
              'frozen_at_utc': datetime.now(timezone.utc).isoformat(),
              'reviewer': '/root/geometry', 'artifacts': [item(path) for path in files],
              'sources': [item(path) for path in sources],
              'cubic_frozen_source_files_verified': source_count,
              'previous_geometry_artifacts_preserved': preserved,
              'independent_log_enclosures': log_count, 'integer_distance_checks': target_count,
              'accepted': 'under the fixed complete MW and source-model prerequisites, all five curves have M<250 and s<7125119; ten-template s>=10 tail is empty',
              'scope': 'paper proof and independent exact arithmetic; not Lean and not whole NC3/B699',
              'remaining': 'parent registration of original-model intake, low-s bottom, k2 four templates and old64-template coverage as one original-problem consumer'}
    dest = ROOT/'b3-five-review-manifest.json'
    assert not dest.exists(), 'Do not overwrite a frozen review.'
    dest.write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({'files': len(files), 'total_bytes': sum(x['bytes'] for x in output['artifacts']),
                      'manifest_sha256': item(dest)['sha256'],
                      'logs': log_count, 'distance_checks': target_count,
                      'prior_geometry_preserved': preserved, 'cubic_source_files_checked': source_count}))


if __name__ == '__main__':
    main()

"""Independent fixed-byte/source-adoption review; does not execute Lean."""
import hashlib
import json
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
DEADLINE = datetime.fromisoformat('2026-10-03T18:36:13+00:00')
HEAD = '9f07f6805253baec525a5c6df5ec56f0b320a2ad'
INTAKE_HEAD = 'b675203a969020af24104435e596443cdc8a3c20'
OLD_HEAD = '0315fa513e889c528ec756b490d9e632190a4b56'
BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
NEW = BASE + '20261004-nonprime-onehour/'
INTAKE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261004-nonprime-results/'


def require(ok, message):
    if not ok:
        raise RuntimeError(message)


def guard():
    require(datetime.now(timezone.utc) < DEADLINE, 'Source review deadline expired')


def git_bytes(head, path):
    return subprocess.run(['git', 'show', f'{head}:{path}'], cwd=REPO, check=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def main():
    guard()
    started = datetime.now(timezone.utc).isoformat()
    adoption = json.loads(git_bytes(HEAD, NEW + 'runtime/source-adoption-map.json'))
    rows = adoption['rows']
    expected = {
        'NonprimeCertificates.lean': (INTAKE_HEAD, INTAKE + 'objects/47/47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91.lean', 0),
        'AuditCertificates.lean': (INTAKE_HEAD, INTAKE + 'objects/17/17f7a4a2599cf2aa137e8c7b758d1330fd7d41152d71f5bb7fc94fd8a9c02589.lean', 1),
        'CompositeTransfer.lean': (INTAKE_HEAD, INTAKE + 'objects/72/7295efa1f6b517d7a35524539d80be5f814b7f9d05411eeea1136cc1eae7170e.lean', 1),
        'CompositeExact.lean': (OLD_HEAD, BASE + '20261003-gap-finite-fortymin/reviews/CompositeExactLegacy.lean', 1),
    }
    require({Path(row['path']).name for row in rows} == set(expected), 'Four source-adoption entries differ')
    bound = []
    for row in rows:
        guard()
        name = Path(row['path']).name
        head, old_path, changed_import_count = expected[name]
        old = git_bytes(head, old_path)
        new = git_bytes(HEAD, row['path'])
        require(len(new) == row['bytes'] and sha(new) == row['sha256'], 'New source bytes/SHA differ: ' + name)
        require(sha(old) == row['originalSha256'], 'Original source SHA differs: ' + name)
        new_lines = new.splitlines(keepends=True)
        old_lines = old.splitlines(keepends=True)
        require(len(new_lines) == len(old_lines), 'Source line count changed: ' + name)
        changes = [(i + 1, a.decode('utf-8').rstrip(), b.decode('utf-8').rstrip())
                   for i, (a, b) in enumerate(zip(old_lines, new_lines)) if a != b]
        require(len(changes) == changed_import_count, 'Non-import source changes: ' + name)
        require(all(a.startswith('import ') and b.startswith('import ') for _, a, b in changes), 'Mathematical source text changed: ' + name)
        path_parts = row['path'].removesuffix('.lean').split('/')
        module = '.'.join('«' + p + '»' if '-' in p or p[:1].isdigit() else p for p in path_parts)
        require(module == row['module'], 'Module/path mismatch: ' + name)
        bound.append({'path': row['path'], 'bytes': len(new), 'sha256': sha(new), 'module': module,
                      'originalCommit': head, 'originalPath': old_path, 'originalSha256': sha(old),
                      'onlyChangedLines': [{'line': i, 'old': a, 'new': b} for i, a, b in changes],
                      'mathematicalSourceTextUnchanged': True, 'moduleMode': 'legacy; no module header'})
    guard()
    report = {'status': 'source-adoption-reviewed-kernel-pending',
              'verifier': '/root/nonprime_source_review_20261004', 'startedUtc': started,
              'completedUtc': datetime.now(timezone.utc).isoformat(), 'hardDeadlineUtc': DEADLINE.isoformat(),
              'fixedSourceCommit': HEAD, 'sources': bound,
              'literalTargets': ['not Prime 4884', 'not Prime 4885', 'not Prime 4886', 'not Prime 4887', 'not Prime 4888'],
              'successorSeams': ['4884+1=4885', '4885+1=4886', '4886+1=4887', '4887+1=4888'],
              'fullExactRoots': ['B699CompositeVerify20261003.complete_' + str(k) + '_exact' for k in range(4885, 4889)]
                                + ['B699CompositeVerify20261003.complete_4885_4888_exact'],
              'semanticReview': 'All legal Nat n/j for each fixed index and Nat n/i/j for the closed 4885..4888 index interval; a single actual Nat.Prime p >= i divides both complete choose values. No Gap or other new mathematical hypothesis.',
              'oldSupplyImportUnchanged': True, 'oldSupplyArgumentsUnchanged': True,
              'genericMathematicalBodyUnchanged': True,
              'staticNonprimeAssessment': 'Pinned not_prime_mul and succ_succ_ne_one signatures fit all five factor pairs; numeral and successor defeq awaits actual compilation.',
              'remainingObligations': ['Fresh leaf module/AuditCertificates objects, exact types, transitive axiom audit, normal checker',
                                       'Fresh CompositeTransfer/CompositeExact objects, five literal type outputs, transitive axiom audit, normal checker',
                                       'Independent binding of each actual execution package before acceptance'],
              'newCompleteOriginalIndices': [], 'kernelExecutedByThisReview': False,
              'scriptSha256': sha(Path(__file__).read_bytes())}
    guard()
    target = HERE / 'SOURCE-ADOPTION-INDEPENDENT-REVIEW.json'
    target.write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': report['status'], 'report': str(target), 'sha256': sha(target.read_bytes()), 'sourceCount': len(bound)}))


if __name__ == '__main__':
    main()

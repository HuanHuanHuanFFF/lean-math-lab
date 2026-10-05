"""Produce a cold-readable final review inventory from actual scoped signatures.

No Lean run, publication, metadata backdating or assumption discharge.
"""
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
DEADLINE = datetime.fromisoformat('2026-10-05T09:34:27+00:00')

if __name__ == '__main__':
    now = datetime.now(timezone.utc)
    if now >= DEADLINE:
        raise ValueError('Original review deadline reached; no late signature or checkpoint')
    signatures, versions, roots = [], {}, {}
    for path in sorted(HERE.glob('*-INDEPENDENT-ACCEPTED.json')):
        raw = path.read_bytes()
        sig = json.loads(raw)
        binding_path = HERE / sig['binding']
        if hashlib.sha256(binding_path.read_bytes()).hexdigest() != sig['bindingSha256']:
            raise ValueError('A signed source/object binding changed')
        if datetime.fromisoformat(sig['signedUtc']) > now or sig['unconditionalCompleteOriginalIndexIncrement'] != 0:
            raise ValueError('Unexpected signature time or original coverage claim')
        signatures.append({'path': path.name, 'sha256': hashlib.sha256(raw).hexdigest(),
                           'status': sig['status'], 'fixedSourceCommit': sig['fixedSourceCommit'],
                           'runId': sig['actualRunId'], 'artifactId': sig['artifactId'],
                           'scopes': sig['acceptedStageScopes'], 'normalExits': sig['normalCheckerExits']})
        for row in sig['acceptedSources']:
            key = (row['path'], row['sha256'])
            versions[key] = {**row, 'signature': path.name}
        for name, axes in sig['actualCompleteTransitiveAxioms'].items():
            if name in roots and set(roots[name]) != set(axes):
                raise ValueError('Conflicting same-root AX acceptance')
            roots[name] = axes
    state = [json.loads((HERE / row['path']).read_bytes()) for row in signatures]
    supplied = {field: any(s[field] for s in state) for field in
                ['LPFullBoundSupplied', 'SmallLPSupplied', 'TailLPSupplied', 'Round2ConditionalConsumersSupplied']}
    contract_path = max(HERE.glob('REVIEW-CONTRACT-v*.json'),
                        key=lambda p: int(p.stem.removeprefix('REVIEW-CONTRACT-v')))
    contract = json.loads(contract_path.read_bytes())
    pending = [r['path'] for r in contract['sources'] if (r['path'], r['sha256']) not in versions]
    summary = {'verifier': '/root/local_power_verification', 'utc': now.isoformat(),
               'hardDeadlineUtc': DEADLINE.isoformat(), 'signatures': signatures,
               'acceptedUniqueSourceVersions': list(versions.values()), 'acceptedUniqueSourceVersionCount': len(versions),
               'acceptedUniqueTransitiveAxiomRoots': roots, 'acceptedUniqueAXRootCount': len(roots),
               **supplied, 'latestReviewedContract': contract_path.name, 'pendingReviewedSourcePaths': pending,
               'PsiSupplySupplied': False, 'genuineInfiniteGapSupplied': False,
               'unconditionalCompleteOriginalIndexIncrement': 0, 'R7Changed': False,
               'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]',
               'kernelRerunByVerifier': False, 'checkerMeaning': 'Pinned normal Lean replay, not a second kernel',
               'currentBranch': subprocess.run(['git', 'branch', '--show-current'], cwd=REPO,
                                               capture_output=True, check=True, text=True).stdout.strip(),
               'observedHead': subprocess.run(['git', 'rev-parse', 'HEAD'], cwd=REPO,
                                              capture_output=True, check=True, text=True).stdout.strip()}
    (HERE / 'FINAL-SUMMARY.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    rows = []
    for p in sorted(HERE.rglob('*')):
        if not p.is_file() or '__pycache__' in p.parts or p.name == 'REVIEWS-INVENTORY.json':
            continue
        raw = p.read_bytes()
        rows.append({'path': p.relative_to(REPO).as_posix(), 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest()})
    (HERE / 'REVIEWS-INVENTORY.json').write_text(json.dumps({'utc': now.isoformat(), 'members': rows,
          'excludedExactPath': 'REVIEWS-INVENTORY.json', 'scope': 'ordinary S-owned files, excluding derived Python caches'},
          ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'summary': str(HERE / 'FINAL-SUMMARY.json'), 'signatures': len(signatures),
                      'uniqueSources': len(versions), 'uniqueAXRoots': len(roots), 'pendingSources': len(pending), **supplied}))

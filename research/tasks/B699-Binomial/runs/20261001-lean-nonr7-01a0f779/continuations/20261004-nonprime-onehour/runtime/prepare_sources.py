"""Materialize fixed Git bytes and record the three import-only adaptations."""
from pathlib import Path
import hashlib
import json
import subprocess

REPO = Path.cwd().resolve()
BASE = Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations')
NEW = BASE / '20261004-nonprime-onehour'
OLD = BASE / '20261003-gap-finite-fortymin'
INTAKE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261004-nonprime-results/objects/'
COMMIT = 'b675203a969020af24104435e596443cdc8a3c20'

def sha(raw):
    return hashlib.sha256(raw).hexdigest()

def module(path):
    return '.'.join('«' + x + '»' if '-' in x or x[:1].isdigit() else x for x in path[:-5].split('/'))

def git_object(part):
    return subprocess.check_output(['git', 'show', COMMIT + ':' + INTAKE + part])

rows = []
def store(name, raw, origin, original, change):
    path = NEW / 'lean' / name
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists() and path.read_bytes() != raw:
        raise RuntimeError('Refuse overwriting changed candidate: ' + str(path))
    path.write_bytes(raw)
    row = {'path': path.as_posix(), 'bytes': len(raw), 'sha256': sha(raw), 'module': module(path.as_posix())}
    rows.append({**row, 'origin': origin, 'originalSha256': sha(original), 'change': change,
                 'acceptance': 'pending new kernel and independent binding'})
    return row

cert_raw = git_object('47/47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91.lean')
assert len(cert_raw) == 835 and sha(cert_raw) == '47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91'
cert = store('NonprimeCertificates.lean', cert_raw, COMMIT + ':47a4cfc1', cert_raw, 'exact original bytes')
old_cert = module((OLD / 'supply/NonprimeCertificates.lean').as_posix())
audit_raw = git_object('17/17f7a4a2599cf2aa137e8c7b758d1330fd7d41152d71f5bb7fc94fd8a9c02589.lean')
audit = store('AuditCertificates.lean', audit_raw.replace(old_cert.encode(), cert['module'].encode()),
              COMMIT + ':17f7a4a2', audit_raw, 'only certificate import path')
full_raw = git_object('72/7295efa1f6b517d7a35524539d80be5f814b7f9d05411eeea1136cc1eae7170e.lean')
consumer = store('CompositeTransfer.lean', full_raw.replace(old_cert.encode(), cert['module'].encode()),
                 COMMIT + ':7295efa1', full_raw, 'only certificate import path; mathematical body unchanged')
exact_raw = (OLD / 'reviews/CompositeExactLegacy.lean').read_bytes()
assert sha(exact_raw) == '0dc0ee880e3f88a1c611b2b61555f09a04e89345075a9a1fa217c21c0fb55fc3'
old_consumer = module((OLD / 'supply/CompositeTransferLegacy.lean').as_posix())
exact = store('CompositeExact.lean', exact_raw.replace(old_consumer.encode(), consumer['module'].encode()),
              '0315fa51:' + (OLD / 'reviews/CompositeExactLegacy.lean').as_posix(), exact_raw,
              'only consumer import path; all five exact original statements unchanged')
old_spec = json.loads((OLD / 'runtime/transfer/transfer-stage-spec.json').read_text())
runtime_paths = [OLD / 'runtime/transfer' / name for name in
                 ['terminal-stage-v2.py', 'linux-runner-v2.py', 'terminal-stage-v2-spec.json',
                  'linux-source-manifest-v2.json', 'cold-stage-spec.json', 'transfer-stage-spec.json']]
runtime_paths.append(NEW / 'runtime/nonprime-stage.py')
runtime_rows = [{'path': p.as_posix(), 'bytes': p.stat().st_size, 'sha256': sha(p.read_bytes())} for p in runtime_paths]
spec = {'schema': 'b699-nonprime-stage.v1', 'taskClass': 'complex-established-target',
        'model': 'gpt-6.1-sol', 'reasoningEffort': 'xhigh', 'owner': '/root/nonprime_runtime_review_20261004',
        'sourceBaseline': '0315fa513e889c528ec756b490d9e632190a4b56',
        'roundStartUtc': '2026-10-03T17:36:13Z', 'finalDeadlineUtc': '2026-10-03T18:36:13Z',
        'proofStopUtc': '2026-10-03T18:28:13Z', 'lastJobStart': '2026-10-03T18:16:13Z',
        'toolRoot': '.tools/b699-lean-20261001-01a0f779/20261004-nonprime-onehour/runtime',
        'fixedHelperDirectory': (OLD / 'runtime/transfer').as_posix(),
        'fixedRuntimeSources': runtime_rows, 'taskSources': [cert, audit, consumer, exact],
        'certificateSource': cert, 'certificateAudit': audit, 'compositeSource': consumer,
        'exactSource': exact, 'fullEnabled': False,
        'certificateRoots': ['B699CompositeTransfer20261003.not_prime_' + str(x) for x in range(4884, 4889)],
        'requiredRoots': old_spec['requiredRoots'], 'literalRoots': old_spec['literalRoots'],
        'resourceProfile': 'serial CPU2 nice19 j1 asyncfalse; Composite M4096 tree5120 start6144; disk20GiB reserve900MiB',
        'noAutomaticColdProviderFallback': True, 'independentVerifier': '/root/semantic_verify_sol'}
(NEW / 'runtime/stage-spec.json').write_text(json.dumps(spec, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')
(NEW / 'runtime/source-adoption-map.json').write_text(json.dumps({'sourceCommit': COMMIT, 'rows': rows,
     'historicalSourcesUntouched': True}, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')
print(json.dumps({'sources': [{'path': x['path'], 'bytes': x['bytes'], 'sha256': x['sha256']} for x in rows],
                  'fullEnabled': False}, ensure_ascii=False))

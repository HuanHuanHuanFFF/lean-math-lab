"""Serial leaf-first proof execution with fixed accepted-object reuse."""
import datetime as dt
import importlib.util
import json
import os
from pathlib import Path
import shutil
import sys
import time

HERE = Path(__file__).resolve().parent
SPEC = json.loads((HERE / 'stage-spec.json').read_text())
REPO = Path.cwd().resolve()
OLD = REPO / SPEC['fixedHelperDirectory']
loader = importlib.util.spec_from_file_location('fixed_terminal', OLD / 'terminal-stage-v2.py')
f = importlib.util.module_from_spec(loader)
loader.loader.exec_module(f)
b = f.b
b.SPEC = {**b.SPEC, 'hardDeadline': SPEC['proofStopUtc'], 'lastJobStart': SPEC['lastJobStart'],
          'taskSources': SPEC['taskSources'], 'skipUnusedNormNumLeafBuild': True}
b.DEADLINE = dt.datetime.fromisoformat(SPEC['proofStopUtc'].replace('Z', '+00:00')).timestamp()
b.ROOT = REPO / SPEC['toolRoot']
BASE = b.ROOT
COLD = json.loads((OLD / 'cold-stage-spec.json').read_text())
OLD_TRANSFER = json.loads((OLD / 'transfer-stage-spec.json').read_text())


def select(phase):
    b.EVIDENCE = BASE / (phase + '-evidence')
    b.OBJECTS = b.EVIDENCE / 'objects'
    b.EVIDENCE.mkdir(parents=True, exist_ok=True)


def fixed():
    b.fixed_sources()
    for row in SPEC['fixedRuntimeSources']:
        if b.sha(REPO / row['path']) != row['sha256']:
            raise RuntimeError('Frozen runtime source differs: ' + row['path'])


def manifest():
    exact_self = b.EVIDENCE / 'byte-manifest.json'
    members = [{'path': p.relative_to(b.EVIDENCE).as_posix(), 'bytes': p.stat().st_size,
                'sha256': b.sha(p)} for p in sorted(b.EVIDENCE.rglob('*'))
               if p.is_file() and p != exact_self]
    b.write('byte-manifest.json', {'utc': b.utc(), 'members': members,
            'head': os.environ.get('GITHUB_SHA'), 'runId': os.environ.get('GITHUB_RUN_ID'),
            'excludedExactPath': 'byte-manifest.json'})


def cache(imports):
    b.SPEC['mathlibImports'] = imports
    old = sys.argv[:]
    sys.argv = [str(OLD / 'linux-runner-v2.py'), 'cache']
    try:
        b.main()
    finally:
        sys.argv = old


def compile_checked(row, label, env):
    if b.sha(REPO / row['path']) != row['sha256']:
        raise RuntimeError('New source drift: ' + row['path'])
    return f.compile(row['path'], label, env)


def checker(row, label, env):
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    return b.launch([tc['leanchecker'], '-v', f.mod(row['path'])], label, env,
                    max_seconds=300)


def leaf():
    cache(['Mathlib.Data.Nat.Prime.Basic'])
    env = b.lean_env()
    compile_checked(SPEC['certificateSource'], 'leaf-NonprimeCertificates', env)
    audit = compile_checked(SPEC['certificateAudit'], 'leaf-AuditCertificates', env)
    f.audited(audit, SPEC['certificateRoots'])
    checker(SPEC['certificateAudit'], 'leaf-normal-checker', env)
    b.write('leaf-closed.json', {'utc': b.utc(), 'roots': SPEC['certificateRoots'],
            'successorInterfaces': 4, 'actualNormalCheckerExit': 0,
            'adoptedOldProviderCount': 0, 'mathematicalAcceptance': 'pending independent S binding'})


def full():
    if not SPEC['fullEnabled']:
        b.write('full-not-run.json', {'utc': b.utc(), 'reason': 'leaf independent acceptance gate not enabled'})
        return
    cache(f.SPEC['cacheRoots'] + ['Mathlib.Data.Nat.Prime.Basic'])
    t = OLD_TRANSFER['adoptedArtifact']
    f.SPEC['transport'] = {'sourceCommit': t['sourceCommit'], 'run': t['runId'],
                          'artifact': t['id'], 'zipBytes': t['zipBytes'], 'zipSha256': t['zipSha256']}
    # Transport failure stops this phase; it never launches a 129-source cold fallback.
    f.transport()
    old_tc = json.loads((b.EVIDENCE / 'accepted-proof/toolchain.json').read_text())
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    for key in ['leanSha256', 'leancheckerSha256']:
        if old_tc[key] != tc[key]:
            raise RuntimeError('Accepted proof executable differs: ' + key)
    reused = f.index_reuse()
    if len(reused) != 129:
        raise RuntimeError('Expected exact 129 accepted-source reuse entries')
    b.write('adopted-source-object-index.json', {'utc': b.utc(), 'sourceObjects': reused,
            'adoptedZipSha256': t['zipSha256'], 'oldExecutionIncrement': 0})
    needed = list(COLD['bootstrapSupport']) + [x['path'] for x in COLD['fixedAcceptedSources']]
    needed += [COLD['finiteSupplier']] + [x['path'] for x in f.SPEC['sources']]
    adopted = []
    for path in dict.fromkeys(needed):
        if path not in reused:
            raise RuntimeError('Necessary accepted provider unavailable: ' + path)
        adopted.append({'path': path, 'oldReceipt': reused[path], 'actualNewCompile': False})
    b.write('physical-adoption.json', {'utc': b.utc(), 'adopted': adopted,
            'adoptedCount': len(adopted), 'oldProofIncrement': 0})
    env = b.lean_env()
    compile_checked(SPEC['certificateSource'], 'full-NonprimeCertificates', env)
    compile_checked(SPEC['compositeSource'], 'composite-CompositeTransfer', env)
    checker(SPEC['compositeSource'], 'composite-normal-checker', env)
    compile_checked(SPEC['exactSource'], 'composite-CompositeExact', env)
    checker(SPEC['exactSource'], 'composite-final-normal-checker', env)
    b.write('full-closed.json', {'utc': b.utc(), 'requiredRoots': SPEC['requiredRoots'],
            'literalRoots': SPEC['literalRoots'], 'actualFinalCheckerExit': 0,
            'completeIndicesCandidate': [4885, 4886, 4887, 4888],
            'genuineInfiniteGapProvided': False, 'mathematicalAcceptance': 'pending independent S binding'})


def package_full():
    """Keep complete new evidence; bind unchanged old members to their fixed ZIP."""
    target = BASE / 'full-delivery'
    if target.exists():
        raise RuntimeError('Refuse overwriting an existing delivery')
    target.mkdir(parents=True)
    current_objects = set()
    lean_paths = []
    for p in b.EVIDENCE.glob('*/receipt.json'):
        receipt = json.loads(p.read_text())
        if receipt.get('mode') == 'Lean':
            lean_paths.append({'receipt': p.relative_to(b.EVIDENCE).as_posix(),
                               'effectiveLeanPath': receipt.get('effectiveLeanPath')})
            for part in receipt.get('objectParts', []):
                current_objects.add(Path(part['path']).relative_to(b.EVIDENCE).as_posix())
    for p in sorted(b.EVIDENCE.rglob('*')):
        if not p.is_file():
            continue
        rel = p.relative_to(b.EVIDENCE).as_posix()
        if rel.startswith('accepted-proof/') or (rel.startswith('objects/') and rel not in current_objects):
            continue
        dst = target / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(p, dst)
    transfer_path = b.EVIDENCE / 'accepted-proof-transfer.json'
    transfer = json.loads(transfer_path.read_text()) if transfer_path.exists() else None
    external = []
    for row in transfer['members'] if transfer else []:
        actual = Path(row['storedPath'])
        if actual.stat().st_size != row['bytes'] or b.sha(actual) != row['sha256']:
            raise RuntimeError('Actual supplied old member changed: ' + row['member'])
        external.append({**row, 'actualBytes': actual.stat().st_size,
                         'actualSha256': row['sha256'], 'includedInDelivery': False})
    origin = transfer or {'sourceCommit': OLD_TRANSFER['adoptedArtifact']['sourceCommit'],
                         'run': OLD_TRANSFER['adoptedArtifact']['runId'],
                         'artifact': OLD_TRANSFER['adoptedArtifact']['id'],
                         'zipSha256': OLD_TRANSFER['adoptedArtifact']['zipSha256']}
    binding = {'utc': b.utc(), 'sourceCommit': origin['sourceCommit'], 'run': origin['run'],
               'artifact': origin['artifact'], 'zipSha256': origin['zipSha256'],
               'zipBytes': OLD_TRANSFER['adoptedArtifact']['zipBytes'],
               'externalMembers': external, 'actualCompilerSearchPaths': lean_paths,
               'actualTransferCompleted': transfer is not None,
               'scope': 'exact external byte binding; old proof acceptance remains separately signed'}
    (target / 'external-member-bindings.json').write_text(json.dumps(binding, indent=2) + '\n')
    # The retained producer manifest is an ordinary nested member of this delivery.
    own_manifest = target / 'delivery-manifest.json'
    members = [{'path': p.relative_to(target).as_posix(), 'bytes': p.stat().st_size,
                'sha256': b.sha(p)} for p in sorted(target.rglob('*'))
               if p.is_file() and p != own_manifest]
    own_manifest.write_text(json.dumps({'utc': b.utc(), 'head': os.environ.get('GITHUB_SHA'),
                           'runId': os.environ.get('GITHUB_RUN_ID'), 'members': members,
                           'excludedExactPath': 'delivery-manifest.json'}, indent=2) + '\n')
    print(json.dumps({'delivery': str(target), 'members': len(members),
                      'externalMembers': len(external), 'bytes': sum(x['bytes'] for x in members)}))


def main():
    phase = sys.argv[1] if len(sys.argv) > 1 else 'leaf'
    if phase not in ['preflight', 'leaf', 'full', 'manifest-leaf', 'manifest-full', 'package-full']:
        raise RuntimeError('Unknown phase')
    select('full' if phase.endswith('full') or phase == 'full' else 'leaf')
    if phase.startswith('manifest-'):
        manifest()
        return
    if phase == 'package-full':
        package_full()
        return
    fixed()
    b.write('stage-spec.json', SPEC)
    shutil.copyfile(__file__, b.EVIDENCE / 'nonprime-stage.py')
    b.write('source-adoption-map.json', json.loads((HERE / 'source-adoption-map.json').read_text()))
    with f.locked():
        if phase == 'preflight':
            b.write('resources-start.json', b.resources())
            b.write('source-manifest.json', b.SPEC)
            if os.environ.get('GITHUB_OUTPUT'):
                with Path(os.environ['GITHUB_OUTPUT']).open('a') as output:
                    output.write('full_enabled=' + str(SPEC['fullEnabled']).lower() + '\n')
        elif phase == 'leaf':
            leaf()
        else:
            full()


if __name__ == '__main__':
    try:
        main()
    except BaseException as exc:
        b.EVIDENCE.mkdir(parents=True, exist_ok=True)
        b.write('failure.json', {'utc': b.utc(), 'class': type(exc).__name__, 'reason': str(exc)})
        print(type(exc).__name__ + ': ' + str(exc), file=sys.stderr)
        sys.exit(1)

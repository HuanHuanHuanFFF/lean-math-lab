"""Serial fresh proofs with two exact accepted-object archives."""
import datetime as dt
import importlib.util
import json
import os
from pathlib import Path
import shutil
import sys
import time
import urllib.error
import urllib.request
import zipfile

HERE = Path(__file__).resolve().parent
SPEC = json.loads((HERE / 'bridge-stage-spec.json').read_text())
REPO = Path.cwd().resolve()
OLD = REPO / SPEC['fixedHelperDirectory']
loader = importlib.util.spec_from_file_location('fixed_terminal', OLD / 'terminal-stage-v2.py')
f = importlib.util.module_from_spec(loader)
loader.loader.exec_module(f)
b = f.b
b.SPEC = {**b.SPEC, 'hardDeadline': SPEC['proofStopUtc'], 'lastJobStart': SPEC['lastJobStart'],
          'taskSources': SPEC['taskSources'], 'skipUnusedNormNumLeafBuild': SPEC['skipUnusedNormNumLeafBuild']}
b.DEADLINE = dt.datetime.fromisoformat(SPEC['proofStopUtc'].replace('Z', '+00:00')).timestamp()
b.ROOT = REPO / SPEC['toolRoot']
BASE = b.ROOT
b.EVIDENCE = BASE / 'evidence'
b.OBJECTS = b.EVIDENCE / 'objects'
_controlled_launch = b.launch


def phase_launch(argv, label, *args, **kwargs):
    # Admit a complete child using the fixed maximum wall-time allowance.
    # This prevents another subsecond checker launch at deadline-minus-five.
    required = kwargs.get('max_seconds', 300) + 15
    if b.DEADLINE - time.time() < required:
        b.write(label + '/budget-admission.json', {'utc': b.utc(), 'childStarted': False,
                'remainingSeconds': b.DEADLINE - time.time(), 'requiredSeconds': required,
                'classification': 'budget admission; no claim about mathematical complexity'})
        raise RuntimeError('Complete-child time allowance unavailable: ' + label)
    if 'Block' in label and 'strict-axioms' not in label:
        kwargs['max_seconds'] = min(kwargs.get('max_seconds',300),180)
    if label.startswith('composite-') and not label.startswith('composite-gap') and 'strict-axioms' not in label:
        argv = ['-M6144' if x in ['-M3132','-M4096'] else x for x in argv]
        kwargs.update(startup_mib=10240,tree_mib=8192)
    if label.startswith('composite-') and '-M3132' in argv:
        argv = ['-M4096' if x == '-M3132' else x for x in argv]
    return _controlled_launch(argv, label, *args, **kwargs)


b.launch = phase_launch


def fixed():
    b.fixed_sources()
    for row in SPEC['fixedRuntimeSources']:
        if b.sha(REPO / row['path']) != row['sha256']:
            raise RuntimeError('Frozen runtime source differs: ' + row['path'])


def manifest(root, name):
    target = root / name
    members = [{'path': p.relative_to(root).as_posix(), 'bytes': p.stat().st_size,
                'sha256': b.sha(p)} for p in sorted(root.rglob('*')) if p.is_file() and p != target]
    target.write_text(json.dumps({'utc': b.utc(), 'head': os.environ.get('GITHUB_SHA'),
        'runId': os.environ.get('GITHUB_RUN_ID'), 'members': members,
        'excludedExactPath': name}, indent=2) + '\n')


def cache():
    b.SPEC['mathlibImports'] = SPEC['cacheRoots']
    old_args = sys.argv[:]
    sys.argv = [str(OLD / 'linux-runner-v2.py'), 'cache']
    try:
        b.main()
    finally:
        sys.argv = old_args


def download_supplement(t, token, package_name='accepted-tail5000'):
    class NoRedirect(urllib.request.HTTPRedirectHandler):
        def redirect_request(self, req, fp, code, msg, headers, newurl):
            return None
    api = 'https://api.github.com/repos/HuanHuanHuanFFF/lean-math-lab/actions/artifacts/' + str(t['artifact']) + '/zip'
    req = urllib.request.Request(api, headers={'Authorization': 'Bearer ' + token,
          'Accept': 'application/vnd.github+json', 'User-Agent': 'B699ProofRead/1'})
    capability = None
    code = None
    try:
        response = urllib.request.build_opener(NoRedirect).open(req, timeout=15)
        code = response.status
    except urllib.error.HTTPError as exc:
        code = exc.code
        if code in (301, 302, 303, 307, 308):
            capability = exc.headers.get('Location')
    token = None
    b.write('supplement-artifact-api-read.json', {'utc': b.utc(), 'httpCode': code,
            'tokenSaved': False, 'capabilitySaved': False, 'redirectAuthorizationForwarded': False})
    if not capability or not capability.startswith('https://'):
        raise RuntimeError('Fixed supplement artifact read refused; no cold fallback')
    archive = BASE / (package_name + '.zip')
    started = time.time()
    with urllib.request.urlopen(capability, timeout=30) as src, archive.open('wb') as out:
        while True:
            f.check_deadline()
            if time.time() - started > 300:
                raise RuntimeError('Supplement transfer exceeded five minute limit')
            part = src.read(1024 * 1024)
            if not part:
                break
            out.write(part)
    capability = None
    if archive.stat().st_size != t['zipBytes'] or b.sha(archive) != t['zipSha256']:
        raise RuntimeError('Fixed supplement ZIP size or digest differs')
    package = b.EVIDENCE / package_name
    package.mkdir(parents=True, exist_ok=True)
    mapped = []
    with zipfile.ZipFile(archive) as z:
        manifest_name = t.get('manifestName', 'delivery-manifest.json')
        byteplan = json.loads(z.read(manifest_name))
        if byteplan['head'] != t['sourceCommit']:
            raise RuntimeError('Supplement artifact source commit differs')
        plan = {m['path']: m for m in byteplan['members']}
        names = {x.filename for x in z.infolist() if not x.is_dir()}
        if names != set(plan) | {manifest_name}:
            raise RuntimeError('Incomplete or extra supplement members')
        if 'external-member-bindings.json' in names:
            external = json.loads(z.read('external-member-bindings.json'))
            bound_shas = {external['zipSha256']} if 'zipSha256' in external else {x['zipSha256'] for x in external['origins']}
            if SPEC['adoptedArtifact']['zipSha256'] not in bound_shas:
                raise RuntimeError('Supplement upstream ZIP binding differs')
        elif not t.get('fixedStandaloneThetaOrigin', False):
            raise RuntimeError('Supplement upstream binding missing')
        for item in z.infolist():
            if item.is_dir():
                continue
            f.check_deadline()
            name = item.filename
            use_object = name.startswith('objects/') and (not t.get('selectedObjectMembers') or name in t['selectedObjectMembers'])
            root = b.OBJECTS if use_object else package
            target = root / (name[len('objects/'):] if use_object else name)
            if not target.resolve().is_relative_to(root.resolve()):
                raise RuntimeError('Supplement member escapes fixed root')
            if target.exists():
                raise RuntimeError('Refuse overwriting an existing supplement member')
            target.parent.mkdir(parents=True, exist_ok=True)
            with z.open(item) as src, target.open('wb') as out:
                shutil.copyfileobj(src, out)
            if name in plan and (target.stat().st_size != plan[name]['bytes'] or b.sha(target) != plan[name]['sha256']):
                raise RuntimeError('Supplement member byte binding differs')
            mapped.append({'member': name, 'storedPath': str(target), 'bytes': target.stat().st_size,
                           'sha256': b.sha(target), 'inCompilerObjectPrefix': use_object})
    b.write(package_name + '-transfer.json', {'utc': b.utc(), **t, 'members': mapped,
            'oldExecutionIncrement': 0, 'scope': 'exact byte transport; prior named acceptance retained'})


def prepare():
    cache()
    token = os.environ.get('B699_ARTIFACT_TOKEN', '')
    if not token:
        raise RuntimeError('Existing CI same-repository read token unavailable')
    f.SPEC['transport'] = SPEC['adoptedArtifact']
    f.transport()
    download_supplement(SPEC['tail5000Artifact'], token)
    for artifact in SPEC.get('reusedPrerequisiteArtifacts', []):
        download_supplement(artifact, token, artifact['packageName'])
    token = None
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    package_names = ['accepted-tail5000'] + [x['packageName'] for x in SPEC.get('reusedPrerequisiteArtifacts', [])]
    for name in ['accepted-proof'] + package_names:
        old_tc = json.loads((b.EVIDENCE / name / 'toolchain.json').read_text())
        for key in ['leanSha256', 'leancheckerSha256']:
            if old_tc[key] != tc[key]:
                raise RuntimeError('Accepted proof executable differs: ' + name + ':' + key)
    index = f.index_reuse()
    if len(index) != 129:
        raise RuntimeError('Expected exact 129-source accepted reuse')
    supplement = {}
    receipts = []
    origin_by_name = {x['packageName']: x for x in SPEC.get('reusedPrerequisiteArtifacts', [])}
    for name in package_names:
        origin = origin_by_name.get(name, {})
        for p in (b.EVIDENCE / name).rglob('receipt.json'):
            relative = p.relative_to(b.EVIDENCE / name).as_posix()
            if origin.get('selectedReceipts') and relative not in origin['selectedReceipts']:
                continue
            if origin.get('freshOnly') and len(p.relative_to(b.EVIDENCE / name).parts) != 2:
                continue
            receipts.append(p)
    for p in receipts:
        r = json.loads(p.read_text())
        if r.get('mode') != 'Lean' or r.get('status') != 'success' or r.get('exitCode') != 0 or not r.get('sourceUnchanged'):
            continue
        path = Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
        snapshot = p.parent / 'source.lean'
        if not snapshot.is_file() or b.sha(snapshot) != r['sourceSha256']:
            raise RuntimeError('Supplement source snapshot differs')
        for part in r['objectParts']:
            dst = b.OBJECTS / part['path'].split('/objects/', 1)[1]
            if dst.stat().st_size != part['bytes'] or b.sha(dst) != part['sha256']:
                raise RuntimeError('Supplement object part differs')
        if not (REPO / path).is_file() or b.sha(REPO / path) != r['sourceSha256']:
            raise RuntimeError('Supplement current source differs: ' + path)
        if path in supplement:
            raise RuntimeError('Duplicate reused fresh source')
        supplement[path] = r
    expected = 11 + sum(x['sourceCount'] for x in SPEC.get('reusedPrerequisiteArtifacts', []))
    if len(supplement) != expected or set(index) & set(supplement):
        raise RuntimeError('Reused supplemental source count or disjointness differs')
    for artifact in SPEC.get('reusedPrerequisiteArtifacts', []):
        closure = b.EVIDENCE / artifact['packageName'] / (artifact['stageName'] + '-closed.json')
        if not closure.is_file():
            raise RuntimeError('Prior successful stage closure is missing')
        b.write(artifact['stageName'] + '-adopted.json', {'utc': b.utc(), 'origin': artifact,
                'closureSha256': b.sha(closure), 'actualNewCompile': False})
    if any((b.OBJECTS / 'Mathlib').rglob('*')):
        raise RuntimeError('Private prefix must not shadow Mathlib')
    b.write('adopted-source-object-index.json', {'utc': b.utc(), 'sourceObjects': {**index, **supplement},
            'oldSourceCount': len(index), 'supplementSourceCount': len(supplement),
            'adoptedZipSha256': SPEC['adoptedArtifact']['zipSha256'],
            'supplementZipSha256': SPEC['tail5000Artifact']['zipSha256'], 'oldExecutionIncrement': 0})
    b.write('prepared.json', {'utc': b.utc(), 'actualFirstSearchPrefix': str(b.OBJECTS),
            'oldSourceCompileIncrement': 0, 'sourceCount': len(index) + len(supplement)})


def run_stage(name):
    stages = {row['name']: row for row in SPEC['stages']}
    if name not in stages or not stages[name]['enabled']:
        raise RuntimeError('Fresh stage is not enabled: ' + name)
    if not (b.EVIDENCE / 'prepared.json').is_file():
        raise RuntimeError('Exact accepted-object preparation is missing')
    stage = stages[name]
    remaining = b.DEADLINE - time.time()
    required = stage['predictedCompleteSeconds'] + stage['packagingReserveSeconds']
    b.write(name + '-budget-admission.json', {'utc': b.utc(), 'remainingSeconds': remaining,
            'requiredSeconds': required, 'admitted': remaining >= required,
            'basis': stage['predictionBasis']})
    if remaining < required:
        raise RuntimeError('Complete-stage predicted time allowance unavailable: ' + name)
    for prerequisite in stage.get('prerequisites', []):
        if not any((b.EVIDENCE / (prerequisite + suffix)).is_file() for suffix in ['-closed.json', '-adopted.json']):
            raise RuntimeError('Successful prerequisite missing: ' + prerequisite)
    env = b.lean_env()
    for row in stage['sources']:
        if b.sha(REPO / row['path']) != row['sha256']:
            raise RuntimeError('Fresh source drift: ' + row['path'])
        label = ('composite-' if row.get('largeConsumer', False) else 'proof-') + name + '-' + Path(row['path']).stem
        receipt = f.compile(row['path'], label, env)
        f.audited(receipt, row['roots'])
        b.launch(['python3', SPEC['strictAuditScript'], row['path'], receipt['stdout'],
                  str(b.EVIDENCE / label / 'strict-axiom-audit.json')],
                 label + '-strict-axioms', env, max_seconds=30)
        tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
        b.launch([tc['leanchecker'], '-v', f.mod(row['path'])], label + '-normal-checker', env, max_seconds=300)
    b.write(name + '-closed.json', {'utc': b.utc(), 'freshSources': stage['sources'],
            'completeUpperCandidate': stage.get('completeUpperCandidate'), 'actualNormalCheckerExit': 0,
            'genuineInfiniteGapProvided': False, 'mathematicalAcceptance': 'pending named independent S binding'})


def package(name):
    b.write('resources-package-' + name + '.json', b.resources())
    target = BASE / (name + '-delivery')
    if target.exists():
        raise RuntimeError('Refuse overwriting a delivery')
    target.mkdir(parents=True)
    new_objects = set()
    lean_paths = []
    for p in b.EVIDENCE.glob('*/receipt.json'):
        r = json.loads(p.read_text())
        if r.get('mode') == 'Lean':
            lean_paths.append({'receipt': p.relative_to(b.EVIDENCE).as_posix(),
                               'effectiveLeanPath': r.get('effectiveLeanPath')})
            new_objects.update(Path(x['path']).relative_to(b.EVIDENCE).as_posix() for x in r.get('objectParts', []))
    for p in sorted(b.EVIDENCE.rglob('*')):
        if not p.is_file():
            continue
        rel = p.relative_to(b.EVIDENCE).as_posix()
        if rel.split('/', 1)[0] in {'accepted-proof', 'accepted-tail5000'} | {x['packageName'] for x in SPEC.get('reusedPrerequisiteArtifacts', [])} and '/' in rel:
            continue
        if rel.startswith('objects/') and rel not in new_objects:
            continue
        dst = target / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(p, dst)
    bindings = []
    for transfer in ['accepted-proof-transfer.json', 'accepted-tail5000-transfer.json'] + [x['packageName'] + '-transfer.json' for x in SPEC.get('reusedPrerequisiteArtifacts', [])]:
        p = b.EVIDENCE / transfer
        if not p.exists():
            continue
        t = json.loads(p.read_text())
        external = []
        for row in t['members']:
            actual = Path(row['storedPath'])
            if actual.stat().st_size != row['bytes'] or b.sha(actual) != row['sha256']:
                raise RuntimeError('Adopted member changed before packaging')
            external.append({**row, 'includedInDelivery': False})
        bindings.append({**{k: v for k, v in t.items() if k != 'members'}, 'externalMembers': external})
    (target / 'external-member-bindings.json').write_text(json.dumps({'utc': b.utc(), 'origins': bindings,
        'actualCompilerSearchPaths': lean_paths, 'scope': 'both exact upstream bindings; acceptance separately signed'}, indent=2) + '\n')
    manifest(target, 'delivery-manifest.json')
    print(json.dumps({'delivery': str(target), 'members': sum(p.is_file() for p in target.rglob('*')),
                      'bytes': sum(p.stat().st_size for p in target.rglob('*') if p.is_file())}))


def main():
    mode = sys.argv[1]
    b.EVIDENCE.mkdir(parents=True, exist_ok=True)
    if mode.startswith('package-'):
        package(mode[len('package-'):])
        return
    fixed()
    b.write('stage-spec.json', SPEC)
    shutil.copyfile(__file__, b.EVIDENCE / 'tail-stage.py')
    with f.locked():
        if mode == 'preflight':
            if time.time() > dt.datetime.fromisoformat(SPEC['lastJobStart'].replace('Z', '+00:00')).timestamp():
                raise RuntimeError('Expired job-start gate')
            b.write('resources-start.json', b.resources())
            if not any(x['enabled'] for x in SPEC['stages']):
                raise RuntimeError('No source-aligned stage enabled')
            if os.environ.get('GITHUB_OUTPUT'):
                enabled = {x['name']: x['enabled'] for x in SPEC['stages']}
                with Path(os.environ['GITHUB_OUTPUT']).open('a') as out:
                    for name in ['bridgeglobal', 'bridgelocal']:
                        out.write(name + '_enabled=' + str(enabled.get(name, False)).lower() + '\n')
        elif mode == 'prepare':
            prepare()
        else:
            run_stage(mode)


if __name__ == '__main__':
    try:
        main()
    except BaseException as exc:
        b.EVIDENCE.mkdir(parents=True, exist_ok=True)
        reason = str(exc)
        if 'https://' in reason or 'http://' in reason:
            reason = 'Transport exception; URL omitted'
        b.write('failure.json', {'utc': b.utc(), 'phase': sys.argv[1], 'class': type(exc).__name__, 'reason': reason})
        print(type(exc).__name__ + ': ' + reason, file=sys.stderr)
        sys.exit(1)

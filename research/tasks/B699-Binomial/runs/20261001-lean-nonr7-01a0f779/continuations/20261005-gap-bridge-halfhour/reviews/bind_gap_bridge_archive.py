"""Independent source/object/log/AX/replay and native-member provenance binding.

Usage: python bind_local_power_archive.py ZIP SHA256 FIXED_HEAD RUN ARTIFACT CONTRACT PREFIX INTAKE
No Lean execution. A passing binding is technical evidence; the named reviewer signs scope.
"""
import hashlib
import json
import re
import subprocess
import sys
import zipfile
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
BEGIN = datetime.fromisoformat('2026-10-05T09:44:48+00:00')
PROOF_STOP = datetime.fromisoformat('2026-10-05T10:09:30+00:00')
DEADLINE = datetime.fromisoformat('2026-10-05T10:14:48+00:00')
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}


def require(ok, message):
    if not ok:
        raise ValueError(message)


def guard():
    require(BEGIN <= datetime.now(timezone.utc) < DEADLINE, 'Outside authorized S review window')


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def stream_sha(stream):
    h = hashlib.sha256()
    for block in iter(lambda: stream.read(1024 * 1024), b''):
        h.update(block)
    return h.hexdigest()


def git_bytes(head, path):
    return subprocess.run(['git', 'show', head + ':' + path], cwd=REPO, check=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout


def module(path):
    return '.'.join('«' + s + '»' if '-' in s or s[:1].isdigit() else s
                    for s in path.removesuffix('.lean').split('/'))


def axiom_gate(source, stdout, expected):
    roots = re.findall(r'^#print axioms (\S+)\s*$', source.decode('utf-8-sig'), re.M)
    require(roots == expected and len(roots) == len(set(roots)), 'Missing, extra or duplicate source AX roots')
    actual = {}
    for m in re.finditer(r"'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)",
                         stdout.decode('utf-8-sig'), re.S):
        axes = [x.strip() for x in (m[2] or '').split(',') if x.strip()]
        require(m[1] not in actual and len(axes) == len(set(axes)), 'Duplicate actual AX output')
        require(set(axes) <= ALLOWED, 'Unexpected transitive axiom: ' + m[1])
        actual[m[1]] = axes
    require(set(actual) == set(roots), 'Actual complete transitive AX root set differs')
    return {'roots': roots, 'actualAxioms': actual, 'sourceSha256': sha(source), 'stdoutSha256': sha(stdout)}


def object_member(path):
    require('/objects/' in path, 'Object outside private prefix')
    return 'objects/' + path.split('/objects/', 1)[1]


def main():
    require(len(sys.argv) == 9, __doc__)
    archive_arg, archive_sha, head, run, artifact, contract_arg, prefix, intake_arg = sys.argv[1:]
    guard()
    require(run.isdigit() and artifact.isdigit(), 'Actual run/artifact identity required')
    require(re.fullmatch(r'[A-Z0-9-]+', prefix), 'Unsafe output prefix')
    archive, contract_path = Path(archive_arg), Path(contract_arg)
    contract_raw = contract_path.read_bytes()
    contract = json.loads(contract_raw)
    intake_raw = Path(intake_arg).read_bytes()
    intake = json.loads(intake_raw)
    require(intake['sourceCommit'] == head and str(intake['runId']) == run
            and str(intake['artifactId']) == artifact and intake['zipSha256'] == archive_sha
            and intake['zipBytes'] == archive.stat().st_size
            and Path(intake['archivePath']).resolve() == archive.resolve(), 'Retained intake identity differs')
    expected = {r['path']: r for r in contract['sources']}
    require(len(expected) == len(contract['sources']), 'Duplicate independent source contract')
    with archive.open('rb') as raw:
        require(stream_sha(raw) == archive_sha, 'Native ZIP digest differs')
    pins = {p['name']: p['rev'] for p in json.loads(git_bytes(head, 'lake-manifest.json'))['packages']}
    require(git_bytes(head, 'lean-toolchain').strip() == b'leanprover/lean4:v4.33.1', 'Toolchain source pin differs')
    require(pins['mathlib'] == '0df444a360eaa60ab8c11dca51a86af692955474', 'Mathlib source pin differs')
    bindings, checkers, scopes, seen_roots = [], [], {}, set()
    with zipfile.ZipFile(archive) as z:
        names = z.namelist()
        require(len(names) == len(set(names)), 'Duplicate native members')
        require(all(not PurePosixPath(n).is_absolute() and '..' not in PurePosixPath(n).parts
                    and not n.endswith('/') for n in names), 'Unsafe/nonordinary native member')
        members = {}
        for info in z.infolist():
            guard()
            with z.open(info) as raw:
                members[info.filename] = {'bytes': info.file_size, 'sha256': stream_sha(raw)}
        def obj(name):
            require(members[name]['bytes'] < 8 * 1024 * 1024, 'Oversized JSON input: ' + name)
            return json.loads(z.read(name))
        manifest = obj('delivery-manifest.json')
        planned = {r['path']: r for r in manifest['members']}
        require(len(planned) == len(manifest['members']) and set(planned) == set(names) - {'delivery-manifest.json'},
                'Complete native member inventory differs')
        require(manifest['head'] == head and str(manifest['runId']) == run, 'Native head/run differs')
        for n, r in planned.items():
            require(members[n] == {k: r[k] for k in ('bytes', 'sha256')}, 'Native member bytes differ: ' + n)
        mapped = {r['member']: r for r in intake['members']}
        require(len(mapped) == len(intake['members']) and set(mapped) == set(names), 'Incomplete retained ordinary/binary map')
        for n, row in mapped.items():
            stored = Path(row['storedPath']).resolve()
            require(stored.stat().st_size == members[n]['bytes'] == row['bytes'], 'Retained size differs: ' + n)
            with stored.open('rb') as raw:
                require(stream_sha(raw) == members[n]['sha256'] == row['sha256'], 'Retained exact bytes differ: ' + n)
            binary = n.startswith('objects/')
            require(row['binaryOutsideGit'] is binary and stored.is_relative_to(REPO) is (not binary),
                    'Retained Git boundary differs: ' + n)
        spec = obj('stage-spec.json')
        require(spec == json.loads(git_bytes(head, contract['runtimeSpecPath'])), 'Native frozen runtime spec differs from Git')
        require(spec['roundStartUtc'] == '2026-10-05T09:44:48Z'
                and spec['proofStopUtc'] == '2026-10-05T10:09:30Z'
                and spec['finalDeadlineUtc'] == '2026-10-05T10:14:48Z', 'Round window changed')
        for row in spec['fixedRuntimeSources']:
            raw = git_bytes(head, row['path'])
            require(len(raw) == row['bytes'] and sha(raw) == row['sha256'], 'Actual runtime fixed bytes differ')
        driver = next(r for r in spec['fixedRuntimeSources'] if r['path'].endswith('stage.py'))
        require(z.read('tail-stage.py') == git_bytes(head, driver['path']), 'Actual native runtime snapshot differs')
        tc = obj('toolchain.json')
        require('4.33.1' in tc['version'] and tc['version'] == z.read('toolchain-version/stdout.log').decode().strip(),
                'Actual toolchain version differs')
        for name, rev in pins.items():
            require(z.read('pin-' + name + '/stdout.log').decode().strip() == rev, 'Actual package pin differs')
        environment = obj('environment.json')
        require(environment['manifestSha256'] == sha(git_bytes(head, 'lake-manifest.json')), 'Actual manifest digest differs')
        adopted = obj('external-member-bindings.json')
        origin_bindings = []
        old_sources = {}
        old_objects = {}
        allowed_origins = contract.get('acceptedOrigins', {})
        for origin in adopted['origins']:
            require(origin['zipSha256'] in allowed_origins, 'Reused origin lacks named independent acceptance')
            entry = allowed_origins[origin['zipSha256']]
            if 'reuseBindingPath' in entry:
                old_binding_path = REPO / entry['reuseBindingPath']
                old_raw = old_binding_path.read_bytes()
                require(sha(old_raw) == entry['reuseBindingSha256'], 'Scoped normalized reuse binding changed')
                old = json.loads(old_raw)
                require(old['status'] == 'exact-selected-reuse-of-named-accepted-source-object'
                        and old['newMathematicalAcceptanceIncrement'] == 0, 'Legacy source cannot be upgraded by reuse')
                signature_path = REPO / old['originalSemanticSignature']
                require(sha(signature_path.read_bytes()) == old['originalSemanticSignatureSha256'],
                        'Original named legacy signature changed')
                signature = json.loads(signature_path.read_bytes())
                require(signature['verifier'] == old['originalSemanticVerifier'] == '/root/semantic_verify_sol'
                        and signature['semanticVerifierSigned'] is True, 'Missing original named legacy acceptance')
            else:
                signature_path = REPO / entry['signaturePath']
                signature = json.loads(signature_path.read_bytes())
                old_binding_path = signature_path.parent / signature['binding']
                old_raw = old_binding_path.read_bytes()
                require(sha(old_raw) == signature['bindingSha256'], 'Named origin acceptance binding changed')
                old = json.loads(old_raw)
                require(signature['status'].startswith('accepted-')
                        and signature['verifier'] == '/root/local_power_verification', 'Missing named origin acceptance')
            require(old['archiveSha256'] == origin['zipSha256']
                    and old['fixedSourceCommit'] == origin['sourceCommit']
                    and old['runId'] == str(origin['run']) and old['artifactId'] == str(origin['artifact']),
                    'Actual origin identity differs from independent acceptance')
            require(old['toolchain']['leanSha256'] == tc['leanSha256']
                    and old['toolchain']['leancheckerSha256'] == tc['leancheckerSha256'], 'Reused pinned kernel changed')
            external = {r['member']: r for r in origin['externalMembers']}
            require(len(external) == len(origin['externalMembers'])
                    and set(external) == set(old['nativeMembers']), 'Complete reused native inventory differs')
            selected_objects = set(origin.get('selectedObjectMembers') or [n for n in external if n.startswith('objects/')])
            expected_objects = {object_member(p['path']) for r in old['compilerBindings'] for p in r['compiler']['objectParts']}
            require(selected_objects == expected_objects, 'Selected object closure differs from scoped accepted source receipts')
            for n, row in external.items():
                require({k: row[k] for k in ('bytes', 'sha256')} == old['nativeMembers'][n]
                        and row['includedInDelivery'] is False, 'Actual imported origin bytes differ')
                require(row['inCompilerObjectPrefix'] is (n in selected_objects), 'Reused selected object prefix classification differs')
                if row['inCompilerObjectPrefix']:
                    require(object_member(row['storedPath']) == n, 'Actual imported object path differs')
                    require(n not in old_objects, 'Duplicate reused object identity')
                    old_objects[n] = row
            for fresh in old['compilerBindings']:
                require(fresh['sourcePath'] not in old_sources, 'Duplicate reused source identity')
                require(git_bytes(head, fresh['sourcePath']) == git_bytes(old['fixedSourceCommit'], fresh['sourcePath']),
                        'Accepted imported source changed in new fixed Git head')
                old_sources[fresh['sourcePath']] = fresh['compiler']
            require(origin['sourceCount'] == len(old['compilerBindings']), 'Reused accepted source count differs')
            origin_bindings.append({'origin': origin['packageName'], 'archiveSha256': origin['zipSha256'],
                                    'signaturePath': str(signature_path.relative_to(REPO)),
                                    'signatureSha256': sha(signature_path.read_bytes()), 'nativeMembers': len(external),
                                    'sourceCount': len(old['compilerBindings']), 'oldExecutionIncrement': 0})
        adopted_index = obj('adopted-source-object-index.json')
        require(adopted_index['sourceObjects'] == old_sources and adopted_index['oldExecutionIncrement'] == 0,
                'Actual reused source/object index differs from named acceptance')
        common = None
        completed = []
        def receipt(phase):
            r = obj(phase + '/receipt.json')
            require(r.get('childStarted') is True and r.get('status') == 'success'
                    and r.get('exitCode') == 0 and r.get('stopReason') is None, 'Actual child did not succeed: ' + phase)
            require(BEGIN <= datetime.fromisoformat(r['startUtc']) <= datetime.fromisoformat(r['endUtc']) <= PROOF_STOP,
                    'Actual child outside original proof window')
            for stream in ('stdout', 'stderr'):
                require(sha(z.read(phase + '/' + stream + '.log')) == r[stream + 'Sha256'], 'Raw log digest differs')
            require(r['nice'] == 19 and 0 < len(r['cpus']) <= 2, 'Actual CPU containment differs')
            return r
        for stage in spec['stages']:
            if stage['name'] + '-closed.json' not in names:
                continue
            closed = obj(stage['name'] + '-closed.json')
            require(closed['freshSources'] == stage['sources'] and closed['actualNormalCheckerExit'] == 0,
                    'Closed-stage evidence differs')
            local_sources = []
            for row in stage['sources']:
                require(row['path'] in expected, 'Unreviewed mathematical source: ' + row['path'])
                exp = expected[row['path']]
                require(all(row[k] == exp[k] for k in ('bytes', 'sha256', 'roots')), 'Independent fixed-source contract differs')
                phase = ('composite-' if row.get('largeConsumer', False) else 'proof-') + stage['name'] + '-' + Path(row['path']).stem
                r = receipt(phase)
                source = z.read(phase + '/source.lean')
                require(source == git_bytes(head, row['path']) and sha(source) == row['sha256'] == r['sourceSha256']
                        and len(source) == row['bytes'] and r['sourceUnchanged'] is True and r['mode'] == 'Lean',
                        'Exact Git/snapshot/compiler source differs')
                require(PurePosixPath(r['source']).relative_to(PurePosixPath(r['cwd'])).as_posix() == row['path'],
                        'Actual compiler source path differs')
                require(r['sourceSnapshot'] == r['object'].split('/objects/', 1)[0] + '/' + phase + '/source.lean',
                        'Actual compiler snapshot location differs')
                argv = [tc['lean'], '-j1', '-M6144' if row.get('largeConsumer', False) else '-M3132',
                        '-DElab.async=false', '-R', r['cwd'], '-o', r['object'], r['source']]
                require(r['arguments'] == argv and r['executableSha256'] == tc['leanSha256'], 'Actual compiler command differs')
                common = common or r['effectiveLeanPath']
                require(r['effectiveLeanPath'] == common and common.startswith(r['object'].split('/objects/', 1)[0] + '/objects:'),
                        'Actual fresh object prefix/import environment differs')
                target = object_member(r['object'])
                parts = {object_member(p['path']): p for p in r['objectParts']}
                require(len(parts) == len(r['objectParts']) and target in parts
                        and set(parts) == {n for n in names if n.startswith(target.removesuffix('.olean') + '.')},
                        'Generated object part inventory differs')
                for n, p in parts.items():
                    require(members[n] == {k: p[k] for k in ('bytes', 'sha256')}, 'Generated object part bytes differ')
                require(members[target]['sha256'] == r['objectSha256'], 'Root object digest differs')
                ax = axiom_gate(source, z.read(phase + '/stdout.log'), row['roots'])
                require(not seen_roots.intersection(row['roots']), 'Duplicate fresh mathematical roots')
                seen_roots.update(row['roots'])
                for audit in ('axiom-audit.json', 'strict-axiom-audit.json'):
                    actual = obj(phase + '/' + audit)
                    require(all(actual[k] == v for k, v in ax.items()), 'Executable audit/raw AX differs')
                gate = receipt(phase + '-strict-axioms')
                require(gate['arguments'] == ['python3', spec['strictAuditScript'], row['path'], r['stdout'],
                        r['object'].split('/objects/', 1)[0] + '/' + phase + '/strict-axiom-audit.json'],
                        'Actual strict AX command differs')
                c = receipt(phase + '-normal-checker')
                require(c['arguments'] == [tc['leanchecker'], '-v', module(row['path'])]
                        and c['executableSha256'] == tc['leancheckerSha256'] and c['effectiveLeanPath'] == common
                        and z.read(phase + '-normal-checker/stdout.log').decode().strip() == 'replaying ' + module(row['path']),
                        'Actual normal replay target/executable/import environment differs')
                bindings.append({'sourcePath': row['path'], 'phase': phase, 'compiler': r, 'axioms': ax,
                                 'scope': exp['scope'], 'sourceMember': phase + '/source.lean'})
                checkers.append({'phase': phase + '-normal-checker', 'receipt': c})
                local_sources.append(row['path'])
            producer_paths = [p for p in local_sources if '/supply/' in p]
            literal_paths = [p for p in local_sources if '/reviews/' in p]
            require(len(producer_paths) == len(literal_paths) and len(producer_paths) > 0, 'Missing independent literal pair')
            require({expected[p]['literalFor'] for p in literal_paths} == set(producer_paths),
                    'Independent literal-to-producer pair mapping differs')
            completed.append(stage['name'])
            scopes[stage['name']] = [expected[p]['scope'] for p in producer_paths]
        require(bindings, 'No closed source-aligned mathematical stage')
        actual_paths = {r['receipt']: r['effectiveLeanPath'] for r in adopted['actualCompilerSearchPaths']}
        require(len(actual_paths) == len(adopted['actualCompilerSearchPaths']), 'Duplicate import path records')
        all_lean = {n: obj(n)['effectiveLeanPath'] for n in names if n.endswith('/receipt.json') and obj(n).get('mode') == 'Lean'}
        require(actual_paths == all_lean and all(v == common for v in all_lean.values()), 'Incomplete actual import-path inventory')
        require(not any(n.startswith('objects/Mathlib/') for n in names), 'Private prefix shadows pinned Mathlib')
        for n, row in old_objects.items():
            require(row['storedPath'].split('/objects/', 1)[0] + '/objects:' == common.split(':', 1)[0] + ':',
                    'Reused object is outside actual first import prefix')
    guard()
    result = {'status': 'independent-local-power-source-object-AX-replay-binding-passed',
              'verifier': '/root/local_power_verification', 'utc': datetime.now(timezone.utc).isoformat(),
              'fixedSourceCommit': head, 'runId': run, 'artifactId': artifact,
              'archivePath': str(archive.resolve()), 'archiveBytes': archive.stat().st_size, 'archiveSha256': archive_sha,
              'contractPath': str(contract_path.resolve()), 'contractSha256': sha(contract_raw),
              'retainedIntakePath': str(Path(intake_arg).resolve()), 'retainedIntakeSha256': sha(intake_raw),
              'nativeMemberCount': len(members), 'nativeMembers': members, 'closedStages': completed,
              'compilerBindings': bindings, 'normalReplayBindings': checkers, 'stageScopes': scopes,
              'reusedNamedAcceptedOrigins': origin_bindings,
              'actualTransitiveAxiomRootCount': len(seen_roots), 'toolchain': tc, 'pins': pins,
              'completeImportPath': common, 'unconditionalCompleteOriginalIndexIncrement': 0,
              'genuineInfiniteGapSupplied': False, 'kernelRerunByVerifier': False,
              'checkerMeaning': 'Pinned Lean normal replay, not a second implementation',
              'scriptSha256': sha(Path(__file__).read_bytes())}
    out = HERE / (prefix + '-INDEPENDENT-BINDING.json')
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': result['status'], 'path': str(out), 'stages': completed,
                      'sources': len(bindings), 'AXRoots': len(seen_roots), 'nativeMembers': len(members)}))


if __name__ == '__main__':
    main()

"""Independent artifact acceptance from bytes; never imports a runtime driver or runs Lean."""
from __future__ import annotations
import hashlib, json, re, sys, time, zipfile
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath

REPO = Path('D:/CodingProject/Math')
BASE = REPO / 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261003-gap-finite-fortymin'
STD3 = {'propext', 'Classical.choice', 'Quot.sound'}
PATTERN = re.compile(r"'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)", re.S)
TYPED_SHA = '0dc0ee880e3f88a1c611b2b61555f09a04e89345075a9a1fa217c21c0fb55fc3'
DEADLINE = datetime.fromisoformat('2026-10-02T19:30:45+00:00')

def require(p, message):
    if not p: raise RuntimeError(message)

def digest_stream(stream):
    h = hashlib.sha256()
    for b in iter(lambda: stream.read(1048576), b''): h.update(b)
    return h.hexdigest()

def parse_ax(raw):
    result = {}
    for m in PATTERN.finditer(raw):
        ax = [x.strip() for x in (m[2] or '').split(',') if x.strip()]
        require(m[1] not in result and len(ax) == len(set(ax)), 'Duplicate AX output ' + m[1])
        require(set(ax) <= STD3, 'Forbidden AX output ' + m[1])
        result[m[1]] = ax
    return result

def theorem_names(text):
    stack, names = [], []
    for line in text.splitlines():
        line = line.strip()
        m = re.match(r'namespace\s+(\S+)', line)
        if m: stack.append(m[1]); continue
        if re.match(r'(?:public )?section(?:\s|$)', line): stack.append(''); continue
        if re.match(r'end(?:\s|$)', line):
            if stack: stack.pop()
            continue
        m = re.match(r'(?:(?:public|protected)\s+)?(?:theorem|lemma)\s+(\S+)', line)
        if m: names.append('.'.join([p for p in stack if p] + [m[1]]))
    return names

def run(zip_path, expected_sha, expected_commit, expected_run):
    started = time.monotonic()
    require(datetime.now(timezone.utc) < DEADLINE, 'Budget expired; no mathematical review after hard deadline')
    with zip_path.open('rb') as f: require(digest_stream(f) == expected_sha, 'Archive SHA differs')
    with zipfile.ZipFile(zip_path) as z:
        names = z.namelist()
        require(len(names) == len(set(names)), 'Duplicate archive names')
        require(all(not PurePosixPath(n).is_absolute() and '..' not in PurePosixPath(n).parts for n in names), 'Unsafe member paths')
        def read_json(name): return json.loads(z.read(name).decode('utf-8-sig'))
        def read_text(name): return z.read(name).decode('utf-8-sig')
        manifest = read_json('byte-manifest.json')
        members = {r['path']: r for r in manifest['members']}
        require(len(members) == len(manifest['members']), 'Duplicate original manifest row')
        require(set(names) == set(members) | {'byte-manifest.json'}, 'Member completeness differs')
        actual = {}
        for n, r in members.items():
            require(z.getinfo(n).file_size == r['bytes'], 'Member size differs ' + n)
            with z.open(n) as f: actual[n] = digest_stream(f)
            require(actual[n] == r['sha256'], 'Member SHA differs ' + n)
        require(str(manifest.get('head')) == expected_commit, 'Fixed commit binding missing/different')
        require(str(manifest.get('runId')) == str(expected_run), 'Actual runId binding missing/different')
        require('run' not in manifest or str(manifest['run']) == str(expected_run), 'Conflicting existing run alias')
        spec = read_json('cold-stage-spec.json')
        controls = {}
        def control(name):
            local = (BASE / 'runtime/transfer' / name).read_bytes()
            remote = z.read(name)
            parsed = json.loads(local.decode('utf-8-sig'))
            canonical = (json.dumps(parsed, indent=2)+'\n').encode('utf-8')
            require(remote == local or remote == canonical, 'Executed control JSON differs '+name)
            controls[name] = {'localSha256':hashlib.sha256(local).hexdigest(),'remoteSha256':actual[name], 'canonicalSerializationOnly':remote != local}
            return parsed
        control('cold-stage-spec.json')
        t = control('terminal-stage-v2-spec.json')
        transfer = control('transfer-stage-spec.json')
        require(actual['transfer-stage.py'] == hashlib.sha256((BASE/'runtime/transfer/transfer-stage.py').read_bytes()).hexdigest(), 'Executed driver differs')
        expected = {r['path']: r for r in t['sources'] + spec['fixedAcceptedSources'] + [transfer['compositeSource'],transfer['exactSource']]}
        require(len(expected) == 130, 'Unexpected complete project closure cardinality')
        receipts = {n: read_json(n) for n in names if n.endswith('/receipt.json')}
        compilers = {n: r for n, r in receipts.items() if r.get('mode') == 'Lean' and 'objectParts' in r and 'sourceSha256' in r}

        def evidence_relative(path):
            require('/evidence/' in path, 'Object outside active evidence root')
            return path.split('/evidence/', 1)[1]

        def bind_compile(n, r):
            phase = n.rsplit('/', 1)[0]
            require(r['status'] == 'success' and r['exitCode'] == 0 and r['sourceUnchanged'], 'Compiler failed ' + phase)
            for fn, sha in [('source.lean', r['sourceSha256']), ('stdout.log', r['stdoutSha256']), ('stderr.log', r['stderrSha256'])]:
                require(actual[phase+'/'+fn] == sha, 'Snapshot/raw binding differs ' + phase)
            args = r['arguments']
            require(args[-1] == r['source'] and args[args.index('-o')+1] == r['object'], 'Actual compiler argv/output mismatch')
            require(args.count('-R') == 1 and args.count('-o') == 1, 'Actual compiler root/output flags ambiguous')
            root = args[args.index('-R')+1].rstrip('/')
            require(r['source'].startswith(root+'/'), 'Source outside explicit sourceRoot')
            source_rel = r['source'][len(root)+1:]
            object_rel = evidence_relative(r['object'])
            require(object_rel == 'objects/' + source_rel.removesuffix('.lean') + '.olean', 'Module/output relative path mismatch')
            require(actual[object_rel] == r['objectSha256'], 'Primary object SHA binding differs')
            parts = []
            for p in r['objectParts']:
                member = evidence_relative(p['path'])
                require(actual[member] == p['sha256'] and z.getinfo(member).file_size == p['bytes'], 'Object part differs ' + member)
                parts.append({'member': member, 'bytes': p['bytes'], 'sha256': p['sha256']})
            require(parts and any(p['member'] == object_rel for p in parts), 'Primary object absent from parts')
            require({p['member'] for p in parts} == {n for n in names if n.startswith(object_rel.removesuffix('.olean')+'.')}, 'Complete original object-parts coverage differs')
            require(datetime.fromisoformat(r['endUtc'].replace('Z','+00:00')) <= DEADLINE, 'Compiler ended after authorized deadline')
            return {'phase': phase, 'sourceSha256': r['sourceSha256'], 'objectSha256': r['objectSha256'],
                    'parts': parts, 'arguments': args, 'exitCode': r['exitCode'], 'sourceRoot': root,
                    'receiptSha256': actual[n], 'stdoutSha256': r['stdoutSha256'], 'stderrSha256': r['stderrSha256']}

        terminal_bindings, selected_phases = [], set()
        for path, row in expected.items():
            matches = [(n,r) for n,r in compilers.items() if r['source'].endswith('/'+path)]
            require(len(matches) == 1, 'Missing/duplicate fixed source receipt ' + path)
            n,r = matches[0]
            require(r['sourceSha256'] == row['sha256'] and z.getinfo(n.rsplit('/',1)[0]+'/source.lean').file_size == row['bytes'], 'Reviewed source differs ' + path)
            terminal_bindings.append(bind_compile(n,r)); selected_phases.add(n.rsplit('/',1)[0])
        selected_audits, all_ax = [], {}
        for n in sorted(n for n in names if n.endswith('/axiom-audit.json')):
            phase = n.rsplit('/',1)[0]
            if phase.startswith('gap-probe-'): continue
            report = read_json(n)
            require(report['status'] == 'accepted-standard-axioms', 'Failed terminal AX audit')
            seen = parse_ax(read_text(phase+'/stdout.log'))
            require(set(report['roots']) == seen.keys() and report['actualAxioms'] == seen, 'Complete AX root/report coverage differs ' + phase)
            require(actual[phase+'/stdout.log'] == report['stdoutSha256'] and actual[phase+'/source.lean'] == report['sourceSha256'], 'Audit raw/source mismatch')
            for root, ax in seen.items():
                require(report['actualAxioms'].get(root) == ax, 'Audit report/raw differs ' + root)
                require(root not in all_ax or all_ax[root] == ax, 'Repeated AX result differs ' + root)
                all_ax[root] = ax
            if phase not in selected_phases:
                require(phase+'/receipt.json' in compilers, 'Audit compiler receipt missing')
                terminal_bindings.append(bind_compile(phase+'/receipt.json', compilers[phase+'/receipt.json']))
            selected_audits.append({'phase':phase,'roots':report['roots'],'actualAxioms':seen,'sourceSha256':report['sourceSha256'],'stdoutSha256':report['stdoutSha256']})
        for phase in selected_phases:
            require(set(theorem_names(read_text(phase+'/source.lean'))) <= all_ax.keys(), 'Actual source theorem missing transitive audit ' + phase)
        bound_phases = {b['phase'] for b in terminal_bindings}
        for n,r in compilers.items():
            phase = n.rsplit('/',1)[0]
            if phase.startswith('gap-probe-') or phase in bound_phases: continue
            terminal_bindings.append(bind_compile(n,r))
            require(set(theorem_names(read_text(phase+'/source.lean'))) <= all_ax.keys(), 'Diagnostic source theorem missing audit ' + phase)
        toolchain = read_json('toolchain.json')
        require('4.33.1' in toolchain['version'], 'Pinned actual Lean version differs')
        require(all(b['arguments'][0] == toolchain['lean'] for b in terminal_bindings), 'Actual compile executable differs')
        environment = read_json('environment.json')
        active_objects = terminal_bindings[0]['arguments'][terminal_bindings[0]['arguments'].index('-o')+1].split('/evidence/objects/',1)[0]+'/evidence/objects'
        require(environment['leanPath'].startswith(active_objects+':'), 'Actual LEAN_PATH prefix differs from active object output')

        def bind_checker(phase, module):
            r = receipts[phase+'/receipt.json']
            require(r['status'] == 'success' and r['exitCode'] == 0, 'Normal checker failed ' + phase)
            require(r['arguments'] == [toolchain['leanchecker'], '-v', module], 'Exact normal checker argv/executable differs')
            require(r.get('effectiveLeanPath') == environment['leanPath'], 'Checker import environment differs')
            require(actual[phase+'/stdout.log'] == r['stdoutSha256'] and actual[phase+'/stderr.log'] == r['stderrSha256'], 'Checker raw differs')
            require(datetime.fromisoformat(r['endUtc'].replace('Z','+00:00')) <= DEADLINE, 'Checker after authorized deadline')
            return {'phase':phase,'arguments':r['arguments'],'exitCode':r['exitCode'],'receiptSha256':actual[phase+'/receipt.json'],
                    'stdoutSha256':r['stdoutSha256'],'stderrSha256':r['stderrSha256'],'startUtc':r['startUtc'],'endUtc':r['endUtc']}

        required = transfer['requiredRoots'] + transfer['literalRoots']
        require(set(required) <= all_ax.keys() and len(required) == 11, 'Eleven new target AX roots incomplete')
        typed = [b for b in terminal_bindings if b['sourceSha256'] == TYPED_SHA]
        require(len(typed) == 1, 'Independent literal target receipt missing/duplicated')
        literal = read_text(typed[0]['phase']+'/stdout.log')
        require(all('theorem '+name in literal for name in transfer['literalRoots']), 'Five exact actual type prints absent')
        def module(path):
            return '.'.join('«'+x+'»' if '-' in x or x[:1].isdigit() else x for x in path.removesuffix('.lean').split('/'))
        checkers = [bind_checker('composite-transfer-normal-checker', module(transfer['compositeSource']['path'])),
                    bind_checker('composite-final-normal-checker', module(transfer['exactSource']['path']))]
        result = {'utc':datetime.now(timezone.utc).isoformat(),'verifier':'/root/semantic_verify_sol','status':'full-composite-bindings-passed-signature-separate',
                  'fixedSourceCommit':expected_commit,'run':str(expected_run),'archive':str(zip_path),'archiveSha256':expected_sha,
                  'archiveMembers':len(names),'boundManifestMembers':len(actual),'fixedClosureSources':130,
                  'compileBindings':terminal_bindings,'axiomAudits':selected_audits,'finalActualAxioms':{r:all_ax[r] for r in required},
                  'normalCheckers':checkers,'actualObjectEnvironment':environment,'literalSourceSha256':TYPED_SHA,'actualLiteralOutput':literal,
                  'completeOriginalScope':'all Nat n/i/j;4885<=i<=4888,i<j<=n/2; exists same actual Nat.Prime p>=i dividing both complete n.choose values',
                  'completeExtraMathematicalInputs':[], 'completeOriginalIndicesIncrementCandidate':[4885,4886,4887,4888],
                  'actualGapSupplyAccepted':False,'controlByteCorrespondence':controls,
                  'adoptedOriginalBaseCompleteIndex':4884,'newCompositeTheoryInputs':[],
                  'checkerMeaning':'same fixed Lean kernel normal replay; imported environments trusted; not a second independent implementation',
                  'kernelRerunByVerifier':False,'reviewScriptSha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                  'seconds':time.monotonic()-started}
        require(datetime.now(timezone.utc) < DEADLINE, 'Review completion exceeded hard deadline')
        out=BASE/'reviews/COMPOSITE-INDEPENDENT-BINDING.json'
        out.write_bytes((json.dumps(result,indent=2,ensure_ascii=False)+'\n').encode('utf-8'))
        print(json.dumps({k:result[k] for k in ['status','run','fixedSourceCommit','archiveMembers','fixedClosureSources','completeOriginalIndicesIncrementCandidate','actualGapSupplyAccepted','seconds']}))

if __name__ == '__main__':
    if len(sys.argv) != 5: raise SystemExit('Usage: script ZIP expectedSHA sourceCommit runID (no Lean)')
    run(Path(sys.argv[1]), sys.argv[2], sys.argv[3], sys.argv[4])

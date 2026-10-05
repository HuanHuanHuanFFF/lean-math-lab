"""Independent byte/supplier/topological review. No Lean or driver import."""
import ast, datetime, hashlib, json, pathlib, re, zipfile

REPO = pathlib.Path.cwd().resolve()
BASE = pathlib.Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations')
NEW = BASE / '20261002-terminal-gap-twohour'
RUNTIME = REPO / NEW / 'runtime'
def digest(b): return hashlib.sha256(b).hexdigest()
def load(name): return json.loads((RUNTIME / name).read_bytes())
def module(path): return path.removesuffix('.lean').replace('/', '.')
def imports(raw):
    text = re.sub(r'/\*.*?\*/', '', raw.decode('utf-8'), flags=re.S)
    return [m.group(1).replace('«', '').replace('»', '') for m in
            re.finditer(r'^\s*(?:public\s+|private\s+|meta\s+)*(?:import\s+(?:all\s+)?)([^\s]+)', text, re.M)]

c, t = load('cold-stage-spec.json'), load('terminal-stage-spec.json')
supplier = load('cold-source-supplier-map.json')
ready = load('cold-execution-ready.json')
manifest = load('linux-source-manifest.json')
assert c['hardDeadline'] == t['hardDeadline'] == manifest['hardDeadline'] == '2026-10-02T15:45:10Z'
assert c['lastJobStart'] == t['lastJobStart'] == '2026-10-02T14:34:10Z'
assert c['jobMinutes'] == t['jobMinutes'] == 70
assert c['acceptedProofCommit'] == 'fd7f7ec9d5c466596f7173f91b9cc34a3e1a9d83'
assert len(t['sources']) == 95 and len(t['supportSources']) == 93 and len(t['finalSources']) == 2
assert not set(t['supportSources']) & set(t['finalSources'])
assert c['fixedAcceptedSources'] == supplier['materializedSources']
assert len(c['fixedAcceptedSources']) == 34
assert c['requiredFinalRoots'] == t['requiredFinalRoots'] and len(c['requiredFinalRoots']) == 4
assert c['checkerModule'] == t['checkerModule']
for row in ready['files'] + manifest['taskSources']:
    raw = (REPO / row['path']).read_bytes()
    assert len(raw) == row['bytes'] and digest(raw) == row['sha256'], row['path']

origin = REPO / supplier['sourceMapOrigin']
assert digest(origin.read_bytes()) == supplier['sourceMapSha256']
old_map = json.loads(origin.read_bytes())
old_by = {s['path']: s for s in old_map['outputs']}
zip_path = pathlib.Path('D:/ResearchArtifacts/b699-finite-full-onehour/b699-full-onehour-37007287888.zip')
zip_checks = []
with zipfile.ZipFile(zip_path) as z:
    for row in c['fixedAcceptedSources']:
        assert row['modulePath'] in old_by
        old = old_by[row['modulePath']]
        assert row['bytes'] == old['bytes'] and row['sha256'] == old['sha256']
        assert pathlib.PurePosixPath(row['path']).relative_to(row['sourceRoot']).as_posix() == row['modulePath']
        raw = z.read('generated-sources/' + row['modulePath'])
        assert digest(raw) == row['sha256'] and raw == (REPO / row['path']).read_bytes()
        zip_checks.append(row['modulePath'])

known = {module(s['path']): s['path'] for s in t['sources']}
known.update({module(s['modulePath']): s['path'] for s in c['fixedAcceptedSources']})
known.update({module(s['path']): s['path'] for s in c['optionalGapProbe']['sources']})
order = list(c['bootstrapSupport']) + [s['path'] for s in c['fixedAcceptedSources']]
order.append(c['finiteSupplier'])
order += [s['path'] for s in t['sources'] if s['path'] not in set(order)]
order += [s['path'] for s in c['optionalGapProbe']['sources']]
assert len(order) == len(set(order)) == 132
assert c['fixedAcceptedSources'][-1]['modulePath'].endswith('/CompleteChain.lean')
assert all('/NormNumBlock' in s['modulePath'] for s in c['fixedAcceptedSources'][:-1])
assert not any('Batch' in s['modulePath'] for s in c['fixedAcceptedSources'])
done, edges, package = set(), [], set()
for path in order:
    for m in imports((REPO / path).read_bytes()):
        if m in known:
            dep = known[m]
            assert dep in done, (path, dep)
            edges.append({'source': path, 'dependency': dep})
        else:
            assert m in {'Init', 'Std', 'Lean', 'Batteries', 'Aesop'} or m.startswith(('Mathlib.', 'Init.', 'Std.', 'Lean.', 'Batteries.', 'Aesop.')), (path, m)
            package.add(m)
    done.add(path)

calls = []
for name in ['cold-stage.py', 'terminal-stage.py']:
    tree = ast.parse((RUNTIME / name).read_text(encoding='utf-8'))
    for n in ast.walk(tree):
        if isinstance(n, ast.Call) and isinstance(n.func, ast.Attribute) and n.func.attr == 'compile_source':
            assert len(n.args) == 5 and not n.keywords, (name, n.lineno)
            assert ast.unparse(n.args[3]) == 'b.OBJECTS'
            calls.append({'file': name, 'line': n.lineno, 'sourceRoot': ast.unparse(n.args[4])})
assert len(calls) == 6
driver = (RUNTIME / 'cold-stage.py').read_text()
assert "b.OBJECTS=b.EVIDENCE/'objects'" in driver
assert 'env=b.lean_env()' in driver and 'with f.locked():' in driver
assert driver.index("b.write('terminal-closed.json'") < driver.index("probe=SPEC.get('optionalGapProbe')")
assert c['optionalGapProbe']['stopNewHeavyUtc'] == '2026-10-02T15:35:10Z'
assert len(c['optionalGapProbe']['requiredRoots']) == 13
assert c['primeSearchOrGeneratorExecuted'] is False and c['no32Or128Probe'] is True
result = {
    'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
    'verifier': '/root/semantic_verify_sol', 'status': 'static-supplier-DAG-ready; not Lean acceptance',
    'fixedDriverSha256': digest((RUNTIME / 'cold-stage.py').read_bytes()),
    'fixedSpecSha256': digest((RUNTIME / 'cold-stage-spec.json').read_bytes()),
    'acceptedOriginCommit': c['acceptedProofCommit'], 'acceptedOriginZipSha256': c['acceptedProofZipSha256'],
    'fixedOldSourceCount': len(zip_checks), 'orderedTotalIncludingOptional': len(order),
    'terminalSources': 95, 'supportFinalDisjoint': True, 'bootstrapCount': 7,
    'completeChainSuppliedBeforeFinite': True, 'allProjectImportDependenciesSuppliedBeforeCompile': True,
    'projectDependencyEdges': len(edges), 'packageImportRoots': sorted(package),
    'explicitOutputAndSourceRootCalls': calls,
    'activeObjectRoot': c['toolRoot'] + '/evidence/objects',
    'finalCheckerModule': c['checkerModule'], 'requiredFinalRoots': c['requiredFinalRoots'],
    'actualTerminalTypesAxiomsChecker': 'pending actual runtime receipts',
    'optionalGapScope': 'conditional estimates and unconditional auxiliary bounds; no actual Gap4095/10M supply',
    'deadline': c['hardDeadline'], 'latestStart': c['lastJobStart'], 'stopNewHeavy': c['optionalGapProbe']['stopNewHeavyUtc'],
    'sourceRootBoundary': '34 copies retain original modules under private bundle root; canonical package names cannot be shadowed',
    'kernelExecutedByThisReview': False,
    'baseManifestLatestStartObserved': manifest['lastJobStart'],
    'baseManifestLatestStartMatchesStage': manifest['lastJobStart'] == c['lastJobStart'],
}
out = REPO / NEW / 'reviews/cold-stage-independent-ready.json'
out.write_text(json.dumps(result, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')
print(json.dumps({k: result[k] for k in ['status','fixedDriverSha256','fixedSpecSha256','fixedOldSourceCount','orderedTotalIncludingOptional','projectDependencyEdges','deadline']}, ensure_ascii=False))

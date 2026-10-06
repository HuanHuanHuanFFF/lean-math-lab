"""Pure fixtures: strict whole-leaf selection, no proof or Docker execution."""
from pathlib import Path
import ast
import hashlib
import json
import tempfile

here = Path(__file__).resolve().parent
runner = here / 'linux-platform-replay.py'
tree = ast.parse(runner.read_text())
definition = next(node for node in tree.body if isinstance(node, ast.FunctionDef) and node.name == 'select_verification_groups')
namespace = {}
exec(compile(ast.Module(body=[definition], type_ignores=[]), '<pure selection>', 'exec'), namespace)
select = namespace['select_verification_groups']
ids = ['SmallIndices', 'A151Packed', 'I11AboveFinalCandidate', 'I11BelowFinalCandidate',
       'Middle185_322', 'Middle323_999', 'High1000_30000']
groups = [{'id': identifier, 'sourcePath': 'frozen/' + identifier + '.lean'} for identifier in ids] + [{'id': 'FullCoverageExact'}]
checks = []
selected, full = select(groups, {})
assert selected == groups and full
checks.append('absent selection keeps all7 and combination')
selected, full = select(groups, {'selectedGroupIds': list(reversed(ids))})
assert [g['id'] for g in selected] == list(reversed(ids)) + ['FullCoverageExact'] and full
checks.append('explicit all7 permits combination')
for subset in [['Middle323_999'], ['Middle185_322', 'High1000_30000']]:
    selected, full = select(groups, {'selectedGroupIds': subset})
    assert [g['id'] for g in selected] == subset and not full and all('sourcePath' in g for g in selected)
checks.append('selected whole-leaf subset excludes combination and fullS')
for invalid in [None, [], 'Middle323_999', ['unknown'], ['FullCoverageExact'], [1], ['Middle323_999', 'Middle323_999']]:
    try:
        select(groups, {'selectedGroupIds': invalid})
        raise AssertionError('invalid selection was accepted')
    except RuntimeError:
        pass
checks.append('null empty wrongtype unknown combined and duplicates fail closed')
bad = [dict(g) for g in groups]
bad[0]['id'] = bad[1]['id']
try:
    select(bad, {})
    raise AssertionError('duplicate contract IDs accepted')
except RuntimeError:
    pass
checks.append('malformed contract IDs rejected even in default mode')
source = runner.read_text()
assert 'results = collect_groups(selected_groups, execute_group)' in source
assert 'raw_sources = [bound(group["sourcePath"], group["sourceSha256"]) for group in raw_groups]' in source
assert 'len(raw_sources) != 7' in source
assert 'contract["expectedWholeSet"] if full_s else None' in source
checks.append('selection only alters proof collection; all7 input/source gate retained')
collector = next(node for node in tree.body if isinstance(node, ast.FunctionDef) and node.name == 'collect_groups')
failure = next(node for node in tree.body if isinstance(node, ast.ClassDef) and node.name == 'LeafStageFailure')
repo = next(p for p in here.parents if (p / 'AGENTS.md').is_file())
scratch = repo / '.tools/b699-contribution-platform-20261006/runtime/pure-selected-groups'
scratch.mkdir(parents=True, exist_ok=True)
with tempfile.TemporaryDirectory(dir=scratch, prefix='owned-') as temporary:
    target = Path(temporary).resolve()
    assert target.is_relative_to(scratch.resolve())
    context = {'EVIDENCE': target, 'json': json}
    exec(compile(ast.Module(body=[failure, collector], type_ignores=[]), '<pure selected collection>', 'exec'), context)
    selected, full = select(groups, {'selectedGroupIds': ['Middle185_322', 'Middle323_999']})
    for group in selected:
        group['auditSha256'] = 'fixture-only'
    called = []
    def execute(group):
        called.append(group['id'])
        if group['id'] == 'Middle185_322':
            raise context['LeafStageFailure']('raw-Middle185_322', 1)
        return {'id': group['id']}
    try:
        context['collect_groups'](selected, execute)
        raise AssertionError('selected leaf failure was accepted')
    except RuntimeError:
        pass
    assert called == ['Middle185_322', 'Middle323_999'] and not full
    collected = json.loads((target / 'COLLECTION.json').read_text())
    assert collected['failedGroups'] == ['Middle185_322'] and not collected['allRequiredStagesPassed']
checks.append('selected failure continues other selected leaves then rejects; no combination')
record = {'allPassed': True, 'runnerSha256': hashlib.sha256(runner.read_bytes()).hexdigest(),
          'fixtures': checks, 'nativeLeanExecuted': False, 'proofAccepted': False}
(here / 'SELECTED-GROUPS-PURE-FIXTURES.json').write_text(json.dumps(record, indent=2) + '\n', encoding='utf-8', newline='\n')
print(json.dumps(record))

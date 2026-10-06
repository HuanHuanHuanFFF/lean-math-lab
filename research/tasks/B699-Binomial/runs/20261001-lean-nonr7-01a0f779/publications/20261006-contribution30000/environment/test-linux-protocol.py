"""Pure filesystem/text tests only: no Lean, Docker, network, or CI dispatch."""
import ast
import hashlib
import importlib.util
import json
from pathlib import Path
import shutil
import sys
import uuid
from types import SimpleNamespace

directory = Path(__file__).resolve().parent
test_root = Path(sys.argv[1]).resolve()
test_root.mkdir(parents=True, exist_ok=True)
spec = importlib.util.spec_from_file_location('budget', directory / 'cgroup-budget.py')
budget = importlib.util.module_from_spec(spec)
spec.loader.exec_module(budget)


def fixture(root: Path, entries: dict[str, str]) -> None:
    for name, content in entries.items():
        path = root / name.lstrip('/')
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content)


v2 = test_root / 'v2'
fixture(v2, {'/proc/self/cgroup': '0::/batch/leaf\n',
             '/proc/self/mountinfo': '1 0 0:1 / /sys/fs/cgroup rw - cgroup2 cgroup rw\n',
             '/proc/meminfo': 'MemAvailable: 10485760 kB\n'})
for suffix, limit, current, inactive in [('', 8*1024**3, 1024**3, 0),
                                      ('/batch', 1024**3, 768*1024**2, 64*1024**2),
                                      ('/batch/leaf', 4*1024**3, 100*1024**2, 0)]:
    base = '/sys/fs/cgroup' + suffix
    fixture(v2, {base+'/memory.max': str(limit), base+'/memory.current': str(current),
                 base+'/memory.stat': f'inactive_file {inactive}\n', base+'/cpu.max': '100000 100000'})
assert budget.observe(v2)['availableBudgetBytes'] == 320 * 1024**2
assert len(budget.observe(v2)['visibleSelfAndAncestorCgroups']) == 3

v1 = test_root / 'v1'
fixture(v1, {'/proc/self/cgroup': '2:memory:/slice/task\n',
             '/proc/self/mountinfo': '1 0 0:1 / /sys/fs/cgroup/memory rw - cgroup cgroup rw,memory\n',
             '/proc/meminfo': 'MemAvailable: 10485760 kB\n'})
for suffix, limit, usage in [('', 8*1024**3, 1024**3), ('/slice', 1024**3, 256*1024**2),
                             ('/slice/task', 256*1024**2, 96*1024**2)]:
    base = '/sys/fs/cgroup/memory' + suffix
    fixture(v1, {base+'/memory.limit_in_bytes': str(limit), base+'/memory.usage_in_bytes': str(usage)})
assert budget.observe(v1)['availableBudgetBytes'] == 160 * 1024**2

source = (directory / 'linux-platform-replay.py').read_text()
asset_pin = json.loads((directory/'LEAN-LINUX-ASSET-PIN.json').read_text())
assert asset_pin['assetId'] == 523687465
assert asset_pin['sha256'] == '890afd185370f85666025b883914ab4f4b339136f8c96167b69cfb62aecaf235'
assert 'metadata_url' not in source and 'api.github.com' not in source
assert 'archive.stat().st_size != asset["bytes"]' in source
assert 'run("focused-cache-download", [str(toolchain / "bin/lake"), "env", "lean", "--memory=1536", "--threads=1"' in source
assert 'run("focused-cache-plan", [str(toolchain / "bin/lake"), "env", "lean", "--memory=1536", "--threads=1"' in source
assert 'resource.setrlimit' not in source
cache_spec = importlib.util.spec_from_file_location('cache_builder', directory/'build-cache-interpreter.py')
cache_builder = importlib.util.module_from_spec(cache_spec)
cache_spec.loader.exec_module(cache_builder)
import os
cache_builder.os.environ['B699_CACHE_SANDBOX_IMAGE'] = 'test-image'
cache_builder.os.getuid = lambda: 1001
cache_builder.os.getgid = lambda: 1001
cache_command = ['lean', '--memory=1536', '--threads=1', '-DElab.async=false', '-R', '/fixed/pkg',
                 '-o', '/objects/Cache/Cli.olean', '/fixed/pkg/Cache/Cli.lean']
cache_args = cache_builder.docker_command(cache_command, test_root/'fixed-source', test_root/'toolchain',
                                         {test_root/'fixed-source/pkg': test_root/'objects'}, '/objects')
assert ['--memory', '2048m', '--memory-swap', '2048m'] == cache_args[cache_args.index('--memory'):cache_args.index('--memory')+4]
assert cache_args[cache_args.index('--pids-limit')+1] == '256'
assert cache_args[cache_args.index('--cpus')+1] == '1'
assert cache_args[cache_args.index('--network')+1] == 'none'
assert cache_args[-len(cache_command):] == cache_command
assert any(str(test_root/'fixed-source') in arg and arg.endswith(',readonly') for arg in cache_args)
tree = ast.parse(source)
functions = [node for node in tree.body if isinstance(node, (ast.FunctionDef, ast.ClassDef)) and node.name in {
    'sandbox_adapter', 'preserve_objects', 'LeafStageFailure', 'collect_groups', 'owned_containers', 'run_sandbox'}]
work = test_root / 'adapters'
evidence = test_root / 'evidence'
work.mkdir(exist_ok=True)
evidence.mkdir(exist_ok=True)
context = {'Path': Path, 're': __import__('re'), 'WORK': work, 'EVIDENCE': evidence,
           'SCRIPT': directory, 'shutil': shutil, 'json': json, 'subprocess': __import__('subprocess'),
           'REPO': Path.cwd(), 'digest': lambda p: hashlib.sha256(p.read_bytes()).hexdigest(),
           'uuid': uuid, 'stages': [], 'environment': {},'request':{}}
exec(compile(ast.Module(body=functions, type_ignores=[]), 'adapter-test', 'exec'), context)
official = Path(sys.argv[2]).read_text()
raw = context['sandbox_adapter'](official, 'Frozen.small12', work/'raw')
audit = context['sandbox_adapter'](official, 'Audit.SmallIndices', work/'audit', work/'imports')
checker = context['sandbox_adapter'](official, 'Audit.SmallIndices', work/'audit', work/'imports', True)
for adapter in (raw, audit, checker):
    text = adapter.read_text()
    assert '--network none' in text and '--read-only' in text and '--cap-drop ALL' in text
    assert '/bin/sh /contrib-resource/guard.sh "$memory_mb"' in text
    assert '--env "PATH=$toolchain/bin:/usr/local/bin:/usr/bin:/bin"' in text
    ownership = json.loads((evidence/(adapter.name+'.container.json')).read_text())
    assert '--name "' + ownership['name'] + '"' in text
    assert ownership['adapterSha256'] == hashlib.sha256(adapter.read_bytes()).hexdigest()
    assert (evidence/adapter.name).read_text() == text
    assert (evidence/(adapter.name+'.diff')).exists()
assert 'LEAN_PATH=/contrib-evidence:/review-imports:$lean_path' in checker.read_text()
assert '"$(dirname "$lean_binary")/leanchecker" -v Audit.SmallIndices' in checker.read_text()
assert 'kernel-literal' in source and 'preserve_objects("literal-' in source
dummy_source = work/'source.lean'
dummy_source.write_text('-- fixture only\n')
dummy_output = work/'dummy-object'
fixture(dummy_output, {'Frozen/small12.olean': 'fixture object; no Lean execution'})
context['preserve_objects']('first-leaf', dummy_output, dummy_source, 'Frozen.small12')
assert (evidence/'objects/first-leaf/Frozen/small12.olean').exists()
binding = json.loads((evidence/'first-leaf-OBJECT-BINDING.json').read_text())
assert binding['objects'][str(Path('Frozen')/'small12.olean')] == hashlib.sha256(b'fixture object; no Lean execution').hexdigest()
assert binding['compileExitCode'] is None and binding['proofAccepted'] is False

# Exercise the production collector with fake stages only: one rejected leaf
# cannot stop later independent leaves, nor permit the all-leaf combination.
groups = [{'id': str(i), 'sourcePath': str(i)+'.lean', 'sourceSha256': 'fixture', 'auditSha256': 'fixture'} for i in range(7)]
groups.append({'id': 'FullCoverageExact', 'auditSha256': 'fixture'})
seen = []
def reject_first(group):
    seen.append(group['id'])  # Each callback is where production re-admits resources.
    if group['id'] == '0':
        raise context['LeafStageFailure']('raw-0', 137)
    return {'id': group['id']}
try:
    context['collect_groups'](groups, reject_first)
    raise AssertionError('a rejected required leaf was accepted')
except RuntimeError as error:
    assert 'required independent leaves failed: 0' == str(error)
assert seen == [str(i) for i in range(7)]
collection = json.loads((evidence/'COLLECTION.json').read_text())
assert collection['proofAccepted'] is False and collection['allRequiredStagesPassed'] is False
assert collection['results'][-1]['status'] == 'skipped' and collection['failedGroups'] == ['0']
seen.clear()
def pass_group(group):
    seen.append(group['id'])
    return {'id': group['id']}
context['collect_groups'](groups, pass_group)
assert seen == [str(i) for i in range(7)] + ['FullCoverageExact']
seen.clear()
def environment_fault(group):
    seen.append(group['id'])
    raise RuntimeError('fixture global protection failure')
try:
    context['collect_groups'](groups, environment_fault)
    raise AssertionError('environment/protection failure was ignored')
except RuntimeError as error:
    assert str(error) == 'fixture global protection failure'
assert seen == ['0']

# Fake Docker command responses, without executing Docker, test owned cleanup
# after a timeout and prove that startup/cleanup faults remain fatal.
cid = 'a'*64
commands = []
responses = iter(['', cid+'\n', ''])
def fake_query(command, **kwargs):
    commands.append(command)
    return next(responses)
context['subprocess'] = SimpleNamespace(check_output=fake_query, PIPE=-1,
    run=lambda command, **kwargs: commands.append(command))
def failed_stage(label, command, **kwargs):
    (evidence/(label+'.log')).write_text('B699_RESOURCE_CONTRACT path=/sys/fs/cgroup memory.max=2147483648\n')
    return 137
context['run'] = failed_stage
try:
    context['run_sandbox']('timeout-fixture', raw, ['fake'])
    raise AssertionError('timeout was accepted')
except context['LeafStageFailure'] as error:
    assert error.code == 137
assert ['docker', 'container', 'rm', '--force', cid] in commands
assert json.loads((evidence/'timeout-fixture-CONTAINER-LIFECYCLE.json').read_text())['cleanupConfirmed'] is True
responses = iter(['', '', ''])
def guard_fault(label, command, **kwargs):
    (evidence/(label+'.log')).write_text('B699_RESOURCE_CONTRACT: no finite memory.max\n')
    return 125
context['run'] = guard_fault
try:
    context['run_sandbox']('guard-fixture', raw, ['fake'])
    raise AssertionError('a guard fault was accepted')
except RuntimeError as error:
    assert not isinstance(error, context['LeafStageFailure'])
    assert 'environment/protection failure' in str(error)
responses = iter(['', cid+'\n', cid+'\n'])
context['run'] = failed_stage
try:
    context['run_sandbox']('cleanup-fixture', raw, ['fake'])
    raise AssertionError('a cleanup fault was accepted')
except RuntimeError as error:
    assert not isinstance(error, context['LeafStageFailure'])
    assert 'cleanup could not be confirmed' in str(error)
assert json.loads((evidence/'cleanup-fixture-CONTAINER-LIFECYCLE.json').read_text())['cleanupConfirmed'] is False
assert 'def execute_group(group: dict)' in source and 'resources("before-" + group["id"])' in source
result = {'v2AncestorBudget': 'pass', 'v1SelfBudget': 'pass', 'rawAuditCheckerAdapters': 'pass',
          'finalExecutedScriptAndDiff': 'pass', 'firstLeafEvidenceImmediateRetention': 'pass',
          'fixedLinuxAssetWithoutRuntimeApiLookup': 'pass', 'cacheDockerMemoryCpuPidAndReadonlySources': 'pass',
          'failedLeafContinuesAllSevenThenRejects': 'pass', 'fullCoverageOnlyOnAllPass': 'pass',
          'globalProtectionFailureStops': 'pass', 'ownedTimeoutCleanupConfirmed': 'pass',
          'guardAndCleanupFaultsStop': 'pass',
          'LeanExecuted': False, 'DockerExecuted': False}
(directory/'LINUX-PROTOCOL-PURE-TEST.json').write_text(json.dumps(result, indent=2)+'\n')
print(json.dumps(result))

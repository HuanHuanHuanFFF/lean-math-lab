"""Run actual profiling admission statements, stop before INPUT-BINDING I/O.

Only Linux/Actions/supervisor environment flags are fixture values on Windows;
manifest, source, hashes, size, order, pins and code are actual fixed inputs.
No Lean, Docker, network, or bootstrap is executed.
"""
from pathlib import Path
from types import SimpleNamespace
from datetime import datetime, timezone
import ast
import hashlib
import json
import re

here = Path(__file__).resolve().parent
repo = next(p for p in here.parents if (p / 'AGENTS.md').is_file())
manifest_path = here.parent / 'implementation/range-tail/repairs/20261007-ci7/r8-fixedp/WHOLE-RESOURCE-PROBE-REQUEST.json'
normal = here / 'linux-platform-replay.py'
profiling = here / 'linux-profiling-replay.py'

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

normal_ast = ast.parse(normal.read_text())
constants = {}
for node in normal_ast.body:
    if isinstance(node, ast.Assign) and len(node.targets) == 1 and isinstance(node.targets[0], ast.Name):
        if node.targets[0].id in ('BRANCH', 'DERIVED'):
            constants[node.targets[0].id] = ast.literal_eval(node.value)
bound_node = next(n for n in normal_ast.body if isinstance(n, ast.FunctionDef) and n.name == 'bound')
bound_context = {'REPO': repo, 'Path': Path, 'digest': digest}
exec(compile(ast.Module(body=[bound_node], type_ignores=[]), '<actual bound>', 'exec'), bound_context)
profile_ast = ast.parse(profiling.read_text())
main = next(n for n in profile_ast.body if isinstance(n, ast.FunctionDef) and n.name == 'main')
boundary = next(i for i, n in enumerate(main.body) if isinstance(n, ast.Expr) and
                'PROFILING-INPUT-BINDING.json' in ast.unparse(n))
actual_statements = main.body[:boundary]
lease = datetime.fromisoformat('2026-10-06T23:30:25+00:00')
request = {'enabled': True, 'diagnosisOnly': True, 'branch': constants['BRANCH'],
           'fileTimeoutSeconds': 180, 'maxMemoryMiB': 16384,
           'hardDeadlineUtc': lease.isoformat(),
           'probeManifestPath': manifest_path.relative_to(repo).as_posix(),
           'probeManifestSha256': digest(manifest_path),
           'selectedProbeIds': ['Middle323WholeResources'],
           'fixedReplaySha256': digest(normal)}
core = SimpleNamespace(request=request, BRANCH=constants['BRANCH'], DERIVED=constants['DERIVED'],
    os=SimpleNamespace(environ={'GITHUB_REF': 'refs/heads/' + constants['BRANCH']}),
    environment={'B699_DEADLINE_WRAPPED': '1', 'B699_HARD_DEADLINE_UTC': lease.isoformat()},
    bound=bound_context['bound'])
context = {'sys': SimpleNamespace(platform='linux'), 'core': core, 'datetime': datetime,
           'timezone': timezone, 'json': json, 're': re}
exec(compile(ast.Module(body=actual_statements, type_ignores=[]), '<actual profiling admission>', 'exec'), context)
assert len(context['sources']) == 1 and len(context['probes']) == 1
assert context['probes'][0]['heartbeatLimit'] == 1000000
assert digest(context['sources'][0]) == 'a484ee28492dd59236f425b59f008ec34a85b521440aa4a95a50a87ba8d16906'
assert request['fixedReplaySha256'] == '4e79a9347cfdce5db636291930548031d5a0c33f27c78a5953204cfac212be88'
record = {'status': 'all actual main admission checks reached before INPUT-BINDING',
    'manifestSha256': digest(manifest_path), 'profilingRunnerSha256': digest(profiling),
    'normalRunnerSha256': digest(normal), 'sourceSha256': digest(context['sources'][0]),
    'sourceBytes': context['sources'][0].stat().st_size, 'actualCodeStatementsExecuted': len(actual_statements),
    'hostFlagsSimulated': ['Linux platform', 'authorized GitHub branch', 'deadline supervisor environment'],
    'limits': {'seconds': 180, 'sourceAndCLIHeartbeats': 1000000, 'threads': 1},
    'bootstrapExecuted': False, 'inputBindingWritten': False, 'LeanExecuted': False,
    'DockerExecuted': False, 'proofAccepted': False}
(here / 'LAST-RESOURCE-ADMISSION-PURE-RECEIPT.json').write_text(json.dumps(record, indent=2) + '\n', encoding='utf-8', newline='\n')
print(json.dumps(record))

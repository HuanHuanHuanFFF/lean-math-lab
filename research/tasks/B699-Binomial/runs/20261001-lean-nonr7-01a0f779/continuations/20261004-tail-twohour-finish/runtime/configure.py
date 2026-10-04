"""Prepare one frozen three-stage CI plan; no Lean process is launched."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path

ROOT = Path.cwd()
HERE = Path(__file__).resolve().parent
BASE = HERE.parent.parent
OLD = BASE / '20261004-tail-until2020'

def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()

def rel(p):
    return p.relative_to(ROOT).as_posix()

def row(p, roots, large=False):
    return {'path': rel(p), 'bytes': p.stat().st_size, 'sha256': sha(p),
            'roots': roots, 'largeConsumer': large}

s = json.loads((OLD / 'runtime/stage-spec.json').read_text())
s.update(schema='b699-tail-twohour-finish-v1', owner='C tail2h_runtime gpt-6.1-sol/xhigh',
         sourceBaseline='9546ceb9c3545dd4b79f4b992d047f496db17df9',
         roundStartUtc='2026-10-04T13:16:38Z', finalDeadlineUtc='2026-10-04T15:16:38Z',
         proofStopUtc='2026-10-04T14:46:00Z', lastJobStart='2026-10-04T13:55:00Z',
         toolRoot='.tools/b699-lean-20261001-01a0f779/20261004-tail-twohour-finish/runtime')
c = json.loads((OLD / 'supply/candidates.json').read_text())
blocks = [row(OLD / 'supply' / x['file'], x['roots']) for x in c['blocks']]
consumer = c['consumer']
literal = row(OLD / 'reviews/Tail15000ExactLegacy.lean',
              ['B699TailUntil2020Verify20261004.complete_15000_exact',
               'B699TailUntil2020Verify20261004.all_upto_15000_exact'], True)
# Derive the literal's namespace from its frozen declarations.
import re
ns = re.search(r'^namespace (\S+)', (OLD / 'reviews/Tail15000ExactLegacy.lean').read_text(), re.M).group(1)
literal['roots'] = [ns + '.complete_15000_exact', ns + '.all_upto_15000_exact']
s['stages'][1]['enabled'] = True
s['stages'].append({'name': 'stage15000', 'enabled': True, 'sources': blocks[17:] +
    [row(OLD / 'supply' / consumer['file'], consumer['roots'], True), literal],
    'prerequisites': ['stage13000'], 'completeUpperCandidate': 15000})
for stage, estimate in zip(s['stages'], [120, 720, 480]):
    stage.update(predictedCompleteSeconds=estimate, packagingReserveSeconds=60,
       predictionBasis='Prior CI37197120772 64-prime compiler/checker maxima 11.563/8.887s; conservative serial stage allowance; startup/cache/restore separately budgeted')
sources = {x['path']: x for x in s['taskSources']}
for stage in s['stages']:
    for source in stage['sources']:
        sources[source['path']] = source
s['taskSources'] = list(sources.values())
for name in ['tail-stage.py', 'artifact_intake.py']:
    p = HERE / name
    s['fixedRuntimeSources'].append(row(p, []))
(HERE / 'stage-spec.json').write_text(json.dumps(s, indent=2) + '\n')
missing = []
for x in s['taskSources'] + s['fixedRuntimeSources']:
    p = ROOT / x['path']
    if not p.is_file() or sha(p) != x['sha256'] or p.stat().st_size != x['bytes']:
        missing.append(x['path'])
for p in HERE.glob('*.py'):
    ast.parse(p.read_text(), str(p))
if missing:
    raise RuntimeError('Presence or exact frozen bytes mismatch: ' + ', '.join(missing))
ready = {'utc': dt.datetime.now(dt.timezone.utc).isoformat(), 'status': 'READY-FROZEN',
    'baseline': s['sourceBaseline'], 'stageSpecSha256': sha(HERE / 'stage-spec.json'),
    'taskSourceCount': len(s['taskSources']), 'fixedRuntimeSourceCount': len(s['fixedRuntimeSources']),
    'stageCounts': {x['name']: len(x['sources']) for x in s['stages']},
    'sourcePresenceAndBytes': 'all pass', 'pythonAst': 'all pass', 'nativeLeanLaunched': 0,
    'oldSourceCompileIncrementPlanned': 0, 'wrapperRecompileException': 'Extra10001Legacy prior producer2.541s; fifth-origin configuration cost avoided',
    'deadlines': {k: s[k] for k in ['lastJobStart', 'proofStopUtc', 'finalDeadlineUtc']},
    'expectedLocalIncrement': {'zipGiBEstimate': 0.35, 'uniqueBinaryGiBEstimate': 0.7,
        'basis': 'old48-source binary1.235GB;26 new blocks plus tiny consumers; actual intake manifest authoritative'},
    'frozenFiles': [row(HERE / n, []) for n in ['stage-spec.json', 'tail-stage.py', 'artifact_intake.py']]}
(HERE / 'READY.json').write_text(json.dumps(ready, indent=2) + '\n')
print(json.dumps({k:v for k,v in ready.items() if k != 'frozenFiles'}))

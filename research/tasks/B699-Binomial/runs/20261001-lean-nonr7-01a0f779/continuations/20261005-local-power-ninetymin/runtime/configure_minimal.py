"""Freeze a new authorized window; reuse helper bytes, not old execution evidence."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path
import re

ROOT = Path.cwd()
HERE = Path(__file__).resolve().parent
OLD = HERE.parents[1] / '20261005-lean-halfhour' / 'runtime'

def row(p, roots=()):
    return {'path': p.relative_to(ROOT).as_posix(), 'bytes': p.stat().st_size,
            'sha256': hashlib.sha256(p.read_bytes()).hexdigest(), 'roots': list(roots)}

spec = json.loads((OLD / 'paper-stage-spec-engineering-candidate.json').read_text())
spec.update(schema='b699-local-power-ninetymin-minimal-v1', owner='C local_power_runtime gpt-6.1-sol/xhigh',
    sourceBaseline='a0f9ff06a4a5f3b8dc0d79dd6a45dbe2317aad6d',
    roundStartUtc='2026-10-05T08:04:27Z', finalDeadlineUtc='2026-10-05T09:34:27Z',
    proofStopUtc='2026-10-05T09:26:00Z', lastJobStart='2026-10-05T09:20:00Z',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-local-power-ninetymin/minimal-runtime',
    reusedPrerequisiteArtifacts=[], noAutomaticColdProviderFallback=True)
sources = json.loads((HERE / 'source-rows.json').read_text())['files']
spec['stages'] = [{'name': 'powerdecomp', 'enabled': True, 'sources': [{**r, 'largeConsumer': True} for r in sources],
    'prerequisites': [], 'predictedCompleteSeconds': 45, 'packagingReserveSeconds': 15,
    'predictionBasis': 'measured prior small pair 15.27s; 60s prediction is not a guarantee',
    'unconditionalCompleteOriginalIndexIncrement': 0, 'genuineUnboundedSupplierProved': False}]
spec['taskSources'] = sources
spec['cacheRoots'] = sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT / r['path']).read_text() for r in sources), re.M)))
source = (OLD / 'paper-stage-engineering-candidate.py').read_text().replace(
    "HERE / 'paper-stage-spec-engineering-candidate.json'", "HERE / 'stage-spec.json'")
source = source.replace("['powerdecomp', 'powercore', 'localpower', 'weakupper']", "['powerdecomp']")
start = source.index('def prepare():')
end = source.index('\ndef run_stage(', start)
source = source[:start] + '''def prepare():
    cache()
    b.write('adopted-source-object-index.json', {'utc': b.utc(), 'sourceObjects': {},
        'oldSourceCount': 0, 'supplementSourceCount': 0, 'oldExecutionIncrement': 0,
        'scope': 'fresh sources import only Mathlib; no large prior archive required'})
    probe = b.EVIDENCE / 'relevant-import.lean'
    probe.write_text('import Mathlib.NumberTheory.Chebyshev\\nimport Mathlib.Order.Interval.Finset.Nat\\nimport Mathlib.Algebra.Order.Floor.Semiring\\n')
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    b.launch([tc['lean'], '-j1', '-M6144', '-DElab.async=false', '-R', str(REPO), str(probe)],
        'composite-minimal-relevant-import', b.lean_env(), max_seconds=120, startup_mib=6144, tree_mib=5120)
    b.write('prepared.json', {'utc': b.utc(), 'actualFirstSearchPrefix': str(b.OBJECTS),
        'oldSourceCompileIncrement': 0, 'sourceCount': 0})

''' + source[end:]
source = source.replace("b.write('resources-start.json', b.resources())", "b.write('resources-start.json', b.resources())\n            if b.DEADLINE - time.time() < 360:\n                raise RuntimeError('Insufficient post-checkout proof budget')")
(HERE / 'stage.py').write_text(source, newline='\n')
ast.parse(source)
(HERE / 'validate_job_admission.py').write_bytes((OLD / 'validate_job_admission.py').read_bytes())
keep = [r for r in spec['fixedRuntimeSources'] if '/transfer/' in r['path'] or r['path'] == spec['strictAuditScript']]
spec['fixedRuntimeSources'] = keep + [row(HERE / 'stage.py'), row(HERE / 'validate_job_admission.py')]
for r in spec['taskSources'] + spec['fixedRuntimeSources']:
    if row(ROOT / r['path'])['sha256'] != r['sha256'] or (ROOT / r['path']).stat().st_size != r['bytes']:
        raise RuntimeError('Frozen source size/hash differs: ' + r['path'])
(HERE / 'stage-spec.json').write_text(json.dumps(spec, indent=2) + '\n', newline='\n')
runtime = HERE.relative_to(ROOT).as_posix()
workflow = f'''name: B699 controlled local power minimal proof
on:
  workflow_dispatch:
permissions:
  contents: read
concurrency:
  group: b699-controlled-proof
  cancel-in-progress: false
jobs:
  scoped:
    runs-on: ubuntu-latest
    timeout-minutes: 20
    env:
      B699_RUNTIME: {runtime}
    steps:
      - name: Admit this run and source before checkout
        run: |
          task_job_start=$(date -u +%s)
          test "$task_job_start" -ge "$(date -u -d '2026-10-05 08:04:27 UTC' +%s)" || exit 124
          test "$task_job_start" -le "$(date -u -d '2026-10-05 09:20:00 UTC' +%s)" || exit 124
          echo "B699_ADMITTED_JOB_START_EPOCH=$task_job_start" >> "$GITHUB_ENV"
          echo "B699_ADMITTED_JOB_RUN_ID=$GITHUB_RUN_ID" >> "$GITHUB_ENV"
          echo "B699_ADMITTED_JOB_SOURCE_SHA=$GITHUB_SHA" >> "$GITHUB_ENV"
      - uses: actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1
      - name: Actual resource and fixed source preflight
        id: plan
        run: python3 "$B699_RUNTIME/stage.py" preflight
      - uses: leanprover/lean-action@50fcf42d2e460296f1a34b402e990d1b24f8b596
        with:
          auto-config: 'false'
          build: 'false'
          test: 'false'
          lint: 'false'
          use-mathlib-cache: 'false'
          use-github-cache: 'false'
      - name: Focused Mathlib cache and representative import
        run: python3 "$B699_RUNTIME/stage.py" prepare
      - name: Fresh decomposition producer and independent literal
        if: success() && steps.plan.outputs.powerdecomp_enabled == 'true'
        run: python3 "$B699_RUNTIME/stage.py" powerdecomp
      - name: Preserve complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/stage.py" package-powerdecomp
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-ninetymin-powerdecomp-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/powerdecomp-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE / 'workflow-draft.yml').write_text(workflow, newline='\n')
(ROOT / '.github/workflows/b699-finite-onehour.yml').write_text(workflow, newline='\n')
ready = {'status': 'READY-FROZEN', 'utc': dt.datetime.now(dt.timezone.utc).isoformat(),
    'firstFreshSourceCount': len(sources), 'expectedAXCount': sum(len(r['roots']) for r in sources),
    'reusedTaskObjectCount': 0, 'firstFreshObjectsRequired': False,
    'sourcePresenceBytesHash': 'pass', 'pythonAST': 'pass', 'mathematicalAcceptance': 'pending S',
    'spec': row(HERE / 'stage-spec.json'), 'driver': row(HERE / 'stage.py'),
    'workflow': row(ROOT / '.github/workflows/b699-finite-onehour.yml'),
    'latestLaunchUtc': spec['lastJobStart'], 'proofStopUtc': spec['proofStopUtc'],
    'hardDeadlineUtc': spec['finalDeadlineUtc'], 'expectedCompleteOriginalIndexIncrement': 0}
(HERE / 'READY.json').write_text(json.dumps(ready, indent=2) + '\n', newline='\n')
print(json.dumps(ready))

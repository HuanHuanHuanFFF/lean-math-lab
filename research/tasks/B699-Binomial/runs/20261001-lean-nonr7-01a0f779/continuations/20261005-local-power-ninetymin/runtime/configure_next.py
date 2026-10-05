"""Freeze sequential root-width, theta, finite-sum and genuine LP stages."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re

ROOT = Path.cwd()
HERE = Path(__file__).resolve().parent
p = argparse.ArgumentParser()
p.add_argument('--artifact', type=int, required=True)
p.add_argument('--run', type=int, required=True)
p.add_argument('--bytes', type=int, required=True)
p.add_argument('--sha256', required=True)
p.add_argument('--source', required=True)
a = p.parse_args()
def row(p, namespace, names):
    return {'path': p.relative_to(ROOT).as_posix(), 'bytes': p.stat().st_size,
        'sha256': hashlib.sha256(p.read_bytes()).hexdigest(),
        'roots': [namespace + '.' + n for n in names], 'largeConsumer': True}

old = HERE.parents[1] / '20261005-lean-halfhour'
scope = HERE.parent
ns = 'B699LocalPowerVerify20261005'
pairs = [
    ('rootwidth', old/'supply/LocalPowerRootWidth.lean', scope/'reviews/LocalPowerRootWidthLiteral.lean',
        'B699LocalPowerWidth20261005', ['bernoulli_step','ratio_root_bound','local_root_width'], []),
    ('thetainterval', old/'supply/LocalPowerThetaInterval.lean', scope/'reviews/LocalPowerThetaIntervalLiteral.lean',
        'B699LocalPowerTheta20261005', ['theta_increment_eq_sum','prime_interval_subset','theta_increment_bound'], ['powerdecomp']),
    ('finitesums', scope/'supply/LocalPowerFiniteSums.lean', scope/'reviews/LocalPowerFiniteSumsLiteral.lean',
        'B699LocalPowerSums20261005', ['reciprocal_square_sum_le_sub','reciprocal_square_sum_le_one','reciprocal_sum_le_half','root_le_sqrt'], []),
    ('master', scope/'supply/LocalPowerMaster.lean', scope/'reviews/LocalPowerMasterLiteral.lean',
        'B699LocalPowerMaster20261005', ['theta_root_increment_bound','local_power_increment_bound_of_two','local_power_increment_bound'],
        ['rootwidth','thetainterval','finitesums'])]
spec = json.loads((HERE/'stage-spec.json').read_text())
spec.update(schema='b699-local-power-ninetymin-main-v1',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-local-power-ninetymin/main-runtime',
    reusedPrerequisiteArtifacts=[{'artifact': a.artifact, 'run': a.run, 'sourceCommit': a.source,
        'zipBytes': a.bytes, 'zipSha256': a.sha256, 'packageName': 'accepted-powerdecomp',
        'stageName': 'powerdecomp', 'sourceCount': 2, 'freshOnly': True}])
spec['stages'] = []
for name, producer, literal, pns, roots, prereqs in pairs:
    spec['stages'].append({'name': name, 'enabled': True,
        'sources': [row(producer,pns,roots),row(literal,ns,[r+'_literal' for r in roots])],
        'prerequisites': prereqs, 'predictedCompleteSeconds': 90, 'packagingReserveSeconds': 15,
        'predictionBasis': 'new finite analysis/API proofs;90s prediction, per-child120s hard maximum',
        'unconditionalCompleteOriginalIndexIncrement': 0, 'genuineUnboundedSupplierProved': False, 'targetUnconditionalLocalPowerBound': name=='master'})
spec['taskSources'] += [r for s in spec['stages'] for r in s['sources']]
spec['cacheRoots'] = sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in spec['taskSources']), re.M)))
source = (HERE/'stage.py').read_text().replace("HERE / 'stage-spec.json'", "HERE / 'main-stage-spec.json'")
source = source.replace("['powerdecomp']", "['rootwidth','thetainterval','finitesums','master']")
start = source.index("        if 'external-member-bindings.json' in names:")
end = source.index('        for item in z.infolist():', start)
source = source[:start] + source[end:]
start = source.index('def prepare():')
end = source.index('\ndef run_stage(', start)
source = source[:start] + '''def prepare():
    cache()
    token = os.environ.get('B699_ARTIFACT_TOKEN', '')
    if not token:
        raise RuntimeError('Existing CI artifact token unavailable')
    origin = SPEC['reusedPrerequisiteArtifacts'][0]
    download_supplement(origin, token, origin['packageName'])
    token = None
    package = b.EVIDENCE / origin['packageName']
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    prior_tc = json.loads((package / 'toolchain.json').read_text())
    for key in ['leanSha256', 'leancheckerSha256']:
        if tc[key] != prior_tc[key]:
            raise RuntimeError('Reused executable hash differs: ' + key)
    index = {}
    for p in package.glob('*/receipt.json'):
        r = json.loads(p.read_text())
        if r.get('mode') != 'Lean':
            continue
        if r.get('status') != 'success' or r.get('exitCode') != 0 or not r.get('sourceUnchanged'):
            raise RuntimeError('Reused compile receipt is unsuccessful')
        path = Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
        if b.sha(REPO / path) != r['sourceSha256'] or b.sha(p.parent / 'source.lean') != r['sourceSha256']:
            raise RuntimeError('Reused source byte binding differs')
        for part in r['objectParts']:
            dst = b.OBJECTS / part['path'].split('/objects/', 1)[1]
            if dst.stat().st_size != part['bytes'] or b.sha(dst) != part['sha256']:
                raise RuntimeError('Reused object byte binding differs')
        index[path] = r
    if len(index) != 2:
        raise RuntimeError('Expected exact two-source decomposition reuse')
    closure = package / 'powerdecomp-closed.json'
    if not closure.is_file():
        raise RuntimeError('Successful previous stage closure is missing')
    b.write('powerdecomp-adopted.json', {'utc': b.utc(), 'origin': origin,
        'closureSha256': b.sha(closure), 'actualNewCompile': False})
    b.write('adopted-source-object-index.json', {'utc': b.utc(), 'sourceObjects': index,
        'oldSourceCount': 2, 'supplementSourceCount': 0, 'oldExecutionIncrement': 0})
    probe = b.EVIDENCE / 'relevant-import.lean'
    probe.write_text('import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerDecomposition\\n')
    b.launch([tc['lean'], '-j1', '-M6144', '-DElab.async=false', '-R', str(REPO), str(probe)],
        'composite-main-relevant-import', b.lean_env(), max_seconds=120, startup_mib=6144, tree_mib=5120)
    b.write('prepared.json', {'utc': b.utc(), 'actualFirstSearchPrefix': str(b.OBJECTS),
        'oldSourceCompileIncrement': 0, 'sourceCount': 2})

''' + source[end:]
driver = HERE/'main-stage.py'
driver.write_text(source, newline='\n')
source = source.replace("b.write('failure.json',", "b.write(sys.argv[1] + '-failure.json',")
driver.write_text(source, newline='\n')
ast.parse(source)
spec['fixedRuntimeSources'] = [r for r in spec['fixedRuntimeSources'] if r['path'] != (HERE/'stage.py').relative_to(ROOT).as_posix()]
spec['fixedRuntimeSources'].append(row(driver, '', []))
for r in spec['taskSources'] + spec['fixedRuntimeSources']:
    p = ROOT/r['path']
    if p.stat().st_size != r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest() != r['sha256']:
        raise RuntimeError('Frozen size/hash mismatch: ' + r['path'])
(HERE/'main-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n', newline='\n')
workflow = (HERE/'workflow-draft.yml').read_text().split('      - name: Fresh decomposition producer')[0]
workflow = workflow.replace('minimal proof','genuine LP proof').replace('stage.py','main-stage.py')
workflow = workflow.replace('      - name: Focused Mathlib cache and representative import', '      - name: Focused Mathlib cache and representative import\n        id: prepare')
workflow = workflow.replace('        run: python3 "$B699_RUNTIME/main-stage.py" prepare',
    '        env:\n          B699_ARTIFACT_TOKEN: ${{ github.token }}\n        run: python3 "$B699_RUNTIME/main-stage.py" prepare')
for s in spec['stages']:
    name = s['name']
    workflow += f'''      - name: Fresh {name} producer and independent literal
        if: always() && steps.prepare.outcome == 'success' && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/main-stage.py" {name}
      - name: Preserve {name} complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/main-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-ninetymin-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE/'main-workflow-draft.yml').write_text(workflow,newline='\n')
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow,newline='\n')
summary = {'status': 'READY-FROZEN', 'sourcePresenceBytesHash': 'pass', 'pythonAST': 'pass',
    'stages': [s['name'] for s in spec['stages']], 'freshSourceCount': 8,
    'expectedFreshAXCount': sum(len(r['roots']) for s in spec['stages'] for r in s['sources']),
    'reusedTaskObjects': 2, 'adoptedOrigin': spec['reusedPrerequisiteArtifacts'][0],
    'proofStopUtc': spec['proofStopUtc'], 'hardDeadlineUtc': spec['finalDeadlineUtc']}
(HERE/'MAIN-READY.json').write_text(json.dumps(summary,indent=2)+'\n',newline='\n')
print(json.dumps(summary))

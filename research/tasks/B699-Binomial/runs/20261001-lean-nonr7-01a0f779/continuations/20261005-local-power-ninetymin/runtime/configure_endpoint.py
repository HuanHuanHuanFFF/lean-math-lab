"""Freeze corrected width plus master, monotonicity and actual endpoint LP bounds."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re

ROOT = Path.cwd()
HERE = Path(__file__).resolve().parent
p = argparse.ArgumentParser()
p.add_argument('--origins',type=Path,required=True)
a = p.parse_args()
origins = json.loads(a.origins.read_text())['origins']
ns = 'B699LocalPowerVerify20261005'
scope = HERE.parent
def row(p, namespace='', names=()):
    return {'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,
        'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
        'roots':[namespace+'.'+n for n in names], 'largeConsumer':True}
pairs = [
    ('rootwidth', 'LocalPowerRootWidth', 'B699LocalPowerWidth20261005',
        ['bernoulli_step','ratio_root_bound','local_root_width'], []),
    ('master', 'LocalPowerMaster', 'B699LocalPowerMaster20261005',
        ['theta_root_increment_bound','local_power_increment_bound_of_two','local_power_increment_bound'],
        ['rootwidth','thetainterval','finitesums']),
    ('monotonic', 'LocalPowerMonotonic', 'B699LocalPowerMonotonic20261005',
        ['log_ratio_le','log_square_ratio_le'], []),
    ('endpoint', 'LocalPowerEndpoint', 'B699LocalPowerEndpoint20261005',
        ['log_small_endpoint','log_tail_endpoint','local_power_increment_le_endpoint','local_power_increment_small','local_power_increment_tail'],
        ['master','monotonic'])]
spec = json.loads((HERE/'main-stage-spec.json').read_text())
spec.update(schema='b699-local-power-ninetymin-endpoint-v1',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-local-power-ninetymin/endpoint-runtime',
    reusedPrerequisiteArtifacts=origins)
spec['stages'] = []
for name, filename, pns, names, prereqs in pairs:
    spec['stages'].append({'name':name,'enabled':True,'sources':[
        row(scope/'supply'/(filename+'.lean'),pns,names),
        row(scope/'reviews'/(filename+'Literal.lean'),ns,[n+'_literal' for n in names])],
        'prerequisites':prereqs,'predictedCompleteSeconds':120,'packagingReserveSeconds':15,
        'predictionBasis':'new analysis/API proofs;135s prediction;each child120s hard maximum',
        'unconditionalCompleteOriginalIndexIncrement':0,'genuineUnboundedSupplierProved':False,
        'targetUnconditionalLocalPowerBound':name in ['master','endpoint']})
spec['taskSources'] = json.loads((HERE/'source-rows.json').read_text())['files']
prior = json.loads((HERE/'main-stage-spec.json').read_text())
spec['taskSources'] += [r for s in prior['stages'] if s['name'] in ['thetainterval','finitesums'] for r in s['sources']]
spec['taskSources'] += [r for s in spec['stages'] for r in s['sources']]
spec['cacheRoots'] = sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in spec['taskSources']), re.M)))
source = (HERE/'main-stage.py').read_text().replace("HERE / 'main-stage-spec.json'", "HERE / 'endpoint-stage-spec.json'")
source = source.replace("['rootwidth','thetainterval','finitesums','master']", "['rootwidth','master','monotonic','endpoint']")
source = source.replace("available = {row['stageName'] for row in SPEC['reusedPrerequisiteArtifacts']}",
    "available = {name for row in SPEC['reusedPrerequisiteArtifacts'] for name in row.get('stageNames', [row['stageName']])}")
start = source.index('def prepare():')
end = source.index('\ndef run_stage(',start)
source = source[:start] + '''def prepare():
    cache()
    token = os.environ.get('B699_ARTIFACT_TOKEN', '')
    if not token:
        raise RuntimeError('Existing CI artifact token unavailable')
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    index = {}
    for origin in SPEC['reusedPrerequisiteArtifacts']:
        download_supplement(origin, token, origin['packageName'])
        package = b.EVIDENCE / origin['packageName']
        prior_tc = json.loads((package / 'toolchain.json').read_text())
        for key in ['leanSha256','leancheckerSha256']:
            if tc[key] != prior_tc[key]:
                raise RuntimeError('Reused executable hash differs: '+key)
        local = {}
        for p in package.glob('*/receipt.json'):
            if origin.get('selectedReceipts') and p.relative_to(package).as_posix() not in origin['selectedReceipts']:
                continue
            r = json.loads(p.read_text())
            if r.get('mode') != 'Lean':
                continue
            if r.get('status') != 'success' or r.get('exitCode') != 0 or not r.get('sourceUnchanged'):
                raise RuntimeError('Reused compile receipt is unsuccessful')
            path = Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
            if b.sha(REPO/path) != r['sourceSha256'] or b.sha(p.parent/'source.lean') != r['sourceSha256']:
                raise RuntimeError('Reused source byte binding differs')
            for part in r['objectParts']:
                dst = b.OBJECTS/part['path'].split('/objects/',1)[1]
                if dst.stat().st_size != part['bytes'] or b.sha(dst) != part['sha256']:
                    raise RuntimeError('Reused object byte binding differs')
            local[path] = r
        if len(local) != origin['sourceCount'] or set(local)&set(index):
            raise RuntimeError('Reused source count or disjointness differs')
        index.update(local)
        for name in origin.get('stageNames',[origin['stageName']]):
            closure = package/(name+'-closed.json')
            if not closure.is_file():
                raise RuntimeError('Successful reused stage closure missing:'+name)
            b.write(name+'-adopted.json',{'utc':b.utc(),'origin':origin,
                'closureSha256':b.sha(closure),'actualNewCompile':False})
    token = None
    b.write('adopted-source-object-index.json',{'utc':b.utc(),'sourceObjects':index,
        'oldSourceCount':len(index),'supplementSourceCount':0,'oldExecutionIncrement':0})
    probe = b.EVIDENCE/'relevant-import.lean'
    probe.write_text('import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerThetaInterval\\nimport research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerFiniteSums\\n')
    b.launch([tc['lean'],'-j1','-M6144','-DElab.async=false','-R',str(REPO),str(probe)],
        'composite-endpoint-relevant-import',b.lean_env(),max_seconds=120,startup_mib=6144,tree_mib=5120)
    b.write('prepared.json',{'utc':b.utc(),'actualFirstSearchPrefix':str(b.OBJECTS),
        'oldSourceCompileIncrement':0,'sourceCount':len(index)})

''' + source[end:]
driver = HERE/'endpoint-stage.py'
driver.write_text(source,newline='\n')
ast.parse(source)
spec['fixedRuntimeSources'] = [r for r in spec['fixedRuntimeSources'] if r['path'] != (HERE/'main-stage.py').relative_to(ROOT).as_posix()]
spec['fixedRuntimeSources'].append(row(driver))
available = {name for o in origins for name in o.get('stageNames',[o['stageName']])}
for s in spec['stages']:
    if not set(s['prerequisites']) <= available:raise RuntimeError('Stage alias mismatch')
    available.add(s['name'])
    for r in s['sources']:
        roots={line.split('#print axioms ',1)[1] for line in (ROOT/r['path']).read_text().splitlines() if line.startswith('#print axioms ')}
        if roots != set(r['roots']):raise RuntimeError('Declared root audit mismatch')
for r in spec['taskSources']+spec['fixedRuntimeSources']:
    p = ROOT/r['path']
    if p.stat().st_size != r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest() != r['sha256']:
        raise RuntimeError('Frozen size/hash mismatch:'+r['path'])
(HERE/'endpoint-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n',newline='\n')
workflow = (HERE/'main-workflow-draft.yml').read_text().split('      - name: Fresh rootwidth producer')[0]
workflow = workflow.replace('genuine LP proof','actual endpoint LP proof').replace('main-stage.py','endpoint-stage.py')
for s in spec['stages']:
    name=s['name']
    workflow+=f'''      - name: Fresh {name} producer and independent literal
        if: always() && steps.prepare.outcome == 'success' && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/endpoint-stage.py" {name}
      - name: Preserve {name} complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/endpoint-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-ninetymin-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE/'endpoint-workflow-draft.yml').write_text(workflow,newline='\n')
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow,newline='\n')
ready={'status':'READY-FROZEN','stages':[s['name'] for s in spec['stages']],
    'freshSources':8,'expectedFreshAXCount':26,'reusedSources':sum(o['sourceCount'] for o in origins),
    'sizeShaRootsAliasesAST':'pass','proofStopUtc':spec['proofStopUtc'],'hardDeadlineUtc':spec['finalDeadlineUtc']}
(HERE/'ENDPOINT-READY.json').write_text(json.dumps(ready,indent=2)+'\n',newline='\n')
print(json.dumps(ready))

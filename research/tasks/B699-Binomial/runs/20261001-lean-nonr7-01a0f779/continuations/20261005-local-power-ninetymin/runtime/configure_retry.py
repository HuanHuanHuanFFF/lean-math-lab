"""Serial retry of API fixes; reuse accepted width, then consume actual LP in RD2."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re

ROOT=Path.cwd(); HERE=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('--origins',type=Path,required=True);a=p.parse_args()
origins=json.loads(a.origins.read_text())['origins']
def row(p,ns='',names=()):
    return {'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,
        'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'roots':[ns+'.'+n for n in names],
        'largeConsumer':True}
spec=json.loads((HERE/'endpoint-stage-spec.json').read_text())
spec.update(schema='b699-local-power-ninetymin-retry-v1',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-local-power-ninetymin/retry-runtime',
    reusedPrerequisiteArtifacts=origins)
spec['stages']=[s for s in spec['stages'] if s['name']!='rootwidth']
names=['coefficient_margin','sqrt_bound','theta_tail_of_budget','theta_bridge_of_finite','real_prime_from_supplies','gap_from_supplies']
spec['stages'].append({'name':'round2','enabled':True,'sources':[
    row(HERE.parent/'supply/LocalPowerRound2.lean','B699LocalPowerRound220261005',names),
    row(HERE.parent/'reviews/LocalPowerRound2Literal.lean','B699LocalPowerVerify20261005',[n+'_literal' for n in names])],
    'prerequisites':['endpoint','gap-only-01'],'predictedCompleteSeconds':120,'packagingReserveSeconds':15,
    'predictionBasis':'new RD2 consumer pair;135s prediction,each child120s cap',
    'unconditionalCompleteOriginalIndexIncrement':0,'genuineUnboundedSupplierProved':False,
    'remainingInputs':['DifferenceBudget','FinitePsiSupply Real(T0,C)','I0']})
for s in spec['stages']:
    s['sources']=[{**r,**row(ROOT/r['path']), 'roots':r['roots']} for r in s['sources']]
spec['taskSources']=[{**r,**row(ROOT/r['path']),'roots':r['roots']} for r in spec['taskSources']]
newpaths={r['path'] for r in spec['taskSources']}
for r in spec['stages'][-1]['sources']:
    if r['path'] not in newpaths:spec['taskSources'].append(r)
for path in ['research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-tail-twohour/gap/GapDefinitions.lean',
             'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-terminal-gap-twohour/gap/ThetaInterval.lean']:
    spec['taskSources'].append(row(ROOT/path))
spec['cacheRoots']=sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in spec['taskSources']),re.M)))
source=(HERE/'endpoint-stage.py').read_text().replace("HERE / 'endpoint-stage-spec.json'", "HERE / 'retry-stage-spec.json'")
source=source.replace("['rootwidth','master','monotonic','endpoint']", "['master','monotonic','endpoint','round2']")
source=source.replace("'composite-endpoint-relevant-import'", "'composite-retry-relevant-import'")
source=source.replace("probe.write_text('import research.tasks", "probe.write_text('import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaInterval\\nimport research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions\\nimport research.tasks")
driver=HERE/'retry-stage.py';driver.write_text(source,newline='\n');ast.parse(source)
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=(HERE/'endpoint-stage.py').relative_to(ROOT).as_posix()]+[row(driver)]
available={n for o in origins for n in o.get('stageNames',[o['stageName']])}
for s in spec['stages']:
    if not set(s['prerequisites'])<=available:raise RuntimeError('Stage aliases absent')
    available.add(s['name'])
    for r in s['sources']:
        emitted={line.split('#print axioms ',1)[1] for line in (ROOT/r['path']).read_text().splitlines() if line.startswith('#print axioms ')}
        if emitted!=set(r['roots']):raise RuntimeError('Root audit set mismatch')
for r in spec['taskSources']+spec['fixedRuntimeSources']:
    p=ROOT/r['path']
    if p.stat().st_size!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:
        raise RuntimeError('Frozen bytes differ:'+r['path'])
(HERE/'retry-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n',newline='\n')
workflow=(HERE/'endpoint-workflow-draft.yml').read_text().split('      - name: Fresh rootwidth producer')[0]
workflow=workflow.replace('actual endpoint LP proof','actual LP API retry and RD2 proof').replace('endpoint-stage.py','retry-stage.py')
for s in spec['stages']:
    name=s['name']
    workflow+=f'''      - name: Fresh {name} producer and independent raw literal
        if: always() && steps.prepare.outcome == 'success' && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/retry-stage.py" {name}
      - name: Preserve {name} complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/retry-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-ninetymin-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE/'retry-workflow-draft.yml').write_text(workflow,newline='\n')
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow,newline='\n')
r={'status':'READY-FROZEN','stages':[s['name'] for s in spec['stages']],
    'freshSources':8,'expectedFreshAXCount':32,'reusedSources':sum(o['sourceCount'] for o in origins),
    'sizeShaRootsAliasesAST':'pass','remainingAnalyticInputs':['DifferenceBudget','FinitePsiSupply Real(T0,C)','I0'],
    'proofStopUtc':spec['proofStopUtc'],'hardDeadlineUtc':spec['finalDeadlineUtc']}
(HERE/'RETRY-READY.json').write_text(json.dumps(r,indent=2)+'\n',newline='\n');print(json.dumps(r))

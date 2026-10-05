"""Freeze the small RD2 consumer closure after actual LP endpoint acceptance."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re

ROOT = Path.cwd()
HERE = Path(__file__).resolve().parent
p=argparse.ArgumentParser()
p.add_argument('--origins',type=Path,required=True)
a=p.parse_args()
origins=json.loads(a.origins.read_text())['origins']
def row(p,ns='',names=()):
    return {'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,
        'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'roots':[ns+'.'+n for n in names],
        'largeConsumer':True}
names=['coefficient_margin','sqrt_bound','theta_tail_of_budget','theta_bridge_of_finite','real_prime_from_supplies','gap_from_supplies']
sources=[row(HERE.parent/'supply/LocalPowerRound2.lean','B699LocalPowerRound220261005',names),
    row(HERE.parent/'reviews/LocalPowerRound2Literal.lean','B699LocalPowerVerify20261005',[n+'_literal' for n in names])]
spec=json.loads((HERE/'endpoint-stage-spec.json').read_text())
spec.update(schema='b699-local-power-ninetymin-round2-v1',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-local-power-ninetymin/round2-runtime',
    reusedPrerequisiteArtifacts=origins,
    stages=[{'name':'round2','enabled':True,'sources':sources,'prerequisites':['endpoint','gap-only-01'],
        'predictedCompleteSeconds':120,'packagingReserveSeconds':15,'predictionBasis':'two12-root consumer sources;135s prediction, eachchild120s cap',
        'unconditionalCompleteOriginalIndexIncrement':0,'genuineUnboundedSupplierProved':False,
        'remainingInputs':['DifferenceBudget','FinitePsiSupply Real(T0,C)','I0'] }])
for origin in origins:
    if origin['packageName']=='accepted-old-theta-defs':
        for p in [ROOT/'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-tail-twohour/gap/GapDefinitions.lean',
                  ROOT/'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-terminal-gap-twohour/gap/ThetaInterval.lean']:
            spec['taskSources'].append(row(p))
spec['taskSources']+=sources
spec['cacheRoots']=sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in spec['taskSources']),re.M)))
source=(HERE/'endpoint-stage.py').read_text().replace("HERE / 'endpoint-stage-spec.json'", "HERE / 'round2-stage-spec.json'")
source=source.replace("['rootwidth','master','monotonic','endpoint']", "['round2']")
source=source.replace("'composite-endpoint-relevant-import'", "'composite-round2-relevant-import'")
source=source.replace("probe.write_text('import research.tasks", "probe.write_text('import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaInterval\\nimport research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions\\nimport research.tasks")
driver=HERE/'round2-stage.py';driver.write_text(source,newline='\n');ast.parse(source)
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=(HERE/'endpoint-stage.py').relative_to(ROOT).as_posix()]+[row(driver)]
available={n for o in origins for n in o.get('stageNames',[o['stageName']])}
if not set(spec['stages'][0]['prerequisites'])<=available:raise RuntimeError('Consumer stage aliases absent')
for r in spec['taskSources']+spec['fixedRuntimeSources']:
    p=ROOT/r['path']
    if p.stat().st_size!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:
        raise RuntimeError('Frozen bytes differ:'+r['path'])
(HERE/'round2-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n',newline='\n')
workflow=(HERE/'endpoint-workflow-draft.yml').read_text().split('      - name: Fresh rootwidth producer')[0]
workflow=workflow.replace('actual endpoint LP proof','RD2 small consumer proof').replace('endpoint-stage.py','round2-stage.py')
workflow+=f'''      - name: Fresh RD2 consumer and independent raw literal
        if: always() && steps.prepare.outcome == 'success' && steps.plan.outputs.round2_enabled == 'true'
        run: python3 "$B699_RUNTIME/round2-stage.py" round2
      - name: Preserve RD2 complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/round2-stage.py" package-round2
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-ninetymin-round2-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/round2-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE/'round2-workflow-draft.yml').write_text(workflow,newline='\n')
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow,newline='\n')
r={'status':'READY-FROZEN','freshSources':2,'expectedFreshAXCount':12,
    'reusedSources':sum(o['sourceCount'] for o in origins),'sizeShaAliasesAST':'pass',
    'remainingAnalyticInputs':['DifferenceBudget','FinitePsiSupply Real(T0,C)','I0'],
    'proofStopUtc':spec['proofStopUtc'],'hardDeadlineUtc':spec['finalDeadlineUtc']}
(HERE/'ROUND2-READY.json').write_text(json.dumps(r,indent=2)+'\n',newline='\n')
print(json.dumps(r))

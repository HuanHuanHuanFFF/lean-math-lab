"""Last authorized small packet: Nat finite middle + budget bridge, no large Legacy."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re

ROOT=Path.cwd();HERE=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('--origins',type=Path,required=True);a=p.parse_args()
origins=json.loads(a.origins.read_text())['origins']
def row(p):
    text=p.read_text();return {'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,
        'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
        'roots':[l.split('#print axioms ',1)[1] for l in text.splitlines() if l.startswith('#print axioms ')], 'largeConsumer':True}
sources=[row(HERE.parent/'supply/LocalPowerFiniteBridge.lean'),row(HERE.parent/'reviews/LocalPowerFiniteBridgeLiteral.lean')]
if sum(len(r['roots']) for r in sources)!=4:raise RuntimeError('Expected two producer and two literal roots')
spec=json.loads((HERE/'mono-stage-spec.json').read_text())
spec.update(schema='b699-local-power-ninetymin-finite-bridge-v1',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-local-power-ninetymin/finite-bridge-runtime',
    reusedPrerequisiteArtifacts=origins,stages=[{'name':'finitebridge','enabled':True,'sources':sources,
        'prerequisites':['round2'],'predictedCompleteSeconds':60,'packagingReserveSeconds':15,
        'predictionBasis':'one small producer/rawliteral pair;75s prediction,eachchild120s maximum',
        'unconditionalCompleteOriginalIndexIncrement':0,'genuineUnboundedSupplierProved':False,
        'remainingInputs':['DifferenceBudget','FiniteMiddleGap Nat','initial gap']}])
spec['taskSources'] += sources
spec['cacheRoots']=sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in spec['taskSources']),re.M)))
source=(HERE/'mono-stage.py').read_text().replace("HERE / 'mono-stage-spec.json'", "HERE / 'bridge-stage-spec.json'")
source=source.replace("['monotonic','endpoint','round2']", "['finitebridge']")
source=source.replace("'composite-mono-retry-relevant-import'", "'composite-finite-bridge-relevant-import'")
driver=HERE/'bridge-stage.py';driver.write_text(source,newline='\n');ast.parse(source)
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=(HERE/'mono-stage.py').relative_to(ROOT).as_posix()]
spec['fixedRuntimeSources'].append(row(driver))
available={n for o in origins for n in o.get('stageNames',[o['stageName']])}
if 'round2' not in available:raise RuntimeError('Successful round2 reuse absent')
for r in spec['taskSources']+spec['fixedRuntimeSources']:
    p=ROOT/r['path']
    if p.stat().st_size!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:
        raise RuntimeError('Frozen source bytes differ:'+r['path'])
(HERE/'bridge-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n',newline='\n')
workflow=(HERE/'mono-workflow-draft.yml').read_text().split('      - name: Fresh monotonic producer')[0]
workflow=workflow.replace('remaining monotonicity and actual LP proof','last small finite-middle bridge').replace('mono-stage.py','bridge-stage.py')
workflow+=f'''      - name: Fresh finite-middle bridge and independent raw literal
        if: always() && steps.prepare.outcome == 'success' && steps.plan.outputs.finitebridge_enabled == 'true'
        run: python3 "$B699_RUNTIME/bridge-stage.py" finitebridge
      - name: Preserve last complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/bridge-stage.py" package-finitebridge
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-ninetymin-finitebridge-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/finitebridge-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE/'finite-bridge-workflow-draft.yml').write_text(workflow,newline='\n')
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow,newline='\n')
r={'status':'READY-FROZEN','freshSources':2,'expectedFreshAXCount':4,'reusedSources':sum(o['sourceCount'] for o in origins),
    'sizeShaRootsAliasesAST':'pass','runtimeSpecPath':(HERE/'bridge-stage-spec.json').relative_to(ROOT).as_posix(),
    'driverPath':driver.relative_to(ROOT).as_posix(),'lastJobStart':spec['lastJobStart'],
    'proofStopUtc':spec['proofStopUtc'],'hardDeadlineUtc':spec['finalDeadlineUtc']}
(HERE/'FINITE-BRIDGE-READY.json').write_text(json.dumps(r,indent=2)+'\n',newline='\n');print(json.dumps(r))

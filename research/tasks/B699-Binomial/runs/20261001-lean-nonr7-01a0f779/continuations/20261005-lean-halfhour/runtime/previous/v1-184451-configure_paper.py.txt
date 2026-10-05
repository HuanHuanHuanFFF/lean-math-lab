"""Independently frozen paper-interface and finite-sum prerequisite stages."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path
import re
HERE=Path(__file__).resolve().parent
ROOT=Path.cwd()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
spec=json.loads((HERE/'height-stage-spec.json').read_text())
spec.update(schema='b699-local-power-halfhour-v1',lastJobStart='2026-10-04T18:49:00Z',
 toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-lean-halfhour/paper-runtime')
review=json.loads((HERE.parent/'reviews/PAPER-INTERFACES-SOURCE-READY.json').read_text())
rows=review['files'];byname={Path(r['path']).name:r for r in rows}
order=[('powerdecomp','LocalPowerDecomposition.lean','LocalPowerDecompositionExact.lean',['gap-only-02']),
 ('powercore','LocalPowerCore.lean','LocalPowerCoreExact.lean',['gap-only-02']),
 ('localpower','LocalPowerOriginalLegacy.lean','LocalPowerOriginalExact.lean',['powercore','tail30000']),
 ('weakupper','WeakUpperLegacy.lean','WeakUpperExact.lean',['cutoff','gap-only-02'])]
spec['stages']=[{'name':name,'enabled':True,'sources':[{**byname[a],'largeConsumer':True},{**byname[b],'largeConsumer':True}],
 'prerequisites':prereqs,'predictedCompleteSeconds':120,'packagingReserveSeconds':30,
 'predictionBasis':'first actual2sources4.966s+2normal10.304s; second small source/literal pair allowance120s+30s package, each child max120s',
 'unconditionalCompleteOriginalIndexIncrement':0,'genuineUnboundedSupplierProved':False}
 for name,a,b,prereqs in order]
tasks={r['path']:r for r in spec['taskSources']}
for r in rows:
    tasks[r['path']]=r
    for module in re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',(ROOT/r['path']).read_text(),re.M):
        if module not in spec['cacheRoots']:spec['cacheRoots'].append(module)
spec['taskSources']=list(tasks.values())
source=(HERE/'height-stage.py').read_text().replace("HERE / 'height-stage-spec.json'","HERE / 'paper-stage-spec.json'")
source=source.replace("['finiteheight']","['powerdecomp', 'powercore', 'localpower', 'weakupper']")
source=source.replace("label.startswith('composite-finiteheight-')","label.startswith('composite-')")
source=source.replace("'composite-finiteheight-relevant-import'","'composite-paper-relevant-import'")
source=source.replace("probe.write_text('import research", "probe.write_text('import Mathlib.Algebra.Order.Floor.Semiring\\nimport research")
driver=HERE/'paper-stage.py';driver.write_text(source);ast.parse(source)
spec['fixedRuntimeSources'].append({'path':driver.relative_to(ROOT).as_posix(),'bytes':driver.stat().st_size,'sha256':sha(driver),'roots':[]})
for row in spec['taskSources']+spec['fixedRuntimeSources']:
    path=ROOT/row['path']
    if not path.is_file() or path.stat().st_size!=row['bytes'] or sha(path)!=row['sha256']:
        raise RuntimeError('Frozen source presence/hash differs:'+row['path'])
available={r['stageName'] for r in spec['reusedPrerequisiteArtifacts']}
for stage in spec['stages']:
    for prerequisite in stage.get('prerequisites',[]):
        if prerequisite not in available:raise RuntimeError('Stage prerequisite alias differs:'+prerequisite)
    available.add(stage['name'])
path=HERE/'paper-stage-spec.json';path.write_text(json.dumps(spec,indent=2)+'\n')
workflow=(HERE/'height-workflow-draft.yml').read_text().split('      - name: Complete unconditional finite original height consumer')[0]
workflow=workflow.replace('height-stage','paper-stage').replace('height-runtime','paper-runtime').replace('18:42:00 UTC','18:49:00 UTC')
workflow=workflow.replace('finite original height verification','local power prerequisites and conditional consumers')
for name,_,_,_ in order:
    workflow+=f'''      - name: Complete {name} source and exact literal
        if: success() && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/paper-stage.py" {name}
      - name: Preserve complete {name} checkpoint
        if: always() && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/paper-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always() && steps.plan.outputs.{name}_enabled == 'true'
        with:
          name: b699-halfhour-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: .tools/b699-lean-20261001-01a0f779/20261005-lean-halfhour/paper-runtime/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE/'paper-workflow-draft.yml').write_text(workflow)
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow)
ready={'status':'READY-FROZEN','utc':dt.datetime.now(dt.timezone.utc).isoformat(),'reusedSourceCount':345,
 'freshSourceCount':8,'freshRootCount':sum(len(r['roots']) for r in rows),'sourceCount':len(tasks),
 'runtimeCount':len(spec['fixedRuntimeSources']),'sourcePresenceBytesHash':'pass','pythonAST':'pass',
 'allOriginStagePrerequisiteContracts':'pass','firstFreshObjectsRequired':False,'stages':[a[0] for a in order],
 'specSha256':sha(path),'driverSha256':sha(driver),'workflowSha256':sha(ROOT/'.github/workflows/b699-finite-onehour.yml'),
 'latestLaunchUtc':spec['lastJobStart'],'proofStopUtc':spec['proofStopUtc'],'hardDeadlineUtc':spec['finalDeadlineUtc'],
 'stageCompletePredictionSeconds':150,'compositeChildMaxSeconds':120,'resourceProfile':spec['resourceProfile'],
 'actualUnboundedLPSupplied':False,'actualPsiSupplied':False,'unconditionalCompleteOriginalIndexIncrement':0}
(HERE/'PAPER-READY.json').write_text(json.dumps(ready,indent=2)+'\n')
print(json.dumps(ready))

"""Freeze only remaining monotonicity/endpoint/RD2; do not recompile accepted master."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re

ROOT=Path.cwd();HERE=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('--origins',type=Path,required=True);a=p.parse_args()
origins=json.loads(a.origins.read_text())['origins']
spec=json.loads((HERE/'retry-stage-spec.json').read_text())
spec.update(schema='b699-local-power-ninetymin-mono-retry-v1',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-local-power-ninetymin/mono-retry-runtime',
    reusedPrerequisiteArtifacts=origins)
spec['stages']=[s for s in spec['stages'] if s['name']!='master']
def refreshed(r):
    p=ROOT/r['path'];return {**r,'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
spec['taskSources']=[refreshed(r) for r in spec['taskSources']]
for s in spec['stages']:s['sources']=[refreshed(r) for r in s['sources']]
spec['cacheRoots']=sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in spec['taskSources']),re.M)))
source=(HERE/'retry-stage.py').read_text().replace("HERE / 'retry-stage-spec.json'", "HERE / 'mono-stage-spec.json'")
source=source.replace("['master','monotonic','endpoint','round2']", "['monotonic','endpoint','round2']")
source=source.replace("'composite-retry-relevant-import'", "'composite-mono-retry-relevant-import'")
driver=HERE/'mono-stage.py';driver.write_text(source,newline='\n');ast.parse(source)
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=(HERE/'retry-stage.py').relative_to(ROOT).as_posix()]
spec['fixedRuntimeSources'].append({'path':driver.relative_to(ROOT).as_posix(),'bytes':driver.stat().st_size,'sha256':hashlib.sha256(driver.read_bytes()).hexdigest(),'roots':[]})
available={n for o in origins for n in o.get('stageNames',[o['stageName']])}
for s in spec['stages']:
    if not set(s['prerequisites'])<=available:raise RuntimeError('Stage prerequisite missing')
    available.add(s['name'])
    for r in s['sources']:
        roots={l.split('#print axioms ',1)[1] for l in (ROOT/r['path']).read_text().splitlines() if l.startswith('#print axioms ')}
        if roots!=set(r['roots']):raise RuntimeError('Root audit set differs')
for r in spec['taskSources']+spec['fixedRuntimeSources']:
    p=ROOT/r['path']
    if p.stat().st_size!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:
        raise RuntimeError('Frozen bytes differ:'+r['path'])
(HERE/'mono-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n',newline='\n')
workflow=(HERE/'retry-workflow-draft.yml').read_text().split('      - name: Fresh master producer')[0]
workflow=workflow.replace('actual LP API retry and RD2 proof','remaining monotonicity and actual LP proof').replace('retry-stage.py','mono-stage.py')
for s in spec['stages']:
    name=s['name']
    workflow+=f'''      - name: Fresh {name} producer and independent raw literal
        if: always() && steps.prepare.outcome == 'success' && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/mono-stage.py" {name}
      - name: Preserve {name} complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/mono-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-ninetymin-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
(HERE/'mono-workflow-draft.yml').write_text(workflow,newline='\n')
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow,newline='\n')
r={'status':'READY-FROZEN','stages':[s['name'] for s in spec['stages']],
    'freshSources':6,'expectedFreshAXCount':26,'reusedSources':sum(o['sourceCount'] for o in origins),
    'sizeShaRootsAliasesAST':'pass','proofStopUtc':spec['proofStopUtc'],'hardDeadlineUtc':spec['finalDeadlineUtc']}
(HERE/'MONO-READY.json').write_text(json.dumps(r,indent=2)+'\n',newline='\n');print(json.dumps(r))

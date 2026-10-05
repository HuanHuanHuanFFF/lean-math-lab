"""Retain the original bad freeze; produce a corrected static candidate only."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=Path.cwd()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
base=HERE/'height-stage-spec.json'
spec=json.loads(base.read_text())
driver=HERE/'height-stage-corrected-candidate.py'
source=(HERE/'height-stage.py').read_text().replace("HERE / 'height-stage-spec.json'", "HERE / 'height-stage-spec-corrected-candidate.json'")
source=source.replace("def fixed():\n    b.fixed_sources()", "def fixed():\n    available = {row['stageName'] for row in SPEC['reusedPrerequisiteArtifacts']}\n    for stage in SPEC['stages']:\n        for prerequisite in stage.get('prerequisites', []):\n            if prerequisite not in available:\n                raise RuntimeError('Frozen stage prerequisite contract differs: ' + prerequisite)\n        available.add(stage['name'])\n    b.fixed_sources()")
driver.write_text(source);ast.parse(source)
spec['schema']='b699-finite-original-height75-corrected-static-candidate-v1'
spec['stages'][0]['prerequisites']=['upperinitial','tail30000']
old_driver=(HERE/'height-stage.py').relative_to(ROOT).as_posix()
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=old_driver]
spec['fixedRuntimeSources'].append({'path':driver.relative_to(ROOT).as_posix(),'bytes':driver.stat().st_size,'sha256':sha(driver),'roots':[]})
for row in spec['taskSources']+spec['fixedRuntimeSources']:
    path=ROOT/row['path']
    if not path.is_file() or path.stat().st_size!=row['bytes'] or sha(path)!=row['sha256']:
        raise RuntimeError('Frozen source presence/hash differs:'+row['path'])
available={r['stageName'] for r in spec['reusedPrerequisiteArtifacts']}
for stage in spec['stages']:
    for prerequisite in stage.get('prerequisites',[]):
        if prerequisite not in available:raise RuntimeError('Stage prerequisite missing:'+prerequisite)
    available.add(stage['name'])
candidate=HERE/'height-stage-spec-corrected-candidate.json'
candidate.write_text(json.dumps(spec,indent=2)+'\n')
ready={'status':'READY-STATIC-CANDIDATE-NOT-PROOF-ACCEPTED','utc':dt.datetime.now(dt.timezone.utc).isoformat(),
 'preservedOriginalBadSpec':base.name,'preservedOriginalBadSpecSha256':sha(base),
 'preservedOriginalBadReady':'HEIGHT-READY.json','preservedOriginalBadReadySha256':sha(HERE/'HEIGHT-READY.json'),
 'candidateSpec':candidate.name,'candidateSpecSha256':sha(candidate),'candidateDriver':driver.name,'candidateDriverSha256':sha(driver),
 'sourcePresenceBytesHash':'pass','pythonAST':'pass','stagePrerequisiteContract':'pass',
 'candidateControllerPreflightEnforcesPrerequisiteContract':True,
 'sourceCount':len(spec['taskSources']),'runtimeCount':len(spec['fixedRuntimeSources']),
 'reusedSourceCount':345,'freshSourceCount':2,'freshRootCount':4,
 'actualKernelExecution':False,'actualAXAudit':False,'actualNormalChecker':False,
 'unconditionalFiniteHeightMathematicalAcceptance':'pending',
 'extraMathematicalInputs':[],'lastJobStart':spec['lastJobStart'],'proofStopUtc':spec['proofStopUtc'],
 'finalDeadlineUtc':spec['finalDeadlineUtc'],'launchGuardState':'expired; future execution requires new authorized window and refreeze',
 'originalMathematicalSourceBytesChanged':False,'automaticPushEnabled':False}
(HERE/'HEIGHT-CORRECTED-STATIC-READY.json').write_text(json.dumps(ready,indent=2)+'\n')
print(json.dumps(ready))

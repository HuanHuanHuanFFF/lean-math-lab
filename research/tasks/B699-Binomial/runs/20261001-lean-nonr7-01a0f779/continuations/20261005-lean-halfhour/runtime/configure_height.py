"""New authorized30minute execution of retained finite-height sources."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path
import shutil
HERE=Path(__file__).resolve().parent
ROOT=Path.cwd()
PRIOR=HERE.parent.parent/'20261005-lean-formal-seventyfive/runtime'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
spec=json.loads((PRIOR/'height-stage-spec-corrected-candidate.json').read_text())
spec.update(schema='b699-finite-height-halfhour-v1',lastJobStart='2026-10-04T18:42:00Z',
 proofStopUtc='2026-10-04T18:57:00Z',finalDeadlineUtc='2026-10-04T19:01:34Z',
 toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-lean-halfhour/height-runtime')
spec['roundStartUtc']='2026-10-04T18:31:34Z'
spec['stages'][0]['prerequisites']=['upperinitial','tail30000']
source=(PRIOR/'height-stage-corrected-candidate.py').read_text().replace("HERE / 'height-stage-spec-corrected-candidate.json'", "HERE / 'height-stage-spec.json'")
probe="""    probe = b.EVIDENCE / 'relevant-import.lean'
    probe.write_text('import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy\\n')
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    b.launch([tc['lean'], '-j1', '-M6144', '-DElab.async=false', '-R', str(REPO), str(probe)],
             'composite-finiteheight-relevant-import', b.lean_env(), max_seconds=120,
             startup_mib=6144, tree_mib=5120)
"""
source=source.replace("    b.write('prepared.json'",probe+"    b.write('prepared.json'")
driver=HERE/'height-stage.py';driver.write_text(source);ast.parse(source)
old=(PRIOR/'height-stage-corrected-candidate.py').relative_to(ROOT).as_posix()
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=old]
spec['fixedRuntimeSources'].append({'path':driver.relative_to(ROOT).as_posix(),'bytes':driver.stat().st_size,'sha256':sha(driver),'roots':[]})
for row in spec['taskSources']+spec['fixedRuntimeSources']:
    path=ROOT/row['path']
    if not path.is_file() or path.stat().st_size!=row['bytes'] or sha(path)!=row['sha256']:
        raise RuntimeError('Frozen source presence/hash differs:'+row['path'])
available={r['stageName'] for r in spec['reusedPrerequisiteArtifacts']}
for stage in spec['stages']:
    for prerequisite in stage.get('prerequisites',[]):
        if prerequisite not in available:raise RuntimeError('Prerequisite alias differs:'+prerequisite)
    available.add(stage['name'])
path=HERE/'height-stage-spec.json';path.write_text(json.dumps(spec,indent=2)+'\n')
workflow=(PRIOR/'height-workflow-draft.yml').read_text().replace('20261005-lean-formal-seventyfive','20261005-lean-halfhour').replace('2026-10-04 17:28:00 UTC','2026-10-04 18:42:00 UTC').replace('b699-formal75-finiteheight','b699-halfhour-finiteheight')
(HERE/'height-workflow-draft.yml').write_text(workflow)
(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow)
ready={'status':'READY-FROZEN','utc':dt.datetime.now(dt.timezone.utc).isoformat(),'reusedSourceCount':345,
 'freshSourceCount':2,'freshRootCount':4,'sourceCount':len(spec['taskSources']),'runtimeCount':len(spec['fixedRuntimeSources']),
 'sourcePresenceBytesHash':'pass','pythonAST':'pass','allPrerequisiteContracts':'pass',
 'prerequisites':spec['stages'][0]['prerequisites'],'controllerPreflightEnforcesAlias':True,
 'relevantActualImportProbePlanned':True,'localLeanLaunched':0,'specSha256':sha(path),'driverSha256':sha(driver),
 'workflowSha256':sha(ROOT/'.github/workflows/b699-finite-onehour.yml'),
 'roundStartUtc':spec['roundStartUtc'],'latestLaunchUtc':spec['lastJobStart'],'proofStopUtc':spec['proofStopUtc'],
 'originalHardDeadlineUtc':spec['finalDeadlineUtc'],'resourceProfile':spec['resourceProfile'],
 'stageCompletePredictionSeconds':240,'compositeChildMaxSeconds':120,'extraMathematicalInputs':[]}
(HERE/'HEIGHT-READY.json').write_text(json.dumps(ready,indent=2)+'\n')
for name in ['ci_metadata.py','checkpoint_costs.py','recover_parallel.py','download_exact.py','resource_summary.py','intake_exact.py']:
    text=(PRIOR/name).read_text()
    if name=='intake_exact.py':
        text=text.replace("for base in [OLD/'ci',HERE/'ci']:","for base in [OLD/'ci', HERE.parent.parent/'20261005-lean-formal-seventyfive/runtime/ci', HERE/'ci']:")
        text=text.replace('b699-formal75/objects','b699-lean-halfhour/objects')
    if name=='recover_parallel.py':text=text.replace('b699-tail-twohour-finish','b699-lean-halfhour')
    if name=='download_exact.py':text=text.replace('b699-formal75','b699-lean-halfhour')
    (HERE/name).write_text(text);ast.parse(text)
print(json.dumps(ready))

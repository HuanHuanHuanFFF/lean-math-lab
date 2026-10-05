"""Static-only fix of the observed engineering failure; no new CI or Lean."""
import ast,datetime as dt,hashlib,json,re
from pathlib import Path
from validate_job_admission import validate_job_admission
HERE=Path(__file__).resolve().parent;ROOT=Path.cwd()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
spec=json.loads((HERE/'paper-stage-spec.json').read_text())
spec['schema']='b699-local-power-static-engineering-candidate-v2'
for stage in spec['stages']:
    stage['predictedCompleteSeconds']=45;stage['packagingReserveSeconds']=15
    stage['predictionBasis']='first measured pair15.270191s; prediction45s +15s packaging, not a measured guarantee for new proofs'
original=(HERE/'paper-stage.py').read_text()
source=original.replace("HERE / 'paper-stage-spec.json'","HERE / 'paper-stage-spec-engineering-candidate.json'")
source=source.replace('import zipfile','import zipfile\nfrom validate_job_admission import validate_job_admission')
source=source.replace("    required = kwargs.get('max_seconds', 300) + 15", "    predicted = 30 if label.startswith('composite-') else (120 if 'cache' in label else 30)\n    required = predicted + 15")
old="            if time.time() > dt.datetime.fromisoformat(SPEC['lastJobStart'].replace('Z', '+00:00')).timestamp():\n                raise RuntimeError('Expired job-start gate')"
if old not in source:raise RuntimeError('Original preflight failure branch absent')
source=source.replace(old,"            admission = validate_job_admission(os.environ, SPEC, time.time())\n            b.write('job-admission.json', admission)")
driver=HERE/'paper-stage-engineering-candidate.py';driver.write_text(source);ast.parse(source)
oldpath=(HERE/'paper-stage.py').relative_to(ROOT).as_posix()
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=oldpath]
for p in [driver,HERE/'validate_job_admission.py']:
    spec['fixedRuntimeSources'].append({'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,'sha256':sha(p),'roots':[]})
for row in spec['taskSources']+spec['fixedRuntimeSources']:
    p=ROOT/row['path']
    if not p.is_file() or p.stat().st_size!=row['bytes'] or sha(p)!=row['sha256']:raise RuntimeError('Frozen byte gate differs:'+row['path'])
available={r['stageName'] for r in spec['reusedPrerequisiteArtifacts']}
for stage in spec['stages']:
    if any(p not in available for p in stage.get('prerequisites',[])):raise RuntimeError('Stage alias gate differs')
    available.add(stage['name'])
epoch=lambda s:int(dt.datetime.fromisoformat('2026-10-04T'+s+'+00:00').timestamp())
env={'B699_ADMITTED_JOB_START_EPOCH':str(epoch('18:48:41')),'B699_ADMITTED_JOB_RUN_ID':'37225855901',
 'B699_ADMITTED_JOB_SOURCE_SHA':'40982733d42e16784acb8a2884b67701da26cb0e',
 'GITHUB_RUN_ID':'37225855901','GITHUB_SHA':'40982733d42e16784acb8a2884b67701da26cb0e'}
validate_job_admission(env,spec,epoch('18:49:08'))
tests={'sameEarlyJobAfterCheckout':'pass'}
for name,e in [('lateJob',{**env,'B699_ADMITTED_JOB_START_EPOCH':str(epoch('18:49:08'))}),
               ('missing',{}),('otherRun',{**env,'GITHUB_RUN_ID':'other'}),('otherSource',{**env,'GITHUB_SHA':'other'})]:
    try:validate_job_admission(e,spec,epoch('18:49:08'))
    except RuntimeError:tests[name]='expected rejection'
    else:raise RuntimeError('Admission fixture unexpectedly accepted:'+name)
path=HERE/'paper-stage-spec-engineering-candidate.json';path.write_text(json.dumps(spec,indent=2)+'\n')
workflow=(HERE/'paper-workflow-draft.yml').read_text()
workflow=re.sub(r'  push:\n.*?(?=permissions:)', '',workflow,flags=re.S)
workflow=workflow.replace('paper-stage.py','paper-stage-engineering-candidate.py')
line="          test \"$(date -u +%s)\" -le \"$(date -u -d '2026-10-04 18:49:00 UTC' +%s)\" || { echo 'Late start rejected'; exit 124; }"
replacement="          task_job_start=$(date -u +%s)\n          test \"$task_job_start\" -le \"$(date -u -d '2026-10-04 18:49:00 UTC' +%s)\" || { echo 'Late start rejected'; exit 124; }\n          echo \"B699_ADMITTED_JOB_START_EPOCH=$task_job_start\" >> \"$GITHUB_ENV\"\n          echo \"B699_ADMITTED_JOB_RUN_ID=$GITHUB_RUN_ID\" >> \"$GITHUB_ENV\"\n          echo \"B699_ADMITTED_JOB_SOURCE_SHA=$GITHUB_SHA\" >> \"$GITHUB_ENV\""
if line not in workflow:raise RuntimeError('Workflow admission gate source absent')
workflow=workflow.replace(line,replacement)
(HERE/'paper-workflow-engineering-candidate.yml').write_text(workflow)
ready={'status':'STATIC-CANDIDATE-NO-ACTUAL-PROOF','utc':dt.datetime.now(dt.timezone.utc).isoformat(),
 'originalSpecSha256':sha(HERE/'paper-stage-spec.json'),'originalDriverSha256':sha(HERE/'paper-stage.py'),
 'candidateSpecSha256':sha(path),'candidateDriverSha256':sha(driver),'tests':tests,
 'sourcePresenceBytesHash':'pass','pythonAST':'pass','allOriginStageAliases':'pass',
 'mathematicalSourceChanged':False,'stagePredictionSeconds':60,'freshChildHardMaximumSeconds':120,
 'actualProofStopUtc':spec['proofStopUtc'],'originalHardDeadlineUtc':spec['finalDeadlineUtc'],
 'latestLaunchUtc':spec['lastJobStart'],'windowState':'expired; new authorization/refreeze required',
 'actualNewCIStarted':False,'actualNewLeanStarted':False,'actualLPAndPsiSupplied':False}
(HERE/'ENGINEERING-CANDIDATE-STATIC-READY.json').write_text(json.dumps(ready,indent=2)+'\n')
print(json.dumps(ready))

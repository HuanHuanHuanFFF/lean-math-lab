"""Optional finite-height unit; run only after Leader late-source admission."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=Path.cwd()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
dp=HERE/'height-stage.py'
code=(HERE/'generic-stage.py').read_text().replace("HERE / 'generic-stage-spec.json'","HERE / 'height-stage-spec.json'").replace("['generic', 'cutoff']","['finiteheight']")
code=code.replace("    required = kwargs.get('max_seconds', 300) + 15", "    if label.startswith('composite-finiteheight-'):\n        kwargs['max_seconds'] = min(kwargs.get('max_seconds', 300), 120)\n    required = kwargs.get('max_seconds', 300) + 15")
dp.write_text(code);ast.parse(code)
s=json.loads((HERE/'generic-stage-spec.json').read_text())
s.update(schema='b699-finite-original-height75-v1',lastJobStart='2026-10-04T17:28:00Z',
 toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-lean-formal-seventyfive/height-runtime')
s['reusedPrerequisiteArtifacts'].append({'sourceCommit':'7a1bb1aace4d7200b8cc23d65b8d6648eb0a016c',
 'run':37219682143,'artifact':11309942383,'zipBytes':970269,
 'zipSha256':'62a8a90b6d9a9a26529a60ba3240da89d6c975065ffb8404fed43daffd7b4da8',
 'packageName':'accepted-generic-cutoff','stageName':'cutoff','sourceCount':4,'freshOnly':True})
r=json.loads((HERE.parent/'reviews/FINITE-HEIGHT-SOURCE-READY.json').read_text())
rows=r['files']
s['stages']=[{'name':'finiteheight','enabled':True,'sources':[{**x,'largeConsumer':True} for x in rows],
 'prerequisites':['upperinitial','tinytail30000'],'predictedCompleteSeconds':180,'packagingReserveSeconds':60,
 'predictionBasis':'two small source/literal wrappers over retained fully accepted objects; actual previous four wrappers22.23seconds includingnormalchecker',
 'extraMathematicalInputs':[],'unconditionalCompleteOriginalIndexIncrement':0}]
tasks={x['path']:x for x in s['taskSources']}
for x in rows:tasks[x['path']]=x
s['taskSources']=list(tasks.values())
s['fixedRuntimeSources'].append({'path':dp.relative_to(ROOT).as_posix(),'bytes':dp.stat().st_size,'sha256':sha(dp),'roots':[]})
for x in s['taskSources']+s['fixedRuntimeSources']:
 p=ROOT/x['path']
 if not p.is_file() or p.stat().st_size!=x['bytes'] or sha(p)!=x['sha256']:raise RuntimeError('Frozen source byte/presence mismatch:'+x['path'])
sp=HERE/'height-stage-spec.json';sp.write_text(json.dumps(s,indent=2)+'\n')
ready={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'status':'READY-FROZEN','reusedSourceCount':345,
 'freshSourceCount':len(rows),'freshRootCount':sum(len(x['roots']) for x in rows),
 'sourceCount':len(tasks),'runtimeCount':len(s['fixedRuntimeSources']),
 'sourceBytes':'pass','pythonAST':'pass','specSha256':sha(sp),'driverSha256':sha(dp),
 'launchUtc':s['lastJobStart'],'proofStopUtc':s['proofStopUtc'],'hardUtc':s['finalDeadlineUtc'],
 'resourceProfile':s['resourceProfile'],'extraMathematicalInputs':[],
 'lateSourceAdmission':'Leader explicitly admitted actual A17:25:02 S17:25:56 after internal17:24 plan; launch17:28 proofstop17:35 hard unchanged',
 'compositeChildMaxSeconds':120}
(HERE/'HEIGHT-READY.json').write_text(json.dumps(ready,indent=2)+'\n');print(json.dumps(ready))

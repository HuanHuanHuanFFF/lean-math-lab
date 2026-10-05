"""Second independently frozen generic/cutoff conditional unit."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=Path.cwd()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

dp=HERE/'generic-stage.py'
code=(HERE/'bridge-stage.py').read_text().replace("HERE / 'bridge-stage-spec.json'","HERE / 'generic-stage-spec.json'")
code=code.replace("['bridgeglobal', 'bridgelocal']","['generic', 'cutoff']")
code=code.replace('kwargs.update(startup_mib=10240,tree_mib=8192)','kwargs.update(startup_mib=6144,tree_mib=5120)')
dp.write_text(code);ast.parse(code)
s=json.loads((HERE/'bridge-stage-spec.json').read_text())
s.update(schema='b699-relative-theta-generic75-v1',lastJobStart='2026-10-04T17:22:00Z',
 toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-lean-formal-seventyfive/generic-runtime',
 resourceProfile='actual serialCPU2 nice19 j1 asyncfalse; compositeM6144 startup6144 tree5120')
s['reusedPrerequisiteArtifacts'].append({'sourceCommit':'3f0379e5b33a7d4c9654145bb61c7166cba00294',
 'run':37218764276,'artifact':11309735658,'zipBytes':929539,
 'zipSha256':'059fc16ca22f61ca6008de6f8b529a029fdbfbd9032b920d0ec10d43b3b8bfc5',
 'packageName':'accepted-global-local-bridges','stageName':'bridgelocal','sourceCount':4,'freshOnly':True})
r=json.loads((HERE.parent/'reviews/GENERIC-CUTOFF-SOURCE-READY.json').read_text())
rows=r['files'];byname={Path(x['path']).name:x for x in rows}
s['stages']=[]
for name,names in [('generic',['UniformThetaGapLegacy.lean','UniformThetaGapExactLegacy.lean']),
                   ('cutoff',['GapCutoffConsumerLegacy.lean','GapCutoffExactLegacy.lean'])]:
 s['stages'].append({'name':name,'enabled':True,'sources':[{**byname[n],'largeConsumer':True} for n in names],
   'prerequisites':['bridgelocal','gap-only-02'],'predictedCompleteSeconds':360,'packagingReserveSeconds':60,
   'predictionBasis':'fixed relative theta derivation and direct exact literal; complete6minute unit allowance',
   'unconditionalOriginalIndexIncrement':0})
tasks={x['path']:x for x in s['taskSources']}
for x in rows:tasks[x['path']]=x
s['taskSources']=list(tasks.values())
s['fixedRuntimeSources'].append({'path':dp.relative_to(ROOT).as_posix(),'bytes':dp.stat().st_size,'sha256':sha(dp),'roots':[]})
for x in s['taskSources']+s['fixedRuntimeSources']:
 p=ROOT/x['path']
 if not p.is_file() or p.stat().st_size!=x['bytes'] or sha(p)!=x['sha256']:raise RuntimeError('Frozen source byte/presence mismatch:'+x['path'])
sp=HERE/'generic-stage-spec.json';sp.write_text(json.dumps(s,indent=2)+'\n')
ready={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'status':'READY-FROZEN','reusedSourceCount':341,
 'freshSourceCount':4,'freshRootCount':10,'sourceCount':len(tasks),'runtimeCount':len(s['fixedRuntimeSources']),
 'sourceBytes':'pass','pythonAST':'pass','specSha256':sha(sp),'driverSha256':sha(dp),
 'launchUtc':s['lastJobStart'],'proofStopUtc':s['proofStopUtc'],'hardUtc':s['finalDeadlineUtc'],
 'resourceProfile':s['resourceProfile'],'twoRelativeThetaInputsNotSupplied':True}
(HERE/'GENERIC-READY.json').write_text(json.dumps(ready,indent=2)+'\n');print(json.dumps(ready))

"""One exact eight-origin conditional bridge plan, no local Lean execution."""
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=Path.cwd()
OLD=HERE.parent.parent/'20261004-tail-twohour-finish/runtime/tiny'
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def row(p): return {'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,'sha256':sha(p),'roots':[]}

s=json.loads((OLD/'tiny-stage-spec.json').read_text())
s.update(schema='b699-conditional-theta-formal75-v1',owner='C tail2h_runtime gpt-6.1-sol/xhigh',
    sourceBaseline='db0f06bd1115d5815b432c18f537378fa0aa520e',roundStartUtc='2026-10-04T16:35:50Z',
    finalDeadlineUtc='2026-10-04T17:50:50Z',proofStopUtc='2026-10-04T17:35:00Z',lastJobStart='2026-10-04T17:10:00Z',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-lean-formal-seventyfive/runtime')
s['reusedPrerequisiteArtifacts'].append({'sourceCommit':'b1de49c08be2850f6e98d4fe9f101e29778cdcdc',
    'run':37210857364,'artifact':11306801187,'zipBytes':2416995,
    'zipSha256':'fb0642947f4f81af6b8c206e4f9acfd5b381d10c34a4df166711e95e0a795e6c',
    'packageName':'accepted-final30000','stageName':'tail30000','sourceCount':4,'freshOnly':True,
    'selectionReason':'nested carried-upper104 ordinary receipts belong to prior origin, not4fresh'})
a=json.loads((HERE.parent/'supply/bridge-source-ready.json').read_text())
selected=[part['member'] for module in a['extraPrerequisiteOrigin']['requiredModules'] for part in module['objectParts']]
s['reusedPrerequisiteArtifacts'].append({'sourceCommit':'6191c5f1c6348aee803e7e446d7750bf14cce2bb',
    'run':37046323083,'artifact':11244387045,'zipBytes':598854,
    'zipSha256':'54826001c1d5189cd71a5a23f3c63a30442afbb68b800154b8df6ecb15a90258',
    'packageName':'accepted-theta2','stageName':'gap-only-02','sourceCount':2,
    'manifestName':'byte-manifest.json','fixedStandaloneThetaOrigin':True,
    'selectedReceipts':['gap-only-01-ThetaInterval/receipt.json','gap-only-02-ThetaTail/receipt.json'],
    'selectedObjectMembers':selected,'excludedCompilerObjects':'GapDefinitions already in335; PsiTheta and Mathlib leaf excluded'})
s['cacheRoots'] += ['Mathlib.NumberTheory.Chebyshev','Mathlib.Tactic.Linarith','Mathlib.Tactic.NormNum','Mathlib.Tactic.Ring','Mathlib.Tactic.FieldSimp']
s['toolchainCoreImport']='Lean.Elab.Tactic.NormCast bundled pinned core; restored ThetaTail actual imports checked through consumer/checker'
review=json.loads((HERE.parent/'reviews/BRIDGE-SOURCE-READY.json').read_text())
byname={Path(x['path']).name:x for x in review['sources']}
s['stages']=[]
for name,names in [('bridgeglobal',['ThetaOriginalLegacy.lean','ThetaOriginalExactLegacy.lean']),
                   ('bridgelocal',['ThetaLocalizedLegacy.lean','ThetaLocalizedExactLegacy.lean'])]:
    s['stages'].append({'name':name,'enabled':True,'sources':[{**byname[n],'largeConsumer':True} for n in names],
      'prerequisites':['tail30000','gap-only-02'],'predictedCompleteSeconds':360,'packagingReserveSeconds':60,
      'predictionBasis':'two small existing-route modules; prior wrappers seconds; conservative6min complete-unit allowance',
      'conditionalRealInputCount':2,'unconditionalOriginalIndexIncrement':0})
tasks={x['path']:x for x in s['taskSources']}
for x in review['sources']: tasks[x['path']]=x
for module in a['extraPrerequisiteOrigin']['requiredModules']:
    import zipfile
    with zipfile.ZipFile(a['extraPrerequisiteOrigin']['archive']) as z:
        label='gap-only-01-ThetaInterval' if module['module']=='ThetaInterval' else 'gap-only-02-ThetaTail'
        r=json.loads(z.read(label+'/receipt.json')); rel=Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
        p=ROOT/rel; tasks[rel]={'path':rel,'bytes':p.stat().st_size,'sha256':module['sourceSha256'],'roots':[]}
s['taskSources']=list(tasks.values())
s['fixedRuntimeSources']=[x for x in s['fixedRuntimeSources'] if not x['path'].endswith('/tiny-stage.py')]
for name in ['bridge-stage.py','artifact_intake.py']: s['fixedRuntimeSources'].append(row(HERE/name))
for x in s['taskSources']+s['fixedRuntimeSources']:
    p=ROOT/x['path']
    if not p.is_file() or p.stat().st_size!=x['bytes'] or sha(p)!=x['sha256']:
        raise RuntimeError('Frozen source presence/byte gate failed: '+x['path'])
for p in HERE.glob('*.py'): ast.parse(p.read_text(),str(p))
spec=HERE/'bridge-stage-spec.json'; spec.write_text(json.dumps(s,indent=2)+'\n')
ready={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'status':'READY-FROZEN',
  'sourceCount':len(s['taskSources']),'runtimeCount':len(s['fixedRuntimeSources']),'reusedSourceCount':337,
  'freshSources':4,'freshRoots':10,'oldNormPrimeAndLastFourRecompile':0,'oldThetaRecompile':0,
  'compilerRestore':'eight exact origins; only2Theta project modules10parts; nested tiny old104 receipts excluded from fresh index',
  'conditionalInputs':2,'unconditionalOriginalIndexIncrement':0,
  'specSha256':sha(spec),'driverSha256':sha(HERE/'bridge-stage.py'),'sourcePresenceBytes':'pass','pythonAST':'pass',
  'deadlines':{k:s[k] for k in ['lastJobStart','proofStopUtc','finalDeadlineUtc']}}
(HERE/'READY.json').write_text(json.dumps(ready,indent=2)+'\n'); print(json.dumps(ready))

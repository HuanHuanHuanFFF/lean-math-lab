"""Bounded classification of the three owned R8 leaf logs; no proof replay."""
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path

BASE=Path(__file__).resolve().parent
INTAKE=Path('D:/ResearchArtifacts/b699-contribution-validation-20261006/37529174035')
DEST=BASE/'profiling/20261007-r8-row-semantics'
IDS=['A151Packed','I11AboveFinalCandidate','I11BelowFinalCandidate']
def file(p): return {'path':str(p),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}

def main():
    results=json.loads((INTAKE/'RESULTS.json').read_text())
    stages=json.loads((INTAKE/'STAGES.json').read_text())
    records=[]
    for identity in IDS:
        result=next(x for x in results if x['id']==identity)
        p=INTAKE/('raw-'+identity+'.log')
        diagnostics=[]
        for line in p.read_text(encoding='utf-8',errors='replace').splitlines():
            if not line.startswith('{'):continue
            try: d=json.loads(line)
            except json.JSONDecodeError:continue
            if d.get('severity') in ['error','warning']:
                diagnostics.append({'severity':d['severity'],'position':d.get('pos'), 'messageFirstLine':d.get('data','').split('\n')[0][:220]})
        lifecycle=json.loads((INTAKE/('raw-'+identity+'-CONTAINER-LIFECYCLE.json')).read_text())
        binding=json.loads((INTAKE/('raw-'+identity+'-OBJECT-BINDING.json')).read_text())
        stage=next(x for x in stages if x['label']=='raw-'+identity)
        records.append({'id':identity,'sourceSha256':result['sourceSha256'],'resultStatus':result['status'], 'exitCode':result['exitCode'],
            'stage':{k:v for k,v in stage.items() if k not in ['command','cwd']},
            'log':file(p),'errorCount':sum(d['severity']=='error' for d in diagnostics),'warningCount':sum(d['severity']=='warning' for d in diagnostics),
            'lastDiagnostic':diagnostics[-1] if diagnostics else None,'objectBinding':binding,
            'cleanupConfirmed':lifecycle.get('cleanupConfirmed'),'oomKilled':lifecycle.get('OOMKilled',None),
            'oomInference':'not supplied by this normal-run lifecycle record; do not infer OOM from timeout exit124',
            'classification':'whole source failed to finish within900s; no mathematical falsehood or specific stalled command established by this log'})
    record={'timeUTC':datetime.now(timezone.utc).isoformat(),'runId':37529174035,'ownedResults':records,
        'fixedResultManifest':file(INTAKE/'RESULTS.json'),'fixedStages':file(INTAKE/'STAGES.json'),
        'nextExecutableCheck':'same exact i44 row from A33d: actual fastGood354 compared with complete fastFiniteCoverRowCheck354/209, both180s/source400k/CLI400k/j1',
        'diagnosisManifest':file(DEST/'PROBE-REQUEST.json'),
        'mathematicalAcceptance':False,'fullSContributionAccepted':False,'nativeLeanExecuted':False,
        'originalFullScopeUnchanged':'S={1,2,11,29} union [35,30000], all legal Nat n/i/j and one actual Prime>=i dividing both complete choose',
        'staticRowAlgorithmObservation':{'source':'A33d lines1509..1513 and1578..1582','observation':'per layer, d73 enumerates every ordered interval pair; distinct-prime pairs run sequential interval-cover d34 on goods. This is a potential cost center, not a measured hotspot.',
            'untriedOptimization':'if actual row semantics isolates this component, a precomputed compressed pair-intersection cover or a sweep checker could replace repeated scans only after an ordinary Lean soundness/equivalence proof and exact input roundtrip. No such proof or change is currently implemented.'},
        'remainingUnknowns':['complete151-row certificate runtime','1032 remaining Above local proof costs after global100/moment_sum','Below CRT and final unrestricted n/j consumer runtime'],
        'deadlineUTC':'2026-10-06T23:40:25Z','proofDeadlineUTC':'2026-10-06T23:30:25Z'}
    (DEST/'R8-OWNED-DIAGNOSIS.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'owned':[{'id':r['id'],'exitCode':r['exitCode'],'errors':r['errorCount'],'warnings':r['warningCount'],'cleanupConfirmed':r['cleanupConfirmed']} for r in records],'proofAccepted':False,'receipt':str(DEST/'R8-OWNED-DIAGNOSIS.json')}))

if __name__=='__main__':main()

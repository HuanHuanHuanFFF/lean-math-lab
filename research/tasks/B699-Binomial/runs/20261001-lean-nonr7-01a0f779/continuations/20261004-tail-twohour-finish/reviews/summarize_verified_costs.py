"""Summarize actual accepted execution receipts without adding overlapping stages."""
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

HERE=Path(__file__).resolve().parent
rows=[]
for label in ('TAIL10001','TAIL13000','TAIL15000','GAP-FORWARD','THETA-INITIAL','TAIL30000'):
    path=HERE/(label+'-INDEPENDENT-BINDING.json')
    if not path.exists():
        continue
    b=json.loads(path.read_text(encoding='utf-8-sig'))
    compiler=b['freshCompilerBindings']
    normal=b['normalCheckerBindings']
    rows.append({'binding':path.name,'bindingSha256':hashlib.sha256(path.read_bytes()).hexdigest(),'runId':b['actualRunId'],'artifactId':b['artifactId'],'fixedSourceCommit':b['fixedSourceCommit'],'archiveSha256':b['archiveSha256'],'actualUniqueFreshSourceCountWithinThisCumulativePackage':len(compiler),'actualAXRootCount':b['actualTransitiveAxiomRootCount'],'normalCheckerCount':len(normal),'compilerWallSeconds':sum(v['receipt']['wallSeconds'] for v in compiler),'normalCheckerWallSeconds':sum(v['receipt']['wallSeconds'] for v in normal),'maximumWholeChildTreeBytes':max(v['receipt']['peakTreeWorkingSetBytes'] for v in compiler+normal),'independentBindingSeconds':b['elapsedSeconds'],'compileActualStart':min(v['receipt']['startUtc'] for v in compiler),'lastAcceptedActualCheckerEnd':max(v['receipt']['endUtc'] for v in normal)})
by_run={}
for r in rows:
    previous=by_run.get(r['runId'])
    if previous is None or previous['actualUniqueFreshSourceCountWithinThisCumulativePackage']<r['actualUniqueFreshSourceCountWithinThisCumulativePackage']:
        by_run[r['runId']]=r
result={'utc':datetime.now(timezone.utc).isoformat(),'verifier':'/root/tail2h_verification','status':'actual-receipt-cost-summary-only','allAcceptedCumulativePackages':rows,'maximumAcceptedCumulativePackagePerActualRun':by_run,'countingRule':'Within one actual run use its largest accepted cumulative package; do not add prefix10001/13000/15000 or duplicate INITIAL/TAIL30000 acceptance of the same actual proof executions. Binder elapsed times are separate actual local work.','localLeanRunsByS':0,'old195SourceRecompileIncrement':0,'main26PrimeBlockRecompileIncrementInSecondRun':0,'normalCheckerMeaning':'Actual pinned Lean normal replay, not a second independent kernel implementation'}
(HERE/'ACTUAL-VERIFIED-COSTS.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Actual receipt costs summarized for%d accepted packages/%d distinct actual CI runs'%(len(rows),len(by_run)))

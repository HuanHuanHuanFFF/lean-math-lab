"""Current ordinary/native byte audit and measured stage costs, not math acceptance."""
import datetime as dt
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
BUFFER=256*1024
def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as stream:
        while part:=stream.read(BUFFER):h.update(part)
    return h.hexdigest()
native=[]; receipts={}; sources={}; checked={}
for p in sorted((HERE/'ci').glob('*/RAW_INTAKE.json')):
    m=json.loads(p.read_text())
    archive=Path(m['archivePath'])
    if archive.stat().st_size!=m['zipBytes'] or sha(archive)!=m['zipSha256']:
        raise RuntimeError('Original archive byte audit differs:'+str(p))
    for row in m['members']:
        target=Path(row['storedPath'])
        key=(str(target),row['bytes'],row['sha256'])
        if key not in checked:
            if target.stat().st_size!=row['bytes'] or sha(target)!=row['sha256']:
                raise RuntimeError('Retained native member differs:'+str(target))
            checked[key]=True
        if row['member'].endswith('/receipt.json'):
            r=json.loads(target.read_text())
            if 'arguments' in r:
                receipts.setdefault((m['runId'],row['sha256']),{'runId':m['runId'],'member':row['member'],
                    'nativeReceiptSha256':row['sha256'],**{k:r.get(k) for k in ['status','mode','exitCode','startUtc','endUtc','wallSeconds',
                    'peakTreeWorkingSetBytes','minimumAvailableBytes','stopReason','arguments','cpus','nice','startupMemoryMiB','treeMemoryMiB',
                    'sourceSha256','sourceUnchanged']}})
            if r.get('mode')=='Lean' and r.get('status')=='success':
                sources.setdefault((m['runId'],r['sourceSha256']),{'runId':m['runId'],'source':r['source'],
                    'sourceSha256':r['sourceSha256'],'objectSha256':r['objectSha256'],'sourceUnchanged':r['sourceUnchanged']})
    native.append({'map':p.relative_to(HERE).as_posix(),'runId':m['runId'],'sourceCommit':m['sourceCommit'],
        'artifactId':m['artifactId'],'zipBytes':m['zipBytes'],'zipSha256':m['zipSha256'],
        'memberCount':len(m['members']),'ordinaryMemberCount':m['ordinaryMemberCount'],
        'binaryMemberCount':m['binaryMemberCount'],'reusedExactMemberCount':m['reusedExactMemberCount']})
byrun={}
for row in receipts.values():
    group=byrun.setdefault(str(row['runId']),{'receiptCount':0,'measuredChildWallSeconds':0,
        'freshCompileSeconds':0,'normalCheckerSeconds':0,'peakProcessTreeBytes':0,'failures':[]})
    group['receiptCount']+=1
    group['measuredChildWallSeconds']+=row.get('wallSeconds') or 0
    group['peakProcessTreeBytes']=max(group['peakProcessTreeBytes'],row.get('peakTreeWorkingSetBytes') or 0)
    if row.get('mode')=='Lean':group['freshCompileSeconds']+=row.get('wallSeconds') or 0
    if '-normal-checker/' in row['member']:group['normalCheckerSeconds']+=row.get('wallSeconds') or 0
    if row.get('status')!='success':group['failures'].append({'member':row['member'],'exitCode':row.get('exitCode'),'stopReason':row.get('stopReason')})
signatures=[{'path':p.as_posix(),'bytes':p.stat().st_size,'sha256':sha(p)} for p in sorted((HERE.parent/'reviews').glob('*ACCEPTED.json'))]
result={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'nativePackets':native,
    'allOriginalZipSizeSha':'pass','allRetainedMembersSizeSha':'pass','distinctRetainedByteChecks':len(checked),
    'distinctCurrentRoundSuccessfulSourceRunPairs':len(sources),'successfulSources':list(sources.values()),
    'measuredCostsByRun':byrun,'nativeReceipts':list(receipts.values()),'SNamedSignatures':signatures,
    'maxObservedProcessTreeBytes':max((r.get('peakTreeWorkingSetBytes') or 0) for r in receipts.values()),
    'scope':'current byte provenance and measured execution; signed mathematical scope is owned by S'}
(HERE/'RESOURCE-SUMMARY.json').write_text(json.dumps(result,indent=2)+'\n',newline='\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['nativePackets','successfulSources','nativeReceipts','SNamedSignatures']}))

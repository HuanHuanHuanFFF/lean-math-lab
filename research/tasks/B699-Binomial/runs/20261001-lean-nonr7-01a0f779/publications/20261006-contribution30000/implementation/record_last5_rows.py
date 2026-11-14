"""Record the actual two i44 semantic probes without replaying proofs."""
import hashlib, json, re
from datetime import datetime, timezone
from pathlib import Path

BASE=Path(__file__).resolve().parent
DEST=BASE/'profiling/20261007-r8-row-semantics'
INTAKE=Path('D:/ResearchArtifacts/b699-contribution-validation-20261006/37541019143')
def source(p):return {'path':str(p),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}

def main():
    rows=[]
    for identity in ['A151ActualGoods354','A151ActualFullRow354209']:
        log=INTAKE/f'probe-{identity}.log'
        lifecycle=INTAKE/f'probe-{identity}-CONTAINER-LIFECYCLE.json'
        object_file=INTAKE/f'probe-{identity}-OBJECT-BINDING.json'
        messages=[]
        for line in log.read_text(encoding='utf-8',errors='replace').splitlines():
            if not line.startswith('{'):continue
            try:messages.append(json.loads(line))
            except json.JSONDecodeError:pass
        life=json.loads(lifecycle.read_text())
        peaks=[];oom_kills=[]
        for sample in life.get('samples',[]):
            metrics=sample.get('metrics','')
            peaks.extend(int(x) for x in re.findall(r'(?m)^B699_METRIC memory\.peak (\d+)\s*$',metrics))
            oom_kills.extend(int(x) for x in re.findall(r'(?m)^B699_METRIC memory\.events oom_kill (\d+)\s*$',metrics))
        errors=[{'position':m.get('pos'),'data':m.get('data')} for m in messages if m.get('severity')=='error']
        infos=[{'position':m.get('pos'),'data':m.get('data')} for m in messages if m.get('severity')=='information' and ('type checking took' in m.get('data','') or 'depends on axioms' in m.get('data','') or 'profilingRow : d4' in m.get('data',''))]
        rows.append({'id':identity,'sourceSha256':life['sourceSha256'],'elapsedSeconds':life['elapsedSeconds'],'exitCode':life['exitCode'],
            'log':source(log),'lifecycle':source(lifecycle),'objectBinding':json.loads(object_file.read_text()),
            'errorCount':len(errors),'fullErrors':errors,'selectedInformation':infos,
            'observedMemoryPeakBytes':max(peaks) if peaks else None,'memoryPeakIsFinal':False,
            'maxSampledOOMKillCount':max(oom_kills) if oom_kills else None,
            'finalOOMKilled':life.get('finalContainerState',{}).get('State',{}).get('OOMKilled'),
            'cleanupConfirmed':life['cleanupConfirmed'],'diagnosisOnly':True})
    record={'timeUTC':datetime.now(timezone.utc).isoformat(),'runId':37541019143,'inputsManifest':source(DEST/'PROBE-REQUEST.json'),'rows':rows,
        'actualFinding':'The original i44 fastGood check for all354 goods compiled; complete d48 row check did not reduce to either Boolean truth value. No Bool=false or counterexample was obtained.',
        'resourceFinding':'Fullrow sampled near12.85GB and typechecking85.9s, but Docker OOMKilledfalse and sampled oom_kill0. High memory is observed; a managed kernel limit is not proved by this error text.',
        'fixedCompilerErrorHandling':{'primarySource':'https://github.com/leanprover/lean4/blob/819816b2e0a3bf405af45ae5c7af2491d8f5bee6/src/Lean/Elab/Tactic/Decide.lean',
            'sourceLines':[98,126],'inference':'decide+kernel first checks an auxiliary lemma; after an exception it tries elaborator reduction and may replace the original kernel exception with a stuck-instance diagnosis. Thus the actual outer Bool matcher message does not alone distinguish a kernel resource exception from a genuinely stuck inner computation.',
            'verifiedBy':'implementation worker, readonly fixed official compiler source'},
        'boundedDependencyInspection':'d48 is an ordinary Bool definition. d36 contains d9 arithmetic and d73 interval-pair coverage; d13 uses d76, whose bounded i.factorization p invokes computable padicValNat/maxPowDvdDiv with well-founded recursion. No new concrete source bug or Classical choice obstruction was established by this inspection.',
        'remainingCause':'unknown; do not classify as false, hard Docker OOM or proven heartbeat exhaustion',
        'futureExecutablePlan':'A151-ROW-CHUNK-CONTINUATION.md',
        'fullSContributionAccepted':False,'originalB699ClosureChanged':False,'originalSevenSourceFilesUnmodified':True,'nativeLeanExecuted':False,
        'proofStopUTC':'2026-10-06T23:30:25Z','hardRoundStopUTC':'2026-10-06T23:40:25Z',
        'parentDecision':'No additional diagnostic batch or A source change this round; final Middle/High targeted formal checks take priority.'}
    (DEST/'ACTUAL-LAST5-ROW-DIAGNOSIS.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'rows':[{'id':r['id'],'exitCode':r['exitCode'],'elapsedSeconds':r['elapsedSeconds'],'errors':r['errorCount'],'observedPeak':r['observedMemoryPeakBytes'],'OOMKilled':r['finalOOMKilled']} for r in rows],'fullSContributionAccepted':False}))

if __name__=='__main__':main()

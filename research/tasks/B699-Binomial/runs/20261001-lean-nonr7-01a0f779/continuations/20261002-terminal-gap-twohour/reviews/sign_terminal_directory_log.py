"""Semantic verifier signature from actual platform log of the fixed independent CI reader.

No Lean, no artifact download, no inference from job-green labels.
"""
import hashlib, json, re, sys
from datetime import datetime, timezone
from pathlib import Path

BASE = Path(__file__).resolve().parent
DEADLINE = datetime.fromisoformat('2026-10-02T15:45:10+00:00')
CODE_SHA = 'f5e92d3c8f692fac9ae2851da9aed125214d6bc34e8c345a298ecb9475ba44a7'
CRITERIA_SHA = '1b6d9a3eaea155b9a62a7b66ac58bf47c6bf479979c1ba91f71984ee4867efb1'
COMMIT = '0db529085bb1fbe8e6f921d4bd040f77fa268bfb'
RUN = '37024878022'
STD3 = {'propext','Classical.choice','Quot.sound'}
ROOTS = {'B699FiniteFull20261002.original_tail_of_gap', 'B699FiniteFull20261002.common_indices_4883_4884',
         'B699FiniteFullSemantic.all_tail_only_gap_exact', 'B699FiniteFullSemantic.complete_indices_4883_4884_exact'}

def require(p,m):
    if not p: raise RuntimeError(m)

def run(log):
    require(datetime.now(timezone.utc)<DEADLINE,'Authorized mathematical review budget expired')
    raw=log.read_bytes()
    lines=[re.sub(r'^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d(?:\.\d+)?Z ?', '', l) for l in raw.decode('utf-8-sig').splitlines()]
    receipt_lines=[l for l in lines if l.startswith('INDEPENDENT_READER_RECEIPT ')]
    summaries=[l for l in lines if l.startswith('S_DIRECTORY_PROCEDURE_JSON ')]
    require(len(receipt_lines)==len(summaries)==1,'Missing or ambiguous actual procedure execution')
    receipt=json.loads(receipt_lines[0].split(' ',1)[1]);summary=json.loads(summaries[0].split(' ',1)[1])
    require(receipt['status']=='success' and receipt['exitCode']==0,'Independent procedure did not pass')
    require(receipt['sourceSha256']==CODE_SHA,'Actually executed verifier code differs')
    require(summary['directoryReaderCodeSha256']==CODE_SHA and summary['criteriaCodeSha256']==CRITERIA_SHA,'Independent fixed code mapping differs')
    require(summary['run']==RUN and summary['fixedSourceCommit']==COMMIT,'Actual proof commit/run differs')
    require(summary['status']=='independent-procedure-passed; awaiting semantic verifier signature' and summary['semanticVerifierSigned'] is False,'Procedure claims invalid status')
    require(summary['fixedClosureSources']==129 and summary['completeOriginalIndicesIncrement']==[4883,4884] and summary['actualGapSupplyAccepted'] is False,'Original scope differs')
    require(set(summary['finalActualAxioms'])==ROOTS,'Four final axiom roots differ')
    require(all(set(ax)<=STD3 for ax in summary['finalActualAxioms'].values()),'Forbidden final axioms')
    args=receipt['arguments']
    require(len(args)==7 and args[1].endswith('/reviews/check_terminal_legacy_directory.py'),'Actual verifier argv differs')
    require(args[3]==summary['evidenceByteManifestSha256'] and args[4]==COMMIT and args[5]==RUN,'Actual argv/manifest/commit/run binding differs')
    require(summary['compileReceiptCount']>=129 and summary['boundObjectPartCount']>=129 and summary['auditedRootCount']>=4418,'Incomplete raw/object/AX closure')
    require(len(summary['normalCheckers'])==2 and all(c['exitCode']==0 for c in summary['normalCheckers']),'Required normal checker results missing')
    require({c['phase'] for c in summary['normalCheckers']}=={'recompiled-fixed-full-normal-checker','terminal-original-normal-checker'},'Wrong normal checker stages')
    require(summary['normalCheckers'][-1]['arguments'][1:]==['-v','research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».reviews.FinalConsumersTypedLegacy'],'Final normal checker target differs')
    start=next(i for i,l in enumerate(lines) if l.startswith('S_DIRECTORY_PROCEDURE_JSON '))
    end=next(i for i,l in enumerate(lines[start:],start) if l=='S_EXACT_TYPE_RAW_END')
    stdout=('\n'.join(lines[start:end+1])+'\n').encode('utf8')
    require(hashlib.sha256(stdout).hexdigest()==receipt['stdoutSha256'],'Exact independent reader stdout cannot be reconstructed from platform log')
    begin=lines.index('S_EXACT_TYPE_RAW_BEGIN',start,end)
    literal='\n'.join(lines[begin+1:end])+'\n'
    require('theorem B699FiniteFullSemantic.all_tail_only_gap_exact' in literal and 'theorem B699FiniteFullSemantic.complete_indices_4883_4884_exact' in literal,'Actual literal type output incomplete')
    require('10000000' in literal and '4095' in literal and '4883' in literal and '4884' in literal and ('Nat.choose' in literal or '.choose' in literal),'Actual prime/choose/Gap/index statement output absent')
    version_lines=[l for l in lines if l.startswith('ACTUAL_TOOLCHAIN_VERSION ')]
    require(len(version_lines)==1 and '4.33.1' in version_lines[0],'Actual fixed kernel version absent')
    tool_start=next(i for i,l in enumerate(lines) if l.startswith('ACTUAL_TOOLCHAIN_JSON '))
    tool_end=next(i for i,l in enumerate(lines[tool_start:],tool_start) if l.startswith('ACTUAL_TOOLCHAIN_VERSION '))
    tool_text='\n'.join(lines[tool_start:tool_end]);tool=json.loads(tool_text.removeprefix('ACTUAL_TOOLCHAIN_JSON ').strip())
    require(all(c['arguments'][0]==tool['leanchecker'] for c in summary['normalCheckers']),'Actual normal checker executable differs from toolchain')
    require(all(re.fullmatch('[0-9a-f]{64}',tool[k]) for k in ['leanSha256','leancheckerSha256']),'Executable hash binding absent')
    require(datetime.fromisoformat(receipt['endUtc'].replace('Z','+00:00'))<=DEADLINE,'Verification execution exceeded deadline')
    require(datetime.now(timezone.utc)<DEADLINE,'Signature completion exceeded deadline')
    result={'utc':datetime.now(timezone.utc).isoformat(),'verifier':'/root/semantic_verify_sol',
            'status':'accepted-terminal-original','fixedSourceCommit':COMMIT,'run':RUN,
            'verificationLocation':'fixed verifier-authored procedure executed read-only on original CI evidence; signature by independent semantic verifier',
            'platformJobLog':str(log),'platformJobLogSha256':hashlib.sha256(raw).hexdigest(),
            'actuallyExecutedVerifierCodeSha256':CODE_SHA,'frozenCriteriaCodeSha256':CRITERIA_SHA,
            'independentProcedureReceipt':receipt,'independentProcedureSummary':summary,
            'actualLiteralTypeOutput':literal,'actualToolchain':tool,'actualVersionLine':version_lines[0],
            'literalSourceSha256':'48c76374bba94662e07cc4d80c2c37eb683c79d3df42bd6f91f0446cd7c32f07',
            'sourcePort':'only module header/import visibility; old independent literal/body preserved exactly',
            'acceptedUnconditionalScope':'forall Nat n/i/j,4883<=i<=4884,i<j<=n/2; exists same actual Nat.Prime p>=i dividing both full n.choose i and n.choose j',
            'unconditionalExtraMathematicalInputs':[],'newCompleteOriginalIndices':[4883,4884],
            'acceptedConditionalScope':'same original conclusion forall n/i/j with i>=4883, retaining only the exact Gap4095/10M input',
            'remainingGapInput':'forall Nat y>=10000000,exists actual Nat.Prime p>y with4095*(p-y)<=y',
            'genuineGapSupplyAccepted':False,'adoptedFiniteProofCommit':'fd7f7ec9d5c466596f7173f91b9cc34a3e1a9d83',
            'compiledArtifactsLocation':'original GitHub CI evidence/objects and artifact; full directory closure checked by fixed independent procedure',
            'localArchiveDownloadedAndRehashed':False,'localArchiveTransport':'still pending403; not confused with directory source/object/receipt acceptance',
            'sameKernelNotSecondImplementation':True,'kernelRerunBySemanticVerifier':False,
            'signatureScriptSha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (BASE/'TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json').write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n',encoding='utf8')
    print(json.dumps({'status':result['status'],'run':RUN,'source':COMMIT,'newCompleteOriginalIndices':[4883,4884],'genuineGapSupplyAccepted':False}))

if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('Usage: script actual decoded platform joblog (no Lean)')
    run(Path(sys.argv[1]))

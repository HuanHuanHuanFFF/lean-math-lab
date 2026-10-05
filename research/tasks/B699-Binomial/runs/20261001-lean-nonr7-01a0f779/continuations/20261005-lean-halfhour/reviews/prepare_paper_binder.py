"""Prepare stage-specific source/AX/checker binding without upgrading missing LP/P."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
HERE=Path(__file__).resolve().parent
src=(HERE/'bind_height_archive.py').read_text()
def replace(a,b):
    global src
    if src.count(a)!=1:raise RuntimeError('Ambiguous paper adaptation:'+a[:65])
    src=src.replace(a,b)
replace("require(mode=='HEIGHT','Unsupported new finite-height scope')","require(mode=='PAPER','Unsupported new paper scope')")
replace("else 'FINITE-HEIGHT'","else 'PAPER-INTERFACES'")
replace("BASE + 'runtime/height-stage-spec.json'","BASE + 'runtime/paper-stage-spec.json'")
replace("BASE + 'runtime/height-stage.py'","BASE + 'runtime/paper-stage.py'")
replace("spec['lastJobStart'] == '2026-10-04T18:42:00Z'","spec['lastJobStart'] == obj('independent-review-contract.json')['latestLaunchUtc']")
# Permit explicitly recorded incomplete stages without accepting their successful prefix.
replace("require(actual_lean_receipts == {v['phase'] for v in fresh}, 'Extra/unbound fresh Lean execution')", """
        declared={('composite-' if row.get('largeConsumer',False) else 'proof-')+stage['name']+'-'+Path(row['path']).stem:row for stage in spec['stages'] for row in stage['sources']}
        require(actual_lean_receipts<=set(declared),'Undeclared fresh Lean execution')
        pending_success=actual_lean_receipts-{v['phase'] for v in fresh}
        for phase in pending_success:
            r=receipt(phase)
            row=declared[phase]
            source=z.read(phase+'/source.lean')
            require(source==git_bytes(head,row['path']) and sha(source)==row['sha256']==r['sourceSha256'],'Pending compiled source differs')
            require(check_ax(source,z.read(phase+'/stdout.log'))['roots']==row['roots'],'Pending compiled raw AX differs')
""")
replace("expected_search_records = {v['phase'] + '/receipt.json': common_path for v in fresh}","expected_search_records = {n:common_path for n in names if n.endswith('/receipt.json') and obj(n).get('mode')=='Lean'}")
src=src[:src.index("        require(closed_names==['finiteheight']")]
src+=r'''
        contract=obj('independent-review-contract.json')
        require(contract['proofStopUtc']=='2026-10-04T18:57:00Z' and contract['hardDeadlineUtc']=='2026-10-04T19:01:34Z','Recorded paper review windows differ')
        expected_path=HERE/contract['expectedTypeFile']
        expected=json.loads(expected_path.read_text())
        require(expected['fixedSourceCommit']==head,'Independent target source differs')
        literal={}
        for root,row in expected['types'].items():
            matches=[v for v in fresh if v['sourcePath']==BASE+'reviews/'+row['file']]
            if not matches:continue
            require(len(matches)==1,'Duplicate independent literal module')
            actual=actual_type(z.read(matches[0]['phase']+'/stdout.log').decode('utf-8-sig'),root)
            require(re.sub(r'\s+',' ',actual)==row['expected'],'Actual paper target/domain/input differs:'+root)
            literal[root]=actual
        require(len(literal)==sum(len(s['sources'][1]['roots']) for s in spec['stages'] if s['name'] in closed_names),'Every accepted stage needs all independent exact targets')
        require(closed_names and len(fresh)==len(normal)==2*len(closed_names),'No complete accepted paired paper stage')
        for row in fresh:
            require(row['receipt']['startupMemoryMiB']==6144 and row['receipt']['treeMemoryMiB']==5120,'Actual paper resource profile differs')
        require(not any('objects/Mathlib/' in p for origin in old_bindings for p in origin['objectParts']),'Private prefix shadows pinned Mathlib')
        guard()
        result={'status':'independent-paper-stages-binding-passed','verifier':'/root/tail2h_verification','startUtc':began,'endUtc':datetime.now(timezone.utc).isoformat(),'elapsedSeconds':time.monotonic()-mono,'hardDeadlineUtc':DEADLINE.isoformat(),'proofStartUtc':START.isoformat(),'proofStopUtc':STOP.isoformat(),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archive':str(archive),'archiveBytes':archive.stat().st_size,'archiveSha256':zip_sha,'nativeMemberCount':len(names),'nativeMembers':members,'oldBindings':old_bindings,'adopted345Sources':all_old_receipts,'actualFirstSearchPrefix':prefix,'actualCompleteImportPath':common_path,'fixedToolchain':tc,'actualPins':PINS,'actualRunnerResources':obj('resources-start.json'),'closedStages':closed_names,'freshCompilerBindings':fresh,'normalCheckerBindings':normal,'pendingDeclaredSuccessfulCompilerPhases':sorted(pending_success),'actualTransitiveAxiomRootCount':len(roots_seen),'actualExactLiteralTypes':literal,'expectedTypesSha256':sha(expected_path.read_bytes()),'LPFullBoundSupplied':False,'PsiSupplySupplied':False,'unconditionalCompleteOriginalIndexIncrement':0,'genuineInfiniteGapSupplied':False,'kernelRerunByVerifier':False,'R7Changed':False,'scriptSha256':sha(Path(__file__).read_bytes())}
        path=HERE/(output_prefix+'-INDEPENDENT-BINDING.json')
        path.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        guard()
        scopes={s:expected['stageScopes'][s] for s in closed_names}
        sig={'status':'accepted-paper-stage-prerequisites-and-conditional-consumers','verifier':'/root/tail2h_verification','taskClass':'complex established semantic/dependency/object verification','model':'gpt-6.1-sol','reasoningEffort':'xhigh','signedUtc':datetime.now(timezone.utc).isoformat(),'hardDeadlineUtc':DEADLINE.isoformat(),'binding':path.name,'bindingSha256':sha(path.read_bytes()),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archiveSha256':zip_sha,'freshAXRootCount':len(roots_seen),'normalCheckerExits':[v['receipt']['exitCode'] for v in normal],'acceptedFreshMathematicalRoots':sorted(roots_seen),'actualExactLiteralTypes':literal,'acceptedStageScopes':scopes,'closedStages':closed_names,'LPFullBoundSupplied':False,'PsiSupplySupplied':False,'genuineInfiniteGapSupplied':False,'unconditionalCompleteOriginalIndexIncrement':0,'preservedCompleteOriginalScope':'{1,2,11,29} union [35,30000]','kernelRerunByVerifier':False,'checkerMeaning':'Pinned Lean normal replay, not a second kernel implementation','R7Changed':False}
        (HERE/(output_prefix+'-INDEPENDENT-ACCEPTED.json')).write_text(json.dumps(sig,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print('Accepted complete paper stages only:'+','.join(closed_names)+'; full LP/P not supplied')

if __name__=='__main__':
    main()
'''
# Review contract is a local independent input, not a fabricated native member.
src=src.replace("obj('independent-review-contract.json')","json.loads((HERE/'PAPER-REVIEW-CONTRACT.json').read_text())")
target=HERE/'bind_paper_archive.py'
target.write_text(src,encoding='utf-8')
compile(src,str(target),'exec')
record={'utc':datetime.now(timezone.utc).isoformat(),'templateSha256':hashlib.sha256((HERE/'bind_height_archive.py').read_bytes()).hexdigest(),'newScriptSha256':hashlib.sha256(target.read_bytes()).hexdigest(),'purpose':'closed-stage-only paper prerequisite/conditional source object raw binding; pending prefixes never scope accepted','historicalSourcesAndWindowsUnchanged':True}
(HERE/'PAPER-BINDER-PROVENANCE.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print('Prepared closed-stage paper binder; exact target contract required before signing')

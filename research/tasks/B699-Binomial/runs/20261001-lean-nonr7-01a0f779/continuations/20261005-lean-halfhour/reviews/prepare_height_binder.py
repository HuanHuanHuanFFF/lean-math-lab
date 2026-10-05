"""New authorized finite-height verification; preserve the previous frozen reviews."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
HERE=Path(__file__).resolve().parent
OLD=HERE.parent.parent/'20261005-lean-formal-seventyfive/reviews'
src=(OLD/'bind_generic_archive.py').read_text(encoding='utf-8')
def replace(a,b):
    global src
    if src.count(a)!=1:
        raise RuntimeError('Ambiguous new-window adaptation: '+a[:75])
    src=src.replace(a,b)
src=src.replace('2026-10-04T16:35:50+00:00','2026-10-04T18:31:34+00:00')
src=src.replace('2026-10-04T17:35:00+00:00','2026-10-04T18:57:00+00:00')
src=src.replace('2026-10-04T17:50:50+00:00','2026-10-04T19:01:34+00:00')
replace("BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-formal-seventyfive/'", "BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-halfhour/'")
replace("'signature':'20261005-lean-formal-seventyfive/reviews/THETA-BRIDGES-INDEPENDENT-ACCEPTED.json'}]", """'signature':'20261005-lean-formal-seventyfive/reviews/THETA-BRIDGES-INDEPENDENT-ACCEPTED.json'},
    {'zip':'D:/ResearchArtifacts/b699-formal75/cutoff-37219682143.zip',
     'sha':'62a8a90b6d9a9a26529a60ba3240da89d6c975065ffb8404fed43daffd7b4da8',
     'head':'7a1bb1aace4d7200b8cc23d65b8d6648eb0a016c','run':'37219682143','artifact':'11309942383',
     'count':132,'sourceCount':4,'storage':'accepted-generic-cutoff','manifest':'delivery-manifest.json',
     'signature':'20261005-lean-formal-seventyfive/reviews/GENERIC-CUTOFF-INDEPENDENT-ACCEPTED.json'}]""")
replace("require(mode == 'SECOND', 'Unsupported requested generic/cutoff scope')", "require(mode=='HEIGHT','Unsupported new finite-height scope')")
replace("else 'GENERIC-CUTOFF'", "else 'FINITE-HEIGHT'")
replace("BASE + 'runtime/generic-stage-spec.json'", "BASE + 'runtime/height-stage-spec.json'")
replace("BASE + 'runtime/generic-stage.py'", "BASE + 'runtime/height-stage.py'")
replace("spec['roundStartUtc'] == '2026-10-04T16:35:50Z'", "spec['roundStartUtc'] == '2026-10-04T18:31:34Z'")
replace("spec['proofStopUtc'] == '2026-10-04T17:35:00Z'", "spec['proofStopUtc'] == '2026-10-04T18:57:00Z'")
replace("spec['finalDeadlineUtc'] == '2026-10-04T17:50:50Z'", "spec['finalDeadlineUtc'] == '2026-10-04T19:01:34Z'")
replace("spec['lastJobStart'] == '2026-10-04T17:22:00Z'", "spec['lastJobStart'] == '2026-10-04T18:42:00Z'")
replace("prepared['sourceCount'] == 341", "prepared['sourceCount'] == 345")
replace("index['supplementSourceCount'] == 212", "index['supplementSourceCount'] == 216")
replace("len(index['sourceObjects']) == 341", "len(index['sourceObjects']) == 345")
replace("len(external['origins']) == 9", "len(external['origins']) == 10")
replace("require(len(all_old_receipts) == 341, 'Incomplete exact old341 closure')", "require(len(all_old_receipts)==345,'Incomplete exact old345 closure')")
replace("            source_count = 0\n            bound_parts = {}", """
            if frozen['storage']=='accepted-generic-cutoff':
                require(signature['freshAXRootCount']==10 and signature['normalCheckerExits']==[0]*4 and signature['analyticalBoundsProvided'] is False, 'Previous generic/cutoff signature differs')
                require(sha((signature_path.parent/signature['binding']).read_bytes())==signature['bindingSha256'],'Previous generic/cutoff binding bytes differ')
            source_count = 0
            bound_parts = {}""")
src=src[:src.index("        require(closed_names==['generic','cutoff']")]
src+=r'''
        require(closed_names==['finiteheight'] and len(fresh)==2 and len(normal)==2 and len(roots_seen)==4,'Incomplete actual finite-height two-module unit')
        require(spec['stages'][0]['prerequisites']==['upperinitial','tail30000'],'Corrected prerequisites differ')
        available={r.get('stageName') for r in spec['reusedPrerequisiteArtifacts']}
        require(set(spec['stages'][0]['prerequisites'])<=available,'Frozen actual origin.stageName prerequisite mismatch')
        oldbase=BASE.replace('20261005-lean-halfhour/','20261005-lean-formal-seventyfive/')
        match=[v for v in fresh if v['sourcePath']==oldbase+'reviews/FiniteHeightExactLegacy.lean']
        require(len(match)==1,'Original independent finite-height exact source missing')
        literal={}
        common='∀ (n i j : ℕ), 4883 ≤ i → i < j → j ≤ n / 2 → '
        conclusion='∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j'
        for name,domain in [('original_of_finite_gap_difference_exact','n - i < 122568684'),('original_upto_theta_threshold_exact','n ≤ 122568684')]:
            root='B699ThetaVerify20261005.'+name
            actual=actual_type(z.read(match[0]['phase']+'/stdout.log').decode('utf-8-sig'),root)
            require(re.sub(r'\s+',' ',actual)=='theorem '+root+' : '+common+domain+' → '+conclusion,'Actual unconditional original region differs: '+root)
            literal[root]=actual
        probe=receipt('composite-finiteheight-relevant-import')
        probepath=prefix.removesuffix('/objects')+'/relevant-import.lean'
        require(probe['arguments']==[tc['lean'],'-j1','-M6144','-DElab.async=false','-R',probe['cwd'],probepath] and probe['executableSha256']==tc['leanSha256'] and probe['effectiveLeanPath']==common_path,'Actual relevant import probe command/context differs')
        require(z.read('relevant-import.lean')=='import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy\n'.encode(),'Actual relevant import probe source differs')
        for row in fresh:
            require(row['receipt']['startupMemoryMiB']==6144 and row['receipt']['treeMemoryMiB']==5120,'Actual finite-height resource profile differs')
        require(not any('objects/Mathlib/' in p for origin in old_bindings for p in origin['objectParts']),'Private prefix shadows pinned Mathlib')
        guard()
        result={'status':'independent-unconditional-finite-height-binding-passed','verifier':'/root/tail2h_verification','startUtc':began,'endUtc':datetime.now(timezone.utc).isoformat(),'elapsedSeconds':time.monotonic()-mono,'hardDeadlineUtc':DEADLINE.isoformat(),'proofStartUtc':START.isoformat(),'proofStopUtc':STOP.isoformat(),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archive':str(archive),'archiveBytes':archive.stat().st_size,'archiveSha256':zip_sha,'nativeMemberCount':len(names),'nativeMembers':members,'oldBindings':old_bindings,'adopted345Sources':all_old_receipts,'actualFirstSearchPrefix':prefix,'actualCompleteImportPath':common_path,'fixedToolchain':tc,'actualPins':PINS,'actualRunnerResources':obj('resources-start.json'),'closedStages':closed_names,'freshCompilerBindings':fresh,'normalCheckerBindings':normal,'actualTransitiveAxiomRootCount':len(roots_seen),'actualOriginalLiteralTypes':literal,'actualRelevantImportProbe':probe,'completeExtraMathematicalInputs':[],'unconditionalCompleteOriginalIndexIncrement':0,'historicalProofWindowsUnchanged':True,'genuineUnboundedGapSupplied':False,'uniformThetaSuppliersProved':False,'kernelRerunByVerifier':False,'R7Changed':False,'scriptSha256':sha(Path(__file__).read_bytes())}
        path=HERE/(output_prefix+'-INDEPENDENT-BINDING.json')
        path.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        guard()
        sig={'status':'accepted-unconditional-finite-height-original-region','verifier':'/root/tail2h_verification','taskClass':'complex established semantic/dependency/object verification','model':'gpt-6.1-sol','reasoningEffort':'xhigh','signedUtc':datetime.now(timezone.utc).isoformat(),'hardDeadlineUtc':DEADLINE.isoformat(),'binding':path.name,'bindingSha256':sha(path.read_bytes()),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archiveSha256':zip_sha,'freshAXRootCount':len(roots_seen),'normalCheckerExits':[v['receipt']['exitCode'] for v in normal],'acceptedFreshMathematicalRoots':sorted(roots_seen),'actualOriginalLiteralTypes':literal,'completeExtraMathematicalInputs':[],'acceptedOriginalRegion':'all Nat n i j,4883<=i,i<j<=n/2,n-i<122568684; same actual Prime p>=i divides both complete chooses','acceptedOriginalCorollaryRegion':'same legal domain and n<=122568684','unconditionalCompleteOriginalIndexIncrement':0,'preservedCompleteOriginalScope':'{1,2,11,29} union [35,30000]','unconditionalInfiniteGapAccepted':False,'uniformThetaSuppliersProved':False,'historicalSourceRecompileIncrement':0,'aggregateUniqueSourceObjectCount':347,'kernelRerunByVerifier':False,'checkerMeaning':'Pinned Lean normal replay, not a second kernel implementation','R7Changed':False}
        (HERE/(output_prefix+'-INDEPENDENT-ACCEPTED.json')).write_text(json.dumps(sig,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print('Finite-height region independently accepted:345 reused sources,2 fresh modules,4 Std3 AX,2 normal checkers,2 exact unconditional original targets')

if __name__=='__main__':
    main()
'''
target=HERE/'bind_height_archive.py'
target.write_text(src,encoding='utf-8')
compile(src,str(target),'exec')
for name in ['check_transitive_axioms.py','verify_retained_member_map.py']:
    text=(OLD/name).read_text(encoding='utf-8')
    if name.startswith('verify_'):
        text=text.replace('2026-10-04T17:50:50+00:00','2026-10-04T19:01:34+00:00')
    (HERE/name).write_text(text,encoding='utf-8')
record={'utc':datetime.now(timezone.utc).isoformat(),'status':'new-window-height-binder-ready-not-executed','originalFrozenTemplate':str(OLD/'bind_generic_archive.py'),'originalTemplateSha256':hashlib.sha256((OLD/'bind_generic_archive.py').read_bytes()).hexdigest(),'newBinderSha256':hashlib.sha256(target.read_bytes()).hexdigest(),'proofStartUtc':'2026-10-04T18:31:34Z','proofStopUtc':'2026-10-04T18:57:00Z','reviewHardUtc':'2026-10-04T19:01:34Z','historicalSourcesWindowsSignaturesAnd43FrozenFilesUnchanged':True,'actualTargetRoots':4,'expectedReusedSources':345,'newScopeIsRegionNotCompleteIndexIncrement':True}
(HERE/'HEIGHT-BINDER-PROVENANCE.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Prepared first finite-height binder with new1842/1857/1901 guards; prior windows unchanged')

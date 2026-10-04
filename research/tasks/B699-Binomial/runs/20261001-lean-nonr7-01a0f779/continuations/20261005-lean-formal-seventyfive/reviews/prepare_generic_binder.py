"""Preserve the first fixed bridge contract and derive a separate second-unit binder."""
from pathlib import Path
from datetime import datetime, timezone
import json
import hashlib
HERE=Path(__file__).resolve().parent
src=(HERE/'bind_bridge_archive.py').read_text(encoding='utf-8')
def replace(a,b):
    global src
    if src.count(a)!=1:
        raise RuntimeError('Ambiguous second-unit adaptation: '+a[:70])
    src=src.replace(a,b)
replace("'signature':'20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json'}]", """'signature':'20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json'},
    {'zip':'D:/ResearchArtifacts/b699-formal75/bridgelocal-37218764276.zip',
     'sha':'059fc16ca22f61ca6008de6f8b529a029fdbfbd9032b920d0ec10d43b3b8bfc5',
     'head':'3f0379e5b33a7d4c9654145bb61c7166cba00294','run':'37218764276','artifact':'11309735658',
     'count':130,'sourceCount':4,'storage':'accepted-global-local-bridges','manifest':'delivery-manifest.json',
     'signature':'20261005-lean-formal-seventyfive/reviews/THETA-BRIDGES-INDEPENDENT-ACCEPTED.json'}]""")
replace("require(mode == 'FIRST', 'Unsupported requested bridge scope')", "require(mode == 'SECOND', 'Unsupported requested generic/cutoff scope')")
replace("else 'THETA-BRIDGES'", "else 'GENERIC-CUTOFF'")
replace("BASE + 'runtime/bridge-stage-spec.json'", "BASE + 'runtime/generic-stage-spec.json'")
replace("BASE + 'runtime/bridge-stage.py'", "BASE + 'runtime/generic-stage.py'")
replace("spec['lastJobStart'] == '2026-10-04T17:10:00Z'", "spec['lastJobStart'] == '2026-10-04T17:22:00Z'")
replace("prepared['sourceCount'] == 337", "prepared['sourceCount'] == 341")
replace("index['supplementSourceCount'] == 208", "index['supplementSourceCount'] == 212")
replace("len(index['sourceObjects']) == 337", "len(index['sourceObjects']) == 341")
replace("len(external['origins']) == 8", "len(external['origins']) == 9")
replace("require(len(all_old_receipts) == 337, 'Incomplete exact old337 closure')", "require(len(all_old_receipts) == 341, 'Incomplete exact old341 closure')")
replace("            source_count = 0\n            bound_parts = {}", """
            if frozen['storage']=='accepted-global-local-bridges':
                require(signature['freshAXRootCount']==10 and signature['normalCheckerExits']==[0]*4 and signature['conditionalRealInputsPerThetaConsequence']==2 and signature['analyticalBoundsProvided'] is False, 'First conditional bridge scope differs')
                require(sha((signature_path.parent/signature['binding']).read_bytes())==signature['bindingSha256'], 'First conditional bridge binding differs')
            source_count = 0
            bound_parts = {}""")
src=src[:src.index("        require(closed_names==['bridgeglobal','bridgelocal']")]
src+=r'''
        require(closed_names==['generic','cutoff'] and len(fresh)==4 and len(normal)==4 and len(roots_seen)==10, 'Incomplete actual four-source generic/cutoff unit')
        # Exact independent target strings are a separate frozen review input.
        expected_path=HERE/'GENERIC-CUTOFF-EXPECTED-TYPES.json'
        expected=json.loads(expected_path.read_text(encoding='utf-8'))
        require(expected['fixedSourceCommit']==head and len(expected['types'])==5, 'Independent exact target review source differs')
        literal={}
        for name,data in expected['types'].items():
            matches=[v for v in fresh if v['sourcePath']==BASE+'reviews/'+data['file']]
            require(len(matches)==1,'Independent generic/cutoff literal source missing')
            actual=actual_type(z.read(matches[0]['phase']+'/stdout.log').decode('utf-8-sig'),name)
            require(re.sub(r'\s+',' ',actual)==data['expected'],'Actual generic/cutoff domains, scalar constraints or mathematical inputs differ: '+name)
            literal[name]=actual
        for row in fresh:
            require(row['receipt']['startupMemoryMiB']==6144 and row['receipt']['treeMemoryMiB']==5120,'Second actual/intended resource profile differs')
        require(not any('objects/Mathlib/' in part for origin in old_bindings for part in origin['objectParts']), 'Second private prefix shadows pinned Mathlib')
        guard()
        result={'status':'independent-generic-cutoff-binding-passed','verifier':'/root/tail2h_verification','startUtc':began,'endUtc':datetime.now(timezone.utc).isoformat(),'elapsedSeconds':time.monotonic()-mono,'hardDeadlineUtc':DEADLINE.isoformat(),'proofStartUtc':START.isoformat(),'proofStopUtc':STOP.isoformat(),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archive':str(archive),'archiveBytes':archive.stat().st_size,'archiveSha256':zip_sha,'nativeMemberCount':len(names),'nativeMembers':members,'oldBindings':old_bindings,'adopted341Sources':all_old_receipts,'actualFirstSearchPrefix':prefix,'actualCompleteImportPath':common_path,'fixedToolchain':tc,'actualPins':PINS,'actualRunnerResources':obj('resources-start.json'),'closedStages':closed_names,'freshCompilerBindings':fresh,'normalCheckerBindings':normal,'actualTransitiveAxiomRootCount':len(roots_seen),'actualConditionalLiteralTypes':literal,'independentExpectedTypesSha256':sha(expected_path.read_bytes()),'unboundedMathematicalInputs':expected['unboundedMathematicalInputs'],'structuralAndScalarPremises':expected['structuralAndScalarPremises'],'analyticalBoundsProvided':False,'unconditionalOriginalIndexIncrement':0,'unconditionalInfiniteGapAccepted':False,'historicalProofWindowsUnchanged':True,'actualResourceProfile':{'startupMiB':6144,'treeMiB':5120,'leanMemoryArgument':'-M6144','intendedAndActualAgree':True},'kernelRerunByVerifier':False,'R7Changed':False,'scriptSha256':sha(Path(__file__).read_bytes())}
        binding_path=HERE/(output_prefix+'-INDEPENDENT-BINDING.json')
        binding_path.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        guard()
        sig={'status':'accepted-conditional-generic-theta-and-cutoff-consumers','verifier':'/root/tail2h_verification','taskClass':'Complex established semantic and dependency verification','model':'gpt-6.1-sol','reasoningEffort':'xhigh','signedUtc':datetime.now(timezone.utc).isoformat(),'hardDeadlineUtc':DEADLINE.isoformat(),'binding':binding_path.name,'bindingSha256':sha(binding_path.read_bytes()),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archiveSha256':zip_sha,'freshAXRootCount':len(roots_seen),'normalCheckerExits':[v['receipt']['exitCode'] for v in normal],'acceptedFreshMathematicalRoots':sorted(roots_seen),'actualConditionalLiteralTypes':literal,'completeExtraMathematicalInputs':expected['unboundedMathematicalInputs'],'structuralAndScalarPremises':expected['structuralAndScalarPremises'],'analyticalBoundsProvided':False,'unconditionalOriginalIndexIncrement':0,'unconditionalInfiniteGapAccepted':False,'cutoffOriginalScope':'all Nat n i j with i>=max(4883,Y),i<j<=n/2;same actual Prime p>=i divides both complete chooses','cutoffYUpperBoundRequired':False,'cutoffFiniteInitialMathematicalInputRequired':False,'preservedCompleteOriginalScope':'{1,2,11,29} union [35,30000]','preservedFiniteGapScope':'10000000<=y<122568684','kernelRerunByVerifier':False,'checkerMeaning':'Pinned Lean normal replay, not a second kernel implementation','R7Changed':False}
        (HERE/(output_prefix+'-INDEPENDENT-ACCEPTED.json')).write_text(json.dumps(sig,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print('Conditional generic/cutoff accepted:341 reused sources,4 fresh modules,10 Std3 AX,4 normal checkers,5 exact targets')

if __name__ == '__main__':
    main()
'''
target=HERE/'bind_generic_archive.py'
target.write_text(src,encoding='utf-8')
compile(src,str(target),'exec')
p={'utc':datetime.now(timezone.utc).isoformat(),'template':'bind_bridge_archive.py','templateSha256':hashlib.sha256((HERE/'bind_bridge_archive.py').read_bytes()).hexdigest(),'output':target.name,'outputSha256':hashlib.sha256(target.read_bytes()).hexdigest(),'historicalWindowsUnchanged':True,'sourceSpecificFirstContractUnchanged':True,'secondProofStopUtc':'2026-10-04T17:35:00Z','secondLaunchGateUtc':'2026-10-04T17:22:00Z','reviewDeadlineUtc':'2026-10-04T17:50:50Z'}
(HERE/'GENERIC-BINDER-PROVENANCE.json').write_text(json.dumps(p,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Prepared distinct nine-origin generic/cutoff binder; exact typed targets required before acceptance')

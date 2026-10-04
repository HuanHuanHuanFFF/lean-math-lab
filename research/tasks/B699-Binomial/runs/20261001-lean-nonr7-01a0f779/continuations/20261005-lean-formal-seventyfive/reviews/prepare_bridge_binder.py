"""Derive a source-aligned bridge binder from the checked historical binder."""
from pathlib import Path
import hashlib
import json
from datetime import datetime, timezone

HERE = Path(__file__).resolve().parent
src = (HERE / 'bind_tiny_archive.py').read_text(encoding='utf-8')
def replace(old, new):
    global src
    if src.count(old) != 1:
        raise RuntimeError('Ambiguous binder adaptation: ' + old[:70])
    src = src.replace(old, new)

replace("BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261004-tail-twohour-finish/'", "BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-formal-seventyfive/'")
replace("START = datetime.fromisoformat('2026-10-04T13:16:38+00:00')", "START = datetime.fromisoformat('2026-10-04T16:35:50+00:00')")
replace("STOP = datetime.fromisoformat('2026-10-04T15:06:00+00:00')", "STOP = datetime.fromisoformat('2026-10-04T17:35:00+00:00')")
replace("'signature':'20261005-lean-formal-seventyfive/reviews/UPPER-RANGES-INDEPENDENT-ACCEPTED.json'}]", """'signature':'20261005-lean-formal-seventyfive/reviews/UPPER-RANGES-INDEPENDENT-ACCEPTED.json'},
    {'zip':'D:/ResearchArtifacts/b699-tail-twohour-finish/b699-tail2h-tinytail30000-37210857364-complete.zip',
     'sha':'fb0642947f4f81af6b8c206e4f9acfd5b381d10c34a4df166711e95e0a795e6c',
     'head':'b1de49c08be2850f6e98d4fe9f101e29778cdcdc','run':'37210857364','artifact':'11306801187',
     'count':1464,'sourceCount':4,'storage':'accepted-final30000','manifest':'delivery-manifest.json',
     'signature':'20261005-lean-formal-seventyfive/reviews/TINY-ALL-INDEPENDENT-ACCEPTED.json'},
    {'zip':'D:/ResearchArtifacts/b699-gap-halfhour/b699-gap-37046323083.zip',
     'sha':'54826001c1d5189cd71a5a23f3c63a30442afbb68b800154b8df6ecb15a90258',
     'head':'6191c5f1c6348aee803e7e446d7750bf14cce2bb','run':'37046323083','artifact':'11244387045',
     'count':115,'sourceCount':2,'storage':'accepted-theta2','manifest':'byte-manifest.json',
     'signature':'20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json'}]""")
replace("require(mode in ('INITIAL','TAIL30000','BOTH'), 'Unsupported requested acceptance scope')", "require(mode == 'FIRST', 'Unsupported requested bridge scope')")
replace("k = 30000 if mode in ('TAIL30000','BOTH') else 15000", "k = 30000")
replace("{'INITIAL':'THETA-INITIAL','TAIL30000':'TAIL30000','BOTH':'TINY-ALL'}[mode]", "'THETA-BRIDGES'")
replace("BASE + 'runtime/tiny/tiny-stage-spec.json'", "BASE + 'runtime/bridge-stage-spec.json'")
replace("BASE + 'runtime/tiny/tiny-stage.py'", "BASE + 'runtime/bridge-stage.py'")
replace("spec['roundStartUtc'] == '2026-10-04T13:16:38Z'", "spec['roundStartUtc'] == '2026-10-04T16:35:50Z'")
replace("spec['proofStopUtc'] == '2026-10-04T15:06:00Z'", "spec['proofStopUtc'] == '2026-10-04T17:35:00Z'")
replace("spec['finalDeadlineUtc'] == '2026-10-04T15:16:38Z'", "spec['finalDeadlineUtc'] == '2026-10-04T17:50:50Z'")
replace("spec['lastJobStart'] == '2026-10-04T14:54:00Z'", "spec['lastJobStart'] == '2026-10-04T17:10:00Z'")
replace("prepared['sourceCount'] == 331", "prepared['sourceCount'] == 337")
replace("index['supplementSourceCount'] == 202", "index['supplementSourceCount'] == 208")
replace("len(index['sourceObjects']) == 331", "len(index['sourceObjects']) == 337")
replace("len(external['origins']) == 6", "len(external['origins']) == 8")
replace("if frozen['storage']=='carried-upperinitial' and not name.startswith('objects/'):\n                        nested=frozen['storage']+'/'+name\n                        require(nested in members and members[nested]['bytes']==row['bytes'] and members[nested]['sha256']==row['sha256'], 'Actual nested carried parent ordinary bytes differ')", "# This bridge packet excludes all old ordinary duplicates; exact external bindings remain.")
replace("expected = prefix + '/' + name.removeprefix('objects/') if name.startswith('objects/') else \\", "use_object = name.startswith('objects/') and (not frozen_spec.get('selectedObjectMembers') or name in frozen_spec['selectedObjectMembers'])\n                    if frozen['storage']=='accepted-theta2':\n                        require(row['inCompilerObjectPrefix'] is use_object, 'Theta object selection differs')\n                    expected = prefix + '/' + name.removeprefix('objects/') if use_object else \\")
replace("if name.endswith('/receipt.json'):\n                        row = json.loads(old.read(name))", "if name.endswith('/receipt.json'):\n                        if frozen_spec.get('freshOnly') and len(Path(name).parts)!=2:\n                            continue\n                        if frozen_spec.get('selectedReceipts') and name not in frozen_spec['selectedReceipts']:\n                            continue\n                        row = json.loads(old.read(name))")
replace("require(len(all_old_receipts) == 331, 'Incomplete exact old331 closure')", "require(len(all_old_receipts) == 337, 'Incomplete exact old337 closure')")
replace("and not n.startswith('carried-upperinitial/')", "")
insert = """
            if frozen['storage']=='accepted-final30000':
                require(signature['normalCheckerExits']==[0]*4 and signature['freshAXRootCount']==7 and signature['acceptedOriginalUpper']==30000 and signature['completeExtraMathematicalInputs']==[], 'Tiny complete conditional-free scope differs')
                require(sha((signature_path.parent/signature['binding']).read_bytes())==signature['bindingSha256'], 'Tiny accepted binding bytes differ')
            if frozen['storage']=='accepted-theta2':
                require(signature['archiveSha256']==frozen['sha'] and signature['normalCheckerExits']==[0]*3 and signature['fullSameStd3Subset'] is True, 'Theta named acceptance differs')
"""
replace("            source_count = 0\n            bound_parts = {}", insert + "            source_count = 0\n            bound_parts = {}")
extra = """
                    if frozen['storage']=='accepted-theta2':
                        ax=check_ax(old.read(source_member), old.read(name.removesuffix('receipt.json')+'stdout.log'))
                        require(len(ax['roots'])==(5 if 'ThetaInterval' in name else 4), 'Theta nine actual roots missing')
                        phase=name.removesuffix('/receipt.json')
                        cr=json.loads(old.read(phase+'-normal-checker/receipt.json'))
                        require(cr.get('childStarted') is True and cr['status']=='success' and cr['exitCode']==0 and cr.get('stopReason') is None, 'Theta actual normal checker failed')
                        require(cr['arguments']==[tc['leanchecker'],'-v',module(relative)] and cr['executableSha256']==tc['leancheckerSha256'], 'Theta actual normal checker target differs')
                        require(sha(old.read(phase+'-normal-checker/stdout.log'))==cr['stdoutSha256'] and sha(old.read(phase+'-normal-checker/stderr.log'))==cr['stderrSha256'], 'Theta checker logs differ')
                        require(old.read(phase+'-normal-checker/stdout.log').decode().strip()=='replaying '+module(relative), 'Theta checker replay differs')
"""
replace("                    source_count += 1", extra + "                    source_count += 1")

# Native, Git, toolchain, eight-origin and fresh AX/checker checks remain complete.
src = src[:src.index('        literal = {}\n')]
src += r'''
        require(closed_names==['bridgeglobal','bridgelocal'] and len(fresh)==4 and len(normal)==4 and len(roots_seen)==10, 'Incomplete actual four-module bridge unit')
        literal = {}
        upper_global='(∀ (x : ℝ), 0 < x → Chebyshev.theta x - x ≤ x / 36260)'
        upper_local='(∀ (x : ℝ), 122568683 < x → Chebyshev.theta x - x ≤ x / 36260)'
        lower='(∀ (x : ℝ), 122568683 < x → x - Chebyshev.theta x ≤ x / (20 * Real.log x ^ 2))'
        original='∀ (n i j : ℕ), 4883 ≤ i → i < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j'
        gap=lambda y:'∀ (y : ℕ), '+str(y)+' ≤ y → ∃ p, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y'
        targets=[('ThetaOriginalExactLegacy.lean','gap_from_two_uniform_theta_exact',upper_global,gap(10000000)),('ThetaOriginalExactLegacy.lean','original_tail_from_two_uniform_theta_exact',upper_global,original),('ThetaLocalizedExactLegacy.lean','gap_above_theta_threshold_exact',upper_local,gap(122568684)),('ThetaLocalizedExactLegacy.lean','gap_from_two_local_uniform_theta_exact',upper_local,gap(10000000)),('ThetaLocalizedExactLegacy.lean','original_tail_from_two_local_uniform_theta_exact',upper_local,original)]
        for file,name,upper,conclusion in targets:
            rows=[v for v in fresh if v['sourcePath']==BASE+'reviews/'+file]
            require(len(rows)==1,'Exact conditional literal source missing')
            root='B699ThetaVerify20261005.'+name
            printed=actual_type(z.read(rows[0]['phase']+'/stdout.log').decode('utf-8-sig'),root)
            expected='theorem '+root+' : '+upper+' → '+lower+' → '+conclusion
            require(re.sub(r'\s+',' ',printed)==expected,'Actual conditional target or mathematical assumptions differ: '+root)
            literal[root]=printed
        for row in fresh:
            require(row['receipt']['startupMemoryMiB']==6144 and row['receipt']['treeMemoryMiB']==5120,'Actual bridge resource profile differs')
        require(not any('objects/Mathlib/' in part for origin in old_bindings for part in origin['objectParts']), 'Private prefix shadows pinned Mathlib')
        guard()
        result={'status':'independent-conditional-bridge-binding-passed','verifier':'/root/tail2h_verification','startUtc':began,'endUtc':datetime.now(timezone.utc).isoformat(),'elapsedSeconds':time.monotonic()-mono,'hardDeadlineUtc':DEADLINE.isoformat(),'proofStartUtc':START.isoformat(),'proofStopUtc':STOP.isoformat(),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archive':str(archive),'archiveBytes':archive.stat().st_size,'archiveSha256':zip_sha,'nativeMemberCount':len(names),'nativeMembers':members,'oldBindings':old_bindings,'adopted337Sources':all_old_receipts,'actualFirstSearchPrefix':prefix,'actualCompleteImportPath':common_path,'fixedToolchain':tc,'actualPins':PINS,'actualRunnerResources':obj('resources-start.json'),'closedStages':closed_names,'freshCompilerBindings':fresh,'normalCheckerBindings':normal,'actualTransitiveAxiomRootCount':len(roots_seen),'actualConditionalLiteralTypes':literal,'conditionalRealInputsPerThetaConsequence':2,'analyticalBoundsProvided':False,'unconditionalOriginalIndexIncrement':0,'unconditionalInfiniteGapAccepted':False,'historicalProofWindowsUnchanged':True,'actualResourceProfile':{'startupMiB':6144,'treeMiB':5120,'leanMemoryArgument':'-M6144','outerRequestedProfileWasOverwrittenByFixedHelper':True},'kernelRerunByVerifier':False,'R7Changed':False,'scriptSha256':sha(Path(__file__).read_bytes())}
        binding_path=HERE/(output_prefix+'-INDEPENDENT-BINDING.json')
        binding_path.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        guard()
        sig={'status':'accepted-conditional-theta-bridges','verifier':'/root/tail2h_verification','taskClass':'Complex established semantic and dependency verification','model':'gpt-6.1-sol','reasoningEffort':'xhigh','signedUtc':datetime.now(timezone.utc).isoformat(),'hardDeadlineUtc':DEADLINE.isoformat(),'binding':binding_path.name,'bindingSha256':sha(binding_path.read_bytes()),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archiveSha256':zip_sha,'freshAXRootCount':len(roots_seen),'normalCheckerExits':[v['receipt']['exitCode'] for v in normal],'acceptedFreshMathematicalRoots':sorted(roots_seen),'actualConditionalLiteralTypes':literal,'completeExtraMathematicalInputs':{'globalBridge':[upper_global,lower],'localizedBridge':[upper_local,lower]},'conditionalRealInputsPerThetaConsequence':2,'analyticalBoundsProvided':False,'completeOriginalScope':'Conditional forall Nat n i j:4883<=i,i<j<=n/2,same actual Nat.Prime p>=i divides both complete chooses','unconditionalOriginalIndexIncrement':0,'unconditionalInfiniteGapAccepted':False,'preservedCompleteOriginalScope':'{1,2,11,29} union [35,30000]','preservedFiniteGapScope':'10000000<=y<122568684','kernelRerunByVerifier':False,'checkerMeaning':'Pinned Lean normal replay, not a second kernel implementation','R7Changed':False}
        (HERE/(output_prefix+'-INDEPENDENT-ACCEPTED.json')).write_text(json.dumps(sig,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print('Conditional bridge independently accepted:337 reused sources,4 fresh modules,10 Std3 AX,4 normal checkers,5 exact two-input targets')

if __name__ == '__main__':
    main()
'''
target = HERE / 'bind_bridge_archive.py'
target.write_text(src, encoding='utf-8')
compile(src, str(target), 'exec')
provenance = {'utc': datetime.now(timezone.utc).isoformat(), 'sourceTemplate': 'bind_tiny_archive.py', 'sourceTemplateSha256': hashlib.sha256((HERE/'bind_tiny_archive.py').read_bytes()).hexdigest(), 'output': target.name, 'outputSha256': hashlib.sha256(target.read_bytes()).hexdigest(), 'historicalSourcesAndOriginalSignaturesUnchanged': True, 'proofWindow': ['2026-10-04T16:35:50+00:00','2026-10-04T17:35:00+00:00'], 'reviewDeadlineUtc':'2026-10-04T17:50:50+00:00','eightOrigins337SourceOnlyReuse': True}
(HERE/'BRIDGE-BINDER-PROVENANCE.json').write_text(json.dumps(provenance,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Prepared eight-origin bridge independent binder')

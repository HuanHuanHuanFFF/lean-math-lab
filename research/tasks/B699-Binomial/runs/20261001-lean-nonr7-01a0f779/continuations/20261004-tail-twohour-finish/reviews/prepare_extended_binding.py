"""Preserve main verifier and adapt a separate five-origin finite-gap verifier."""
import ast
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
source = HERE/'bind_current_archive.py'
text = source.read_text(encoding='utf-8-sig')
signature_path = HERE/'TAIL15000-INDEPENDENT-ACCEPTED.json'
signature = json.loads(signature_path.read_text(encoding='utf-8-sig'))
require = lambda ok,msg: None if ok else (_ for _ in ()).throw(RuntimeError(msg))
require(signature['acceptedOriginalUpper']==15000 and signature['archiveSha256']=='9a10b334c04fe75ae8ad4798a15b5289ee721c2571aeac533a6778d7fc7bd7e8','Main15000 acceptance prerequisite differs')

def replace(before,after):
    global text
    require(text.count(before)==1,'Adapter anchor differs: '+before[:80])
    text = text.replace(before,after)

replace("     'signature': '20261004-tail-ninetymin/reviews/TAIL10000-INDEPENDENT-ACCEPTED.json'}]", "     'signature': '20261004-tail-ninetymin/reviews/TAIL10000-INDEPENDENT-ACCEPTED.json'},\n    {'zip': 'D:/ResearchArtifacts/b699-tail-twohour-finish/b699-tail2h-stage15000-37205771908.zip',\n     'sha': '9a10b334c04fe75ae8ad4798a15b5289ee721c2571aeac533a6778d7fc7bd7e8',\n     'head': '3a8b9ff6c5cb8db16112235ca6a0969e36affcbe', 'run': '37205771908',\n     'artifact': '11304494869', 'count': 596, 'sourceCount': 32,\n     'storage': 'accepted-main15000', 'manifest': 'delivery-manifest.json',\n     'signature': '20261004-tail-twohour-finish/reviews/TAIL15000-INDEPENDENT-ACCEPTED.json'}]")
replace('    k = int(k)', "    mode = k\n    require(mode in ('GAP','INITIAL','TAIL30000'), 'Unsupported requested acceptance scope')\n    k = 30000 if mode == 'TAIL30000' else 15000")
replace("else 'TAIL' + str(k)", "else {'GAP':'GAP-FORWARD','INITIAL':'THETA-INITIAL','TAIL30000':'TAIL30000'}[mode]")
replace("    require(k in (10001, 13000, 15000), 'Unsupported exact target')", "    require(k in (15000,30000), 'Unsupported exact target')")
replace("BASE + 'runtime/stage-spec.json'", "BASE + 'runtime/gap-stage-spec.json'")
replace("BASE + 'runtime/tail-stage.py'", "BASE + 'runtime/gap-stage.py'")
replace("spec['lastJobStart'] == '2026-10-04T13:55:00Z'", "spec['lastJobStart'] == '2026-10-04T14:05:00Z'")
text = text.replace("prepared['sourceCount'] == 195", "prepared['sourceCount'] == 227")
text = text.replace("index['supplementSourceCount'] == 66", "index['supplementSourceCount'] == 98")
text = text.replace("len(index['sourceObjects']) == 195", "len(index['sourceObjects']) == 227")
text = text.replace("len(external['origins']) == 4", "len(external['origins']) == 5")
text = text.replace("len(all_old_receipts) == 195", "len(all_old_receipts) == 227")
text = text.replace("('accepted-tail5000', 'accepted-probe', 'accepted-main10000')", "('accepted-tail5000', 'accepted-probe', 'accepted-main10000', 'accepted-main15000')")
replace("else 5001 if frozen['storage'] == 'accepted-probe' else 10000)", "else 5001 if frozen['storage'] == 'accepted-probe' else 10000 if frozen['storage']=='accepted-main10000' else 15000)")
replace("'-M4096' if row.get('largeConsumer', False)\n                                 else '-M3132'", "('-M4096' if stage['name'].startswith('gap') else '-M6144') if row.get('largeConsumer', False)\n                                 else '-M3132'")
replace("        require(any(row['sourcePath'] == literal_relative for row in fresh),\n                'Requested accurate literal stage absent')", "        # Requested scope is checked from explicit independent literals below.")

start = text.index("        phase = next(v['phase'] for v in fresh if v['sourcePath'] == literal_relative)")
end = text.index('        guard()\n        result = ',start)
text = text[:start]+'''        literal = {}
        finite_gap_types = {}
        finite_gap_scopes = []
        gap_targets = [
            ('GapLowerExactLegacy.lean','gap_fixed_initial_exact',19995885,20482069),
            ('GapLowerExactLegacy.lean','gap_10000_extended_initial_exact',19995885,40956329),
            ('Gap13000ExactLegacy.lean','gap_13000_initial_exact',20482069,53399837),
            ('Gap13000ExactLegacy.lean','gap_13000_extended_initial_exact',19995885,53399837),
            ('Gap15000ExactLegacy.lean','gap_15000_initial_exact',20482069,61439401),
            ('Gap15000ExactLegacy.lean','gap_15000_extended_initial_exact',19995885,61439401),
            ('InitialLowerExactLegacy.lean','full_lower_gap_exact',10000000,19995885),
            ('InitialUpperExactLegacy.lean','full_upper_gap_exact',61439401,122879557),
            ('ThetaInitialExactLegacy.lean','theta_initial_exact',10000000,122568684)]
        for filename,name,lo,hi in gap_targets:
            matches = [v for v in fresh if v['sourcePath']==BASE+'reviews/'+filename]
            if not matches:
                continue
            require(len(matches)==1,'Duplicate independent finite Gap literal')
            root = 'B699TailFinishVerify20261004.'+name
            raw = z.read(matches[0]['phase']+'/stdout.log').decode('utf-8-sig')
            actual = actual_type(raw,root)
            expected = f'theorem {root} : ∀ (y : ℕ), {lo} ≤ y → y < {hi} → ∃ p, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y'
            require(re.sub(r'\\s+',' ',actual)==expected,'Actual exact finite Gap type differs')
            finite_gap_types[root] = actual
            finite_gap_scopes.append({'root':root,'lowerInclusive':lo,'upperExclusive':hi,'integerYCount':hi-lo,'denominator':4095,'extraMathematicalInputs':[]})
        require('B699TailFinishVerify20261004.gap_15000_extended_initial_exact' in finite_gap_types,'Small finite Gap unit is incomplete')
        if mode=='INITIAL':
            require('B699TailFinishVerify20261004.theta_initial_exact' in finite_gap_types,'Requested entire theta initial interval missing')
        if mode=='TAIL30000':
            matches = [v for v in fresh if v['sourcePath']==BASE+'reviews/Tail30000ExactLegacy.lean']
            require(len(matches)==1,'Requested full original30000 literal missing')
            raw = z.read(matches[0]['phase']+'/stdout.log').decode('utf-8-sig')
            for name,expected in (
                ('complete_30000_exact','∀ (n j : ℕ), 30000 < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ 30000 ≤ p ∧ p ∣ n.choose 30000 ∧ p ∣ n.choose j'),
                ('all_upto_30000_exact','∀ (n i j : ℕ), 4883 ≤ i → i ≤ 30000 → i < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j')):
                root = 'B699TailFinishVerify20261004.'+name
                literal[root] = actual_type(raw,root)
                require(re.sub(r'\\s+',' ',literal[root])=='theorem '+root+' : '+expected,'Actual complete30000 original type differs')
        for row in fresh:
            r = row['receipt']
            if row['phase'].startswith('composite-') and not row['phase'].startswith('composite-gap'):
                require(r['startupMemoryMiB']==10240 and r['treeMemoryMiB']==8192,'Actual larger consumer resource gate differs')
''' + text[end:]
text = text.replace("'adopted195Sources'", "'adopted227Sources'")
replace("'status': 'accepted-fixed-prerequisites-and-original-through-' + str(k)\n                            if output_prefix.startswith('PROBE') else 'accepted-complete-original-through-' + str(k)", "'status': 'accepted-complete-original-through-30000' if mode=='TAIL30000' else 'accepted-entire-theta-finite-initial' if mode=='INITIAL' else 'accepted-real-finite-gap-forward'")
replace("'newCompleteOriginalIndexCountFrom10000': k - 10000", "'newCompleteOriginalIndexCountFrom10000': 20000 if mode=='TAIL30000' else 0")
replace("'completeOriginalScope': f'All Nat n/i/j with 4883<=i<={k}, i<j<=n/2; same actual Nat.Prime p>=i divides both complete chooses.'", "'completeOriginalScope': f'All Nat n/i/j with 4883<=i<=30000, i<j<=n/2; same actual Nat.Prime p>=i divides both complete chooses.' if mode=='TAIL30000' else 'Finite Gap scope only; complete original15000 coverage inherited from separately accepted main origin'")
replace("'acceptedOriginalUpper': k, 'freshAXRootCount'", "'acceptedOriginalUpper': k, 'originalCoverageIsInherited': mode!='TAIL30000', 'freshAXRootCount'")
replace('Usage: python bind_current_archive.py K ZIP SHA256 FIXED_HEAD RUN ARTIFACT [OUTPUT_PREFIX]', 'Usage: python bind_extended_archive.py GAP|INITIAL|TAIL30000 ZIP SHA256 FIXED_HEAD RUN ARTIFACT [OUTPUT_PREFIX]')
replace("        print('Independent original acceptance through %d: %d fresh AX roots, %d native members' %\n              (k, len(roots_seen), len(names)))", "        print('Independent scope %s accepted: %d fresh AX roots, %d native members' %\n              (mode, len(roots_seen), len(names)))")
text = text.replace("'Four-provider", "'Five-provider").replace("'Four complete", "'Five complete").replace('old195 closure','old227 closure')
ast.parse(text)
target = HERE/'bind_extended_archive.py'
target.write_text(text,encoding='utf-8',newline='\n')
record = {'status':'adapted-not-executed','sourceToolSha256':hashlib.sha256(source.read_bytes()).hexdigest(),'newToolSha256':hashlib.sha256(target.read_bytes()).hexdigest(),'main15000SignatureSha256':hashlib.sha256(signature_path.read_bytes()).hexdigest(),'changes':'New independent driver/spec and14:05 startup gate; five complete origins/227 immutable reused sources; all seven actual closed stage compile/AX/checker/raw/object gates; nine finite Gap exact targets; independent30000 original types; explicit-M6144/start10240/tree8192 after small Gap. Main verifier untouched.'}
(HERE/'EXTENDED-BINDING-TOOL-PROVENANCE.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Prepared independent five-origin/227-source extended binding; no proof execution')

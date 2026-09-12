from pathlib import Path
from datetime import datetime,timezone
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-terminal-candidate-coverage-5e2d13bb'
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb»'
ns='Math.B699.I11TerminalCandidateCoverage'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'sha256':sha(p),'bytes':p.stat().st_size}
def put(n,x):(out/n).write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
report=json.loads((out/'static-verification.json').read_text());ownroots=report['public_roots']
for i in range(57):
    f=out/'FirstPartsAudits'/f'P{i:03d}.lean';f.parent.mkdir(exist_ok=True)
    name=ns+f'.FirstParts.P{i:03d}.sound'
    f.write_text(f'import {own}.FirstParts.P{i:03d}\n\n#check @{name}\n#print axioms {name}\n',encoding='utf-8')
assemblyroots=[]
text=(out/'Assembly.lean').read_text()
assemblyroots=[ns+'.'+name for name in re.findall(r'^(?:def|theorem)\s+(\w+)',text,re.M)]
(out/'AssemblyAudit.lean').write_text(f'import {own}.Assembly\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in assemblyroots)+'\n',encoding='utf-8')
foundation=['B699LowIndex.coverCheck_sound','B699LowIndex.I11TerminalCover.witnessCheck_sound',
 'B699LowIndex.I11TerminalCover.common_of_cover_checks','B699LowIndex.I11TerminalCover.candidateMem',
 'Math.B699.I11TerminalMembership.originalCandidates']
allroots=ownroots+foundation
(out/'Audit.lean').write_text(f'import {own}.Assembly\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in allroots)+'\n',encoding='utf-8')
publicthm=[]
modules=[]
for p in [out/'Generic.lean',out/'First.lean',out/'Last.lean',out/'Assembly.lean']+sorted((out/'FirstParts').glob('*.lean'))+sorted((out/'Groups').glob('*.lean')):
    s=p.read_text();nspace=re.search(r'^namespace (\S+)',s,re.M)[1]
    decls=[{'kind':m[1],'name':nspace+'.'+m[2]} for m in re.finditer(r'^(def|theorem)\s+(\w+)',s,re.M)]
    publicthm += [x['name'] for x in decls if x['kind']=='theorem']
    modules.append({'source':obj(p),'public_declarations':decls,'imports':re.findall(r'^import (\S+)',s,re.M)})
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],
 'candidate_public_theorems':publicthm,'expected_print_roots':allroots})
(out/'audit_axioms.py').write_bytes((run/'experiments/huan-i11-two-five-final-consumers-5e2d13bb/audit_axioms.py').read_bytes())
put('AUDIT_PLAN.json',{'status':'UNCOMPILED','implementation_modules':len(modules),'own_public_roots':len(ownroots),
 'public_theorems':len(publicthm),'full_typed_axiom_roots':len(allroots),'module_map':modules,
 'first_checks':['GenericAudit.lean','FirstPieceAudit.lean','LastAudit.lean'],
 'first_complete':'FirstAudit.lean',
 'all_pieces':'FirstPartsAudits/P000..P056.lean',
 'all_groups':'GroupAudits/G000..G065.lean',
 'final':['AssemblyAudit.lean','Audit.lean'],
 'target_prefix':'lean/I11TerminalCandidateCoverage',
 'accepted_data_dependency':'each referenced stable Chunk wN_check / witnesses_check must actually compile and pass its parent audit',
 'decide_boundary':'all1116new decide sites proven by source scan to be pure intervals or list equality/count, not witnessCheck'})
plan=json.loads((out/'coverage-plan.json').read_text())
sources=[
 run/'experiments/huan-i11-terminal-witness-data-5e2d13bb/manifest.json',
 run/'lean/I11TerminalMembership/Candidates.lean',
 run/'lean/I11TerminalCover/Witness.lean',
 run/'lean/I11TerminalCover/Cover.lean',
 run/'lean/I11TerminalCover/Append.lean',
 run/'lean/I11Terminal/Special330.lean',
 run/'lean/WitnessBridge.lean',
 root/'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/IntervalCover.lean',
 root/'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/LargeDivisorWitness.lean',
 root/'research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/results/terminal_certificate_11.json']
records=[obj(p) for p in sources]
receipts=[];accepted_chunks=[]
for p in (run/'verification/huan-prerequisites').glob('*.json'):
    try:x=json.loads(p.read_text())
    except (ValueError,UnicodeError):continue
    rr=x.get('root','')
    if 'I11TerminalCover/' in rr or 'I11TerminalData/Chunk' in rr or rr.endswith('/I11Terminal/Special330.lean'):
        current=root/rr
        rec={'receipt':obj(p),'root':rr,'source_sha256':x.get('source_sha256'),'evidence':x.get('evidence'),
          'current_root_hash_matches':current.exists() and sha(current)==x.get('source_sha256')}
        receipts.append(rec)
        hit=re.search(r'I11TerminalData/(Chunk\d{3})\.lean$',rr)
        if hit and rec['current_root_hash_matches']:accepted_chunks.append(hit[1])
put('INPUT_SOURCES.json',{'utc':datetime.now(timezone.utc).isoformat(),'primary_sources':records,'all_stable_chunk_sources':plan['chunk_sources'],
 'observed_receipts':receipts,'observed_chunk_receipts_matching_current_root':sorted(set(accepted_chunks)),
 'all253chunks_are_required':'source presence/w_check declarations do not imply acceptance; parent must complete all relevant checks',
 'no_group_data_imports':'The changed I11TerminalData.GroupNNN append modules are not dependencies; stable Chunk modules only.',
 'boundary':'Candidate proof source and exact interval diagnostics, not fresh Lean proof acceptance'})
put('SOURCE_MAP.json',{'namespace':ns,'final_module':'Assembly.lean',
 'final_target_module':'lean/I11TerminalCandidateCoverage/Assembly.lean',
 'final_theorem':ns+'.common_of_original_candidates',
 'full_type':'{n j : Nat} -> candidateMem n Math.B699.I11TerminalMembership.originalCandidates -> 11<j -> j<=n/2 -> B699LargePrimeStructure.Common n11j',
 'explicit_prime_theorem':ns+'.prime_of_original_candidates',
 'Common':'exists prime p with11<=p and p divides gcd(choose(n,11),choose(n,j))',
 'candidate_source':'Math.B699.I11TerminalMembership.originalCandidates','candidate_count':1055,
 'index_equality':'original_candidates_eq proves exact original List NatInterval equals allIntervals; candidate_count separately checks1055',
 'index_map':'candidate-index-map.json, indices0..1054 exactly once, ordered66blocks/65balanced append nodes',
 'witness_data':{'count':4042,'top':1699,'large':2342,'special330':1,'source_modules':'I11TerminalData.Chunk000..Chunk252',
   'proof_refs':'wN_check or fullChunk.witnesses_check directly supplied, never recomputed'},
 'checks':{'piece_size_max':16,'pieces_total':1112,'first_pieces':57,'first_witness_count':911,
   'pure_decide_sites':1116,'Boolean_definition_change':False,
   'Prop_predicates':['IntervalSound','IntervalsSound'],'no_Common_or_forall_j_in_Bool':True},
 'source_correspondence':'all4042 defs/bounds/value/check-name and253Chunk witness lists matched manifest; original1055literal intervals matched old terminal JSON',
 'negative_diagnostics':['drop special330 -> first cover false','drop final witness -> last cover false','drop candidate -> original list equality false'],
 'assumptions_remaining_in_final':['candidateMem n originalCandidates','11<j','j<=n/2'],
 'not_assumed':['total coverage','witnessesCheck total true','candidateIntervalsCheck true','Common','forall j'],
 'domain_exclusion':'No change to candidates=(0,23)::originalCandidates; below24/extended bridge belongs to the other owner.',
 'composition':'explicit cons tails; every append has explicit left/right and append_assoc normalization; only NatInterval lists are concatenated',
 'smallest_prefix_acceptance':['GenericAudit','FirstPieceAudit with checkedChunk000','LastAudit withChunk252'],
 'expected_if_verified':'all1055original terminal candidate intervals discharged for every original legal j',
 'actual_now':'no Lean run; original B count unchanged; full result needs actual data/coverage/membership/height/final-chain acceptance',
 'new_Lean_invocations':0,'new_Git_invocations':0,'new_original_B_results':0})
print(json.dumps({'implementation_modules':len(modules),'own_public_roots':len(ownroots),'public_theorems':len(publicthm),
 'full_audit_roots':len(allroots),'current_matching_Chunk_receipts':len(set(accepted_chunks))},indent=2))

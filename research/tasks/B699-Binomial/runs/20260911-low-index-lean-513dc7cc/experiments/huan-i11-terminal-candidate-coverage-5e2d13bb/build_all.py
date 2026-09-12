from pathlib import Path
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-terminal-candidate-coverage-5e2d13bb'
assert not (out/'FREEZE.json').exists()
data=json.loads((out/'coverage-plan.json').read_text());cs=data['candidates'];items=data['items']
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb»'
ns='Math.B699.I11TerminalCandidateCoverage'
def write(file,s):
    p=out/file;p.parent.mkdir(parents=True,exist_ok=True);assert not p.exists();p.write_text(s,encoding='utf-8')
def ivs(ps):return '['+', '.join(f"({p['lo']}, {p['hi']})" for p in ps)+']'
def cons_proof(ps,proofs):
    term='intervals_sound_nil'
    for i in range(len(ps)-1,-1,-1):
        p=ps[i]
        term=f'(intervals_sound_cons (I := ({p["lo"]}, {p["hi"]})) (intervals := {ivs(ps[i+1:])}) {proofs[i]} {term})'
    return term
def piece_body(piece,stem):
    ids=piece['witness_ids'];lo=piece['lo'];hi=piece['hi'];ws=[items[i]['declaration'] for i in ids]
    mods=sorted({items[i]['module'] for i in ids})
    entire=[i for i,it in enumerate(items) if it['module']==mods[0]]
    if len(mods)==1 and ids==entire:
        val='B699LowIndex.I11TerminalData.'+mods[0]+'.witnesses'
        proof='  exact B699LowIndex.I11TerminalData.'+mods[0]+'.witnesses_check'
        how='entire_chunk_check'
    else:
        val='['+', '.join(ws)+']'
        proof=f'  simp only [witnessesCheck, {stem}_witnesses, List.all_cons, List.all_nil,\n    '+', '.join(x+'_check' for x in ws)+', Bool.and_self]'
        how='individual_w_checks'
    segments='['+', '.join(f'({items[i]["lo"]}, {items[i]["hi"]})' for i in ids)+']'
    text=f'''private def {stem}_witnesses : List Witness := {val}
private def {stem}_intervals : List NatInterval := {segments}

private theorem {stem}_intervals_eq :
    witnessIntervals {stem}_witnesses = {stem}_intervals := by
  rfl

private theorem {stem}_checks : witnessesCheck {stem}_witnesses = true := by
{proof}

private theorem {stem}_cover : coverCheck {lo} {hi} {stem}_intervals = true := by
  decide

private theorem {stem}_sound : IntervalSound ({lo}, {hi}) := by
  have hc : coverCheck {lo} {hi} (witnessIntervals {stem}_witnesses) = true := by
    rw [{stem}_intervals_eq]
    exact {stem}_cover
  exact interval_sound_of_witness_checks (witnesses := {stem}_witnesses)
    (lo := {lo}) (hi := {hi}) {stem}_checks hc

'''
    return text,mods,how
groups=[];mapping=[]
for start in range(0,len(cs),16):
    g=start//16;block=cs[start:start+16];name=f'G{g:03d}';space=ns+'.Groups.'+name
    sources=[];mods=set();proofs=[];specialimports=[]
    for cand in block:
        idx=cand['candidate_index'];stem=f'c{idx:04d}'
        if idx==0:
            proofs.append(ns+'.First.sound');specialimports.append('First');how='frozen_first_probe'
        elif idx==1054:
            proofs.append(ns+'.Last.sound');specialimports.append('Last');how='frozen_last_probe'
        elif len(cand['pieces'])==1:
            text,mi,how=piece_body(cand['pieces'][0],stem);sources.append(text);mods.update(mi);proofs.append(stem+'_sound')
        else:
            local=[]
            for pi,piece in enumerate(cand['pieces']):
                text,mi,_=piece_body(piece,stem+f'_p{pi:02d}');sources.append(text);mods.update(mi);local.append(stem+f'_p{pi:02d}_sound')
            sources.append(f'''private def {stem}_segments : List NatInterval := {ivs(cand['pieces'])}
private theorem {stem}_segments_sound : IntervalsSound {stem}_segments := by
  unfold {stem}_segments
  exact {cons_proof(cand['pieces'],local)}
private theorem {stem}_segments_cover : coverCheck {cand['lo']} {cand['hi']} {stem}_segments = true := by
  decide
private theorem {stem}_sound : IntervalSound ({cand['lo']}, {cand['hi']}) :=
  interval_sound_of_interval_cover (intervals := {stem}_segments)
    (lo := {cand['lo']}) (hi := {cand['hi']}) {stem}_segments_sound {stem}_segments_cover

''');proofs.append(stem+'_sound');how='multiple_small_pieces'
        mapping.append({'candidate_index':idx,'interval':[cand['lo'],cand['hi']],'group':name,'local_source_proof':proofs[-1],
          'private_unless_First_or_Last':idx not in [0,1054],'witness_ids':cand['witness_ids'],'pieces':cand['pieces'],'mode':how})
    header=f'import {own}.Generic\n'+''.join(f'import {own}.{im}\n' for im in sorted(set(specialimports)))+''.join(f'import {base}.lean.I11TerminalData.{im}\n' for im in sorted(mods))
    header+='''\nset_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
'''
    text=header+f'namespace {space}\nopen B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure\nopen {ns}\n\n'+''.join(sources)
    text+=f'''def intervals : List NatInterval := {ivs(block)}
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact {cons_proof(block,proofs)}

end {space}
'''
    write('Groups/'+name+'.lean',text)
    write('GroupAudits/'+name+'.lean',f'import {own}.Groups.{name}\n\n#check @{space}.intervals\n#print axioms {space}.intervals\n#check @{space}.intervals_sound\n#print axioms {space}.intervals_sound\n')
    groups.append({'group':name,'start':start,'stop_exclusive':start+len(block),'intervals':[[x['lo'],x['hi']] for x in block],
       'namespace':space,'chunks':sorted(mods),'candidate_count':len(block)})
assert [x['candidate_index'] for x in mapping]==list(range(1055))
# Balanced binary composition with both operands explicit and append_assoc normalization.
text=f'import {own}.Generic\n'+''.join(f'import {own}.Groups.{g["group"]}\n' for g in groups)+f'import {base}.lean.I11TerminalMembership.Candidates\n\n'
text+='''set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 32768

'''
text+=f'namespace {ns}\nopen B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure\nopen Math.B699.I11TerminalMembership\n\n'
nodes=[(g['namespace']+'.intervals',g['namespace']+'.intervals_sound',g['start'],g['stop_exclusive']) for g in groups]
node_records=[];idx=0
while len(nodes)>1:
    nextnodes=[]
    for k in range(0,len(nodes),2):
        if k+1==len(nodes):nextnodes.append(nodes[k]);continue
        L,R=nodes[k:k+2];name=f'node{idx:03d}';idx+=1
        text+=f'''private def {name}_intervals : List NatInterval := ({L[0]} ++ {R[0]})
private theorem {name}_sound : IntervalsSound {name}_intervals := by
  simpa only [{name}_intervals, List.append_assoc] using
    (intervals_sound_append (left := {L[0]}) (right := {R[0]}) {L[1]} {R[1]})

'''
        node_records.append({'node':name,'left_interval_def':L[0],'right_interval_def':R[0],'start':L[2],'stop_exclusive':R[3]})
        nextnodes.append((name+'_intervals',name+'_sound',L[2],R[3]))
    nodes=nextnodes
last=nodes[0];assert last[2:]==(0,1055)
text+=f'''def allIntervals : List NatInterval := {last[0]}
theorem allIntervals_sound : IntervalsSound allIntervals := by
  simpa only [allIntervals, List.append_assoc] using {last[1]}

/-- Only two pure lists of Nat pairs are compared here. No witnessCheck is evaluated. -/
set_option maxRecDepth 100000 in
theorem original_candidates_eq : originalCandidates = allIntervals := by
  decide

set_option maxRecDepth 100000 in
theorem candidate_count : allIntervals.length = 1055 := by
  decide

theorem originalCandidates_sound : IntervalsSound originalCandidates := by
  rw [original_candidates_eq]
  exact allIntervals_sound

theorem common_of_original_candidates {{n j : ℕ}}
    (hmem : candidateMem n originalCandidates) (hij : 11 < j) (hjn : j ≤ n / 2) :
    Common n 11 j :=
  common_of_sound_candidates (intervals := originalCandidates) (n := n) (j := j)
    originalCandidates_sound hmem hij hjn

theorem prime_of_original_candidates {{n j : ℕ}}
    (hmem : candidateMem n originalCandidates) (hij : 11 < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.gcd (n.choose 11) (n.choose j) := by
  change Common n 11 j
  exact common_of_original_candidates hmem hij hjn

end {ns}
'''
write('Assembly.lean',text)
write('candidate-index-map.json',json.dumps({'groups':groups,'candidates':mapping,'balanced_nodes':node_records,'indices_exactly':list(range(1055)),
  'canonical_list_length':1055,'all_witness_ids_exactly_once':sorted(i for x in mapping for i in x['witness_ids'])==list(range(4042))},indent=2)+'\n')
print(json.dumps({'groups':len(groups),'balanced_nodes':len(node_records),'candidate_count':len(mapping),
 'group_source_bytes':sum((out/'Groups'/(g['group']+'.lean')).stat().st_size for g in groups),
 'Assembly_bytes':(out/'Assembly.lean').stat().st_size,
 'Assembly_sha256':hashlib.sha256((out/'Assembly.lean').read_bytes()).hexdigest()},indent=2))

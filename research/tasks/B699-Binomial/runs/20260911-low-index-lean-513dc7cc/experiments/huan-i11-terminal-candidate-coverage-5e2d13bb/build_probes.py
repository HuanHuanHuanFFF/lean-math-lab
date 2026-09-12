from pathlib import Path
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-terminal-candidate-coverage-5e2d13bb'
assert not (out/'PROBE_FREEZE.json').exists()
plan=json.loads((out/'coverage-plan.json').read_text());items=plan['items'];cs=plan['candidates']
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb»'
ns='Math.B699.I11TerminalCandidateCoverage'
def write(file,text):
    p=out/file;p.parent.mkdir(parents=True,exist_ok=True);assert not p.exists();p.write_text(text,encoding='utf-8')
generic=f'''import {base}.lean.I11TerminalCover.Append

/-! UNCOMPILED CANDIDATE. Common and quantification over j occur only in Prop.
Every Bool computation used below is the existing pure NatInterval coverCheck.
Concrete consumers must supply real reused witness checks and all interval proofs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace {ns}
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure

def IntervalSound (I : NatInterval) : Prop :=
  ∀ {{n j : ℕ}}, intervalMem n I → 11 < j → j ≤ n / 2 → Common n 11 j

def IntervalsSound (intervals : List NatInterval) : Prop :=
  ∀ I ∈ intervals, IntervalSound I

theorem intervals_sound_nil : IntervalsSound [] := by
  intro I hI
  cases hI

theorem intervals_sound_cons {{I : NatInterval}} {{intervals : List NatInterval}}
    (hI : IntervalSound I) (htail : IntervalsSound intervals) :
    IntervalsSound (I :: intervals) := by
  intro J hJ
  rcases List.mem_cons.mp hJ with rfl | hJ
  · exact hI
  · exact htail J hJ

theorem intervals_sound_append {{left right : List NatInterval}}
    (hl : IntervalsSound left) (hr : IntervalsSound right) :
    IntervalsSound (left ++ right) := by
  intro I hI
  rcases List.mem_append.mp hI with hI | hI
  · exact hl I hI
  · exact hr I hI

theorem interval_sound_of_witness_checks {{witnesses : List Witness}} {{lo hi : ℕ}}
    (hchecks : witnessesCheck witnesses = true)
    (hcover : coverCheck lo hi (witnessIntervals witnesses) = true) :
    IntervalSound (lo, hi) := by
  intro n j hIn hij hjn
  exact common_of_cover_checks (witnesses := witnesses) (lo := lo) (hi := hi)
    (n := n) (j := j) hchecks hcover hIn.1 hIn.2 hij hjn

theorem interval_sound_of_interval_cover {{intervals : List NatInterval}} {{lo hi : ℕ}}
    (hsound : IntervalsSound intervals) (hcover : coverCheck lo hi intervals = true) :
    IntervalSound (lo, hi) := by
  intro n j hIn hij hjn
  obtain ⟨I, hI, hmem⟩ := coverCheck_sound intervals lo hi n hcover hIn.1 hIn.2
  exact hsound I hI hmem hij hjn

theorem intervals_sound_congr {{left right : List NatInterval}}
    (h : left = right) (hl : IntervalsSound left) : IntervalsSound right := by
  rw [← h]
  exact hl

theorem common_of_sound_candidates {{intervals : List NatInterval}} {{n j : ℕ}}
    (hsound : IntervalsSound intervals) (hmem : candidateMem n intervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  obtain ⟨I, hI, hIn⟩ := hmem
  exact hsound I hI hIn hij hjn

end {ns}
'''
write('Generic.lean',generic)
def ivs(ps):return '['+', '.join(f"({p['lo']}, {p['hi']})" for p in ps)+']'
def cons_proof(ps,proofs):
    result='intervals_sound_nil'
    for i in range(len(ps)-1,-1,-1):
        p=ps[i]
        result=f'(intervals_sound_cons (I := ({p["lo"]}, {p["hi"]})) (intervals := {ivs(ps[i+1:])}) {proofs[i]} {result})'
    return result
def witness_body(piece,public='sound'):
    ids=piece['witness_ids'];lo=piece['lo'];hi=piece['hi']
    ws=[items[i]['declaration'] for i in ids]
    assert all(re.fullmatch(r'B699LowIndex\.I11TerminalData\.Chunk\d{3}\.w\d+',w) for w in ws)
    modules=sorted({items[i]['module'] for i in ids})
    allsame=len(modules)==1
    entire=[i for i,it in enumerate(items) if it['module']==modules[0]]
    if allsame and ids==entire:
        wvalue='B699LowIndex.I11TerminalData.'+modules[0]+'.witnesses'
        checks='  exact B699LowIndex.I11TerminalData.'+modules[0]+'.witnesses_check'
        mode='entire_chunk_check'
    else:
        wvalue='['+', '.join(ws)+']'
        checks='  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,\n    '+', '.join(w+'_check' for w in ws)+', Bool.and_self]'
        mode='individual_w_check_reuse'
    intervals='['+', '.join(f'({items[i]["lo"]}, {items[i]["hi"]})' for i in ids)+']'
    text=f'''private def witnesses : List Witness := {wvalue}
private def intervals : List NatInterval := {intervals}

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
{checks}

private theorem cover_check : coverCheck {lo} {hi} intervals = true := by
  decide

theorem {public} : IntervalSound ({lo}, {hi}) := by
  have hc : coverCheck {lo} {hi} (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := {lo}) (hi := {hi}) checks hc
'''
    return text,modules,mode
def header(modules):
    return f'import {own}.Generic\n'+''.join(f'import {base}.lean.I11TerminalData.{m}\n' for m in modules)+'''
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
'''
def opening(namespace):
    return f'namespace {namespace}\nopen B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure\nopen {ns}\n\n'
parts=[]
for i,piece in enumerate(cs[0]['pieces']):
    code,mods,mode=witness_body(piece)
    name=f'P{i:03d}';space=ns+'.FirstParts.'+name
    write('FirstParts/'+name+'.lean',header(mods)+opening(space)+code+f'\nend {space}\n')
    parts.append({'index':i,'file':'FirstParts/'+name+'.lean','namespace':space,'lo':piece['lo'],'hi':piece['hi'],
       'witness_ids':piece['witness_ids'],'check_reuse':mode})
proof=cons_proof(cs[0]['pieces'],[x['namespace']+'.sound' for x in parts])
first=f'import {own}.Generic\n'+''.join(f'import {own}.FirstParts.P{i:03d}\n' for i in range(len(parts)))+'''
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
'''+opening(ns+'.First')+f'''private def intervals : List NatInterval := {ivs(cs[0]['pieces'])}

private theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact {proof}

private theorem cover_check : coverCheck 24 4010 intervals = true := by
  decide

theorem sound : IntervalSound (24, 4010) :=
  interval_sound_of_interval_cover (intervals := intervals) (lo := 24) (hi := 4010)
    intervals_sound cover_check

theorem common {{n j : ℕ}} (hIn : intervalMem n (24, 4010))
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  sound hIn hij hjn

end {ns}.First
'''
write('First.lean',first)
lastpiece=cs[-1]['pieces'][0]
code,mods,mode=witness_body(lastpiece)
last=header(mods)+opening(ns+'.Last')+code+f'''
theorem common {{n j : ℕ}} (hIn : intervalMem n ({cs[-1]["lo"]}, {cs[-1]["hi"]}))
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  sound hIn hij hjn

end {ns}.Last
'''
write('Last.lean',last)
for name,imports,roots in [
 ('GenericAudit',['Generic'],[ns+'.'+n for n in re.findall(r'^(?:def|theorem) (\w+)',generic,re.M)]),
 ('FirstPieceAudit',['FirstParts.P000'],[ns+'.FirstParts.P000.sound']),
 ('FirstAudit',['First'],[ns+'.First.sound',ns+'.First.common']),
 ('LastAudit',['Last'],[ns+'.Last.sound',ns+'.Last.common'])]:
    write(name+'.lean',''.join('import '+own+'.'+m+'\n' for m in imports)+'\n'+
       '\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
probe={'status':'complete proof-text probes, uncompiled','first_index':0,'first_interval':[24,4010],'first_witnesses':911,
 'first_parts':parts,'first_public_roots':[ns+'.First.sound',ns+'.First.common'],
 'last_index':1054,'last_interval':[cs[-1]['lo'],cs[-1]['hi']],'last_witness':items[4041],
 'generic_proof_has_Common_only_in_Prop':True,'all_decide_goals':'coverCheck on explicit List NatInterval only',
 'witness_checks':'existing Chunk.witnesses_check or existing individual wN_check, never recomputed',
 'earliest_small_compile':'GenericAudit, FirstPieceAudit (only already checked Chunk000), LastAudit',
 'new_Lean_invocations':0,'new_B_original_results':0}
write('PROBES.json',json.dumps(probe,indent=2)+'\n')
freeze={'status':'PROBE_TEXT_FROZEN_UNCOMPILED','files':{str(p.relative_to(out)).replace('\\','/'):{'sha256':sha(p),'bytes':p.stat().st_size}
 for p in sorted(out.rglob('*.lean'))},'new_Lean_invocations':0}
write('PROBE_FREEZE.json',json.dumps(freeze,indent=2)+'\n')
print(json.dumps({'Generic':sha(out/'Generic.lean'),'First':sha(out/'First.lean'),'Last':sha(out/'Last.lean'),
 'FirstPiece000':sha(out/'FirstParts/P000.lean'),'PROBE_FREEZE':sha(out/'PROBE_FREEZE.json'),
 'probe_Lean_files':len(freeze['files']),'first_parts':len(parts)},indent=2))

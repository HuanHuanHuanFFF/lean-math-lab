from pathlib import Path
import json,re,hashlib
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
OWN=PKG+'.experiments.«huan-i11-terminal-final-bridge-5e2d13bb»'
PREV=PKG+'.experiments.«huan-i11-terminal-crt-grid-5e2d13bb»'
texts={}
texts['Extended']=r'''import @PKG@.lean.I11TerminalCover.Cover

/-! UNCOMPILED. Numerical membership padding below the smallest legal i11 n.
The fixed head adds no witness constructor and no original legal n,j. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open B699LargePrimeStructure B699LowIndex B699LowIndex.I11TerminalCover

def extendedCandidates (cs : List NatInterval) : List NatInterval := (0, 23) :: cs

theorem legal_n_ge24 {n j : ℕ} (hij : 11 < j) (hjn : j ≤ n / 2) : 24 ≤ n := by
  omega

theorem candidateMem_extended {n : ℕ} {cs : List NatInterval}
    (hmember : candidateMem n cs) : candidateMem n (extendedCandidates cs) := by
  obtain ⟨I, hI, hIn⟩ := hmember
  exact ⟨I, List.mem_cons_of_mem (0, 23) hI, hIn⟩

theorem candidateMem_of_extended_ge24 {n : ℕ} {cs : List NatInterval}
    (hmember : candidateMem n (extendedCandidates cs)) (hn : 24 ≤ n) :
    candidateMem n cs := by
  obtain ⟨I, hI, hIn⟩ := hmember
  change I ∈ (0, 23) :: cs at hI
  rcases List.mem_cons.mp hI with rfl | htail
  · have hn23 : n ≤ 23 := hIn.2
    omega
  · exact ⟨I, htail, hIn⟩

theorem candidateMem_of_extended_legal {n j : ℕ} {cs : List NatInterval}
    (hmember : candidateMem n (extendedCandidates cs))
    (hij : 11 < j) (hjn : j ≤ n / 2) : candidateMem n cs :=
  candidateMem_of_extended_ge24 hmember (legal_n_ge24 hij hjn)

/-- The explicit small-n cover may still be checked on the original cs.
The auxiliary head lies strictly before the target interval beginning at24. -/
theorem smallCoverCheck_extended (M : ℕ) (cs : List NatInterval) :
    coverCheck 24 (max M 109) (extendedCandidates cs) = coverCheck 24 (max M 109) cs := by
  have hmax : 109 ≤ max M 109 := Nat.le_max_right M 109
  have hnot : ¬ max M 109 < 24 := by omega
  simp only [extendedCandidates, coverCheck, if_neg hnot,
    if_pos (by decide : (23 : ℕ) < 24)]

end Math.B699.I11TerminalCRT
'''
checks='\n'.join(f'    (check{p}{q} : pairGridCoverCheck {p} {q} H M data.grid{p}{q} (extendedCandidates cs) = true)' for p,q in [(2,3),(2,5),(2,7),(3,5),(3,7),(5,7)])
texts['Final']=r'''import @OWN@.Extended
import @PREV@.Actual

/-! UNCOMPILED. Complete terminal consumer with low-domain padding only in
numeric membership checks. All terminal witness checks remain on original cs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.I11CRTSixPair
open B699LargePrimeStructure B699LowIndex B699LowIndex.I11TerminalCover

theorem actual_i11_terminal_membership (data : SixPairGrids)
    {n j H M : ℕ} {cs : List NatInterval}
    (hconstants : stageConstantsCheck H M = true)
@CHECKS@
    (hsmall : coverCheck 24 (max M 109) (extendedCandidates cs) = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) (hnH : n < H) :
    candidateMem n cs := by
  have hmember := Math.B699.I11TerminalCRT.actual_i11_candidateMem data hconstants
    check23 check25 check27 check35 check37 check57 hsmall hij hjn hno hnH
  exact candidateMem_of_extended_legal hmember hij hjn

/-- No candidate membership is a premise. The old witness checker is not asked
to certify the artificial0..23 padding. -/
theorem terminal_common_of_extended_checks (data : SixPairGrids)
    {n j H M : ℕ} {cs : List NatInterval} {witnesses : List Witness}
    (hconstants : stageConstantsCheck H M = true)
@CHECKS@
    (hsmall : coverCheck 24 (max M 109) (extendedCandidates cs) = true)
    (hwitness : candidateIntervalsCheck cs witnesses = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hnH : n < H) : Common n 11 j := by
  classical
  by_contra hno
  have hmember := actual_i11_terminal_membership data hconstants
    check23 check25 check27 check35 check37 check57 hsmall hij hjn hno hnH
  exact hno (candidateIntervalsCheck_sound hwitness hmember hij hjn)

/-- Equivalent consumer when the small cover is supplied on the old cs. -/
theorem terminal_common_of_original_small_cover (data : SixPairGrids)
    {n j H M : ℕ} {cs : List NatInterval} {witnesses : List Witness}
    (hconstants : stageConstantsCheck H M = true)
@CHECKS@
    (hsmall : coverCheck 24 (max M 109) cs = true)
    (hwitness : candidateIntervalsCheck cs witnesses = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hnH : n < H) : Common n 11 j := by
  have hs : coverCheck 24 (max M 109) (extendedCandidates cs) = true :=
    Eq.trans (smallCoverCheck_extended M cs) hsmall
  exact terminal_common_of_extended_checks data hconstants
    check23 check25 check27 check35 check37 check57 hs hwitness hij hjn hnH

end Math.B699.I11TerminalCRT
'''.replace('@CHECKS@',checks)
texts['Examples']=r'''import @OWN@.Extended
import @PKG@.lean.I11TerminalCrt.RowCell

/-! UNCOMPILED. Tiny exact parameter-interval diagnostics. No primality,
choose, full CRT grid, or original-problem calculation is performed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open B699LowIndex B699LowIndex.I11TerminalCover

def exampleOldCandidates : List NatInterval := [(24, 33)]

theorem parameter_interval_low : parameterInterval 2 3 2 (-1) 0 = (3, 12) := by decide

theorem old_low_cover_fails : coverCheck 3 12 exampleOldCandidates = false := by decide

theorem extended_low_cover (cs : List NatInterval) :
    coverCheck 3 12 (extendedCandidates cs) = true := by rfl

/-- Every old list with lower endpoints>=24 has the same obstruction. -/
theorem low_cover_impossible {cs : List NatInterval}
    (hlower : ∀ I, I ∈ cs → 24 ≤ I.1) : coverCheck 3 12 cs ≠ true := by
  intro hcheck
  obtain ⟨I, hI, hIn⟩ := coverCheck_sound cs 3 12 3 hcheck (by decide) (by decide)
  have h24 := hlower I hI
  have h3 := hIn.1
  omega

/-- A second small case crosses23/24, so head and old tail must join. -/
theorem parameter_interval_crossing : parameterInterval 2 3 2 (-7) 2 = (21, 24) := by decide

theorem extended_crossing_cover :
    coverCheck 21 24 (extendedCandidates exampleOldCandidates) = true := by decide

theorem first_legal_n_stays_old : candidateMem 24 exampleOldCandidates := by
  refine ⟨(24, 33), by simp [exampleOldCandidates], ?_⟩
  exact ⟨by decide, by decide⟩

end Math.B699.I11TerminalCRT
'''
roots=[];modules=[]
for name,text in texts.items():
 for x,y in [('@PKG@',PKG),('@OWN@',OWN),('@PREV@',PREV)]:text=text.replace(x,y)
 assert not re.search(r'@[A-Z_]+@',text)
 p=OUT/(name+'.lean');p.write_text(text,encoding='utf-8',newline='\n')
 names=['Math.B699.I11TerminalCRT.'+n for n in re.findall(r'^(?:def|theorem)\s+(\w+)',text,re.M)]
 (OUT/(name+'Audit.lean')).write_text('import '+OWN+'.'+name+'\n\n'+'\n'.join('#check '+n+'\n#print axioms '+n for n in names)+'\n',encoding='utf-8',newline='\n')
 modules.append({'name':name,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'roots':names});roots+=names
(OUT/'Audit.lean').write_text('import '+OWN+'.Final\nimport '+OWN+'.Examples\n\n'+'\n'.join('#check '+n+'\n#print axioms '+n for n in roots)+'\n',encoding='utf-8',newline='\n')
previous=RUN/'experiments/huan-i11-terminal-crt-grid-5e2d13bb/Actual.lean'
assert 'theorem actual_i11_candidateMem' in previous.read_text()
(OUT/'AUDIT_PLAN.json').write_text(json.dumps({'status':'UNCOMPILED_COMPLETE_TEXT','modules':modules,'roots':roots,'root_count':len(roots),'actual_previous_entry':'Math.B699.I11TerminalCRT.actual_i11_candidateMem','previous_source':str(previous),'previous_sha256':hashlib.sha256(previous.read_bytes()).hexdigest(),'previous_grid_package_acceptance_not_assumed':True,'Lean_runs':0,'new_B_original_results':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print('Generated Extended/Final/Examples with',len(roots),'typed/axiom roots; original cs alone carries witness checks.')

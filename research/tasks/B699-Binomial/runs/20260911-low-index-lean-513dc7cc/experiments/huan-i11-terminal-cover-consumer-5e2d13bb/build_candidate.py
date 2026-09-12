from pathlib import Path
import re,json,hashlib
OUT=Path(__file__).resolve().parent
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
OLD='research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63»'
OWN=PKG+'.experiments.«huan-i11-terminal-cover-consumer-5e2d13bb»'
texts={}
texts['Witness']=r'''import @OLD@.lean.LargeDivisorWitness
import @OLD@.lean.IntervalCover
import @PKG@.lean.I11Terminal.Special330

/-! UNCOMPILED. Finite terminal witness data for fixed i11,r3,s7.
The only special constructor is n=330, with no parameter or proof field. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11TerminalCover
open B699LargePrimeStructure

inductive Witness where
  | good (segment : GoodSegment)
  | special330
  deriving DecidableEq, Repr

def witnessBounds : Witness → NatInterval
  | .good segment => goodSegmentBounds segment
  | .special330 => (330, 330)

def witnessCheck : Witness → Bool
  | .good segment => goodSegmentCheck 11 3 7 segment
  | .special330 => true

/-- Every original legal j is handled. The prime threshold remains inclusive. -/
theorem witnessCheck_sound {w : Witness} (hcheck : witnessCheck w = true)
    {n j : ℕ} (hIn : intervalMem n (witnessBounds w))
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  cases w with
  | good segment =>
      have hc : goodSegmentCheck 11 3 7 segment = true := by
        simpa only [witnessCheck] using hcheck
      have hn : segment.lower ≤ n ∧ n ≤ segment.upper := by
        simpa only [witnessBounds, goodSegmentBounds, intervalMem] using hIn
      exact goodSegmentCheck_sound (i := 11) (r := 3) (s := 7)
        (g := segment) (by decide) (by decide) hc hn.1 hn.2 hij hjn
  | special330 =>
      have hn : n = 330 := by
        have hb : 330 ≤ n ∧ n ≤ 330 := by
          simpa only [witnessBounds, intervalMem] using hIn
        omega
      subst n
      exact B699LowIndex.I11Terminal330.common_330 j hij hjn

end B699LowIndex.I11TerminalCover
'''
texts['Cover']=r'''import @OWN@.Witness

/-! UNCOMPILED. Finite witness checks plus the existing interval checker.
Neither Bool definition contains Common or a universally quantified j. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11TerminalCover
open B699LargePrimeStructure

def witnessIntervals (witnesses : List Witness) : List NatInterval :=
  witnesses.map witnessBounds

def witnessesCheck (witnesses : List Witness) : Bool := witnesses.all witnessCheck

def witnessCoverCheck (lo hi : ℕ) (witnesses : List Witness) : Bool :=
  witnessesCheck witnesses && coverCheck lo hi (witnessIntervals witnesses)

def candidateIntervalsCheck (candidate_intervals : List NatInterval) (witnesses : List Witness) : Bool :=
  witnessesCheck witnesses &&
    candidate_intervals.all (fun I => coverCheck I.1 I.2 (witnessIntervals witnesses))

def candidateMem (n : ℕ) (candidate_intervals : List NatInterval) : Prop :=
  ∃ I ∈ candidate_intervals, intervalMem n I

theorem checked_witnesses_cover {witnesses : List Witness}
    (hchecks : witnessesCheck witnesses = true) {n j : ℕ}
    {I : NatInterval} (hI : I ∈ witnessIntervals witnesses) (hIn : intervalMem n I)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  unfold witnessIntervals at hI
  obtain ⟨w, hw, heq⟩ := List.mem_map.mp hI
  rw [← heq] at hIn
  unfold witnessesCheck at hchecks
  have hc := List.all_eq_true.mp hchecks w hw
  exact witnessCheck_sound hc hIn hij hjn

theorem common_of_cover_checks {witnesses : List Witness} {lo hi n j : ℕ}
    (hchecks : witnessesCheck witnesses = true)
    (hcover : coverCheck lo hi (witnessIntervals witnesses) = true)
    (hlo : lo ≤ n) (hhi : n ≤ hi) (hij : 11 < j) (hjn : j ≤ n / 2) :
    Common n 11 j := by
  obtain ⟨I, hI, hIn⟩ := coverCheck_sound (witnessIntervals witnesses)
    lo hi n hcover hlo hhi
  exact checked_witnesses_cover hchecks hI hIn hij hjn

theorem witnessCoverCheck_sound {witnesses : List Witness} {lo hi n j : ℕ}
    (hcheck : witnessCoverCheck lo hi witnesses = true)
    (hlo : lo ≤ n) (hhi : n ≤ hi) (hij : 11 < j) (hjn : j ≤ n / 2) :
    Common n 11 j := by
  unfold witnessCoverCheck at hcheck
  obtain ⟨hchecks, hcover⟩ := Bool.and_eq_true_iff.mp hcheck
  exact common_of_cover_checks hchecks hcover hlo hhi hij hjn

theorem candidateIntervalsCheck_member {candidate_intervals : List NatInterval}
    {witnesses : List Witness} {I : NatInterval} {n j : ℕ}
    (hcheck : candidateIntervalsCheck candidate_intervals witnesses = true)
    (hI : I ∈ candidate_intervals) (hIn : intervalMem n I)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  unfold candidateIntervalsCheck at hcheck
  obtain ⟨hchecks, hcandidates⟩ := Bool.and_eq_true_iff.mp hcheck
  have hcover := List.all_eq_true.mp hcandidates I hI
  exact common_of_cover_checks hchecks hcover hIn.1 hIn.2 hij hjn

theorem candidateIntervalsCheck_sound {candidate_intervals : List NatInterval}
    {witnesses : List Witness} {n j : ℕ}
    (hcheck : candidateIntervalsCheck candidate_intervals witnesses = true)
    (hmember : candidateMem n candidate_intervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  obtain ⟨I, hI, hIn⟩ := hmember
  exact candidateIntervalsCheck_member hcheck hI hIn hij hjn

/-- Explicit original conclusion, including p=11 when it is the witness. -/
theorem candidateIntervalsCheck_prime {candidate_intervals : List NatInterval}
    {witnesses : List Witness} {n j : ℕ}
    (hcheck : candidateIntervalsCheck candidate_intervals witnesses = true)
    (hmember : candidateMem n candidate_intervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.gcd (n.choose 11) (n.choose j) := by
  change Common n 11 j
  exact candidateIntervalsCheck_sound hcheck hmember hij hjn

end B699LowIndex.I11TerminalCover
'''
texts['Examples']=r'''import @OWN@.Cover
import @PKG@.lean.I11Terminal.WitnessPilot

/-! UNCOMPILED. Two minimal closed examples and their disjoint-union example.
The ordinary prime check is reused; only tiny interval arithmetic is computed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11TerminalCover
open B699LargePrimeStructure

def ordinaryWitnesses : List Witness :=
  [.good B699LowIndex.TerminalWitnessPilot.top_24_33_23]

theorem ordinary_witnesses_check : witnessesCheck ordinaryWitnesses = true := by
  simpa only [witnessesCheck, ordinaryWitnesses, List.all_cons, List.all_nil,
    Bool.and_true, witnessCheck] using
    B699LowIndex.TerminalWitnessPilot.top_24_33_23_check

theorem ordinary_interval_check :
    coverCheck 24 33 (witnessIntervals ordinaryWitnesses) = true := by decide

theorem ordinary_24_33_check : witnessCoverCheck 24 33 ordinaryWitnesses = true := by
  exact Bool.and_eq_true_iff.mpr ⟨ordinary_witnesses_check, ordinary_interval_check⟩

theorem ordinary_24_33_common {n j : ℕ} (hlo : 24 ≤ n) (hhi : n ≤ 33)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  witnessCoverCheck_sound ordinary_24_33_check hlo hhi hij hjn

def specialWitnesses : List Witness := [.special330]

theorem special_witnesses_check : witnessesCheck specialWitnesses = true := by rfl

theorem special_interval_check :
    coverCheck 330 330 (witnessIntervals specialWitnesses) = true := by decide

theorem special_330_check : witnessCoverCheck 330 330 specialWitnesses = true := by
  exact Bool.and_eq_true_iff.mpr ⟨special_witnesses_check, special_interval_check⟩

theorem special_330_common {n j : ℕ} (hlo : 330 ≤ n) (hhi : n ≤ 330)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  witnessCoverCheck_sound special_330_check hlo hhi hij hjn

def exampleWitnesses : List Witness :=
  [.good B699LowIndex.TerminalWitnessPilot.top_24_33_23, .special330]

def exampleCandidateIntervals : List NatInterval := [(24, 33), (330, 330)]

theorem example_witnesses_check : witnessesCheck exampleWitnesses = true := by
  simpa only [witnessesCheck, exampleWitnesses, List.all_cons, List.all_nil,
    Bool.and_true, witnessCheck] using
    B699LowIndex.TerminalWitnessPilot.top_24_33_23_check

theorem example_candidate_cover_check :
    exampleCandidateIntervals.all
      (fun I => coverCheck I.1 I.2 (witnessIntervals exampleWitnesses)) = true := by decide

theorem example_candidates_check :
    candidateIntervalsCheck exampleCandidateIntervals exampleWitnesses = true := by
  exact Bool.and_eq_true_iff.mpr ⟨example_witnesses_check, example_candidate_cover_check⟩

theorem example_candidates_common {n j : ℕ}
    (hmember : candidateMem n exampleCandidateIntervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  candidateIntervalsCheck_sound example_candidates_check hmember hij hjn

end B699LowIndex.I11TerminalCover
'''
roots=[];modules=[]
for name,source in texts.items():
 for x,y in [('@PKG@',PKG),('@OLD@',OLD),('@OWN@',OWN)]:source=source.replace(x,y)
 assert not re.search(r'@[A-Z_]+@',source)
 p=OUT/(name+'.lean');p.write_text(source,encoding='utf-8',newline='\n')
 names=['B699LowIndex.I11TerminalCover.'+x for x in re.findall(r'^(?:def|theorem|inductive)\s+(\w+)',source,re.M)]
 audit='import '+OWN+'.'+name+'\n\n'+'\n'.join('#check '+n+'\n#print axioms '+n for n in names)+'\n'
 (OUT/(name+'Audit.lean')).write_text(audit,encoding='utf-8',newline='\n')
 modules.append({'name':name,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'public_roots':names});roots+=names
(OUT/'Audit.lean').write_text('import '+OWN+'.Examples\n\n'+'\n'.join('#check '+n+'\n#print axioms '+n for n in roots)+'\n',encoding='utf-8',newline='\n')
(OUT/'AUDIT_PLAN.json').write_text(json.dumps({'status':'UNCOMPILED_COMPLETE_TEXT','modules':modules,'roots':roots,'root_count':len(roots),'allowed_axioms':['propext','Classical.choice','Quot.sound'],'Lean_runs':0,'new_B_original_results':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print('Generated three layers,',len(roots),'typed/axiom audit roots; no Lean.')

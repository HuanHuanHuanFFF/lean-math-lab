import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append

/-! UNCOMPILED CANDIDATE. Common and quantification over j occur only in Prop.
Every Bool computation used below is the existing pure NatInterval coverCheck.
Concrete consumers must supply real reused witness checks and all interval proofs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCandidateCoverage
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure

def IntervalSound (I : NatInterval) : Prop :=
  ∀ {n j : ℕ}, intervalMem n I → 11 < j → j ≤ n / 2 → Common n 11 j

def IntervalsSound (intervals : List NatInterval) : Prop :=
  ∀ I ∈ intervals, IntervalSound I

theorem intervals_sound_nil : IntervalsSound [] := by
  intro I hI
  cases hI

theorem intervals_sound_cons {I : NatInterval} {intervals : List NatInterval}
    (hI : IntervalSound I) (htail : IntervalsSound intervals) :
    IntervalsSound (I :: intervals) := by
  intro J hJ
  rcases List.mem_cons.mp hJ with rfl | hJ
  · exact hI
  · exact htail J hJ

theorem intervals_sound_append {left right : List NatInterval}
    (hl : IntervalsSound left) (hr : IntervalsSound right) :
    IntervalsSound (left ++ right) := by
  intro I hI
  rcases List.mem_append.mp hI with hI | hI
  · exact hl I hI
  · exact hr I hI

theorem interval_sound_of_witness_checks {witnesses : List Witness} {lo hi : ℕ}
    (hchecks : witnessesCheck witnesses = true)
    (hcover : coverCheck lo hi (witnessIntervals witnesses) = true) :
    IntervalSound (lo, hi) := by
  intro n j hIn hij hjn
  exact common_of_cover_checks (witnesses := witnesses) (lo := lo) (hi := hi)
    (n := n) (j := j) hchecks hcover hIn.1 hIn.2 hij hjn

theorem interval_sound_of_interval_cover {intervals : List NatInterval} {lo hi : ℕ}
    (hsound : IntervalsSound intervals) (hcover : coverCheck lo hi intervals = true) :
    IntervalSound (lo, hi) := by
  intro n j hIn hij hjn
  obtain ⟨I, hI, hmem⟩ := coverCheck_sound intervals lo hi n hcover hIn.1 hIn.2
  exact hsound I hI hmem hij hjn

theorem intervals_sound_congr {left right : List NatInterval}
    (h : left = right) (hl : IntervalsSound left) : IntervalsSound right := by
  rw [← h]
  exact hl

theorem common_of_sound_candidates {intervals : List NatInterval} {n j : ℕ}
    (hsound : IntervalsSound intervals) (hmem : candidateMem n intervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  obtain ⟨I, hI, hIn⟩ := hmem
  exact hsound I hI hIn hij hjn

end Math.B699.I11TerminalCandidateCoverage

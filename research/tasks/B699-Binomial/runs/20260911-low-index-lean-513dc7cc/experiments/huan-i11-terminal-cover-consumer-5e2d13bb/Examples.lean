import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-cover-consumer-5e2d13bb».Cover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Terminal.WitnessPilot

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

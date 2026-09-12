import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11OriginalFinal.Membership
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialHeight.Compression
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CRTConsumers.AllStages
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Assembly

/-! UNCOMPILED CANDIDATE. The i=11 original statement, for every legal n,j.
All fixed heights, CRT tables, padding removal and candidate witness coverage
are supplied internally. No new original-index acceptance is claimed here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11OriginalFinal
open B699LargePrimeStructure

theorem common_i11 {n j : ℕ} (hij : 11 < j) (hjn : j ≤ n / 2) :
    Common n 11 j := by
  classical
  by_contra hno
  have hn109 := Math.B699.I11InitialHeight.actual_i11_below_109 hij hjn hno
  have hn04 := Math.B699.I11CRTConsumers.AllStages.initial_to_stage04
    hij hjn hno hn109
  have hmember := candidate_mem_of_stage04 hij hjn hno hn04
  exact hno (Math.B699.I11TerminalCandidateCoverage.common_of_original_candidates
    hmember hij hjn)

/-- The inclusive prime/gcd form of the original i=11 statement. -/
theorem original_i11_gcd :
    ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.gcd (Nat.choose n 11) (Nat.choose n j) := by
  intro n j h
  exact common_i11 h.2.1 h.2.2

/-- Same explicit two-divisibility interface as the accepted HuanAllA entries. -/
theorem original_i11 :
    ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ := common_i11 h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end Math.B699.I11OriginalFinal

#print axioms Math.B699.I11OriginalFinal.common_i11
#print axioms Math.B699.I11OriginalFinal.original_i11_gcd
#print axioms Math.B699.I11OriginalFinal.original_i11

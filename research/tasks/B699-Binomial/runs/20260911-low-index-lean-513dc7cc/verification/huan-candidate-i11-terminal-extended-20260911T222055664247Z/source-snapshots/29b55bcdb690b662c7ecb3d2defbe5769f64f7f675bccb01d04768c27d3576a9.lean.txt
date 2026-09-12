import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Cover

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

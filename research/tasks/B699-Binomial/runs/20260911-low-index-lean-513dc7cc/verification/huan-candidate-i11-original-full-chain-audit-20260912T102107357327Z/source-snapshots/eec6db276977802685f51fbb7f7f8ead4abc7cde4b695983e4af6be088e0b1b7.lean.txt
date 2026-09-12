import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11OriginalFinal.Final


open B699LargePrimeStructure B699LowIndex B699LowIndex.I11TerminalCover
open B699LowIndex.I11CrtStageMetadata
open Math.B699.I11CRTSixPair Math.B699.I11TerminalCRT
open Math.B699.I11TerminalMembership Math.B699.I11OriginalFinal

#check (stage04Data : SixPairGrids)
#check (candidate_list_eq : candidates = extendedCandidates originalCandidates)
#check (stage04_constants : stageConstantsCheck Stage04.H Stage04.M = true)
#check (stage04_small_cover :
  coverCheck 24 (max Stage04.M 109) (extendedCandidates originalCandidates) = true)
#check (@candidate_mem_of_stage04 : ∀ n j : ℕ,
  11 < j → j ≤ n / 2 → ¬ Common n 11 j → n < Stage04.H →
  candidateMem n originalCandidates)

#print axioms Math.B699.I11OriginalFinal.stage04Data
#print axioms Math.B699.I11OriginalFinal.candidate_list_eq
#print axioms Math.B699.I11OriginalFinal.stage04_constants
#print axioms Math.B699.I11OriginalFinal.stage04_small_cover
#print axioms Math.B699.I11OriginalFinal.candidate_mem_of_stage04


open B699LargePrimeStructure Math.B699.I11OriginalFinal

#check (@common_i11 : ∀ n j : ℕ, 11 < j → j ≤ n / 2 → Common n 11 j)
#check (original_i11_gcd : ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.gcd (Nat.choose n 11) (Nat.choose n j))
#check (original_i11 : ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j)

#print axioms Math.B699.I11OriginalFinal.common_i11
#print axioms Math.B699.I11OriginalFinal.original_i11_gcd
#print axioms Math.B699.I11OriginalFinal.original_i11

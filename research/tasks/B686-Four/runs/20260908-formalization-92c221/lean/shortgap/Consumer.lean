import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.shortgap.BoundedCertificate
import research.tasks.«B686-Four».runs.«20260908-lcm-distance-7cab35e».uniform.Consumer

/-! A complete short-gap consumer using the adopted all-length distance bound.
No external consecutive-product or deleted-square theorem is required. -/
namespace B686ShortGapConsumer
open Finset B686Round3SmallGap

theorem length_le_seventy_of_short_gap (k n h : ℕ) (hk : 2 ≤ k) (hh : h ≤ 7)
    (heq : product k (n+k+h) = 4 * product k n) : k ≤ 70 := by
  have hd := B686UniformRound9.Consumer.original_statement_sixty_four k n (n+k+h)
    hk (by omega) heq
  have hdist : k^2 < 64 * (k+h) := by
    simpa only [show n+k+h-n=k+h by omega] using hd
  by_contra hnot
  have hk71 : 71 ≤ k := by omega
  have hsquare := Nat.mul_le_mul_right k hk71
  nlinarith

theorem no_gap_le_seven (k n h : ℕ) (hk : 2 ≤ k) (hh : h ≤ 7) :
    (∏ i ∈ Icc 1 k, (n+k+h+i)) ≠ 4 * ∏ i ∈ Icc 1 k, (n+i) := by
  intro heq
  exact B686ShortGapCertificate.no_small_gap_k_le70 k h n hk
    (length_le_seventy_of_short_gap k n h hk hh heq) hh heq

/-- The adopted necessary condition, with every original quantifier and
all project dependencies now discharged. -/
theorem original_gap_ge_eight (k n m : ℕ) (hk : 2 ≤ k) (hsep : n+k ≤ m)
    (heq : (∏ i ∈ Icc 1 k, (m+i)) = 4 * ∏ i ∈ Icc 1 k, (n+i)) :
    n+k+8 ≤ m := by
  by_contra hnot
  let h := m-(n+k)
  have hh : h ≤ 7 := by dsimp [h]; omega
  have hm : m=n+k+h := by dsimp [h]; omega
  apply no_gap_le_seven k n h hk hh
  simpa only [hm] using heq

/-- info: 'B686ShortGapConsumer.length_le_seventy_of_short_gap' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms length_le_seventy_of_short_gap
/-- info: 'B686ShortGapConsumer.no_gap_le_seven' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_gap_le_seven
/-- info: 'B686ShortGapConsumer.original_gap_ge_eight' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_gap_ge_eight
end B686ShortGapConsumer

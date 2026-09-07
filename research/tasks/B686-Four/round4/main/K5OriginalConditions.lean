import research.tasks.«B686-Four».independent.TargetBridge
import research.tasks.«B686-Four».round4.worker.K5PrimeSupport
import research.tasks.«B686-Four».round4.worker.K5CubicClasses
import research.tasks.«B686-Four».round4.main.UniversalSquare

/-! Consolidated necessary conditions on the original rational equation.
The statement fixes k=5. It neither asserts existence nor excludes every
displacement with three or more distinct prime divisors. -/

namespace B686Round4Original

theorem solution_displacement_ge (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    3000 ≤ m - n := by
  by_contra hnot
  have hshift : n + (m - n) = m := by omega
  have h := B686Round4K5Finite.not_four_loss_finite n (m - n)
    (by omega) (by omega)
  apply h
  simpa only [hshift, B686Target.product] using heq

theorem necessary_conditions (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : (4 : ℚ) = (B686Target.product 5 m : ℚ) /
      (B686Target.product 5 n : ℚ)) :
    3000 ≤ m - n ∧
    3 ≤ (m - n).primeFactors.card ∧
    ¬ Nat.Coprime (m - n) (3 * (n + 2) * (n + 4)) ∧
    ¬ Nat.Coprime (m - n) (3 * (n + 1) * (n + 5)) ∧
    (m - n : ℤ) ^ 2 ∣ B686Round4Universal.errors 5 n (m - n) := by
  have hp := (B686Target.ratio_iff 5 n m).mp heq
  have hp' : (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) =
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := hp
  have hg := B686Round4K5.solution_requires_common_factors n m hm hp'
  refine ⟨solution_displacement_ge n m hm hp,
    B686Round4K5.solution_requires_three_distinct_primes n m hm hp',
    hg.1, hg.2, ?_⟩
  have h := B686Round4Universal.universal_square_original 5 n m
    (by decide) (by omega) hp'
  simpa only [Int.ofNat_sub (show n ≤ m by omega)] using h

/-- info: 'B686Round4Original.solution_displacement_ge' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_displacement_ge
/-- info: 'B686Round4Original.necessary_conditions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms necessary_conditions

end B686Round4Original

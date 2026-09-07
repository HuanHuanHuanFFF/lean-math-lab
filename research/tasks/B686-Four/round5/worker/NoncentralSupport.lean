import research.tasks.«B686-Four».round5.main.PositionPartition
import research.tasks.«B686-Four».round5.worker.FourPosition1245

/-! Eliminate the noncentral support class without choosing factor groups.
Consequently, any original k=5 solution with gcd(d,6)=1 must have a common
factor between d and the central term n+3. Full k=5 remains unresolved. -/
namespace B686Round5WorkerSupport
open B686Round4Shift B686Round5Partition B686Round5FourPositions

theorem not_four_noncentral_support (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 1) * (n + 2) * (n + 4) * (n + 5)) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  obtain ⟨P,Q,R,S,hd,hP,hQ,hR,hS,hPQ,hPR,hPS,hQR,hQS,hRS⟩ :=
    split_four_positions n (m - n) h6 hdiv
  exact not_four_four_positions_ratio n m P Q R S hm hd hP hQ hR hS
    hPQ hPR hPS hQR hQS hRS h6

theorem solution_requires_center_factor (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (heq : (4 : ℚ) = (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ)) :
    ¬ Nat.Coprime (m - n) (n + 3) := by
  intro hc
  have heqN := (B686Target.ratio_iff 5 n m).mp heq
  have hadd : n + (m - n) = m := by omega
  have heqS : natProduct 5 (n + (m - n)) = 4 * natProduct 5 n := by
    simpa only [hadd, natProduct, B686Target.product] using heqN
  have heqZ := nat_shift_equation 5 n (m - n) heqS
  have hshift := shift_divides 5 n (m - n : ℕ) heqZ
  have hc3 : IsCoprime ((m - n : ℕ) : ℤ) 3 :=
    h6.isCoprime.of_isCoprime_of_dvd_right (by norm_num)
  have hcn : IsCoprime ((m - n : ℕ) : ℤ) ((n : ℤ) + 3) := by
    simpa only [Nat.cast_add, Nat.cast_ofNat] using hc.isCoprime
  have hsplit : 3 * product 5 (n : ℤ) =
      (3 * ((n : ℤ) + 3)) * (((n : ℤ) + 1) * (n + 2) * (n + 4) * (n + 5)) := by
    rw [B686Round4Cubic.product_five]
    ring
  rw [hsplit] at hshift
  have hdivZ := (hc3.mul_right hcn).dvd_of_dvd_mul_left hshift
  have hdiv : m - n ∣ (n + 1) * (n + 2) * (n + 4) * (n + 5) := by
    exact_mod_cast hdivZ
  exact not_four_noncentral_support n m hm h6 hdiv heq

/-- info: 'B686Round5WorkerSupport.not_four_noncentral_support' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_noncentral_support
/-- info: 'B686Round5WorkerSupport.solution_requires_center_factor' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_requires_center_factor
end B686Round5WorkerSupport

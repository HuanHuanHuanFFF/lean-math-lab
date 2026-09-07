import research.tasks.«B686-Four».round5.main.PositionPartition
import research.tasks.«B686-Four».round5.worker.FourPosition1245

namespace B686Round5Support
open B686Round4Shift B686Round4Cubic B686Round5Partition B686Round5FourPositions

theorem not_four_noncentral_support (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 1) * (n + 2) * (n + 4) * (n + 5)) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  obtain ⟨P, Q, R, S, hd, hP, hQ, hR, hS, hPQ, hPR, hPS, hQR, hQS, hRS⟩ :=
    split_four_positions n (m - n) h6 hdiv
  exact not_four_four_positions n m P Q R S hm hd hP hQ hR hS hPQ hPR hPS hQR hQS hRS h6

theorem not_four_noncentral_support_ratio (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 1) * (n + 2) * (n + 4) * (n + 5)) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro h
  exact not_four_noncentral_support n m hm h6 hdiv ((B686Target.ratio_iff 5 n m).mp h)

theorem noncentral_divisor_of_coprime_center (n d : ℕ)
    (hc : Nat.Coprime d (6 * (n + 3)))
    (heq : natProduct 5 (n + d) = 4 * natProduct 5 n) :
    d ∣ (n + 1) * (n + 2) * (n + 4) * (n + 5) := by
  have hs := shift_divides 5 n d (nat_shift_equation 5 n d heq)
  have hci : IsCoprime (d : ℤ) (3 * ((n : ℤ) + 3)) := by
    apply hc.isCoprime.of_isCoprime_of_dvd_right
    refine ⟨2, ?_⟩
    push_cast
    ring
  have hid : 3 * product 5 (n : ℤ) =
      (3 * ((n : ℤ) + 3)) * (((n : ℤ) + 1) * (n + 2) * (n + 4) * (n + 5)) := by
    rw [product_five]
    ring
  rw [hid] at hs
  have hd := hci.dvd_of_dvd_mul_left hs
  exact_mod_cast hd

theorem not_four_coprime_center (n m : ℕ) (hm : n + 5 ≤ m)
    (hc : Nat.Coprime (m - n) (6 * (n + 3))) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  intro heq
  have hadd : n + (m - n) = m := by omega
  have hs : natProduct 5 (n + (m - n)) = 4 * natProduct 5 n := by
    simpa only [hadd, natProduct, B686Target.product] using heq
  have hdiv := noncentral_divisor_of_coprime_center n (m - n) hc hs
  have h6 : Nat.Coprime (m - n) 6 := hc.coprime_dvd_right (dvd_mul_right 6 (n + 3))
  exact not_four_noncentral_support n m hm h6 hdiv heq

theorem solution_has_central_factor (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    ¬ Nat.Coprime (m - n) (n + 3) := by
  intro hc
  exact not_four_coprime_center n m hm (h6.mul_right hc) heq

theorem solution_displacement_ge (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    20000 ≤ m - n := by
  by_contra hsmall
  have hadd : n + (m - n) = m := by omega
  have hnot := B686Round5Finite.not_four_below_20000 n (m - n) (by omega) (by omega)
  apply hnot
  simpa only [hadd, B686Target.product] using heq

theorem original_necessary_conditions (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : (4 : ℚ) = (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ)) :
    20000 ≤ m - n ∧ (Nat.Coprime (m - n) 6 → ¬ Nat.Coprime (m - n) (n + 3)) := by
  have hp := (B686Target.ratio_iff 5 n m).mp heq
  exact ⟨solution_displacement_ge n m hm hp, fun h6 => solution_has_central_factor n m hm h6 hp⟩

/-- info: 'B686Round5Support.not_four_noncentral_support_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_noncentral_support_ratio
/-- info: 'B686Round5Support.noncentral_divisor_of_coprime_center' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms noncentral_divisor_of_coprime_center
/-- info: 'B686Round5Support.not_four_coprime_center' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_coprime_center
/-- info: 'B686Round5Support.solution_has_central_factor' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_has_central_factor
/-- info: 'B686Round5Support.solution_displacement_ge' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_displacement_ge
/-- info: 'B686Round5Support.original_necessary_conditions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_necessary_conditions
end B686Round5Support

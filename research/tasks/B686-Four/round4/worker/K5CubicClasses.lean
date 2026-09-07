import research.tasks.«B686-Four».round4.worker.K5CubicTail
import research.tasks.«B686-Four».round4.worker.K5PrimeClasses

/-!
Symmetric-three-position exclusions stated as elementary coprimality
conditions on the original natural n,m problem. A direct degree-five
identity supplies the cubic modulus; no prime factorization or valuation
theorem is needed in this version.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

namespace B686Round4K5

theorem cubic_factorization (n d : ℤ) :
    cubic 100 108 (error n d 3) d * (3 * error n d 3 ^ 2 - 20 * d ^ 2 - 27) +
      729 * (p5 (n + d) - 4 * p5 n) =
    d ^ 3 * (1800 * error n d 3 ^ 2 + 5780 * error n d 3 * d + 3060 * d ^ 2 - 8100) := by
  unfold cubic error p5
  ring

theorem cubic_product_divides (n d : ℤ) (heq : p5 (n + d) = 4 * p5 n) :
    d ^ 3 ∣ cubic 100 108 (error n d 3) d *
      (3 * error n d 3 ^ 2 - 20 * d ^ 2 - 27) := by
  refine ⟨1800 * error n d 3 ^ 2 + 5780 * error n d 3 * d + 3060 * d ^ 2 - 8100, ?_⟩
  have hid := cubic_factorization n d
  rw [heq] at hid
  simpa only [sub_self, mul_zero, add_zero] using hid

theorem coprime_twenty_seven (d R : ℤ) (hc : IsCoprime d (3 * R)) :
    IsCoprime d (27 * R) := by
  have hc3 := hc.of_mul_right_left
  have hcR := hc.of_mul_right_right
  have hc27 := hc3.pow_right (n := 3)
  norm_num at hc27
  exact hc27.mul_right hcR

theorem cubic_outer_divides (n d : ℤ) (heq : p5 (n + d) = 4 * p5 n)
    (hc : IsCoprime d (3 * ((n + 2) * (n + 4)))) :
    d ^ 3 ∣ cubic 100 108 (error n d 3) d := by
  have h27 := coprime_twenty_seven d ((n + 2) * (n + 4)) hc
  have hfactor : IsCoprime d (3 * error n d 3 ^ 2 - 20 * d ^ 2 - 27) := by
    have hid : 3 * error n d 3 ^ 2 - 20 * d ^ 2 - 27 =
        27 * ((n + 2) * (n + 4)) + (-18 * (n + 3) - 17 * d) * d := by
      unfold error
      ring
    rw [hid]
    exact h27.add_mul_right_right (-18 * (n + 3) - 17 * d)
  exact (hfactor.pow_left (m := 3)).dvd_of_dvd_mul_right (cubic_product_divides n d heq)

theorem cubic_inner_divides (n d : ℤ) (heq : p5 (n + d) = 4 * p5 n)
    (hc : IsCoprime d (3 * ((n + 1) * (n + 5)))) :
    d ^ 3 ∣ cubic 20 27 (error n d 3) d := by
  have h27 := coprime_twenty_seven d ((n + 1) * (n + 5)) hc
  have hfactor : IsCoprime d (3 * error n d 3 ^ 2 - 100 * d ^ 2 - 108) := by
    have hid : 3 * error n d 3 ^ 2 - 100 * d ^ 2 - 108 =
        27 * ((n + 1) * (n + 5)) + (-18 * (n + 3) - 97 * d) * d := by
      unfold error
      ring
    rw [hid]
    exact h27.add_mul_right_right (-18 * (n + 3) - 97 * d)
  have hmul : d ^ 3 ∣ cubic 20 27 (error n d 3) d *
      (3 * error n d 3 ^ 2 - 100 * d ^ 2 - 108) := by
    convert cubic_product_divides n d heq using 1 <;> dsimp [cubic] <;> ring
  exact (hfactor.pow_left (m := 3)).dvd_of_dvd_mul_right hmul

theorem not_four_coprime_symmetric_shift (n d : ℕ) (hd : 5 ≤ d)
    (hc : Nat.Coprime d (3 * (n + 2) * (n + 4)) ∨
      Nat.Coprime d (3 * (n + 1) * (n + 5))) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  intro heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    have hm := p5_nat_product (n + d)
    have hn := p5_nat_product n
    push_cast at hm
    rw [hm, hn]
    exact_mod_cast heq
  apply not_four_of_cubic n d hd _ heq
  rcases hc with hc | hc
  · left
    apply cubic_outer_divides n d hp
    simpa only [Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat, Nat.cast_one, mul_assoc] using hc.isCoprime
  · right
    apply cubic_inner_divides n d hp
    simpa only [Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat, Nat.cast_one, mul_assoc] using hc.isCoprime

theorem not_four_coprime_symmetric (n m : ℕ) (hm : n + 5 ≤ m)
    (hc : Nat.Coprime (m - n) (3 * (n + 2) * (n + 4)) ∨
      Nat.Coprime (m - n) (3 * (n + 1) * (n + 5))) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_coprime_symmetric_shift n (m - n) (by omega) hc

theorem solution_requires_common_factors (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) =
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r))) :
    ¬ Nat.Coprime (m - n) (3 * (n + 2) * (n + 4)) ∧
      ¬ Nat.Coprime (m - n) (3 * (n + 1) * (n + 5)) := by
  constructor
  · intro hc
    exact not_four_coprime_symmetric n m hm (Or.inl hc) heq
  · intro hc
    exact not_four_coprime_symmetric n m hm (Or.inr hc) heq

/-- info: 'B686Round4K5.cubic_factorization' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms cubic_factorization
/-- info: 'B686Round4K5.not_four_coprime_symmetric' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_coprime_symmetric
/-- info: 'B686Round4K5.solution_requires_common_factors' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_requires_common_factors

end B686Round4K5

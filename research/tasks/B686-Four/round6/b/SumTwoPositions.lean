import research.tasks.«B686-Four».round4.main.K5CubicSlots
import research.tasks.«B686-Four».round4.worker.K5Combined
import research.tasks.«B686-Four».independent.TargetBridge
import Mathlib.Algebra.GCDMonoid.Nat
import Mathlib.Data.Nat.GCD.BigOperators

/-! Sum-modulus two-position obstruction for the original k=5 equation.
This module does not assert an unrestricted solution of B686. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000

namespace B686Round6B
open B686Round4Shift B686Round4Cubic B686Round4K5

/-- Reflection about the middle of five consecutive factors. -/
theorem product_reflection (n m : ℤ) :
    product 5 (n - (n + m + 6)) = - product 5 m := by
  simp only [B686Round4Cubic.product_five]
  ring

/-- Sum-modulus analogue of the ordinary difference divisibility. -/
theorem sum_divides (n m : ℤ)
    (heq : product 5 m = 4 * product 5 n) :
    n + m + 6 ∣ 5 * product 5 n := by
  have href : product 5 (n - (n + m + 6)) = -4 * product 5 n := by
    rw [product_reflection, heq]
    ring
  have h : n + m + 6 ∣ product 5 n - product 5 (n - (n + m + 6)) := by
    apply dvd_prod_sub_prod
    intro i hi
    have hid : n + (i : ℤ) - (n - (n + m + 6) + i) = n + m + 6 := by ring
    rw [hid]
  rw [href] at h
  convert h using 1 <;> ring

/-- First-order cofactor cancellation yields a square divisor. -/
theorem negative_four_square (y s q a r r' : ℤ)
    (hqy : q ∣ y) (hqs : q ∣ s)
    (heq : (y - s) * (a + (y - s) * r') = -4 * y * (a + y * r)) :
    q ^ 2 ∣ a * (5 * y - s) := by
  have hqdiff := dvd_sub hqy hqs
  have hyy : q ^ 2 ∣ y ^ 2 := pow_dvd_pow_of_dvd hqy 2
  have hdd : q ^ 2 ∣ (y - s) ^ 2 := pow_dvd_pow_of_dvd hqdiff 2
  have hraw : q ^ 2 ∣ -((y - s) ^ 2 * r' + 4 * y ^ 2 * r) :=
    dvd_neg.mpr (dvd_add (dvd_mul_of_dvd_left hdd r')
      (dvd_mul_of_dvd_left (dvd_mul_of_dvd_right hyy 4) r))
  have hid : -((y - s) ^ 2 * r' + 4 * y ^ 2 * r) = a * (5 * y - s) := by
    nlinarith only [heq]
  rwa [hid] at hraw

/-- Taylor contact at all five simple roots, excluding only primes 2 and 3. -/
theorem sum_slot_square (n m q : ℤ) (i : ℕ) (hi : i ∈ Finset.Icc 1 5)
    (hqs : q ∣ n + m + 6) (hqy : q ∣ n + i)
    (hq6 : IsCoprime q (6 : ℤ))
    (heq : product 5 m = 4 * product 5 n) :
    q ^ 2 ∣ 5 * (n + i) - (n + m + 6) := by
  have href : product 5 (n - (n + m + 6)) = -4 * product 5 n := by
    rw [product_reflection, heq]
    ring
  rw [at_position _ i hi, at_position n i hi] at href
  have hc : (n + i - (n + m + 6)) *
        (constantTerm i + (n + i - (n + m + 6)) *
          (linearTerm i + (n + i - (n + m + 6)) *
            remainder i (n + i - (n + m + 6)))) =
      -4 * (n + i) * (constantTerm i + (n + i) *
        (linearTerm i + (n + i) * remainder i (n + i))) := by
    convert href using 1 <;> ring
  have hraw := negative_four_square (n + i) (n + m + 6) q (constantTerm i)
    (linearTerm i + (n + i) * remainder i (n + i))
    (linearTerm i + (n + i - (n + m + 6)) *
      remainder i (n + i - (n + m + 6))) hqy hqs hc
  have hca : constantTerm i ∣ (6 : ℤ) ^ 3 := by
    obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
    interval_cases i <;> norm_num [constantTerm]
  have hcop : IsCoprime q (constantTerm i) :=
    (hq6.pow_right (n := 3)).of_isCoprime_of_dvd_right hca
  exact (hcop.pow_left (m := 2)).dvd_of_dvd_mul_left hraw

/-- The real branch places each sum error between s and (4/3)s. -/
theorem sum_error_bounds (n d i : ℤ) (hd : 600 ≤ d)
    (hi : 1 ≤ i) (hi5 : i ≤ 5)
    (hs : 31298 * d < 10000 * (n + 5) ∧ 10000 * (n + 1) < 31299 * d) :
    0 < 2 * n + d + 6 ∧
      2 * n + d + 6 < 5 * (n + i) - (2 * n + d + 6) ∧
      3 * (5 * (n + i) - (2 * n + d + 6)) < 4 * (2 * n + d + 6) := by
  omega

/-- The square product lies in the open integer gap (s²,2s²). -/
theorem sum_error_product_bounds (n d i j : ℤ) (hd : 600 ≤ d)
    (hi : 1 ≤ i) (hi5 : i ≤ 5) (hj : 1 ≤ j) (hj5 : j ≤ 5)
    (hs : 31298 * d < 10000 * (n + 5) ∧ 10000 * (n + 1) < 31299 * d) :
    (2 * n + d + 6) ^ 2 <
        (5 * (n + i) - (2 * n + d + 6)) * (5 * (n + j) - (2 * n + d + 6)) ∧
      (5 * (n + i) - (2 * n + d + 6)) * (5 * (n + j) - (2 * n + d + 6)) <
        2 * (2 * n + d + 6) ^ 2 := by
  obtain ⟨hsp, hil, hiu⟩ := sum_error_bounds n d i hd hi hi5 hs
  obtain ⟨_, hjl, hju⟩ := sum_error_bounds n d j hd hj hj5 hs
  have hip : 0 < 5 * (n + i) - (2 * n + d + 6) := by omega
  have hjp : 0 < 5 * (n + j) - (2 * n + d + 6) := by omega
  have hs2 : 0 < (2 * n + d + 6) ^ 2 := by positivity
  constructor
  · have hmul := mul_lt_mul hil hjl.le hsp hip.le
    nlinarith only [hmul]
  · have hmul := mul_lt_mul hiu hju.le (by omega : 0 < 3 * (5 * (n + j) - (2 * n + d + 6)))
      (by omega : 0 ≤ 4 * (2 * n + d + 6))
    nlinarith only [hmul, hs2]

/-- Tail contradiction needing only the resulting square divisibility. -/
theorem not_four_sum_square_tail (n d i j : ℤ) (hn : 0 ≤ n) (hd : 600 ≤ d)
    (hi : 1 ≤ i) (hi5 : i ≤ 5) (hj : 1 ≤ j) (hj5 : j ≤ 5)
    (hdiv : (2 * n + d + 6) ^ 2 ∣
      (5 * (n + i) - (2 * n + d + 6)) * (5 * (n + j) - (2 * n + d + 6))) :
    p5 (n + d) ≠ 4 * p5 n := by
  intro heq
  have hs := rational_strip n d hn (by omega) heq
  obtain ⟨hl, hu⟩ := sum_error_product_bounds n d i j hd hi hi5 hj hj5 hs
  obtain ⟨u, he⟩ := hdiv
  have hsp : 0 < (2 * n + d + 6) ^ 2 := by positivity
  have hu1 : 1 < u := (mul_lt_mul_iff_right₀ hsp).mp (by nlinarith only [hl, he])
  have hu2 : u < 2 := (mul_lt_mul_iff_right₀ hsp).mp (by nlinarith only [hu, he])
  omega

end B686Round6B

namespace B686Round6B
open B686Round4Shift B686Round4Cubic B686Round4K5

/-- No coprimality between P and Q is needed: square divisibilities multiply. -/
theorem not_four_sum_factor_groups (n m P Q i j : ℕ) (hm : n + 5 ≤ m)
    (hi : i ∈ Finset.Icc 1 5) (hj : j ∈ Finset.Icc 1 5)
    (hS : n + m + 6 = P * Q) (hP : P ∣ n + i) (hQ : Q ∣ n + j)
    (h6 : Nat.Coprime (n + m + 6) 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  intro heq
  have hd : 600 ≤ m - n := by
    by_contra hsmall
    have hadd : n + (m - n) = m := by omega
    apply B686Round4K5Finite.not_four_small_displacement n (m - n) (by omega) (by omega)
    simpa only [hadd, B686Target.product] using heq
  have heqZ : product 5 (m : ℤ) = 4 * product 5 (n : ℤ) := by
    rw [← cast_product, ← cast_product]
    exact_mod_cast heq
  have hPS : P ∣ n + m + 6 := by rw [hS]; exact dvd_mul_right _ _
  have hQS : Q ∣ n + m + 6 := by rw [hS]; exact dvd_mul_left _ _
  have hP2 := sum_slot_square n m P i hi (by exact_mod_cast hPS)
    (by exact_mod_cast hP) (h6.coprime_dvd_left hPS).isCoprime heqZ
  have hQ2 := sum_slot_square n m Q j hj (by exact_mod_cast hQS)
    (by exact_mod_cast hQ) (h6.coprime_dvd_left hQS).isCoprime heqZ
  have hmul := mul_dvd_mul hP2 hQ2
  have hSZ : (n : ℤ) + m + 6 = (P : ℤ) * Q := by exact_mod_cast hS
  rw [← mul_pow, ← hSZ] at hmul
  have hmn : (m : ℤ) = (n : ℤ) + (m - n : ℕ) := by omega
  rw [hmn] at heqZ hmul
  have htail := not_four_sum_square_tail n (m - n : ℕ) i j (by omega) (by omega)
    (by exact_mod_cast (Finset.mem_Icc.mp hi).1)
    (by exact_mod_cast (Finset.mem_Icc.mp hi).2)
    (by exact_mod_cast (Finset.mem_Icc.mp hj).1)
    (by exact_mod_cast (Finset.mem_Icc.mp hj).2)
  have hdiv : (2 * (n : ℤ) + (m - n : ℕ) + 6) ^ 2 ∣
      (5 * ((n : ℤ) + i) - (2 * (n : ℤ) + (m - n : ℕ) + 6)) *
      (5 * ((n : ℤ) + j) - (2 * (n : ℤ) + (m - n : ℕ) + 6)) := by
    obtain ⟨w, hw⟩ := hmul
    exact ⟨w, by nlinarith only [hw]⟩
  apply htail hdiv
  have hid (x : ℤ) : p5 x = product 5 x := by
    rw [B686Round4Cubic.product_five]
    rfl
  simpa only [hid] using heqZ

/-- Original-equation exclusion when the sum is supported in two slots.
The positions may coincide; no bound is imposed on the number of primes. -/
theorem not_four_sum_two_position_support (n m i j : ℕ) (hm : n + 5 ≤ m)
    (hi : i ∈ Finset.Icc 1 5) (hj : j ∈ Finset.Icc 1 5)
    (h6 : Nat.Coprime (n + m + 6) 6)
    (hdiv : n + m + 6 ∣ (n + i) * (n + j)) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  obtain ⟨P, Q, hP, hQ, hS⟩ := exists_dvd_and_dvd_of_dvd_mul hdiv
  exact not_four_sum_factor_groups n m P Q i j hm hi hj hS hP hQ h6

theorem not_four_sum_two_position_support_ratio (n m i j : ℕ) (hm : n + 5 ≤ m)
    (hi : i ∈ Finset.Icc 1 5) (hj : j ∈ Finset.Icc 1 5)
    (h6 : Nat.Coprime (n + m + 6) 6)
    (hdiv : n + m + 6 ∣ (n + i) * (n + j)) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro heq
  exact not_four_sum_two_position_support n m i j hm hi hj h6 hdiv
    ((B686Target.ratio_iff 5 n m).mp heq)

/-- A prime power >5 dividing the sum belongs entirely to one original factor. -/
theorem large_prime_power_sum_position (n m p a : ℕ) (hp : p.Prime) (hp7 : 7 ≤ p)
    (hps : p ^ a ∣ n + m + 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    ∃ i ∈ Finset.Icc 1 5, p ^ a ∣ n + i := by
  by_cases ha : a = 0
  · refine ⟨1, by decide, ?_⟩
    simp [ha]
  have hp5 : ¬ p ∣ 5 := by
    intro h
    have := Nat.le_of_dvd (by decide : 0 < 5) h
    omega
  have hc5 : IsCoprime ((p : ℤ) ^ a) (5 : ℤ) :=
    ((hp.coprime_iff_not_dvd.mpr hp5).isCoprime).pow_left
  have heqZ : product 5 (m : ℤ) = 4 * product 5 (n : ℤ) := by
    rw [← cast_product, ← cast_product]
    exact_mod_cast heq
  have hpS : (p : ℤ) ^ a ∣ (n : ℤ) + m + 6 := by exact_mod_cast hps
  have hpPZ : (p : ℤ) ^ a ∣ product 5 n :=
    hc5.dvd_of_dvd_mul_left (dvd_trans hpS (sum_divides n m heqZ))
  have hpPN : p ^ a ∣ natProduct 5 n := by
    rw [← cast_product] at hpPZ
    exact_mod_cast hpPZ
  have hpP : p ∣ natProduct 5 n := dvd_trans (dvd_pow_self p ha) hpPN
  obtain ⟨i, hi, hip⟩ := hp.prime.exists_mem_finset_dvd hpP
  have hcop : Nat.Coprime (p ^ a) (∏ j ∈ (Finset.Icc 1 5).erase i, (n + j)) := by
    apply Nat.Coprime.prod_right
    intro j hj
    obtain ⟨hne, hj'⟩ := Finset.mem_erase.mp hj
    exact (hp.coprime_iff_not_dvd.mpr
      (distinct_positions_not_dvd 5 n p i j (by omega) hi hj' hne hip)).pow_left a
  have hsplit : (n + i) * (∏ j ∈ (Finset.Icc 1 5).erase i, (n + j)) = natProduct 5 n :=
    Finset.mul_prod_erase (Finset.Icc 1 5) (fun j => n + j) hi
  rw [← hsplit] at hpPN
  exact ⟨i, hi, hcop.dvd_of_dvd_mul_right hpPN⟩

/-- Exponent zero is allowed, hence this includes a single prime power.
The two primes need not be distinct. -/
theorem not_four_sum_two_prime_powers (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (hp7 : 7 ≤ p) (hq7 : 7 ≤ q)
    (hs : n + m + 6 = p ^ a * q ^ b) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  intro heq
  have hpS : p ^ a ∣ n + m + 6 := by rw [hs]; exact dvd_mul_right _ _
  have hqS : q ^ b ∣ n + m + 6 := by rw [hs]; exact dvd_mul_left _ _
  obtain ⟨i, hi, hpi⟩ := large_prime_power_sum_position n m p a hp hp7 hpS heq
  obtain ⟨j, hj, hqj⟩ := large_prime_power_sum_position n m q b hq hq7 hqS heq
  have hp6 : Nat.Coprime p 6 := hp.coprime_iff_not_dvd.mpr (by
    intro h
    have := Nat.le_of_dvd (by decide : 0 < 6) h
    omega)
  have hq6 : Nat.Coprime q 6 := hq.coprime_iff_not_dvd.mpr (by
    intro h
    have := Nat.le_of_dvd (by decide : 0 < 6) h
    omega)
  have h6 : Nat.Coprime (n + m + 6) 6 := by
    rw [hs]
    exact (hp6.pow_left a).mul_left (hq6.pow_left b)
  exact not_four_sum_factor_groups n m (p ^ a) (q ^ b) i j hm hi hj hs hpi hqj h6 heq

theorem not_four_sum_two_prime_powers_ratio (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (hp7 : 7 ≤ p) (hq7 : 7 ≤ q)
    (hs : n + m + 6 = p ^ a * q ^ b) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro heq
  exact not_four_sum_two_prime_powers n m p q a b hm hp hq hp7 hq7 hs
    ((B686Target.ratio_iff 5 n m).mp heq)

end B686Round6B





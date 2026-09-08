/-
Copyright (c) 2026 Will Blair. Released under the MIT license.
Adapted from williamjblair/lean-proofs, commit aff1d30b3b1c6bd705810fa4d588b03940fb31df,
ErdosProblems/Erdos686CenterComponentLogStrip.lean (Lean 4.29.1).
Local changes: focused dependency slice, local namespace, Lean 4.33.1 compatibility.
The complete license notice is retained in LICENSE-Will-Blair.txt.
-/
-- The local certificate uses 64*d <= k^2 and the coarse ratio k*d < 3*n.
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Choose.Bounds
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.IntervalCases

namespace B686LcmBounds

set_option maxHeartbeats 1200000
set_option format.width 240

lemma even_factorialTail_eq_pairProduct (r : ℕ) :
    (2 * r).ascFactorial (2 * r) =
      ∏ i ∈ Finset.range r,
        ((2 * r + i) * (4 * r - 1 - i)) := by
  rw [Nat.ascFactorial_eq_prod_range]
  have hsplit : Finset.range (2 * r) =
      Finset.range r ∪ Finset.Ico r (2 * r) := by
    ext i
    simp only [Finset.mem_range, Finset.mem_union, Finset.mem_Ico]
    omega
  have hdisj : Disjoint (Finset.range r) (Finset.Ico r (2 * r)) := by
    rw [Finset.disjoint_left]
    intro i hlo hhi
    simp only [Finset.mem_range] at hlo
    simp only [Finset.mem_Ico] at hhi
    omega
  rw [hsplit, Finset.prod_union hdisj]
  have hhigh :
      (∏ j ∈ Finset.Ico r (2 * r), (2 * r + j)) =
        ∏ i ∈ Finset.range r, (4 * r - 1 - i) := by
    refine Finset.prod_bij (fun j _ => 2 * r - 1 - j) ?_ ?_ ?_ ?_
    · intro j hj
      simp only [Finset.mem_Ico] at hj
      simp only [Finset.mem_range]
      omega
    · intro j₁ hj₁ j₂ hj₂ he
      simp only [Finset.mem_Ico] at hj₁ hj₂
      change 2 * r - 1 - j₁ = 2 * r - 1 - j₂ at he
      omega
    · intro i hi
      simp only [Finset.mem_range] at hi
      refine ⟨2 * r - 1 - i, ?_, ?_⟩
      · simp only [Finset.mem_Ico]
        omega
      · change 2 * r - 1 - (2 * r - 1 - i) = i
        omega
    · intro j hj
      simp only [Finset.mem_Ico] at hj
      change 2 * r + j = 4 * r - 1 - (2 * r - 1 - j)
      omega
  rw [hhigh, ← Finset.prod_mul_distrib]

lemma odd_factorialTail_eq_middle_mul_pairProduct (r : ℕ) :
    (2 * r + 1).ascFactorial (2 * r + 1) =
      (3 * r + 1) *
        ∏ i ∈ Finset.range r,
          ((2 * r + 1 + i) * (4 * r + 1 - i)) := by
  rw [Nat.ascFactorial_eq_prod_range]
  have hsplit : Finset.range (2 * r + 1) =
      (Finset.range r ∪ {r}) ∪ Finset.Ioc r (2 * r) := by
    ext i
    simp only [Finset.mem_range, Finset.mem_union, Finset.mem_singleton,
      Finset.mem_Ioc]
    omega
  have hdisjLow : Disjoint (Finset.range r) ({r} : Finset ℕ) := by
    rw [Finset.disjoint_left]
    intro i hi hir
    simp only [Finset.mem_range] at hi
    simp only [Finset.mem_singleton] at hir
    omega
  have hdisj : Disjoint (Finset.range r ∪ {r}) (Finset.Ioc r (2 * r)) := by
    rw [Finset.disjoint_left]
    intro i hi hhi
    simp only [Finset.mem_union, Finset.mem_range, Finset.mem_singleton] at hi
    simp only [Finset.mem_Ioc] at hhi
    omega
  rw [hsplit, Finset.prod_union hdisj, Finset.prod_union hdisjLow]
  simp only [Finset.prod_singleton]
  have hhigh :
      (∏ j ∈ Finset.Ioc r (2 * r), (2 * r + 1 + j)) =
        ∏ i ∈ Finset.range r, (4 * r + 1 - i) := by
    refine Finset.prod_bij (fun j _ => 2 * r - j) ?_ ?_ ?_ ?_
    · intro j hj
      simp only [Finset.mem_Ioc] at hj
      simp only [Finset.mem_range]
      omega
    · intro j₁ hj₁ j₂ hj₂ he
      simp only [Finset.mem_Ioc] at hj₁ hj₂
      change 2 * r - j₁ = 2 * r - j₂ at he
      omega
    · intro i hi
      simp only [Finset.mem_range] at hi
      refine ⟨2 * r - i, ?_, ?_⟩
      · simp only [Finset.mem_Ioc]
        omega
      · change 2 * r - (2 * r - i) = i
        omega
    · intro j hj
      simp only [Finset.mem_Ioc] at hj
      change 2 * r + 1 + j = 4 * r + 1 - (2 * r - j)
      omega
  rw [hhigh]
  calc
    (∏ x ∈ Finset.range r, (2 * r + 1 + x)) * (2 * r + 1 + r) *
          ∏ i ∈ Finset.range r, (4 * r + 1 - i) =
        (3 * r + 1) *
          ((∏ x ∈ Finset.range r, (2 * r + 1 + x)) *
            ∏ i ∈ Finset.range r, (4 * r + 1 - i)) := by
      ring
    _ = (3 * r + 1) *
        ∏ i ∈ Finset.range r,
          ((2 * r + 1 + i) * (4 * r + 1 - i)) := by
      rw [Finset.prod_mul_distrib]

lemma factorialTail_pair_term_lower
    {k r i : ℕ} (hk : 1 ≤ k) (hi : i < r) (hr : 2 * r ≤ k) :
    k * (2 * k - 1) ≤ (k + i) * (2 * k - 1 - i) := by
  have hiK : i ≤ k - 1 := by omega
  let q : ℕ := k - 1 - i
  have hiq : i + q = k - 1 := by dsimp [q]; omega
  have htail : 2 * k - 1 - i = k + q := by dsimp [q]; omega
  rw [htail]
  have hbase : 2 * k - 1 = k + (k - 1) := by omega
  have heq : (k + i) * (k + q) =
      k * (2 * k - 1) + i * q := by
    rw [hbase, ← hiq]
    ring
  rw [heq]
  exact Nat.le_add_right _ _

lemma factorialTail_pairProduct_lower
    {k r : ℕ} (hk : 1 ≤ k) (hr : 2 * r ≤ k) :
    (k * (2 * k - 1)) ^ r ≤
      ∏ i ∈ Finset.range r, ((k + i) * (2 * k - 1 - i)) := by
  calc
    (k * (2 * k - 1)) ^ r =
        ∏ _i ∈ Finset.range r, (k * (2 * k - 1)) := by
      simp [Finset.prod_const]
    _ ≤ ∏ i ∈ Finset.range r, ((k + i) * (2 * k - 1 - i)) := by
      apply Finset.prod_le_prod'
      intro i hi
      exact factorialTail_pair_term_lower hk (Finset.mem_range.mp hi) hr

lemma even_factorialTail_pair_lower (r : ℕ) (hr : 1 ≤ r) :
    ((2 * r) * (2 * (2 * r) - 1)) ^ r ≤
      (2 * r).ascFactorial (2 * r) := by
  rw [even_factorialTail_eq_pairProduct]
  have hnorm : 2 * (2 * r) - 1 = 4 * r - 1 := by omega
  simpa only [hnorm] using
    (factorialTail_pairProduct_lower (k := 2 * r) (r := r)
      (by omega) (by omega))

lemma odd_factorialTail_pair_lower (r : ℕ) :
    (2 * r + 1) *
        (((2 * r + 1) * (2 * (2 * r + 1) - 1)) ^ r) ≤
      (2 * r + 1).ascFactorial (2 * r + 1) := by
  rw [odd_factorialTail_eq_middle_mul_pairProduct]
  apply Nat.mul_le_mul
  · omega
  · have hnorm : 2 * (2 * r + 1) - 1 = 4 * r + 1 := by omega
    simpa only [hnorm] using
      (factorialTail_pairProduct_lower (k := 2 * r + 1) (r := r)
        (by omega) (by omega))

lemma quadratic_pair_unit_bound
    {k d : ℕ} (hk : 6 ≤ k) (hstrip : 64 * d ≤ k ^ 2) :
    3 ^ 2 * (4 * d) ^ 4 ≤
      (k * (2 * k - 1)) * (1 * k * d) ^ 2 := by
  have hsquare := Nat.pow_le_pow_left hstrip 2
  have hsquare' : 4096 * d ^ 2 ≤ k ^ 4 := by
    calc
      4096 * d ^ 2 = (64 * d) ^ 2 := by ring
      _ ≤ (k ^ 2) ^ 2 := hsquare
      _ = k ^ 4 := by ring
  have htwok : 2 * k - 1 + 1 = 2 * k := by omega
  have hcoeff : 2304 * k ≤ (4096 * 1) * (2 * k - 1) := by
    nlinarith
  have hcross :
      4096 * (2304 * d ^ 2) ≤
        4096 * (1 * k ^ 3 * (2 * k - 1)) := by
    calc
      4096 * (2304 * d ^ 2) = 2304 * (4096 * d ^ 2) := by ring
      _ ≤ 2304 * k ^ 4 := Nat.mul_le_mul_left _ hsquare'
      _ = (2304 * k) * k ^ 3 := by ring
      _ ≤ ((4096 * 1) * (2 * k - 1)) * k ^ 3 :=
        Nat.mul_le_mul_right _ hcoeff
      _ = 4096 * (1 * k ^ 3 * (2 * k - 1)) := by ring
  have hcore : 2304 * d ^ 2 ≤ 1 * k ^ 3 * (2 * k - 1) :=
    Nat.le_of_mul_le_mul_left hcross (by norm_num)
  have hcoreD := Nat.mul_le_mul_right (d ^ 2) hcore
  calc
    3 ^ 2 * (4 * d) ^ 4 = (2304 * d ^ 2) * d ^ 2 := by ring
    _ ≤ (1 * k ^ 3 * (2 * k - 1)) * d ^ 2 := hcoreD
    _ = (k * (2 * k - 1)) * (1 * k * d) ^ 2 := by ring

/-- Parity-free factorial-tail certificate.  Even rows pair all tail terms;
odd rows use the same pairs and retain one unpaired term at least `k`. -/
lemma quadratic_strip_factorialTail_certificate
    {k d : ℕ} (hk : 6 ≤ k) (hd : k ≤ d)
    (hstrip : 64 * d ≤ k ^ 2) :
    3 ^ k * (4 * d) ^ (2 * k - 1) ≤
      k.ascFactorial k * (1 * k * d) ^ k := by
  have hunit := quadratic_pair_unit_bound hk hstrip
  rcases Nat.even_or_odd k with hEven | hOdd
  · obtain ⟨r, hrEq⟩ := hEven
    have hform : k = 2 * r := by omega
    have hr : 1 ≤ r := by omega
    have hunitPow := Nat.pow_le_pow_left hunit r
    have htail := even_factorialTail_pair_lower r hr
    have hpad : (4 * d) ^ (4 * r - 1) ≤ (4 * d) ^ (4 * r) :=
      Nat.pow_le_pow_right (by omega) (by omega)
    have heven :
        3 ^ (2 * r) * (4 * d) ^ (4 * r - 1) ≤
          (2 * r).ascFactorial (2 * r) *
            (1 * (2 * r) * d) ^ (2 * r) := by
      calc
        3 ^ (2 * r) * (4 * d) ^ (4 * r - 1) ≤
            3 ^ (2 * r) * (4 * d) ^ (4 * r) :=
          Nat.mul_le_mul_left _ hpad
        _ = (3 ^ 2 * (4 * d) ^ 4) ^ r := by
          simp only [mul_pow, pow_mul]
        _ ≤ ((2 * r) * (2 * (2 * r) - 1) *
            (1 * (2 * r) * d) ^ 2) ^ r := by
          simpa only [hform] using hunitPow
        _ = (((2 * r) * (2 * (2 * r) - 1)) ^ r) *
            (1 * (2 * r) * d) ^ (2 * r) := by
          simp only [mul_pow, pow_mul]
        _ ≤ (2 * r).ascFactorial (2 * r) *
            (1 * (2 * r) * d) ^ (2 * r) :=
          Nat.mul_le_mul_right _ htail
    simpa only [hform, show 2 * (2 * r) - 1 = 4 * r - 1 by omega]
      using heven
  · obtain ⟨r, hrEq⟩ := hOdd
    have hform : k = 2 * r + 1 := by omega
    have hunitPow := Nat.pow_le_pow_left hunit r
    have htail := odd_factorialTail_pair_lower r
    have hcoeff : 12 ≤ 1 * k ^ 2 := by nlinarith
    have hleftover : 3 * (4 * d) ≤ k * (1 * k * d) := by
      have hmul := Nat.mul_le_mul_right d hcoeff
      nlinarith
    have hodd :
        3 ^ (2 * r + 1) * (4 * d) ^ (4 * r + 1) ≤
          (2 * r + 1).ascFactorial (2 * r + 1) *
            (1 * (2 * r + 1) * d) ^ (2 * r + 1) := by
      calc
        3 ^ (2 * r + 1) * (4 * d) ^ (4 * r + 1) =
            (3 * (4 * d)) * (3 ^ 2 * (4 * d) ^ 4) ^ r := by
          simp only [pow_add, pow_mul, mul_pow, pow_one]
          ring
        _ ≤ ((2 * r + 1) * (1 * (2 * r + 1) * d)) *
            (((2 * r + 1) * (2 * (2 * r + 1) - 1) *
              (1 * (2 * r + 1) * d) ^ 2) ^ r) := by
          apply Nat.mul_le_mul
          · simpa only [hform] using hleftover
          · simpa only [hform] using hunitPow
        _ = ((2 * r + 1) *
              (((2 * r + 1) * (2 * (2 * r + 1) - 1)) ^ r)) *
            (1 * (2 * r + 1) * d) ^ (2 * r + 1) := by
          simp only [mul_pow, pow_mul, pow_add, pow_one]
          ring
        _ ≤ (2 * r + 1).ascFactorial (2 * r + 1) *
            (1 * (2 * r + 1) * d) ^ (2 * r + 1) :=
          Nat.mul_le_mul_right _ htail
    simpa only [hform, show 2 * (2 * r + 1) - 1 = 4 * r + 1 by omega]
      using hodd

lemma factorial_mul_factorialTail {k : ℕ} (hk : 1 ≤ k) :
    (k - 1).factorial * k.ascFactorial k = (2 * k - 1).factorial := by
  have h := Nat.factorial_mul_ascFactorial (k - 1) k
  have hstart : k - 1 + 1 = k := by omega
  have hend : k - 1 + k = 2 * k - 1 := by omega
  rw [hstart, hend] at h
  exact h

/-- Exact cross-multiplied certificate contradicting the necessary solution
inequality throughout the quadratic strip. -/
theorem quadratic_strip_certificate
    {k d : ℕ} (hk : 6 ≤ k) (hd : k ≤ d)
    (hstrip : 64 * d ≤ k ^ 2) :
    3 ^ k * ((k - 1).factorial * (4 * d) ^ (2 * k - 1)) ≤
      (2 * k - 1).factorial * (1 * k * d) ^ k := by
  have htail := quadratic_strip_factorialTail_certificate hk hd hstrip
  have hmul := Nat.mul_le_mul_left (k - 1).factorial htail
  calc
    3 ^ k * ((k - 1).factorial * (4 * d) ^ (2 * k - 1)) =
        (k - 1).factorial *
          (3 ^ k * (4 * d) ^ (2 * k - 1)) := by ring
    _ ≤ (k - 1).factorial *
        (k.ascFactorial k * (1 * k * d) ^ k) := hmul
    _ = (2 * k - 1).factorial * (1 * k * d) ^ k := by
      rw [← mul_assoc, factorial_mul_factorialTail (by omega)]

/-- info: 'B686LcmBounds.even_factorialTail_pair_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms even_factorialTail_pair_lower
/-- info: 'B686LcmBounds.odd_factorialTail_pair_lower' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms odd_factorialTail_pair_lower
/-- info: 'B686LcmBounds.quadratic_strip_certificate' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms quadratic_strip_certificate

end B686LcmBounds




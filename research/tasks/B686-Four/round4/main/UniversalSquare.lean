import research.tasks.«B686-Four».round4.main.ShiftCongruence
import Mathlib.Algebra.BigOperators.Intervals

/-! Exact second-order identities. These are necessary conditions only. -/
namespace B686Round4Universal
open B686Round4Shift

def errors (k : ℕ) (n d : ℤ) : ℤ :=
  ∏ i ∈ Finset.Icc 1 k, (3 * (n + i) - d)

theorem product_succ (k : ℕ) (t : ℤ) :
    product (k + 1) t = product k t * (t + (k + 1 : ℕ)) := by
  exact Finset.prod_Icc_succ_top (by omega) _

theorem errors_succ (k : ℕ) (n d : ℤ) :
    errors (k + 1) n d = errors k n d * (3 * (n + (k + 1 : ℕ)) - d) := by
  exact Finset.prod_Icc_succ_top (by omega) _

theorem product_difference (k : ℕ) (n d : ℤ) :
    d ∣ product k (n + d) - product k n := by
  apply dvd_prod_sub_prod
  intro i hi
  have h : n + d + (i : ℤ) - (n + i) = d := by ring
  rw [h]

theorem universal_identity (k : ℕ) (n d : ℤ) :
    d ^ 2 ∣ errors (k + 1) n d +
      3 ^ k * (product (k + 1) (n + d) - 4 * product (k + 1) n) := by
  induction k with
  | zero =>
    simp only [errors, product, Nat.zero_add, Finset.Icc_self, Finset.prod_singleton,
      Nat.cast_one, pow_zero, one_mul]
    have h : 3 * (n + 1) - d + ((n + d + 1) - 4 * (n + 1)) = 0 := by ring
    rw [h]
    exact dvd_zero _
  | succ k ih =>
    have hdiff := product_difference (k + 1) n d
    have hmul : d ^ 2 ∣ d * (product (k + 1) (n + d) - product (k + 1) n) := by
      simpa only [pow_two] using mul_dvd_mul (dvd_refl d) hdiff
    have hsum := dvd_add
      (dvd_mul_of_dvd_right ih (3 * (n + (k + 2 : ℕ)) - d))
      (dvd_mul_of_dvd_right hmul (4 * 3 ^ k))
    have hid :
        (3 * (n + (k + 2 : ℕ)) - d) *
          (errors (k + 1) n d + 3 ^ k *
            (product (k + 1) (n + d) - 4 * product (k + 1) n)) +
        (4 * 3 ^ k) * (d * (product (k + 1) (n + d) - product (k + 1) n)) =
        errors (k + 2) n d + 3 ^ (k + 1) *
          (product (k + 2) (n + d) - 4 * product (k + 2) n) := by
      rw [product_succ (k + 1), product_succ (k + 1), errors_succ (k + 1)]
      simp only [pow_succ, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
      ring
    rw [hid] at hsum
    exact hsum

theorem universal_square (k : ℕ) (hk : 1 ≤ k) (n d : ℤ)
    (heq : product k (n + d) = 4 * product k n) :
    d ^ 2 ∣ errors k n d := by
  obtain ⟨r, rfl⟩ : ∃ r, k = r + 1 := ⟨k - 1, by omega⟩
  have h := universal_identity r n d
  simpa only [heq, sub_self, mul_zero, add_zero] using h

theorem slot_with_cofactor (s : Finset ℕ) (n d : ℤ) (i : ℕ) (hi : i ∈ s)
    (heq : (∏ j ∈ s, (n + d + j)) = 4 * ∏ j ∈ s, (n + j)) :
    d ^ 2 ∣ 3 * (3 * (n + i) - d) * (∏ j ∈ s.erase i, (n + j)) ^ 2 := by
  classical
  let r : ℤ := ∏ j ∈ s.erase i, (n + j)
  let r' : ℤ := ∏ j ∈ s.erase i, (n + d + j)
  have hr : d ∣ r' - r := by
    apply dvd_prod_sub_prod
    intro j hj
    have hid : n + d + (j : ℤ) - (n + j) = d := by ring
    rw [hid]
  have hsplit : (n + i) * r = ∏ j ∈ s, (n + j) :=
    Finset.mul_prod_erase s (fun j => n + j) hi
  have hsplit' : (n + d + i) * r' = ∏ j ∈ s, (n + d + j) :=
    Finset.mul_prod_erase s (fun j => n + d + j) hi
  have heq' : (n + d + i) * r' = 4 * ((n + i) * r) := by
    rw [hsplit, hsplit', heq]
  have hbase : d ∣ 3 * ((n + i) * r) := by
    have hd : d ∣ (∏ j ∈ s, (n + d + j)) - ∏ j ∈ s, (n + j) := by
      apply dvd_prod_sub_prod
      intro j hj
      have hid : n + d + (j : ℤ) - (n + j) = d := by ring
      rw [hid]
    rw [heq, ← hsplit] at hd
    have hid : 4 * ((n + i) * r) - (n + i) * r = 3 * ((n + i) * r) := by ring
    rwa [hid] at hd
  have hplus : d ∣ 3 * (n + d + i) * r := by
    have h := dvd_add hbase (dvd_mul_right d (3 * r))
    have hid : 3 * ((n + i) * r) + d * (3 * r) = 3 * (n + d + i) * r := by ring
    rwa [hid] at h
  have hmul : d ^ 2 ∣ (3 * (n + d + i) * r) * (r' - r) := by
    simpa only [pow_two] using mul_dvd_mul hplus hr
  have hid : (3 * (n + d + i) * r) * (r' - r) = 3 * (3 * (n + i) - d) * r ^ 2 := by
    calc
      _ = 3 * r * ((n + d + i) * r' - (n + d + i) * r) := by ring
      _ = 3 * r * (4 * ((n + i) * r) - (n + d + i) * r) := by rw [heq']
      _ = _ := by ring
  rwa [hid] at hmul

theorem universal_square_original (k n m : ℕ) (hk : 1 ≤ k) (hm : n ≤ m)
    (heq : natProduct k m = 4 * natProduct k n) :
    ((m - n : ℕ) : ℤ) ^ 2 ∣ errors k n (m - n : ℕ) := by
  have hadd : n + (m - n) = m := by omega
  have heq' : natProduct k (n + (m - n)) = 4 * natProduct k n := by rwa [hadd]
  exact universal_square k hk n (m - n : ℕ)
    (nat_shift_equation k n (m - n) heq')

/-- info: 'B686Round4Universal.universal_identity' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms universal_identity
/-- info: 'B686Round4Universal.universal_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms universal_square
/-- info: 'B686Round4Universal.slot_with_cofactor' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms slot_with_cofactor
/-- info: 'B686Round4Universal.universal_square_original' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms universal_square_original

end B686Round4Universal

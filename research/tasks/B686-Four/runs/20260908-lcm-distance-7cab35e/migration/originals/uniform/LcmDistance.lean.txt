/-
Copyright (c) 2026 Will Blair. Released under the MIT license.
Adapted from williamjblair/lean-proofs, commit aff1d30b3b1c6bd705810fa4d588b03940fb31df,
ErdosProblems/Erdos686CenterComponentLogStrip.lean (Lean 4.29.1).
Local changes: reuse the repository's gcd matching proof and coarse size bound;
use the conservative constant 64; retain only the distance-bound dependency slice.
The complete license notice is retained in LICENSE-Will-Blair.txt.
-/
import research.tasks.«B686-Four».round9.uniform.InitialLcm
import research.tasks.«B686-Four».round9.uniform.FactorialTail
import research.tasks.«B686-Four».round9.main.MatchingLcm

namespace B686LcmBounds

open B686LcmScale

set_option maxHeartbeats 1200000
set_option format.width 240

lemma centeredDiffProduct_eq_ascFactorial
    {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    centeredDiffProduct k d =
      (d - (k - 1)).ascFactorial (2 * k - 1) := by
  have hset : Finset.Icc 0 (2 * k - 2) = Finset.range (2 * k - 1) := by
    ext h
    simp only [Finset.mem_Icc, Finset.mem_range]
    omega
  unfold centeredDiffProduct
  rw [hset, Nat.ascFactorial_eq_prod_range]
  apply Finset.prod_congr rfl
  intro h hh
  omega

lemma centeredDiffLcm_eq_intervalLcm
    {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    centeredDiffLcm k d = intervalLcm (d - (k - 1)) (2 * k - 1) := by
  have hset : Finset.Icc 0 (2 * k - 2) = Finset.range (2 * k - 1) := by
    ext h
    simp only [Finset.mem_Icc, Finset.mem_range]
    omega
  unfold centeredDiffLcm intervalLcm
  apply Finset.lcm_congr hset
  intro h hh
  omega

/-- Centered specialization of the exact interval theorem. -/
theorem factorial_mul_centeredDiffLcm_dvd_centeredDiffProduct_mul_initialLcm
    {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    (2 * k - 1).factorial * centeredDiffLcm k d ∣
      centeredDiffProduct k d * initialLcm (2 * k - 1) := by
  rw [centeredDiffLcm_eq_intervalLcm hk hd,
    centeredDiffProduct_eq_ascFactorial hk hd]
  exact factorial_mul_intervalLcm_dvd_ascFactorial_mul_initialLcm
    (by omega) (by omega)

lemma centeredDiffProduct_succ
    {k d : ℕ} (hk : 1 ≤ k) (hd : k + 1 ≤ d) :
    centeredDiffProduct (k + 1) d =
      (d - k) * centeredDiffProduct k d * (d + k) := by
  rw [centeredDiffProduct_eq_ascFactorial (by omega) hd,
    centeredDiffProduct_eq_ascFactorial hk (by omega)]
  let a : ℕ := d - k
  have hnewstart : d - (k + 1 - 1) = a := by dsimp [a]
  have ha : a + 1 = d - (k - 1) := by dsimp [a]; omega
  have hlen : 2 * (k + 1) - 1 = 1 + ((2 * k - 1) + 1) := by omega
  rw [hnewstart, ← ha]
  rw [hlen, ← Nat.ascFactorial_mul_ascFactorial]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero, Nat.mul_one]
  have hfirst : a + 0 = d - k := by dsimp [a]
  have hlast : a + 1 + (2 * k - 1) = d + k := by dsimp [a]; omega
  rw [hfirst, hlast]
  ring

lemma centered_pair_lt_gap_sq {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    (d - k) * (d + k) < d ^ 2 := by
  nlinarith [Nat.sub_add_cancel hd]

/-- A symmetric interval product never exceeds the corresponding constant
product at its center. -/
lemma centeredDiffProduct_le_gap_pow
    {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    centeredDiffProduct k d ≤ d ^ (2 * k - 1) := by
  induction k using Nat.case_strong_induction_on with
  | hz => omega
  | hi k ih =>
      by_cases hk0 : k = 0
      · subst k
        simp [centeredDiffProduct]
      · have hkpos : 1 ≤ k := by omega
        have hd' : k ≤ d := by omega
        rw [centeredDiffProduct_succ hkpos (by omega)]
        have hpair : (d - k) * (d + k) ≤ d ^ 2 :=
          le_of_lt (centered_pair_lt_gap_sq hkpos hd')
        have hinner := ih k (by omega) hkpos hd'
        calc
          (d - k) * centeredDiffProduct k d * (d + k) =
              ((d - k) * (d + k)) * centeredDiffProduct k d := by ring
          _ ≤ d ^ 2 * d ^ (2 * k - 1) := Nat.mul_le_mul hpair hinner
          _ = d ^ (2 * (k + 1) - 1) := by
            rw [← pow_add]
            congr 1
            omega

/-- For at least three centered factors the preceding bound is strict. -/
lemma centeredDiffProduct_lt_gap_pow
    {k d : ℕ} (hk : 2 ≤ k) (hd : k ≤ d) :
    centeredDiffProduct k d < d ^ (2 * k - 1) := by
  let r : ℕ := k - 1
  have hr : 1 ≤ r := by dsimp [r]; omega
  have hkform : k = r + 1 := by dsimp [r]; omega
  have hrd : r ≤ d := by omega
  rw [hkform, centeredDiffProduct_succ hr (by omega)]
  have hpair := centered_pair_lt_gap_sq hr hrd
  have hinner := centeredDiffProduct_le_gap_pow hr hrd
  have hinnerPos : 0 < centeredDiffProduct r d :=
    centeredDiffProduct_pos hr hrd
  calc
    (d - r) * centeredDiffProduct r d * (d + r) =
        ((d - r) * (d + r)) * centeredDiffProduct r d := by ring
    _ < d ^ 2 * centeredDiffProduct r d :=
      Nat.mul_lt_mul_of_pos_right hpair hinnerPos
    _ ≤ d ^ 2 * d ^ (2 * r - 1) := Nat.mul_le_mul_left _ hinner
    _ = d ^ (2 * (r + 1) - 1) := by
      rw [← pow_add]
      congr 1
      omega

theorem factorial_mul_centeredDiffLcm_lt_four_mul_gap_pow
    {k d : ℕ} (hk : 2 ≤ k) (hd : k ≤ d) :
    (2 * k - 1).factorial * centeredDiffLcm k d <
      (4 * d) ^ (2 * k - 1) := by
  have hdvd :=
    factorial_mul_centeredDiffLcm_dvd_centeredDiffProduct_mul_initialLcm
      (k := k) (d := d) (by omega) hd
  have hrhsPos :
      0 < centeredDiffProduct k d * initialLcm (2 * k - 1) :=
    mul_pos (centeredDiffProduct_pos (by omega) hd)
      (Nat.pos_of_ne_zero (initialLcm_ne_zero _))
  have hdivLe :
      (2 * k - 1).factorial * centeredDiffLcm k d ≤
        centeredDiffProduct k d * initialLcm (2 * k - 1) :=
    Nat.le_of_dvd hrhsPos hdvd
  have hprod := centeredDiffProduct_lt_gap_pow hk hd
  have hlcm := initialLcm_le_four_pow (2 * k - 1)
  calc
    (2 * k - 1).factorial * centeredDiffLcm k d ≤
        centeredDiffProduct k d * initialLcm (2 * k - 1) := hdivLe
    _ < d ^ (2 * k - 1) * initialLcm (2 * k - 1) :=
      Nat.mul_lt_mul_of_pos_right hprod
        (Nat.pos_of_ne_zero (initialLcm_ne_zero _))
    _ ≤ d ^ (2 * k - 1) * 4 ^ (2 * k - 1) :=
      Nat.mul_le_mul_left _ hlcm
    _ = (4 * d) ^ (2 * k - 1) := by rw [Nat.mul_pow]; ring

/-- Combined with the banked one-factorial matching compression, every
solution has this exact factorial-scaled upper bound. -/
theorem factorial_mul_blockProduct_lt_factorial_mul_four_gap_pow_of_solution
    {k n d : ℕ} (hk : 6 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (2 * k - 1).factorial * blockProduct k n <
      (k - 1).factorial * (4 * d) ^ (2 * k - 1) := by
  have hdvd := product_dvd_factorial_mul_centeredDiffLcm_four
    (k := k) (n := n) (d := d) (by omega) hd heq
  have hLpos : 0 < centeredDiffLcm k d :=
    Nat.pos_of_ne_zero (centeredDiffLcm_ne_zero (by omega) hd)
  have hblockLe : blockProduct k n ≤
      (k - 1).factorial * centeredDiffLcm k d :=
    Nat.le_of_dvd (mul_pos (Nat.factorial_pos _) hLpos) hdvd
  have hinterval := factorial_mul_centeredDiffLcm_lt_four_mul_gap_pow
    (k := k) (d := d) (by omega) hd
  calc
    (2 * k - 1).factorial * blockProduct k n ≤
        (2 * k - 1).factorial *
          ((k - 1).factorial * centeredDiffLcm k d) :=
      Nat.mul_le_mul_left _ hblockLe
    _ = (k - 1).factorial *
        ((2 * k - 1).factorial * centeredDiffLcm k d) := by ring
    _ < (k - 1).factorial * (4 * d) ^ (2 * k - 1) :=
      Nat.mul_lt_mul_of_pos_left hinterval (Nat.factorial_pos _)

theorem row_gap_pow_lt_three_pow_mul_blockProduct_of_solution
    {k n d : ℕ} (hk : 6 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (1 * k * d) ^ k < 3 ^ k * blockProduct k n := by
  have hratio := k_mul_gap_lt_three_mul_n_of_four_solution
    hk hd heq
  have hterm : ∀ i ∈ Finset.Icc 1 k,
      1 * k * d < 3 * (n + i) := by
    intro i hi
    simp only [one_mul]
    exact hratio.trans_le (Nat.mul_le_mul_left 3 (Nat.le_add_right n i))
  have hprod :
      (∏ _i ∈ Finset.Icc 1 k, (1 * k * d)) <
        ∏ i ∈ Finset.Icc 1 k, 3 * (n + i) := by
    apply Finset.prod_lt_prod
    · intro i hi
      exact mul_pos (mul_pos (by norm_num) (by omega)) (by omega)
    · intro i hi
      exact le_of_lt (hterm i hi)
    · exact ⟨1, Finset.mem_Icc.mpr ⟨le_rfl, by omega⟩,
        hterm 1 (Finset.mem_Icc.mpr ⟨le_rfl, by omega⟩)⟩
  have hcard : (Finset.Icc 1 k).card = k := by
    rw [Nat.card_Icc]
    omega
  simpa [blockProduct, B686Target.product, Finset.prod_const, hcard,
    Finset.prod_mul_distrib] using hprod

/-- Necessary inequality obtained by putting the ratio lower bound and the
interval-lcm upper bound on the same scale. -/
theorem factorial_scaled_ratio_lt_interval_bound_of_solution
    {k n d : ℕ} (hk : 6 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (2 * k - 1).factorial * (1 * k * d) ^ k <
      3 ^ k * ((k - 1).factorial * (4 * d) ^ (2 * k - 1)) := by
  have hlower :=
    row_gap_pow_lt_three_pow_mul_blockProduct_of_solution hk hd heq
  have hupper :=
    factorial_mul_blockProduct_lt_factorial_mul_four_gap_pow_of_solution
      hk hd heq
  calc
    (2 * k - 1).factorial * (1 * k * d) ^ k <
        (2 * k - 1).factorial * (3 ^ k * blockProduct k n) :=
      Nat.mul_lt_mul_of_pos_left hlower (Nat.factorial_pos _)
    _ = 3 ^ k * ((2 * k - 1).factorial * blockProduct k n) := by ring
    _ < 3 ^ k *
        ((k - 1).factorial * (4 * d) ^ (2 * k - 1)) :=
      Nat.mul_lt_mul_of_pos_left hupper (pow_pos (by norm_num) _)

theorem no_four_solution_of_quadratic_strip
    {k n d : ℕ} (hk : 6 ≤ k) (hd : k ≤ d)
    (hstrip : 64 * d ≤ k ^ 2) :
    blockProduct k (n + d) ≠ 4 * blockProduct k n := by
  intro heq
  have hnecessary := factorial_scaled_ratio_lt_interval_bound_of_solution
    hk hd heq
  have hcertificate := quadratic_strip_certificate hk hd hstrip
  exact (Nat.not_lt_of_ge hcertificate) hnecessary


/-- A uniform natural-number distance bound, including the small lengths. -/
theorem uniform_distance_bound_sixty_four (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : B686Target.product k m = 4 * B686Target.product k n) :
    k^2 < 64*(m-n) := by
  have hd : k ≤ m-n := by omega
  by_cases hsmall : k < 64
  · nlinarith
  · have hk6 : 6 ≤ k := by omega
    have hrep : n+(m-n) = m := by omega
    have heq' : blockProduct k (n+(m-n)) = 4 * blockProduct k n := by
      simpa only [hrep] using heq
    by_contra hnot
    exact no_four_solution_of_quadratic_strip hk6 hd (by omega) heq'

/-- The original requested constant follows from the stronger conservative bound. -/
theorem uniform_distance_bound (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : B686Target.product k m = 4 * B686Target.product k n) :
    k^2 < 250000*(m-n) := by
  have h := uniform_distance_bound_sixty_four k n m hk hsep heq
  nlinarith

/-- info: 'B686LcmBounds.factorial_mul_centeredDiffLcm_lt_four_mul_gap_pow' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms factorial_mul_centeredDiffLcm_lt_four_mul_gap_pow
/-- info: 'B686LcmBounds.factorial_scaled_ratio_lt_interval_bound_of_solution' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms factorial_scaled_ratio_lt_interval_bound_of_solution
/-- info: 'B686LcmBounds.no_four_solution_of_quadratic_strip' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms no_four_solution_of_quadratic_strip
/-- info: 'B686LcmBounds.uniform_distance_bound_sixty_four' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms uniform_distance_bound_sixty_four
/-- info: 'B686LcmBounds.uniform_distance_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms uniform_distance_bound

end B686LcmBounds





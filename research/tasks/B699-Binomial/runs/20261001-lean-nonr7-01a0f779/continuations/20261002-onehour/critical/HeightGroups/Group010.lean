import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group009
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen member 40 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Bounds.lean c57b4648b25767c75632bd31bfd3bfa77860660770ccd8f2ae999ca34c0b0fd0 -/
section HeightMember040


/-! UNCOMPILED. Bounds for the actual four factorial-ratio tracks. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive

theorem ratio_rough (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    infiniteRate * ((x + 1) / (x + 2)) ^ 2 ≤ ratio t x := by
  have hden : 0 < denominator t x := denominator_pos t x hx
  have hx0 : 0 ≤ x := le_trans (Nat.cast_nonneg _) hx
  have hmp : x + 2 ≠ 0 := ne_of_gt (by linarith : 0 < x + 2)
  have hcert := rough_certificate t (x - (kMin t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (kMin t : ℚ) + (kMin t : ℚ) = x := by ring
  simp only [hs] at hcert
  apply sub_nonneg.mp
  have hid : ratio t x - infiniteRate * ((x + 1) / (x + 2)) ^ 2 =
      (67108864 * numerator t x * (x + 2) ^ 2 -
        387420489 * denominator t x * (x + 1) ^ 2) /
      (67108864 * denominator t x * (x + 2) ^ 2) := by
    unfold ratio infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t k * (infiniteRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      divisor t (k + 1) := by
  rw [divisor_step t k hk]
  exact mul_le_mul_of_nonneg_left
    (ratio_rough t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

theorem ratio_middle (t : Track) (x : ℚ) (hx : (cutoff t : ℚ) ≤ x) :
    middleRate ≤ ratio t x := by
  have hstart : (kMin t : ℚ) ≤ (cutoff t : ℚ) := by
    exact_mod_cast cutoff_ge_kMin t
  have hden : 0 < denominator t x := denominator_pos t x (hstart.trans hx)
  have hcert := middle_certificate t (x - (cutoff t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (cutoff t : ℚ) + (cutoff t : ℚ) = x := by ring
  simp only [hs] at hcert
  have hmid : middleRate = (5413091590980161748469798877616017917092297780481 : ℚ) / 1000000000000000000000000000000000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  simpa only [mul_comm (numerator t x) (1000000000000000000000000000000000000000000000000 : ℚ)] using hcert

theorem divisor_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    divisor t k * middleRate ≤ divisor t (k + 1) := by
  rw [divisor_step t k ((cutoff_ge_kMin t).trans hk)]
  exact mul_le_mul_of_nonneg_left
    (ratio_middle t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

end Math.B699.I11DivisorTwoFive

end HeightMember040
/- Frozen member 41 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\ElementaryRate.lean 1a277b639beae4464785efec3655f9631debc59be48d7c70b348ff528362b271 -/
section HeightMember041








/-!
Finite rational growth from actual one-step certificates.
These sequence lemmas do not themselves prove factorial divisibility or a
Padé G bound. Each actual sequence must discharge the displayed step and
base obligations with its source-aligned certificate.
-/

namespace Math.B699.ElementaryRate

theorem lower_telescoping_from_step {F : ℕ → ℚ} {R : ℚ} {k0 : ℕ}
    (hR : 0 ≤ R)
    (hstep : ∀ k : ℕ, k0 ≤ k →
      F k * (R * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ F (k + 1))
    (n : ℕ) :
    F k0 * R ^ n * ((k0 : ℚ) + 1) ^ 2 /
      (((k0 + n : ℕ) : ℚ) + 1) ^ 2 ≤ F (k0 + n) := by
  induction n with
  | zero =>
      apply le_of_eq
      simp only [pow_zero, mul_one, Nat.add_zero]
      have hk : (k0 : ℚ) + 1 ≠ 0 := by positivity
      field_simp
  | succ n ih =>
      have hk : 0 < ((k0 + n : ℕ) : ℚ) + 1 := by positivity
      have hk2 : 0 < ((k0 + n : ℕ) : ℚ) + 2 := by positivity
      calc
        F k0 * R ^ (n + 1) * ((k0 : ℚ) + 1) ^ 2 /
            (((k0 + (n + 1) : ℕ) : ℚ) + 1) ^ 2 =
          (F k0 * R ^ n * ((k0 : ℚ) + 1) ^ 2 /
            (((k0 + n : ℕ) : ℚ) + 1) ^ 2) *
            (R * ((((k0 + n : ℕ) : ℚ) + 1) / (((k0 + n : ℕ) : ℚ) + 2)) ^ 2) := by
              rw [pow_succ]
              simp only [Nat.cast_add, Nat.cast_one] at *
              field_simp
              <;> ring
        _ ≤ F (k0 + n) *
            (R * ((((k0 + n : ℕ) : ℚ) + 1) / (((k0 + n : ℕ) : ℚ) + 2)) ^ 2) :=
          mul_le_mul_of_nonneg_right ih (mul_nonneg hR (sq_nonneg _))
        _ ≤ F (k0 + (n + 1)) := by
          simpa only [Nat.add_assoc] using hstep (k0 + n) (by omega)

theorem lower_geometric_from_step {F : ℕ → ℚ} {R : ℚ} {K : ℕ}
    (hR : 0 ≤ R)
    (hstep : ∀ k : ℕ, K ≤ k → F k * R ≤ F (k + 1))
    (n : ℕ) : F K * R ^ n ≤ F (K + n) := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        F K * R ^ (n + 1) = (F K * R ^ n) * R := by rw [pow_succ]; ring
        _ ≤ F (K + n) * R := mul_le_mul_of_nonneg_right ih hR
        _ ≤ F (K + (n + 1)) := by
          simpa only [Nat.add_assoc] using hstep (K + n) (by omega)

theorem two_le_block_power {R : ℚ} {B : ℕ}
    (hR : 1 ≤ R) (hlinear : 2 ≤ 1 + (B : ℚ) * (R - 1)) :
    2 ≤ R ^ B := by
  exact hlinear.trans (one_add_mul_sub_le_pow (by linarith : -1 ≤ R) B)

theorem two_pow_le_block_power {R : ℚ} {B : ℕ}
    (hblock : 2 ≤ R ^ B) (t : ℕ) : (2 : ℚ) ^ t ≤ R ^ (B * t) := by
  rw [pow_mul]
  exact pow_le_pow_left₀ (by norm_num) hblock t

/-- All exponents and base losses are finite integer data. No large block
power needs to be evaluated: the linear Bernoulli premise implies it. -/
theorem strict_threshold_from_step {F : ℕ → ℚ} {R : ℚ} {K T B n : ℕ}
    (hR : 1 ≤ R) (hF : 0 ≤ F K)
    (hstep : ∀ k : ℕ, K ≤ k → F k * R ≤ F (k + 1))
    (hbase : 1 ≤ F K * (2 : ℚ) ^ T)
    (hlinear : 2 ≤ 1 + (B : ℚ) * (R - 1))
    (hn : B * (T + 1) ≤ n) : 1 < F (K + n) := by
  have hp : (2 : ℚ) ^ (T + 1) ≤ R ^ n :=
    (two_pow_le_block_power (two_le_block_power hR hlinear) (T + 1)).trans
      (pow_le_pow_right₀ hR hn)
  have hbound : (2 : ℚ) ≤ F (K + n) := by
    calc
      (2 : ℚ) = 1 * 2 := by ring
      _ ≤ (F K * (2 : ℚ) ^ T) * 2 := mul_le_mul_of_nonneg_right hbase (by norm_num)
      _ = F K * (2 : ℚ) ^ (T + 1) := by rw [pow_succ]; ring
      _ ≤ F K * R ^ n := mul_le_mul_of_nonneg_left hp hF
      _ ≤ F (K + n) := lower_geometric_from_step (by linarith) hstep n
  exact lt_of_lt_of_le (by norm_num : (1 : ℚ) < 2) hbound

#print axioms Math.B699.ElementaryRate.lower_telescoping_from_step
#print axioms Math.B699.ElementaryRate.lower_geometric_from_step
#print axioms Math.B699.ElementaryRate.two_le_block_power
#print axioms Math.B699.ElementaryRate.two_pow_le_block_power
#print axioms Math.B699.ElementaryRate.strict_threshold_from_step

end Math.B699.ElementaryRate

end HeightMember041
/- Frozen member 42 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Threshold.lean 8fd9d17d1e7a8c7f90e56915c1f1135c6c7c99e2c60482832ba2b3161ee8f094 -/
section HeightMember042



/-!
UNCOMPILED. All four actual tracks feed the accepted sequence lemmas.
The final qContent statement has no G, divisor-step, asymptotic or height premise.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def normalized (t : Track) (k : ℕ) : ℚ :=
  divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k)

theorem normalized_pos (t : Track) (k : ℕ) : 0 < normalized t k :=
  div_pos (divisor_pos t k)
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))

theorem normalized_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    normalized t k * (1 * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      normalized t (k + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((k : ℚ) + 1) / ((k : ℚ) + 2))))
  have hstep : divisor t k *
      (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ divisor t (k + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_pos t k).le).trans
      (divisor_rough_step t k hk)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  have hd : (k : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisor t k * (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2)) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs, hd]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right hstep
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

theorem normalized_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    normalized t k * blockRatio ≤ normalized t (k + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  calc
    _ = (divisor t k * middleRate) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized blockRatio
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right (divisor_middle_step t k hk)
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

/-- The only direct evaluations use the actual four small initial values. -/
theorem finite_binary_base (t : Track) :
    1 ≤ (normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2) * (2 : ℚ) ^ loss t := by
  rw [normalized, divisor_initial]
  cases t <;> norm_num [initialValue, kMin, cutoff, loss, rho, targetRate, targetBase]

theorem normalized_binary_base (t : Track) :
    1 ≤ normalized t (cutoff t) * (2 : ℚ) ^ loss t := by
  have hstart := cutoff_ge_kMin t
  have hindex : kMin t + (cutoff t - kMin t) = cutoff t := by omega
  have h := lower_telescoping_from_step (F := normalized t) (R := 1) (k0 := kMin t)
    (by norm_num) (fun k hk => normalized_rough_step t k hk) (cutoff t - kMin t)
  have htel : normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2 ≤ normalized t (cutoff t) := by
    simpa only [one_pow, mul_one, hindex] using h
  exact (finite_binary_base t).trans
    (mul_le_mul_of_nonneg_right htel (by positivity))

theorem normalized_gt_one (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) : 1 < normalized t k := by
  have hn : 5 * (loss t + 1) ≤ k - cutoff t := by omega
  have h := strict_threshold_from_step (F := normalized t) (R := blockRatio)
    (K := cutoff t) (T := loss t) (B := 5) (n := k - cutoff t)
    block_ratio_ge_one (normalized_pos t (cutoff t)).le
    (fun j hj => normalized_middle_step t j hj)
    (normalized_binary_base t) block_linear_bound hn
  have hindex : cutoff t + (k - cutoff t) = k := by omega
  simpa only [hindex] using h

theorem divisor_lower (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) :
    targetBase ^ (4 * (2 * k + rho t)) < divisor t k := by
  have h := normalized_gt_one t k hk
  change 1 < divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k) at h
  have hmul := (lt_div_iff₀
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))).mp h
  have hden : targetBase ^ (4 * rho t) * targetRate ^ k =
      targetBase ^ (4 * (2 * k + rho t)) := by
    rw [targetRate, ← pow_mul, ← pow_add]
    congr 1
    ring
  simpa only [one_mul, hden] using hmul

theorem threshold_from_large_m (t : Track) (k : ℕ) (hm : 141 ≤ 2 * k + rho t) :
    cutoff t + 5 * (loss t + 1) ≤ k := by
  cases t <;> simp only [rho, cutoff, loss] at * <;> omega

/-- Both delta values and both parity classes are covered, including odd m=141. -/
theorem source_track (d m : ℕ) (hd : d = 0 ∨ d = 1) (hm : 1 ≤ m) :
    ∃ t : Track, ∃ k : ℕ, kMin t ≤ k ∧ d = delta t ∧ m = 2 * k + rho t := by
  have hmod : m % 2 = 0 ∨ m % 2 = 1 := by omega
  have hdiv := Nat.mod_add_div m 2
  rcases hd with rfl | rfl
  · rcases hmod with hz | ho
    · refine ⟨.evenZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
  · rcases hmod with hz | ho
    · refine ⟨.evenOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega

theorem rationalDivisor_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      rationalDivisor (4 * m - d) (m + d - 1) := by
  obtain ⟨t, k, _hk, hdrep, hmrep⟩ := source_track d m hd (by omega)
  have hlarge : 141 ≤ 2 * k + rho t := by omega
  have h := divisor_lower t k (threshold_from_large_m t k hlarge)
  rw [divisor_eq_actual] at h
  change targetBase ^ (4 * m) < rationalDivisor (4 * m - d) (m + d - 1)
  rw [hdrep, hmrep]
  exact h

/-- Actual finite-gcd qContent, with no G, recurrence, growth or height assumption. -/
theorem qContent_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      (qContent (4 * m - d) (m + d - 1) (4 * m - d) : ℚ) := by
  exact (rationalDivisor_two_five_lower d m hd hm).trans_le
    (rationalDivisor_le_qContent (4 * m - d) (m + d - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m) (m - 1) (4 * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using
    qContent_two_five_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m - 1) m (4 * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using
    qContent_two_five_lower 1 m (Or.inr rfl) hm

end Math.B699.I11DivisorTwoFive

end HeightMember042
/- Frozen member 43 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11Scaled\RatBounds.lean b6d44c355213e6513ca30b440af47efcc731cdbec86a2838c9e22ac9ddb392b8 -/
section HeightMember043







/-! UNCOMPILED CANDIDATE. Denominator-free rational bounds. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ScaledBounds

theorem normalized_abs_bound (g l t x v H : ℚ)
    (hl : 0 ≤ l) (hgl : l ≤ g) (ht : 0 ≤ t)
    (hid : g * x = t * v) (hv : |v| ≤ H) : l * |x| ≤ t * H := by
  have hg : 0 ≤ g := le_trans hl hgl
  have habs : g * |x| = t * |v| := by
    simpa only [abs_mul, abs_of_nonneg hg, abs_of_nonneg ht] using congrArg abs hid
  calc
    l * |x| ≤ g * |x| := mul_le_mul_of_nonneg_right hgl (abs_nonneg x)
    _ = t * |v| := habs
    _ ≤ t * H := mul_le_mul_of_nonneg_left hv ht

theorem weighted_bound_lt (l r k x D : ℚ)
    (hl : 0 < l) (hk : 0 ≤ k) (hbound : l * x ≤ D)
    (hsmall : k * D < r * l) : k * x < r := by
  apply (Rat.mul_lt_mul_left hl).mp
  calc
    l * (k * x) = k * (l * x) := by ring
    _ ≤ k * D := mul_le_mul_of_nonneg_left hbound hk
    _ < l * r := by simpa only [mul_comm l r] using hsmall

theorem ratio_pow_mul (N D : ℚ) (hD : D ≠ 0) (m : ℕ) :
    (N / D) ^ m * D ^ m = N ^ m := by
  rw [← mul_pow, div_mul_cancel₀ _ hD]

theorem sum_lt_of_twice_lt (a b r : ℚ)
    (ha : 2 * a < r) (hb : 2 * b < r) : a + b < r := by linarith

end Math.B699.I11ScaledBounds
#print axioms Math.B699.I11ScaledBounds.normalized_abs_bound
#print axioms Math.B699.I11ScaledBounds.weighted_bound_lt
#print axioms Math.B699.I11ScaledBounds.ratio_pow_mul
#print axioms Math.B699.I11ScaledBounds.sum_lt_of_twice_lt

end HeightMember043

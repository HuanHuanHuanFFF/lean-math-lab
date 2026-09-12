import Mathlib.Data.Real.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Data.Int.GCD
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Omega

/-!
Candidate soundness layer for the frozen zero-boundary logarithm certificate.
The rational checks are executable. They do not assume the distance conclusion,
continued-fraction identities, or logarithm identities. Real-box membership is
an explicit analytic input to this independent arithmetic layer.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryLogSeparation

structure Approximation where
  alphaLower : ℚ
  alphaUpper : ℚ
  u : ℤ
  v : ℤ
  error : ℚ
  deriving DecidableEq

/-- Two endpoint checks control every alpha in the box because v is positive. -/
def approximationCheck (d : Approximation) : Bool :=
  decide (0 < d.v ∧ 0 ≤ d.error ∧ d.alphaLower ≤ d.alphaUpper ∧
    -d.error ≤ (d.v : ℚ) * d.alphaLower - d.u ∧
    (d.v : ℚ) * d.alphaUpper - d.u ≤ d.error)

theorem approximationCheck_sound {d : Approximation} {alpha : ℝ}
    (hc : approximationCheck d = true)
    (ha : (d.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.alphaUpper : ℝ)) :
    0 < (d.v : ℝ) ∧ 0 ≤ (d.error : ℝ) ∧
      |(d.v : ℝ) * alpha - d.u| ≤ (d.error : ℝ) := by
  have hp : 0 < d.v ∧ 0 ≤ d.error ∧ d.alphaLower ≤ d.alphaUpper ∧
      -d.error ≤ (d.v : ℚ) * d.alphaLower - d.u ∧
      (d.v : ℚ) * d.alphaUpper - d.u ≤ d.error := of_decide_eq_true hc
  rcases hp with ⟨hv, he, _, hlo, hhi⟩
  have hvR : 0 < (d.v : ℝ) := by exact_mod_cast hv
  have heR : 0 ≤ (d.error : ℝ) := by exact_mod_cast he
  refine ⟨hvR, heR, abs_le.mpr ⟨?_, ?_⟩⟩
  · have hloR : -(d.error : ℝ) ≤ (d.v : ℝ) * (d.alphaLower : ℝ) - d.u := by
      exact_mod_cast hlo
    exact hloR.trans (sub_le_sub_right (mul_le_mul_of_nonneg_left ha.1 hvR.le) _)
  · have hhiR : (d.v : ℝ) * (d.alphaUpper : ℝ) - d.u ≤ (d.error : ℝ) := by
      exact_mod_cast hhi
    exact (sub_le_sub_right (mul_le_mul_of_nonneg_left ha.2 hvR.le) _).trans hhiR

/-- Any integer is either below the strip or above its next integer endpoint. -/
theorem integer_strip_separation {t gap : ℝ} {k : ℤ}
    (hlo : (k : ℝ) + gap ≤ t)
    (hhi : t ≤ (k : ℝ) + 1 - gap) (z : ℤ) :
    gap ≤ |t - z| := by
  by_cases hz : z ≤ k
  · have hzR : (z : ℝ) ≤ (k : ℝ) := by exact_mod_cast hz
    have habs := le_abs_self (t - (z : ℝ))
    linarith
  · have hz' : k + 1 ≤ z := by omega
    have hzR : (k : ℝ) + 1 ≤ (z : ℝ) := by exact_mod_cast hz'
    have habs := neg_le_abs (t - (z : ℝ))
    linarith

structure NonresonantData where
  approx : Approximation
  betaLower : ℚ
  betaUpper : ℚ
  lowerInteger : ℤ
  gap : ℚ
  deriving DecidableEq

/-- Nonresonance needs neither a reduced fraction nor v > M. -/
def nonresonantCheck (M : ℕ) (epsilon : ℚ) (d : NonresonantData) : Bool :=
  decide (approximationCheck d.approx = true ∧ 0 < epsilon ∧
    d.betaLower ≤ d.betaUpper ∧
    (d.lowerInteger : ℚ) + d.gap ≤ (d.approx.v : ℚ) * d.betaLower ∧
    (d.approx.v : ℚ) * d.betaUpper ≤ (d.lowerInteger : ℚ) + 1 - d.gap ∧
    (M : ℚ) * d.approx.error + epsilon ≤ d.gap)

/-- Sound for every integer y, without a bound on y or a sign assumption on x. -/
theorem nonresonantCheck_sound {M : ℕ} {epsilon : ℚ} {d : NonresonantData}
    {alpha beta : ℝ}
    (hc : nonresonantCheck M epsilon d = true)
    (ha : (d.approx.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.approx.alphaUpper : ℝ))
    (hb : (d.betaLower : ℝ) ≤ beta ∧ beta ≤ (d.betaUpper : ℝ))
    (x y : ℤ) (hx : |x| ≤ (M : ℤ)) :
    (epsilon : ℝ) ≤ (d.approx.v : ℝ) * |(x : ℝ) * alpha - y + beta| := by
  have hp : approximationCheck d.approx = true ∧ 0 < epsilon ∧
      d.betaLower ≤ d.betaUpper ∧
      (d.lowerInteger : ℚ) + d.gap ≤ (d.approx.v : ℚ) * d.betaLower ∧
      (d.approx.v : ℚ) * d.betaUpper ≤ (d.lowerInteger : ℚ) + 1 - d.gap ∧
      (M : ℚ) * d.approx.error + epsilon ≤ d.gap := of_decide_eq_true hc
  rcases hp with ⟨hap, _, _, hlo, hhi, hmargin⟩
  rcases approximationCheck_sound hap ha with ⟨hv, he, herr⟩
  have hloR : (d.lowerInteger : ℝ) + (d.gap : ℝ) ≤
      (d.approx.v : ℝ) * (d.betaLower : ℝ) := by exact_mod_cast hlo
  have hhiR : (d.approx.v : ℝ) * (d.betaUpper : ℝ) ≤
      (d.lowerInteger : ℝ) + 1 - (d.gap : ℝ) := by exact_mod_cast hhi
  have hstripLo : (d.lowerInteger : ℝ) + (d.gap : ℝ) ≤ (d.approx.v : ℝ) * beta :=
    hloR.trans (mul_le_mul_of_nonneg_left hb.1 hv.le)
  have hstripHi : (d.approx.v : ℝ) * beta ≤ (d.lowerInteger : ℝ) + 1 - (d.gap : ℝ) :=
    (mul_le_mul_of_nonneg_left hb.2 hv.le).trans hhiR
  have hmarginR : (M : ℝ) * (d.approx.error : ℝ) + (epsilon : ℝ) ≤ (d.gap : ℝ) := by
    exact_mod_cast hmargin
  have hxR : |(x : ℝ)| ≤ (M : ℝ) := by exact_mod_cast hx
  have herror : |(x : ℝ) * ((d.approx.v : ℝ) * alpha - d.approx.u)| ≤
      (M : ℝ) * (d.approx.error : ℝ) := by
    rw [abs_mul]
    exact mul_le_mul hxR herr (abs_nonneg _) (Nat.cast_nonneg _)
  let z : ℤ := y * d.approx.v - x * d.approx.u
  have hdistance := integer_strip_separation hstripLo hstripHi z
  have htriangle : |(d.approx.v : ℝ) * beta - (z : ℝ)| ≤
      (d.approx.v : ℝ) * |(x : ℝ) * alpha - y + beta| +
        (M : ℝ) * (d.approx.error : ℝ) := by
    calc
      _ = |(d.approx.v : ℝ) * ((x : ℝ) * alpha - y + beta) -
          (x : ℝ) * ((d.approx.v : ℝ) * alpha - d.approx.u)| := by
        congr 1
        dsimp [z]
        push_cast
        ring
      _ ≤ |(d.approx.v : ℝ) * ((x : ℝ) * alpha - y + beta)| +
          |(x : ℝ) * ((d.approx.v : ℝ) * alpha - d.approx.u)| := abs_sub _ _
      _ = (d.approx.v : ℝ) * |(x : ℝ) * alpha - y + beta| +
          |(x : ℝ) * ((d.approx.v : ℝ) * alpha - d.approx.u)| := by
        rw [abs_mul, abs_of_pos hv]
      _ ≤ _ := add_le_add_left herror _
  linarith

/-- A reduced fraction with denominator beyond |x| cannot equal y/x. -/
theorem determinant_ne_zero {u v x y : ℤ}
    (hv : 0 < v) (hcoprime : Int.gcd u v = 1)
    (hx : |x| < v) (hxy : ¬ (x = 0 ∧ y = 0)) :
    u * x - v * y ≠ 0 := by
  intro hzero
  have heq : u * x = v * y := sub_eq_zero.mp hzero
  have hvux : v ∣ u * x := ⟨y, heq⟩
  have hcoprime' : Int.gcd v u = 1 := by rwa [Int.gcd_comm]
  have hvx : v ∣ x := Int.dvd_of_dvd_mul_right_of_gcd_one hvux hcoprime'
  have hxzero : x = 0 := by
    by_contra hxn
    rcases hvx with ⟨z, hz⟩
    have hzn : z ≠ 0 := by
      intro hz0
      exact hxn (by simpa [hz0] using hz)
    have hzpos : 0 < |z| := abs_pos.mpr hzn
    have hzabs : 1 ≤ |z| := by omega
    have hlarge : v ≤ |x| := by
      calc
        v = v * 1 := by ring
        _ ≤ v * |z| := mul_le_mul_of_nonneg_left hzabs hv.le
        _ = |x| := by rw [hz, abs_mul, abs_of_pos hv]
    omega
  have hyzero : y = 0 := by
    have hvy : v * y = 0 := by simpa [hxzero] using heq.symm
    exact (mul_eq_zero.mp hvy).resolve_left (ne_of_gt hv)
  exact hxy ⟨hxzero, hyzero⟩

/-- Gcd and v > M are checked here because this branch actually uses them. -/
def resonantCheck (M : ℕ) (d : Approximation) : Bool :=
  decide (approximationCheck d = true ∧ Int.gcd d.u d.v = 1 ∧
    (M : ℤ) < d.v ∧ (M : ℚ) * d.error < 1 / 2)

/-- Includes x = 0, y != 0. Only the genuinely zero pair is excluded. -/
theorem resonantCheck_sound {M : ℕ} {d : Approximation} {alpha : ℝ}
    (hc : resonantCheck M d = true)
    (ha : (d.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.alphaUpper : ℝ))
    (x y : ℤ) (hx : |x| ≤ (M : ℤ)) (hxy : ¬ (x = 0 ∧ y = 0)) :
    (1 : ℝ) / 2 < (d.v : ℝ) * |(x : ℝ) * alpha - y| := by
  have hp : approximationCheck d = true ∧ Int.gcd d.u d.v = 1 ∧
      (M : ℤ) < d.v ∧ (M : ℚ) * d.error < 1 / 2 := of_decide_eq_true hc
  rcases hp with ⟨hap, hcoprime, hdenom, hmargin⟩
  rcases approximationCheck_sound hap ha with ⟨hv, he, herr⟩
  have hvZ : 0 < d.v := by exact_mod_cast hv
  have hdet := determinant_ne_zero hvZ hcoprime (hx.trans_lt hdenom) hxy
  have hdetpos : 0 < |d.u * x - d.v * y| := abs_pos.mpr hdet
  have hdetone : 1 ≤ |d.u * x - d.v * y| := by omega
  have hdetR : (1 : ℝ) ≤ |(d.u : ℝ) * (x : ℝ) - (d.v : ℝ) * (y : ℝ)| := by
    exact_mod_cast hdetone
  have hxR : |(x : ℝ)| ≤ (M : ℝ) := by exact_mod_cast hx
  have herror : |(x : ℝ) * ((d.v : ℝ) * alpha - d.u)| ≤ (M : ℝ) * (d.error : ℝ) := by
    rw [abs_mul]
    exact mul_le_mul hxR herr (abs_nonneg _) (Nat.cast_nonneg _)
  have hmarginR : (M : ℝ) * (d.error : ℝ) < 1 / 2 := by exact_mod_cast hmargin
  have htriangle : |(d.u : ℝ) * (x : ℝ) - (d.v : ℝ) * (y : ℝ)| ≤
      (d.v : ℝ) * |(x : ℝ) * alpha - y| + (M : ℝ) * (d.error : ℝ) := by
    calc
      _ = |(d.v : ℝ) * ((x : ℝ) * alpha - y) -
          (x : ℝ) * ((d.v : ℝ) * alpha - d.u)| := by congr 1; ring
      _ ≤ |(d.v : ℝ) * ((x : ℝ) * alpha - y)| +
          |(x : ℝ) * ((d.v : ℝ) * alpha - d.u)| := abs_sub _ _
      _ = (d.v : ℝ) * |(x : ℝ) * alpha - y| +
          |(x : ℝ) * ((d.v : ℝ) * alpha - d.u)| := by rw [abs_mul, abs_of_pos hv]
      _ ≤ _ := add_le_add_left herror _
  linarith

/-- The X = 0 subcase has a stronger bound and uses no certificate. -/
theorem zero_first_coordinate_separation (alpha : ℝ) {y : ℤ} (hy : y ≠ 0) :
    (1 : ℝ) ≤ |(0 : ℝ) * alpha - (y : ℝ)| := by
  have hypos : 0 < |y| := abs_pos.mpr hy
  have hyone : 1 ≤ |y| := by omega
  have hyR : (1 : ℝ) ≤ |(y : ℝ)| := by exact_mod_cast hyone
  simpa using hyR

/-- The exact absorption identity includes both signed shifts. -/
theorem shifted_form_eq {alpha beta : ℝ} (x y r s : ℤ)
    (hb : beta = (r : ℝ) * alpha + s) :
    (x : ℝ) * alpha - y + beta = ((x + r : ℤ) : ℝ) * alpha - ((y - s : ℤ) : ℝ) := by
  rw [hb]
  push_cast
  ring

/-- Nonzero linear form discharges the excluded zero pair after absorption. -/
theorem resonant_shift_sound {M : ℕ} {d : Approximation} {alpha beta : ℝ}
    (hc : resonantCheck M d = true)
    (ha : (d.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.alphaUpper : ℝ))
    (x y r s : ℤ) (hb : beta = (r : ℝ) * alpha + s)
    (hx : |x + r| ≤ (M : ℤ))
    (hnonzero : (x : ℝ) * alpha - y + beta ≠ 0) :
    (1 : ℝ) / 2 < (d.v : ℝ) * |(x : ℝ) * alpha - y + beta| := by
  have heq := shifted_form_eq x y r s hb
  have hxy : ¬ (x + r = 0 ∧ y - s = 0) := by
    rintro ⟨hx0, hy0⟩
    apply hnonzero
    simpa [hx0, hy0] using heq
  rw [heq]
  exact resonantCheck_sound hc ha (x + r) (y - s) hx hxy

theorem signed_shift_bound {x r : ℤ} {m c : ℕ}
    (hx : |x| ≤ (m : ℤ)) (hr : |r| ≤ (c : ℤ)) :
    |x + r| ≤ ((m + c : ℕ) : ℤ) := by
  have htri := abs_add x r
  push_cast
  omega

/-- This is only an exponent-bookkeeping fact, not a proof of the new height. -/
theorem new_height_shift_fits_old_budget {x r : ℤ}
    (hx : |x| ≤ 15359) (hr : |r| ≤ 6) : |x + r| ≤ ((2 ^ 53 : ℕ) : ℤ) := by
  have h := signed_shift_bound (m := 15359) (c := 6) hx hr
  norm_num at h ⊢
  omega

end Math.B699.ZeroBoundaryLogSeparation

#check (Math.B699.ZeroBoundaryLogSeparation.approximationCheck_sound :
  ∀ {d : Math.B699.ZeroBoundaryLogSeparation.Approximation} {alpha : ℝ},
    Math.B699.ZeroBoundaryLogSeparation.approximationCheck d = true →
    ((d.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.alphaUpper : ℝ)) →
    0 < (d.v : ℝ) ∧ 0 ≤ (d.error : ℝ) ∧ |(d.v : ℝ) * alpha - d.u| ≤ (d.error : ℝ))
#check (Math.B699.ZeroBoundaryLogSeparation.integer_strip_separation :
  ∀ {t gap : ℝ} {k : ℤ}, (k : ℝ) + gap ≤ t → t ≤ (k : ℝ) + 1 - gap →
    ∀ z : ℤ, gap ≤ |t - z|)
#check (Math.B699.ZeroBoundaryLogSeparation.nonresonantCheck_sound :
  ∀ {M : ℕ} {epsilon : ℚ} {d : Math.B699.ZeroBoundaryLogSeparation.NonresonantData}
    {alpha beta : ℝ},
    Math.B699.ZeroBoundaryLogSeparation.nonresonantCheck M epsilon d = true →
    ((d.approx.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.approx.alphaUpper : ℝ)) →
    ((d.betaLower : ℝ) ≤ beta ∧ beta ≤ (d.betaUpper : ℝ)) →
    ∀ x y : ℤ, |x| ≤ (M : ℤ) →
      (epsilon : ℝ) ≤ (d.approx.v : ℝ) * |(x : ℝ) * alpha - y + beta|)
#check (Math.B699.ZeroBoundaryLogSeparation.determinant_ne_zero :
  ∀ {u v x y : ℤ}, 0 < v → Int.gcd u v = 1 → |x| < v →
    ¬ (x = 0 ∧ y = 0) → u * x - v * y ≠ 0)
#check (Math.B699.ZeroBoundaryLogSeparation.resonantCheck_sound :
  ∀ {M : ℕ} {d : Math.B699.ZeroBoundaryLogSeparation.Approximation} {alpha : ℝ},
    Math.B699.ZeroBoundaryLogSeparation.resonantCheck M d = true →
    ((d.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.alphaUpper : ℝ)) →
    ∀ x y : ℤ, |x| ≤ (M : ℤ) → ¬ (x = 0 ∧ y = 0) →
      (1 : ℝ) / 2 < (d.v : ℝ) * |(x : ℝ) * alpha - y|)
#check (Math.B699.ZeroBoundaryLogSeparation.zero_first_coordinate_separation :
  ∀ alpha : ℝ, ∀ {y : ℤ}, y ≠ 0 → (1 : ℝ) ≤ |(0 : ℝ) * alpha - (y : ℝ)|)
#check (Math.B699.ZeroBoundaryLogSeparation.shifted_form_eq :
  ∀ {alpha beta : ℝ} (x y r s : ℤ), beta = (r : ℝ) * alpha + s →
    (x : ℝ) * alpha - y + beta = ((x + r : ℤ) : ℝ) * alpha - ((y - s : ℤ) : ℝ))
#check (Math.B699.ZeroBoundaryLogSeparation.resonant_shift_sound :
  ∀ {M : ℕ} {d : Math.B699.ZeroBoundaryLogSeparation.Approximation} {alpha beta : ℝ},
    Math.B699.ZeroBoundaryLogSeparation.resonantCheck M d = true →
    ((d.alphaLower : ℝ) ≤ alpha ∧ alpha ≤ (d.alphaUpper : ℝ)) →
    ∀ x y r s : ℤ, beta = (r : ℝ) * alpha + s → |x + r| ≤ (M : ℤ) →
      (x : ℝ) * alpha - y + beta ≠ 0 →
      (1 : ℝ) / 2 < (d.v : ℝ) * |(x : ℝ) * alpha - y + beta|)
#check (Math.B699.ZeroBoundaryLogSeparation.signed_shift_bound :
  ∀ {x r : ℤ} {m c : ℕ}, |x| ≤ (m : ℤ) → |r| ≤ (c : ℤ) →
    |x + r| ≤ ((m + c : ℕ) : ℤ))
#check (Math.B699.ZeroBoundaryLogSeparation.new_height_shift_fits_old_budget :
  ∀ {x r : ℤ}, |x| ≤ 15359 → |r| ≤ 6 → |x + r| ≤ ((2 ^ 53 : ℕ) : ℤ))
#print axioms Math.B699.ZeroBoundaryLogSeparation.approximationCheck_sound
#print axioms Math.B699.ZeroBoundaryLogSeparation.integer_strip_separation
#print axioms Math.B699.ZeroBoundaryLogSeparation.nonresonantCheck_sound
#print axioms Math.B699.ZeroBoundaryLogSeparation.determinant_ne_zero
#print axioms Math.B699.ZeroBoundaryLogSeparation.resonantCheck_sound
#print axioms Math.B699.ZeroBoundaryLogSeparation.zero_first_coordinate_separation
#print axioms Math.B699.ZeroBoundaryLogSeparation.shifted_form_eq
#print axioms Math.B699.ZeroBoundaryLogSeparation.resonant_shift_sound
#print axioms Math.B699.ZeroBoundaryLogSeparation.signed_shift_bound
#print axioms Math.B699.ZeroBoundaryLogSeparation.new_height_shift_fits_old_budget

import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.RootPolynomial
import Mathlib.Analysis.Real.Sqrt

/-! The exact continuous-position shift and the positive kernel comparison used
in the accepted quarter Runge proof.  No Cauchy representation is assumed here. -/

namespace B686QuarterRunge

open Finset

noncomputable section

def realRadicand (r : ℕ) (u : ℝ) : ℝ :=
  ∏ i ∈ range r, (u ^ 2 - (2 * (i : ℝ) + 1) ^ 2)

theorem realRadicand_shift (r : ℕ) (u : ℝ) :
    realRadicand r (u + 2) * (u - 2 * r + 1) =
      realRadicand r u * (u + 2 * r + 1) := by
  induction r with
  | zero => simp [realRadicand]
  | succ r ih =>
    simp only [realRadicand, prod_range_succ]
    change (realRadicand r (u + 2) * ((u + 2) ^ 2 - (2 * (r : ℝ) + 1) ^ 2)) *
      (u - 2 * (r + 1 : ℕ) + 1) =
      (realRadicand r u * (u ^ 2 - (2 * (r : ℝ) + 1) ^ 2)) *
        (u + 2 * (r + 1 : ℕ) + 1)
    push_cast
    calc
      _ = (realRadicand r (u + 2) * (u - 2 * r + 1)) *
          (u + 2 * r + 3) * (u - 2 * r - 1) := by ring
      _ = _ := by rw [ih]; ring

theorem realRadicand_ne_zero_between (r j : ℕ) (u : ℝ)
    (hu : 4 * (j : ℝ) + 1 < u) (hv : u < 4 * (j : ℝ) + 3) :
    realRadicand r u ≠ 0 := by
  apply Finset.prod_ne_zero_iff.mpr
  intro i hi
  have hu0 : 0 < u := by linarith [Nat.cast_nonneg (α := ℝ) j]
  have ha0 : 0 < 2 * (i : ℝ) + 1 := by positivity
  have hne : u ≠ 2 * (i : ℝ) + 1 := by
    intro heq
    have hlow : 2 * j < i := by exact_mod_cast (by linarith : 2 * (j : ℝ) < (i : ℝ))
    have hhigh : i < 2 * j + 1 := by
      exact_mod_cast (by linarith : (i : ℝ) < 2 * (j : ℝ) + 1)
    omega
  intro hzero
  apply hne
  nlinarith

theorem realRadicand_abs_shift_strict (r : ℕ) (u : ℝ)
    (hu : 0 < u) (hub : u < 2 * r - 1) (hn : realRadicand r u ≠ 0) :
    |realRadicand r u| < |realRadicand r (u + 2)| := by
  have hshift := congrArg abs (realRadicand_shift r u)
  have hd : 0 < 2 * (r : ℝ) - 1 - u := by linarith
  have ht : 0 < u + 2 * (r : ℝ) + 1 := by positivity
  have hleft : |u - 2 * (r : ℝ) + 1| = 2 * r - 1 - u := by
    rw [abs_of_neg (by linarith)]
    ring
  rw [abs_mul, abs_mul, hleft, abs_of_pos ht] at hshift
  have hp : 0 < |realRadicand r u| := abs_pos.mpr hn
  by_contra h
  have hm := mul_le_mul_of_nonneg_right (le_of_not_gt h) hd.le
  nlinarith

theorem realRadicand_abs_shift_four_strict (r : ℕ) (u : ℝ)
    (hu : 0 < u) (hub : u + 2 < 2 * r - 1) (hn : realRadicand r u ≠ 0) :
    |realRadicand r u| < |realRadicand r (u + 4)| := by
  have hfirst := realRadicand_abs_shift_strict r u hu (by linarith) hn
  have hn2 : realRadicand r (u + 2) ≠ 0 :=
    abs_pos.mp ((abs_nonneg _).trans_lt hfirst)
  have hsecond := realRadicand_abs_shift_strict r (u + 2) (by linarith) hub hn2
  simpa only [show u + 2 + 2 = u + 4 by ring] using hfirst.trans hsecond

def cutIntegrand (r p : ℕ) (z u : ℝ) : ℝ :=
  2 * u * Real.sqrt |realRadicand r u| / (z - u ^ 2) ^ p

theorem cutIntegrand_pos (r p : ℕ) (z u : ℝ)
    (hu : 0 < u) (hz : u ^ 2 < z) (hn : realRadicand r u ≠ 0) :
    0 < cutIntegrand r p z u := by
  exact div_pos (mul_pos (by linarith) (Real.sqrt_pos.mpr (abs_pos.mpr hn)))
    (pow_pos (by linarith) p)

theorem cutIntegrand_shift_four_strict (r p : ℕ) (z u : ℝ)
    (hu : 0 < u) (hub : u + 2 < 2 * r - 1)
    (hz : (u + 4) ^ 2 < z) (hn : realRadicand r u ≠ 0) :
    cutIntegrand r p z u < cutIntegrand r p z (u + 4) := by
  have hs := Real.sqrt_lt_sqrt (abs_nonneg _)
    (realRadicand_abs_shift_four_strict r u hu hub hn)
  have hp : 0 < Real.sqrt |realRadicand r u| := Real.sqrt_pos.mpr (abs_pos.mpr hn)
  have hnum : 2 * u * Real.sqrt |realRadicand r u| <
      2 * (u + 4) * Real.sqrt |realRadicand r (u + 4)| := by nlinarith
  have hden : 0 < z - (u + 4) ^ 2 := by linarith
  have hden' : z - (u + 4) ^ 2 ≤ z - u ^ 2 := by nlinarith
  have hd := pow_le_pow_left₀ hden.le hden' p
  have hdpos : 0 < (z - (u + 4) ^ 2) ^ p := pow_pos hden p
  unfold cutIntegrand
  calc
    _ ≤ (2 * u * Real.sqrt |realRadicand r u|) / (z - (u + 4) ^ 2) ^ p :=
      div_le_div_of_nonneg_left (by positivity) hdpos hd
    _ < _ := (div_lt_div_iff_of_pos_right hdpos).mpr hnum

end

end B686QuarterRunge

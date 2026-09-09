import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.IntegerPairs
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.ErrorPolynomial
import Mathlib.RingTheory.PowerSeries.NoZeroDivisors

namespace B686QuarterRunge

open Finset Polynomial B686CenteredRunge

noncomputable section

def unscaledRadicandSeries (r : ℕ) : PowerSeries ℤ :=
  ∏ i ∈ range r, (1 - PowerSeries.C (oddRoots i ^ 2) * PowerSeries.X)

def pairedSquareRoot (s : ℕ) : PowerSeries ℤ :=
  ∏ j ∈ range s, adjacentSquareRoot (4 * (j : ℤ) + 1)

@[simp] theorem pairedSquareRoot_coeff_zero (s : ℕ) :
    PowerSeries.coeff 0 (pairedSquareRoot s) = 1 := by
  simp [pairedSquareRoot, PowerSeries.coeff_zero_eq_constantCoeff_apply,
    ← PowerSeries.coeff_zero_eq_constantCoeff_apply]

theorem pairedSquareRoot_sq (s : ℕ) :
    pairedSquareRoot s ^ 2 = unscaledRadicandSeries (2 * s) := by
  induction s with
  | zero => simp [pairedSquareRoot, unscaledRadicandSeries]
  | succ s ih =>
    rw [pairedSquareRoot, prod_range_succ, mul_pow, adjacentSquareRoot_sq]
    change pairedSquareRoot s ^ 2 * _ = _
    rw [ih, show 2 * (s + 1) = (2 * s + 1) + 1 by omega]
    simp only [unscaledRadicandSeries, prod_range_succ]
    have ha : oddRoots (2 * s) = 4 * (s : ℤ) + 1 := by simp [oddRoots]; ring
    have hb : oddRoots (2 * s + 1) = 4 * (s : ℤ) + 1 + 2 := by simp [oddRoots]; ring
    rw [ha, hb]
    ring

theorem squareRoot_unique (f g : PowerSeries ℤ)
    (hf : PowerSeries.coeff 0 f = 1) (hg : PowerSeries.coeff 0 g = 1)
    (hsq : f ^ 2 = g ^ 2) : f = g := by
  have hmul : (f - g) * (f + g) = 0 := by
    calc
      _ = f ^ 2 - g ^ 2 := by ring
      _ = 0 := sub_eq_zero.mpr hsq
  rcases mul_eq_zero.mp hmul with h | h
  · exact sub_eq_zero.mp h
  · have hc := congrArg (PowerSeries.coeff 0) h
    simp only [map_add, map_zero, hf, hg] at hc
    norm_num at hc

theorem rescale_pairedSquareRoot (s : ℕ) :
    PowerSeries.rescale 4 (pairedSquareRoot s) = squareRootProduct oddRoots (2 * s) := by
  apply squareRoot_unique
  · simp [PowerSeries.coeff_rescale]
  · simp
  · rw [← map_pow, pairedSquareRoot_sq, squareRootProduct_sq]
    simp only [unscaledRadicandSeries, map_prod, map_sub, map_one, map_mul,
      rescale_C, PowerSeries.rescale_X]
    apply prod_congr rfl
    intro i hi
    ring

theorem centered_coeff_eq_four_pow_mul (s j : ℕ) :
    PowerSeries.coeff j (squareRootProduct oddRoots (2 * s)) =
      4 ^ j * PowerSeries.coeff j (pairedSquareRoot s) := by
  rw [← rescale_pairedSquareRoot, PowerSeries.coeff_rescale]

/-- The quarter polynomial part has integer coefficients without a denominator. -/
def quarterRootPolynomial (s : ℕ) : ℤ[X] :=
  reflect (2 * s) (expand ℤ 2 (PowerSeries.trunc (s + 1) (pairedSquareRoot s)))

theorem quarterRootPolynomial_degree_le (s : ℕ) :
    (quarterRootPolynomial s).natDegree ≤ 2 * s := by
  have ht : (PowerSeries.trunc (s + 1) (pairedSquareRoot s)).natDegree ≤ s :=
    Nat.lt_succ_iff.mp (PowerSeries.natDegree_trunc_lt _ _)
  have he : (expand ℤ 2 (PowerSeries.trunc (s + 1) (pairedSquareRoot s))).natDegree ≤
      2 * s := by
    rw [natDegree_expand]
    omega
  simpa only [quarterRootPolynomial, max_eq_left he] using
    (natDegree_reflect_le (N := 2 * s)
      (p := expand ℤ 2 (PowerSeries.trunc (s + 1) (pairedSquareRoot s))))

theorem quarterRootPolynomial_coeff (s h : ℕ) (hh : h ≤ 2 * s) :
    (quarterRootPolynomial s).coeff h =
      if 2 ∣ 2 * s - h then
        PowerSeries.coeff ((2 * s - h) / 2) (pairedSquareRoot s) else 0 := by
  have hj : (2 * s - h) / 2 < s + 1 := by omega
  simp only [quarterRootPolynomial, coeff_reflect, revAt_le hh,
    coeff_expand (by norm_num : 0 < 2), PowerSeries.coeff_trunc, if_pos hj]

@[simp] theorem quarterRootPolynomial_coeff_top (s : ℕ) :
    (quarterRootPolynomial s).coeff (2 * s) = 1 := by
  simp [quarterRootPolynomial_coeff s (2 * s) le_rfl]

theorem quarterRootPolynomial_degree (s : ℕ) :
    (quarterRootPolynomial s).natDegree = 2 * s := by
  apply natDegree_eq_of_le_of_coeff_ne_zero (quarterRootPolynomial_degree_le s)
  simp

theorem quarterRootPolynomial_monic (s : ℕ) :
    (quarterRootPolynomial s).Monic := by
  rw [Monic, leadingCoeff, quarterRootPolynomial_degree]
  simp

theorem centered_rootPolynomial_eq (s : ℕ) :
    rootPolynomial oddRoots (2 * s) = C (2 ^ (2 * s)) * quarterRootPolynomial s := by
  ext h
  by_cases hh : h ≤ 2 * s
  · rw [rootPolynomial_coeff oddRoots (2 * s) h hh, coeff_C_mul,
      quarterRootPolynomial_coeff s h hh]
    split_ifs with hd
    · rw [centered_coeff_eq_four_pow_mul]
      have hj : 2 * ((2 * s - h) / 2) + h = 2 * s := by
        have := Nat.mul_div_cancel' hd
        omega
      calc
        _ = 2 ^ (2 * ((2 * s - h) / 2) + h) *
            PowerSeries.coeff ((2 * s - h) / 2) (pairedSquareRoot s) := by
          rw [pow_add, pow_mul]
          norm_num only [show (2 : ℤ) ^ 2 = 4 by norm_num]
          ring
        _ = _ := by rw [hj]
    · ring
  · rw [coeff_eq_zero_of_natDegree_lt
        (lt_of_le_of_lt (rootPolynomial_degree_le oddRoots (2 * s)) (by omega)),
      coeff_C_mul, coeff_eq_zero_of_natDegree_lt
        (lt_of_le_of_lt (quarterRootPolynomial_degree_le s) (by omega)), mul_zero]

end

end B686QuarterRunge

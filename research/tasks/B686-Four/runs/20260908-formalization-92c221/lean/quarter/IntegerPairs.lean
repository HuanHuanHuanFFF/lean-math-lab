import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.CatalanConstruction

/-!
Integral square roots for pairs of adjacent square parameters.  This is an
arbitrary-length algebraic construction, independent of any sign assertion for
the polynomial remainder in the quarter Runge argument.
-/

namespace B686QuarterRunge

open Finset

noncomputable section

/-- A weighted Motzkin recursion, normalized to have constant coefficient `e²`. -/
def pairTailCoeff (c e : ℤ) : ℕ → ℤ
  | 0 => e ^ 2
  | n + 1 => c * pairTailCoeff c e n +
      ∑ i : Fin n, pairTailCoeff c e i * pairTailCoeff c e (n - 1 - i)
termination_by n => n
decreasing_by all_goals omega

def pairTail (c e : ℤ) : PowerSeries ℤ := PowerSeries.mk (pairTailCoeff c e)

@[simp] theorem pairTail_coeff (c e : ℤ) (n : ℕ) :
    PowerSeries.coeff n (pairTail c e) = pairTailCoeff c e n := by
  simp [pairTail]

@[simp] theorem coeff_mul_X_sq_succ_succ (f : PowerSeries ℤ) (n : ℕ) :
    PowerSeries.coeff (n + 1 + 1) (f * PowerSeries.X ^ 2) = PowerSeries.coeff n f :=
  PowerSeries.coeff_mul_X_pow f 2 n

theorem pairTail_identity (c e : ℤ) :
    pairTail c e = PowerSeries.C (e ^ 2) +
      PowerSeries.C c * pairTail c e * PowerSeries.X +
      pairTail c e ^ 2 * PowerSeries.X ^ 2 := by
  ext n
  rcases n with _ | _ | n
  · simp [pairTailCoeff]
  · norm_num only [map_add, PowerSeries.coeff_C, PowerSeries.coeff_succ_mul_X,
      PowerSeries.coeff_C_mul, PowerSeries.coeff_mul_X_pow', pairTail_coeff, pairTailCoeff,
      Fin.sum_univ_zero]
    simp only [if_false, if_true, zero_add, add_zero]
  · simp only [map_add, PowerSeries.coeff_C, if_neg (by omega : n + 2 ≠ 0), zero_add,
      PowerSeries.coeff_succ_mul_X, PowerSeries.coeff_C_mul, pairTail_coeff,
      coeff_mul_X_sq_succ_succ]
    rw [pow_two, PowerSeries.coeff_mul]
    rw [pairTailCoeff]
    simp only [Nat.add_sub_cancel]
    congr 1
    rw [Finset.Nat.sum_antidiagonal_eq_sum_range_succ
      (fun i j => PowerSeries.coeff i (pairTail c e) * PowerSeries.coeff j (pairTail c e)) n,
      Finset.sum_range]
    apply Finset.sum_congr rfl
    intro i hi
    simp

theorem pairTailCoeff_nonneg (c e : ℤ) (hc : 0 ≤ c) (n : ℕ) :
    0 ≤ pairTailCoeff c e n := by
  induction n using Nat.strong_induction_on with
  | h n ih =>
    cases n with
    | zero => simpa [pairTailCoeff] using sq_nonneg e
    | succ n =>
      rw [pairTailCoeff]
      apply add_nonneg (mul_nonneg hc (ih n (by omega)))
      apply Finset.sum_nonneg
      intro i hi
      exact mul_nonneg (ih i (by omega)) (ih (n - 1 - i) (by omega))

/-- The integer square root of the product of two adjacent square factors. -/
def adjacentSquareRoot (a : ℤ) : PowerSeries ℤ :=
  1 - PowerSeries.C (a ^ 2 + 2 * a + 2) * PowerSeries.X -
    PowerSeries.C 2 * pairTail (a ^ 2 + 2 * a + 2) (a + 1) * PowerSeries.X ^ 2

theorem adjacentSquareRoot_sq (a : ℤ) :
    adjacentSquareRoot a ^ 2 =
      (1 - PowerSeries.C (a ^ 2) * PowerSeries.X) *
        (1 - PowerSeries.C ((a + 2) ^ 2) * PowerSeries.X) := by
  let c : ℤ := a ^ 2 + 2 * a + 2
  let e : ℤ := a + 1
  let G := pairTail c e
  have hid : G = PowerSeries.C (e ^ 2) + PowerSeries.C c * G * PowerSeries.X +
      G ^ 2 * PowerSeries.X ^ 2 := pairTail_identity c e
  have hzero : G - (PowerSeries.C (e ^ 2) + PowerSeries.C c * G * PowerSeries.X +
      G ^ 2 * PowerSeries.X ^ 2) = 0 := sub_eq_zero.mpr hid
  change (1 - PowerSeries.C c * PowerSeries.X - PowerSeries.C 2 * G *
      PowerSeries.X ^ 2) ^ 2 = _
  have hscalar : c ^ 2 - 4 * e ^ 2 = a ^ 2 * (a + 2) ^ 2 := by dsimp [c, e]; ring
  have hsum : 2 * c = a ^ 2 + (a + 2) ^ 2 := by dsimp [c]; ring
  calc
    _ = (1 - PowerSeries.C (2 * c) * PowerSeries.X +
          PowerSeries.C (c ^ 2 - 4 * e ^ 2) * PowerSeries.X ^ 2) -
        PowerSeries.C 4 * PowerSeries.X ^ 2 *
          (G - (PowerSeries.C (e ^ 2) + PowerSeries.C c * G * PowerSeries.X +
            G ^ 2 * PowerSeries.X ^ 2)) := by
      simp only [map_sub, map_mul, map_pow, map_ofNat]
      ring
    _ = _ := by
      rw [hzero, mul_zero, sub_zero, hscalar, hsum]
      simp only [map_add, map_mul]
      ring

@[simp] theorem adjacentSquareRoot_coeff_zero (a : ℤ) :
    PowerSeries.coeff 0 (adjacentSquareRoot a) = 1 := by
  simp [adjacentSquareRoot]

theorem adjacentSquareRoot_coeff_nonpos (a : ℤ) (n : ℕ) (hn : 1 ≤ n) :
    PowerSeries.coeff n (adjacentSquareRoot a) ≤ 0 := by
  have hc : 0 ≤ a ^ 2 + 2 * a + 2 := by nlinarith [sq_nonneg (a + 1)]
  rcases n with _ | _ | n
  · omega
  · norm_num only [adjacentSquareRoot, map_sub, PowerSeries.coeff_one,
      PowerSeries.coeff_succ_mul_X, PowerSeries.coeff_C,
      PowerSeries.coeff_mul_X_pow']
    simp only [if_false, if_true, zero_sub, sub_zero]
    omega
  · simp only [adjacentSquareRoot, map_sub, PowerSeries.coeff_one,
      if_neg (by omega : n + 2 ≠ 0), PowerSeries.coeff_succ_mul_X,
      PowerSeries.coeff_C, if_neg (by omega : n + 1 ≠ 0), sub_zero,
      coeff_mul_X_sq_succ_succ, PowerSeries.coeff_C_mul, pairTail_coeff]
    have hp := pairTailCoeff_nonneg (a ^ 2 + 2 * a + 2) (a + 1) hc n
    omega

end

end B686QuarterRunge

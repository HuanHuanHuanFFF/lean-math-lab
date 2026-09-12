import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-polynomial-homogeneous-probe-5e2d13bb».Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-polynomial-homogeneous-probe-5e2d13bb».Homogeneous
import Mathlib.Algebra.GroupWithZero.Defs

/-! UNCOMPILED. Dehomogenize without applying ring to an expression containing
high powers of 1-x. Ring is confined to linear forms and one monomial in
three independent variables. The coefficient scaling uses mul_add/mul_assoc. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11ELeaf001Homogeneous
open Polynomial Math.B699.PadeMoment Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def rationalExpansion (x y : ℚ) : ℚ :=
  gapCoeff0 * (x ^ 0 * y ^ 38) +
  gapCoeff1 * (x ^ 1 * y ^ 37) +
  gapCoeff2 * (x ^ 2 * y ^ 36) +
  gapCoeff3 * (x ^ 3 * y ^ 35) +
  gapCoeff4 * (x ^ 4 * y ^ 34) +
  gapCoeff5 * (x ^ 5 * y ^ 33) +
  gapCoeff6 * (x ^ 6 * y ^ 32) +
  gapCoeff7 * (x ^ 7 * y ^ 31) +
  gapCoeff8 * (x ^ 8 * y ^ 30) +
  gapCoeff9 * (x ^ 9 * y ^ 29) +
  gapCoeff10 * (x ^ 10 * y ^ 28) +
  gapCoeff11 * (x ^ 11 * y ^ 27) +
  gapCoeff12 * (x ^ 12 * y ^ 26) +
  gapCoeff13 * (x ^ 13 * y ^ 25) +
  gapCoeff14 * (x ^ 14 * y ^ 24) +
  gapCoeff15 * (x ^ 15 * y ^ 23) +
  gapCoeff16 * (x ^ 16 * y ^ 22) +
  gapCoeff17 * (x ^ 17 * y ^ 21) +
  gapCoeff18 * (x ^ 18 * y ^ 20) +
  gapCoeff19 * (x ^ 19 * y ^ 19) +
  gapCoeff20 * (x ^ 20 * y ^ 18) +
  gapCoeff21 * (x ^ 21 * y ^ 17) +
  gapCoeff22 * (x ^ 22 * y ^ 16) +
  gapCoeff23 * (x ^ 23 * y ^ 15) +
  gapCoeff24 * (x ^ 24 * y ^ 14) +
  gapCoeff25 * (x ^ 25 * y ^ 13) +
  gapCoeff26 * (x ^ 26 * y ^ 12) +
  gapCoeff27 * (x ^ 27 * y ^ 11) +
  gapCoeff28 * (x ^ 28 * y ^ 10) +
  gapCoeff29 * (x ^ 29 * y ^ 9) +
  gapCoeff30 * (x ^ 30 * y ^ 8) +
  gapCoeff31 * (x ^ 31 * y ^ 7) +
  gapCoeff32 * (x ^ 32 * y ^ 6) +
  gapCoeff33 * (x ^ 33 * y ^ 5) +
  gapCoeff34 * (x ^ 34 * y ^ 4) +
  gapCoeff35 * (x ^ 35 * y ^ 3) +
  gapCoeff36 * (x ^ 36 * y ^ 2) +
  gapCoeff37 * (x ^ 37 * y ^ 1) +
  gapCoeff38 * (x ^ 38 * y ^ 0)

def rationalHomogeneousGap (x y : ℚ) : ℚ :=
  lam * (x + y) ^ 38 -
    ((3 * x + 2 * y) / 8) ^ 15 * ((5 * x + 6 * y) / 8) ^ 15 *
      ((69 * x + 70 * y) / 72) ^ 8

theorem denominator_ne_zero : (denominator : ℚ) ≠ 0 := by
  norm_num [denominator]

theorem scaled_lam : (denominator : ℚ) * lam = (scaledLambda : ℚ) := by
  norm_num [denominator, lam, scaledLambda]

/-- Only one monomial in independent U,V,W is normalized. -/
theorem scaled_core (U V W : ℚ) :
    (denominator : ℚ) * ((U / 8) ^ 15 * (V / 8) ^ 15 * (W / 72) ^ 8) =
      U ^ 15 * V ^ 15 * W ^ 8 := by
  norm_num [denominator, div_pow] <;> ring

/-- The 39 scalar equalities are normalized; their monomials are not expanded. -/
theorem scaled_expansion (x y : ℚ) :
    (denominator : ℚ) * rationalExpansion x y = integerExpansion x y := by
  unfold rationalExpansion integerExpansion
  simp only [mul_add, ← mul_assoc] <;>
    norm_num [denominator, gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14, gapCoeff15, gapCoeff16, gapCoeff17, gapCoeff18, gapCoeff19, gapCoeff20, gapCoeff21, gapCoeff22, gapCoeff23, gapCoeff24, gapCoeff25, gapCoeff26, gapCoeff27, gapCoeff28, gapCoeff29, gapCoeff30, gapCoeff31, gapCoeff32, gapCoeff33, gapCoeff34, gapCoeff35, gapCoeff36, gapCoeff37, gapCoeff38]

theorem scaled_homogeneous_gap (x y : ℚ) :
    (denominator : ℚ) * rationalHomogeneousGap x y =
      (denominator : ℚ) * rationalExpansion x y := by
  calc
    _ = (scaledLambda : ℚ) * (x + y) ^ 38 -
        (3 * x + 2 * y) ^ 15 * (5 * x + 6 * y) ^ 15 * (69 * x + 70 * y) ^ 8 := by
      unfold rationalHomogeneousGap
      rw [mul_sub, ← mul_assoc, scaled_lam, scaled_core]
    _ = integerExpansion x y := homogeneous_identity x y
    _ = (denominator : ℚ) * rationalExpansion x y := (scaled_expansion x y).symm

theorem leafMap_eval (x : ℚ) :
    leafMap.eval x = (3 * x + 2 * (1 - x)) / 8 := by
  norm_num [leafMap, affine, leafA, leafB, Polynomial.eval_add, Polynomial.eval_mul,
    Polynomial.eval_sub, Polynomial.eval_C, Polynomial.eval_X, Polynomial.eval_one] <;> ring

theorem complement_eval (x : ℚ) :
    1 - leafMap.eval x = (5 * x + 6 * (1 - x)) / 8 := by
  rw [leafMap_eval]
  ring

theorem factor_eval (x : ℚ) :
    1 - (1 / 9 : ℚ) * leafMap.eval x = (69 * x + 70 * (1 - x)) / 72 := by
  rw [leafMap_eval]
  ring

theorem seedCore_eval (t : ℚ) :
    seedCore.eval t = t ^ 15 * (1 - t) ^ 15 * (1 - (1 / 9 : ℚ) * t) ^ 8 := by
  simp only [seedCore, eSeedCore, eCore, eFactor, eSeedC, eSeedD, eSeedZ,
    show (23 : ℕ) - 15 = 8 by decide,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_sub,
    Polynomial.eval_C, Polynomial.eval_X, Polynomial.eval_one]

theorem localCore_eval (x : ℚ) :
    localCore.eval x =
      ((3 * x + 2 * (1 - x)) / 8) ^ 15 *
        ((5 * x + 6 * (1 - x)) / 8) ^ 15 *
          ((69 * x + 70 * (1 - x)) / 72) ^ 8 := by
  simp only [localCore, Polynomial.eval_comp]
  rw [seedCore_eval, complement_eval, factor_eval, leafMap_eval]

theorem gapExpansion_eval (x : ℚ) :
    gapExpansion.eval x = rationalExpansion x (1 - x) := by
  simp only [gapExpansion, rationalExpansion, bernsteinMonomial,
    Polynomial.eval_add, Polynomial.eval_mul, Polynomial.eval_pow,
    Polynomial.eval_sub, Polynomial.eval_C, Polynomial.eval_X, Polynomial.eval_one,
    pow_zero, pow_one, one_mul, mul_one]

theorem rational_gap_value (x : ℚ) :
    lam - localCore.eval x = rationalExpansion x (1 - x) := by
  have h := scaled_homogeneous_gap x (1 - x)
  have hsum : x + (1 - x) = 1 := by ring
  unfold rationalHomogeneousGap at h
  rw [hsum, one_pow, mul_one, ← localCore_eval x] at h
  exact mul_left_cancel₀ denominator_ne_zero h

/-- Same fixed leaf polynomial equality, with no identity assumption. -/
theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  simp only [Polynomial.eval_sub, Polynomial.eval_C]
  rw [gapExpansion_eval]
  exact rational_gap_value x

end Math.B699.I11ELeaf001Homogeneous

import Mathlib.Data.Nat.Dist
import Mathlib.Data.Nat.Basic
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Ring

/-!
# Elementary arithmetic for the complete cubic exponent block

UNCOMPILED CANDIDATE. Source: fixed REPORT.md, commit
5c37f257401952ed85ddd104de8e56a4f2024031, Section 5.
The second exponent b has no upper bound. No cofactor coprimality is assumed.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicExponentBlock

/-- Cancel only the positive cofactor in A^3 <= R*A. -/
theorem square_le_of_cube_le_mul {A R : ℕ} (hA : 0 < A)
    (h : A ^ 3 ≤ R * A) : A ^ 2 ≤ R := by
  have hm : A ^ 2 * A ≤ R * A := by simpa only [pow_succ] using h
  exact Nat.le_of_mul_le_mul_right hm hA

/-- The minimum x is at most R*C, and C^3 <= x, so x^2 <= R^3. -/
theorem min_square_le_cube {x R C : ℕ} (hC : 0 < C)
    (hsmall : C ^ 3 ≤ x) (hx : x ≤ R * C) : x ^ 2 ≤ R ^ 3 := by
  have hC2 := square_le_of_cube_le_mul hC (hsmall.trans hx)
  calc
    x ^ 2 ≤ (R * C) ^ 2 := Nat.pow_le_pow_left hx 2
    _ = R ^ 2 * C ^ 2 := by rw [mul_pow]
    _ ≤ R ^ 2 * R := Nat.mul_le_mul_left _ hC2
    _ = R ^ 3 := by ring

/-- A distance bound propagates the lower P-bound to both endpoints. -/
theorem lower_min_from_dist {P N M w : ℕ} (hP : P ≤ N)
    (hdist : Nat.dist N M ≤ w) : P - w ≤ min N M := by
  have hNM := Nat.dist_tri_right' N M
  exact le_min (by omega) (by omega)

/-- The full signed interval follows from Nat.dist, including zero difference. -/
theorem signed_difference_bounds {N M w : ℕ} (hdist : Nat.dist N M ≤ w) :
    -(w : ℤ) ≤ (N : ℤ) - (M : ℤ) ∧ (N : ℤ) - (M : ℤ) ≤ (w : ℤ) := by
  have hNM := Nat.dist_tri_right' N M
  have hMN := Nat.dist_tri_right N M
  constructor <;> omega

/-- Actual factor extraction, guarded by the original exponent comparison. -/
theorem shifted_power_mul (p a u A : ℕ) (hua : u ≤ a) :
    p ^ u * (p ^ (a - u) * A) = p ^ a * A := by
  rw [← mul_assoc, ← pow_add, Nat.add_sub_of_le hua]

/-- The extracted first cofactor has the required uniform square bound. -/
theorem extracted_square_le {p u L a A : ℕ} (hp : 0 < p)
    (hua : u ≤ a) (hau : a ≤ u + L) (hA : 0 < A)
    (hsmall : A ^ 3 ≤ p ^ a * A) :
    (p ^ (a - u) * A) ^ 2 ≤ p ^ (u + 3 * L) := by
  have hA2 := square_le_of_cube_le_mul hA hsmall
  have he : (a - u) * 2 + a ≤ u + 3 * L := by omega
  calc
    (p ^ (a - u) * A) ^ 2 = p ^ ((a - u) * 2) * A ^ 2 := by
      rw [mul_pow, ← pow_mul]
    _ ≤ p ^ ((a - u) * 2) * p ^ a := Nat.mul_le_mul_left _ hA2
    _ = p ^ ((a - u) * 2 + a) := by rw [← pow_add]
    _ ≤ p ^ (u + 3 * L) := Nat.pow_le_pow_right hp he

/-- The small second cofactor forces b>=b0. There is no upper bound on b. -/
theorem second_exponent_ge {p q u b0 a b A C w : ℕ}
    (hp : 0 < p) (hq : 1 < q) (hua : u ≤ a) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hdist : Nat.dist (p ^ a * A) (q ^ b * C) ≤ w)
    (hsmallC : C ^ 3 ≤ min (p ^ a * A) (q ^ b * C))
    (hmodulus : (q ^ b0) ^ 3 ≤ (p ^ u - w) ^ 2) : b0 ≤ b := by
  have hN : p ^ u ≤ p ^ a * A := by
    calc
      p ^ u ≤ p ^ a := Nat.pow_le_pow_right hp hua
      _ ≤ p ^ a * A := by
        simpa only [mul_one] using Nat.mul_le_mul_left (p ^ a) hA
  have hmin := lower_min_from_dist hN hdist
  have hs : (min (p ^ a * A) (q ^ b * C)) ^ 2 ≤ (q ^ b) ^ 3 :=
    min_square_le_cube (by omega : 0 < C) hsmallC (min_le_right _ _)
  have hpows : q ^ (b0 * 3) ≤ q ^ (b * 3) := by
    calc
      q ^ (b0 * 3) = (q ^ b0) ^ 3 := by rw [pow_mul]
      _ ≤ (p ^ u - w) ^ 2 := hmodulus
      _ ≤ (min (p ^ a * A) (q ^ b * C)) ^ 2 := Nat.pow_le_pow_left hmin 2
      _ ≤ (q ^ b) ^ 3 := hs
      _ = q ^ (b * 3) := by rw [← pow_mul]
  have he : b0 * 3 ≤ b * 3 := (Nat.pow_le_pow_iff_right hq).mp hpows
  omega

end Math.B699.CubicExponentBlock

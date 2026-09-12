import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Rates
import Mathlib.Algebra.Order.GroupWithZero.Basic

/-! UNCOMPILED. Explicit quadratic decay and 4/32-step power blocks. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge


def qDamp (m : ℕ) : ℚ := 36 * squareTerm m * (4 / 5 : ℚ) ^ m
def eDamp (m : ℕ) : ℚ := (1 / 64 : ℚ) * squareTerm m * (32 / 33 : ℚ) ^ m

theorem e_quadratic (x : ℚ) :
    33 * (x + 1) ^ 2 - 32 * (x + 2) ^ 2 = (x - 64) * (x + 2) + 33 := by ring

theorem q_quadratic (x : ℚ) :
    5 * (x + 1) ^ 2 - 4 * (x + 2) ^ 2 = (x - 8) * (x + 2) + 5 := by ring

theorem qDamp_step (m : ℕ) (hm : 8 ≤ m) : qDamp (m + 1) ≤ qDamp m := by
  have hmQ : (8 : ℚ) ≤ (m : ℚ) := by exact_mod_cast hm
  have hprod : 0 ≤ ((m : ℚ) - 8) * ((m : ℚ) + 2) :=
    mul_nonneg (by linarith) (by positivity)
  have hs : squareTerm (m + 1) * (4 / 5 : ℚ) ≤ squareTerm m := by
    simp only [squareTerm, Nat.cast_add, Nat.cast_one]
    nlinarith only [q_quadratic (m : ℚ), hprod]
  calc
    qDamp (m + 1) = (36 * (squareTerm (m + 1) * (4 / 5 : ℚ))) *
        (4 / 5 : ℚ) ^ m := by unfold qDamp; rw [pow_succ]; ring
    _ ≤ (36 * squareTerm m) * (4 / 5 : ℚ) ^ m :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hs (by norm_num))
        (pow_nonneg (by norm_num) _)
    _ = qDamp m := rfl

theorem eDamp_step (m : ℕ) (hm : 64 ≤ m) : eDamp (m + 1) ≤ eDamp m := by
  have hmQ : (64 : ℚ) ≤ (m : ℚ) := by exact_mod_cast hm
  have hprod : 0 ≤ ((m : ℚ) - 64) * ((m : ℚ) + 2) :=
    mul_nonneg (by linarith) (by positivity)
  have hs : squareTerm (m + 1) * (32 / 33 : ℚ) ≤ squareTerm m := by
    simp only [squareTerm, Nat.cast_add, Nat.cast_one]
    nlinarith only [e_quadratic (m : ℚ), hprod]
  calc
    eDamp (m + 1) = ((1 / 64 : ℚ) *
        (squareTerm (m + 1) * (32 / 33 : ℚ))) * (32 / 33 : ℚ) ^ m := by
          unfold eDamp
          rw [pow_succ]
          ring
    _ ≤ ((1 / 64 : ℚ) * squareTerm m) * (32 / 33 : ℚ) ^ m :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hs (by norm_num))
        (pow_nonneg (by norm_num) _)
    _ = eDamp m := rfl

theorem block_power_upper (r : ℚ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1)
    (B k M : ℕ) (hb : r ^ B ≤ 1 / 2) (hBM : B * k ≤ M) :
    r ^ M ≤ (1 / 2 : ℚ) ^ k := by
  calc
    r ^ M ≤ r ^ (B * k) := pow_le_pow_of_le_one hr0 hr1 hBM
    _ = (r ^ B) ^ k := pow_mul r B k
    _ ≤ (1 / 2 : ℚ) ^ k := pow_le_pow_left₀ (pow_nonneg hr0 B) hb k

theorem qDamp_at_min : qDamp minIndex < (1 / 4 : ℚ) := by
  have hp := block_power_upper (4 / 5 : ℚ) (by norm_num) (by norm_num)
    4 206 minIndex q_block_small (by decide)
  calc
    qDamp minIndex ≤ 36 * squareTerm minIndex * (1 / 2 : ℚ) ^ 206 :=
      mul_le_mul_of_nonneg_left hp (by have h := squareTerm_pos minIndex; positivity)
    _ < (1 / 4 : ℚ) := by norm_num [squareTerm, minIndex]

theorem eDamp_at_min : eDamp minIndex < (1 / 4 : ℚ) := by
  have hp := block_power_upper (32 / 33 : ℚ) (by norm_num) (by norm_num)
    32 25 minIndex e_block_small (by decide)
  calc
    eDamp minIndex ≤ (1 / 64 : ℚ) * squareTerm minIndex * (1 / 2 : ℚ) ^ 25 :=
      mul_le_mul_of_nonneg_left hp (by have h := squareTerm_pos minIndex; positivity)
    _ < (1 / 4 : ℚ) := by norm_num [squareTerm, minIndex]

theorem sequence_le_start (F : ℕ → ℚ) (M : ℕ)
    (hstep : ∀ k : ℕ, M ≤ k → F (k + 1) ≤ F k)
    (m : ℕ) (hm : M ≤ m) : F m ≤ F M := by
  have h : ∀ k : ℕ, F (M + k) ≤ F M := by
    intro k
    induction k with
    | zero => simp
    | succ k ih =>
      exact (hstep (M + k) (by omega)).trans ih
  have hi : M + (m - M) = m := by omega
  simpa only [hi] using h (m - M)

theorem qDamp_small (m : ℕ) (hm : minIndex ≤ m) : qDamp m < (1 / 4 : ℚ) :=
  (sequence_le_start qDamp minIndex
    (fun k hk => qDamp_step k (by dsimp only [minIndex] at hk; omega)) m hm).trans_lt qDamp_at_min

theorem eDamp_small (m : ℕ) (hm : minIndex ≤ m) : eDamp m < (1 / 4 : ℚ) :=
  (sequence_le_start eDamp minIndex
    (fun k hk => eDamp_step k (by dsimp only [minIndex] at hk; omega)) m hm).trans_lt eDamp_at_min
end Math.B699.I13FiveSevenEdge

import Mathlib.Algebra.Order.Ring.Cast
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.SourceRows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Edge.Capacity

/-! UNCOMPILED fixedc7d5 actual integer-gap candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.PadeActualRows

theorem actual_integer_gap (m a b A B : ℕ)
    (hm : 1 ≤ m) (ha : 35 * m ≤ a) (hb : 14 * m ≤ b) (hB : 1 ≤ B)
    (hgap : |(3 : ℤ) ^ a * (A : ℤ) - (11 : ℤ) ^ b * (B : ℤ)| ≤ 24) :
    ∃ row : Bool, (243 : ℤ) ^ (7 * m) ≤
      (2 : ℤ) ^ (7 * m) * 24 * |qRow m row| +
        |rowError m row| * |(11 : ℤ) ^ (b - 14 * m) * (B : ℤ)| := by
  have hp : (243 : ℕ) ^ (7 * m) = (3 : ℕ) ^ (35 * m) := by
    calc
      _ = ((3 : ℕ) ^ 5) ^ (7 * m) := by norm_num
      _ = (3 : ℕ) ^ (35 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (121 : ℕ) ^ (7 * m) = (11 : ℕ) ^ (14 * m) := by
    calc
      _ = ((11 : ℕ) ^ 2) ^ (7 * m) := by norm_num
      _ = (11 : ℕ) ^ (14 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (243 : ℕ) ^ (7 * m) * (3 ^ (a - 35 * m) * A) = 3 ^ a * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 3 a (35 * m) A ha
  have hQnat : (121 : ℕ) ^ (7 * m) * (11 ^ (b - 14 * m) * B) = 11 ^ b * B := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 11 b (14 * m) B hb
  have hPint : (243 : ℤ) ^ (7 * m) * ((3 : ℤ) ^ (a - 35 * m) * (A : ℤ)) =
      (3 : ℤ) ^ a * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (121 : ℤ) ^ (7 * m) * ((11 : ℤ) ^ (b - 14 * m) * (B : ℤ)) =
      (11 : ℤ) ^ b * (B : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(243 : ℤ) ^ (7 * m) * ((3 : ℤ) ^ (a - 35 * m) * (A : ℤ)) -
      (121 : ℤ) ^ (7 * m) * ((11 : ℤ) ^ (b - 14 * m) * (B : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (11 : ℤ) ^ (b - 14 * m) * (B : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (11 : ℤ) ≠ 0))
    exact_mod_cast (by omega : B ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (5 * m) (2 * m - 1) (by omega) 1 243
    (r := (243 : ℤ) ^ (7 * m)) (s := (121 : ℤ) ^ (7 * m))
    (a := 1) (b := (2 : ℤ) ^ (7 * m))
    (U := (3 : ℤ) ^ (a - 35 * m) * (A : ℤ))
    (V := (11 : ℤ) ^ (b - 14 * m) * (B : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (pow_pos (by decide) _) hV hgap'
  have hsb : (121 : ℤ) ^ (7 * m) * (2 : ℤ) ^ (7 * m) = (242 : ℤ) ^ (7 * m) := by
    rw [← mul_pow]
    norm_num
  exact ⟨row, by simpa only [qRow, rowError, mul_one, hsb] using hlower⟩

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.actual_integer_gap

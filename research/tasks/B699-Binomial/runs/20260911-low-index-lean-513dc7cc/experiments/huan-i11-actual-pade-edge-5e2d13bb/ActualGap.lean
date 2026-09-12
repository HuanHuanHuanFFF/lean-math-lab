import Mathlib.Tactic.NormNum
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-actual-pade-edge-5e2d13bb».FiveThree

/-! UNCOMPILED CANDIDATE. The actual adjacent normalized rows give a nonzero
integer form after legal prime-power extraction. No determinant hypothesis. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ActualPadeEdge
open Math.B699.PadeActualRows

theorem extract_prime_factor_int (p : ℤ) (e k : ℕ) (A : ℤ) (hke : k ≤ e) :
    p ^ k * (p ^ (e - k) * A) = p ^ e * A := by
  have hexp : k + (e - k) = e := by omega
  rw [← mul_assoc, ← pow_add, hexp]

theorem five_three_actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 20 * m ≤ e) (hf : 35 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (3 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool,
      (2 : ℤ) ^ (5 * m) * actualQRow (3 * m) (2 * m - 1) 1 4375 row *
          ((5 : ℤ) ^ (e - 20 * m) * (A : ℤ)) -
        (7 : ℤ) ^ (5 * m) * actualPRow (3 * m) (2 * m - 1) 1 4375 row *
          ((3 : ℤ) ^ (f - 35 * m) * (C : ℤ)) ≠ 0 ∧
      (625 : ℤ) ^ (5 * m) ≤
        (2 : ℤ) ^ (5 * m) * 24 * |actualQRow (3 * m) (2 * m - 1) 1 4375 row| +
        |(4375 : ℤ) ^ (5 * m) * actualPRow (3 * m) (2 * m - 1) 1 4375 row -
          (4374 : ℤ) ^ (5 * m) * actualQRow (3 * m) (2 * m - 1) 1 4375 row| *
          |(3 : ℤ) ^ (f - 35 * m) * (C : ℤ)| := by
  have hp : (625 : ℤ) ^ (5 * m) = (5 : ℤ) ^ (20 * m) := by
    calc
      _ = ((5 : ℤ) ^ 4) ^ (5 * m) := by norm_num
      _ = (5 : ℤ) ^ (20 * m) := by rw [← pow_mul]; congr 1 <;> ring
  have hq : (2187 : ℤ) ^ (5 * m) = (3 : ℤ) ^ (35 * m) := by
    calc
      _ = ((3 : ℤ) ^ 7) ^ (5 * m) := by norm_num
      _ = (3 : ℤ) ^ (35 * m) := by rw [← pow_mul]; congr 1 <;> ring
  have hgap' : |(625 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (e - 20 * m) * (A : ℤ)) -
      (2187 : ℤ) ^ (5 * m) * ((3 : ℤ) ^ (f - 35 * m) * (C : ℤ))| ≤ 24 := by
    rw [hp, hq, extract_prime_factor_int 5 e (20 * m) A he,
      extract_prime_factor_int 3 f (35 * m) C hf]
    exact hgap
  have hV : (3 : ℤ) ^ (f - 35 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (3 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, hnonzero, hlower⟩ := actual_bft_integer_gap
    (3 * m) (2 * m - 1) (by omega) 1 4375
    (r := (625 : ℤ) ^ (5 * m)) (s := (2187 : ℤ) ^ (5 * m))
    (a := (7 : ℤ) ^ (5 * m)) (b := (2 : ℤ) ^ (5 * m))
    (U := (5 : ℤ) ^ (e - 20 * m) * (A : ℤ))
    (V := (3 : ℤ) ^ (f - 35 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (pow_ne_zero _ (by decide)) (pow_pos (by decide) _) hV hgap'
  have hra : (625 : ℤ) ^ (5 * m) * (7 : ℤ) ^ (5 * m) =
      (4375 : ℤ) ^ (5 * m) := by rw [← mul_pow]; norm_num
  have hsb : (2187 : ℤ) ^ (5 * m) * (2 : ℤ) ^ (5 * m) =
      (4374 : ℤ) ^ (5 * m) := by rw [← mul_pow]; norm_num
  exact ⟨row, hnonzero, by simpa only [hra, hsb] using hlower⟩

end Math.B699.I11ActualPadeEdge
#print axioms Math.B699.I11ActualPadeEdge.extract_prime_factor_int
#print axioms Math.B699.I11ActualPadeEdge.five_three_actual_integer_gap

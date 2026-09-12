import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Ring

/-!
UNCOMPILED CANDIDATE. Two short dyadic basis inequalities plus small exponent
comparisons imply the three capacity conditions. There are no five-row data
instances, logarithms, or computations of the original enormous powers here.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.DiscretePadeSelector

theorem rate_from_short_bases (p Z N alpha a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hexponent : a * v * N ≤ u * b * alpha) : p ^ N ≤ Z ^ alpha := by
  have hpowered : (p ^ N) ^ (b * v) ≤ (Z ^ alpha) ^ (b * v) := by
    calc
      _ = (p ^ b) ^ (v * N) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (2 ^ a) ^ (v * N) := Nat.pow_le_pow_left hp (v * N)
      _ = 2 ^ (a * v * N) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ 2 ^ (u * b * alpha) := Nat.pow_le_pow_right (by decide) hexponent
      _ = (2 ^ u) ^ (b * alpha) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (Z ^ v) ^ (b * alpha) := Nat.pow_le_pow_left hZ (b * alpha)
      _ = (Z ^ alpha) ^ (b * v) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered

theorem base_from_short_basis (p N alpha M H a b : ℕ)
    (hb : 0 < b) (hp : p ^ b ≤ 2 ^ a)
    (hexponent : a * N * M ≤ b * H * alpha) :
    (p ^ N) ^ M ≤ (2 ^ H) ^ alpha := by
  have hpowered : ((p ^ N) ^ M) ^ b ≤ ((2 ^ H) ^ alpha) ^ b := by
    calc
      _ = (p ^ b) ^ (N * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (2 ^ a) ^ (N * M) := Nat.pow_le_pow_left hp (N * M)
      _ = 2 ^ (a * N * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ 2 ^ (b * H * alpha) := Nat.pow_le_pow_right (by decide) hexponent
      _ = ((2 ^ H) ^ alpha) ^ b := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt hb)) hpowered

theorem lookahead_from_short_bases (p Z N alpha M a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hexponent : 2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M) :
    4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M) := by
  have hleft :
      (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) =
        2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)) := by
    rw [Nat.mul_pow]
    congr 1
    · change (((2 : ℕ) ^ 2) ^ alpha) ^ (b * v) = _
      simp only [← Nat.pow_mul] <;> congr 1 <;> ring
    · simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  have hpowered :
      (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) ≤
        (Z ^ (alpha * M)) ^ (b * v) := by
    calc
      _ = 2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)) := hleft
      _ ≤ 2 ^ (2 * alpha * b * v) * (2 ^ a) ^ (v * N * (M + 1)) :=
        Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hp (v * N * (M + 1)))
      _ = 2 ^ (2 * alpha * b * v + a * v * N * (M + 1)) := by
        simp only [← Nat.pow_mul, ← Nat.pow_add] <;> congr 1 <;> ring
      _ ≤ 2 ^ (u * b * alpha * M) := Nat.pow_le_pow_right (by decide) hexponent
      _ = (2 ^ u) ^ (b * alpha * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (Z ^ v) ^ (b * alpha * M) := Nat.pow_le_pow_left hZ (b * alpha * M)
      _ = (Z ^ (alpha * M)) ^ (b * v) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered

/-- The short exponent certificate produces exactly the three selector inputs. -/
theorem conditions_from_short_bases (p Z N alpha M H a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hrate : a * v * N ≤ u * b * alpha)
    (hbase : a * N * M ≤ b * H * alpha)
    (hlookahead : 2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M) :
    p ^ N ≤ Z ^ alpha ∧
      (p ^ N) ^ M ≤ (2 ^ H) ^ alpha ∧
      4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M) := by
  exact ⟨rate_from_short_bases p Z N alpha a b u v hb hv hp hZ hrate,
    base_from_short_basis p N alpha M H a b hb hp hbase,
    lookahead_from_short_bases p Z N alpha M a b u v hb hv hp hZ hlookahead⟩

end Math.B699.DiscretePadeSelector

#print axioms Math.B699.DiscretePadeSelector.rate_from_short_bases
#print axioms Math.B699.DiscretePadeSelector.base_from_short_basis
#print axioms Math.B699.DiscretePadeSelector.lookahead_from_short_bases
#print axioms Math.B699.DiscretePadeSelector.conditions_from_short_bases

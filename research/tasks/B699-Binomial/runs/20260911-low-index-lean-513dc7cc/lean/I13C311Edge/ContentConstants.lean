import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.SourceRows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75Tail.Bounds

/-! UNCOMPILED actual fixed(3,11)c7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.I13G75Tail Math.B699.I13G75Uniform
open Math.B699.PadeConstruction

def contentBase : ℚ := tailRate
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (5 * m - rowDelta row) (2 * m + rowDelta row - 1)
    (5 * m - rowDelta row) : ℚ)

theorem contentBase_pos : 0 < contentBase := tail_rate_pos

theorem contentBase_le_R : contentBase ≤ infiniteRate := by
  norm_num [contentBase, tailRate, infiniteRate]

def tailFraction : ℚ := 4487 / 4511

theorem tail_fraction_bounds : 0 < tailFraction ∧ tailFraction ≤ 1 := by norm_num [tailFraction]

theorem tail_fraction_eight : tailFraction ^ 8 ≤ (23 / 24 : ℚ) := by norm_num [tailFraction]

theorem reduced_anchor : infiniteRate * 4487 * (23 / 24 : ℚ) ^ 23 ≤ 6900 := by
  norm_num [infiniteRate]

theorem tail_fraction_187 : tailFraction ^ 187 ≤ (23 / 24 : ℚ) ^ 23 := by
  calc
    _ ≤ tailFraction ^ 184 := pow_le_pow_of_le_one tail_fraction_bounds.1.le
      tail_fraction_bounds.2 (by decide : 184 ≤ 187)
    _ = (tailFraction ^ 8) ^ 23 := by rw [← pow_mul]; rfl
    _ ≤ (23 / 24 : ℚ) ^ 23 := pow_le_pow_left₀
      (pow_nonneg tail_fraction_bounds.1.le _) tail_fraction_eight 23

theorem tail_anchor_simplified : (1 / 300 : ℚ) * contentBase ^ 187 ≤ tailBase := by
  have hs : infiniteRate * 4487 * tailFraction ^ 187 ≤ 6900 :=
    (mul_le_mul_of_nonneg_left tail_fraction_187 (mul_nonneg infinite_rate_pos.le (by norm_num))).trans reduced_anchor
  have hp : 0 ≤ infiniteRate ^ 186 := pow_nonneg infinite_rate_pos.le _
  have hh := mul_le_mul_of_nonneg_left hs hp
  change (1 / 300 : ℚ) * (infiniteRate * tailFraction) ^ 187 ≤
    23 * infiniteRate ^ 186 / 4487
  rw [mul_pow, show infiniteRate ^ 187 = infiniteRate ^ 186 * infiniteRate by
    exact pow_succ infiniteRate 186]
  apply (le_div_iff₀ (by norm_num : (0 : ℚ) < 4487)).2
  nlinarith only [hh]

theorem content_zero_lower (m : ℕ) (hm : 187 ≤ m) :
    (1 / 300 : ℚ) * contentBase ^ m ≤ content m true := by
  have he : 187 + (m - 187) = m := by omega
  calc
    _ = ((1 / 300 : ℚ) * contentBase ^ 187) * contentBase ^ (m - 187) := by
      rw [mul_assoc, ← pow_add, he]
    _ ≤ tailBase * contentBase ^ (m - 187) :=
      mul_le_mul_of_nonneg_right tail_anchor_simplified (pow_nonneg contentBase_pos.le _)
    _ ≤ content m true := by
      simpa only [content, contentBase, rowDelta_true, Nat.sub_zero, Nat.add_zero] using
        q_content_zero_tail_lower m hm

theorem content_one_lower (m : ℕ) (hm : 1 ≤ m) :
    (5 / 8 : ℚ) * infiniteRate ^ m ≤ content m false := by
  have hc : (5 / 8 : ℚ) ≤ oneConstant := by norm_num [oneConstant, infiniteRate]
  have h := (mul_le_mul_of_nonneg_right hc (pow_nonneg infinite_rate_pos.le m)).trans
    (q_content_one_full_rate m hm)
  simpa only [content, rowDelta_false, Nat.add_sub_cancel] using h

theorem content_common_lower (m : ℕ) (hm : 187 ≤ m) (row : Bool) :
    (1 / 300 : ℚ) * contentBase ^ m ≤ content m row := by
  cases row with
  | true => exact content_zero_lower m hm
  | false =>
    calc
      _ ≤ (1 / 300 : ℚ) * infiniteRate ^ m := mul_le_mul_of_nonneg_left
        (pow_le_pow_left₀ contentBase_pos.le contentBase_le_R m) (by norm_num)
      _ ≤ (5 / 8 : ℚ) * infiniteRate ^ m :=
        mul_le_mul_of_nonneg_right (by norm_num) (pow_nonneg infinite_rate_pos.le _)
      _ ≤ content m false := content_one_lower m (by omega)

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.contentBase_pos
#print axioms Math.B699.I13C311Edge.contentBase_le_R
#print axioms Math.B699.I13C311Edge.tail_anchor_simplified
#print axioms Math.B699.I13C311Edge.content_zero_lower
#print axioms Math.B699.I13C311Edge.content_one_lower
#print axioms Math.B699.I13C311Edge.content_common_lower

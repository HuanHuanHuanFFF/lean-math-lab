import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
Kernel certificates for 2 <= k <= 21, 0 <= h <= 7, and ALL natural n.
The upper block begins at m=n+k+h. Exact adjacent sign changes are combined
with a cross-multiplied antitonicity theorem. This file does not formalize the
published theorem that bounds k for general solutions with h <= 7.
-/

namespace B686Round3SmallGap

def product (k t : ℕ) : ℕ := ∏ i ∈ Finset.Icc 1 k, (t + i)

theorem product_pos (k t : ℕ) : 0 < product k t := by
  apply Finset.prod_pos
  intro i hi
  have := (Finset.mem_Icc.mp hi).1
  omega

theorem four_thirds_power (k : ℕ) (hk : 5 ≤ k) : 4 * 3 ^ k < 4 ^ k := by
  obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le hk
  have hpow : (3 : ℕ) ^ j ≤ 4 ^ j :=
    pow_le_pow_left₀ (by decide : (0 : ℕ) ≤ 3) (by decide : (3 : ℕ) ≤ 4) j
  calc
    4 * 3 ^ (5 + j) = 972 * 3 ^ j := by rw [pow_add]; ring
    _ ≤ 972 * 4 ^ j := Nat.mul_le_mul_left 972 hpow
    _ < 1024 * 4 ^ j := Nat.mul_lt_mul_of_pos_right (by decide) (Nat.pow_pos (by decide))
    _ = 4 ^ (5 + j) := by rw [pow_add]; ring

/-- A solution with k >= 5 starts beyond the length of the full enclosing block. -/
theorem start_exceeds_span (k d n : ℕ) (hk : 5 ≤ k) (hd : k ≤ d)
    (heq : product k (n + d) = 4 * product k n) : k + d < n + 1 := by
  by_contra hnot
  have hn : n + 1 ≤ k + d := by omega
  have hp : (∏ i ∈ Finset.Icc 1 k, 4 * (n + i)) <
      ∏ i ∈ Finset.Icc 1 k, 3 * (n + d + i) := by
    apply Finset.prod_lt_prod
    · intro i hi
      have := (Finset.mem_Icc.mp hi).1
      omega
    · intro i hi
      have := (Finset.mem_Icc.mp hi).2
      omega
    · refine ⟨1, Finset.mem_Icc.mpr ⟨by decide, by omega⟩, ?_⟩
      omega
  have hl : (∏ i ∈ Finset.Icc 1 k, 4 * (n + i)) = 4 ^ k * product k n := by
    simp only [Finset.prod_mul_distrib, Finset.prod_const, Nat.card_Icc,
      Nat.add_sub_cancel, product]
  have hu : (∏ i ∈ Finset.Icc 1 k, 3 * (n + d + i)) = 3 ^ k * product k (n + d) := by
    simp only [Finset.prod_mul_distrib, Finset.prod_const, Nat.card_Icc,
      Nat.add_sub_cancel, product]
  have hpow := Nat.mul_lt_mul_of_pos_right (four_thirds_power k hk) (product_pos k n)
  rw [hl, hu, heq] at hp
  have hid : 3 ^ k * (4 * product k n) = (4 * 3 ^ k) * product k n := by ring
  omega

theorem cross_antitone (k d a b : ℕ) (hab : a ≤ b) :
    product k (b + d) * product k a ≤ product k (a + d) * product k b := by
  have hfactor (i : ℕ) : (b + d + i) * (a + i) ≤ (a + d + i) * (b + i) := by
    have hd := Nat.mul_le_mul_left d hab
    calc
      (b + d + i) * (a + i) = (a + i) * (b + i) + d * a + d * i := by ring
      _ ≤ (a + i) * (b + i) + d * b + d * i := by omega
      _ = (a + d + i) * (b + i) := by ring
  have hp : (∏ i ∈ Finset.Icc 1 k, (b + d + i) * (a + i)) ≤
      ∏ i ∈ Finset.Icc 1 k, (a + d + i) * (b + i) :=
    Finset.prod_le_prod (fun _ _ => Nat.zero_le _) (fun i _ => hfactor i)
  simpa only [product, Finset.prod_mul_distrib] using hp

theorem not_four_of_adjacent_signs (k d a n : ℕ)
    (hlo : 4 * product k a < product k (a + d))
    (hhi : product k (a + 1 + d) < 4 * product k (a + 1)) :
    product k (n + d) ≠ 4 * product k n := by
  intro heq
  by_cases hna : n ≤ a
  · have hc := cross_antitone k d n a hna
    have hl := Nat.mul_lt_mul_of_pos_right hlo (product_pos k n)
    rw [heq] at hc
    have hid : (4 * product k n) * product k a =
        (4 * product k a) * product k n := by ring
    omega
  · have han : a + 1 ≤ n := by omega
    have hc := cross_antitone k d (a + 1) n han
    have hh := Nat.mul_lt_mul_of_pos_right hhi (product_pos k n)
    rw [heq] at hc
    have hid : (4 * product k n) * product k (a + 1) =
        (4 * product k (a + 1)) * product k n := by ring
    omega

def cutoffTable : List (List ℕ) :=
  [[0, 1, 2, 3, 4, 5, 6, 7],
   [3, 4, 6, 8, 9, 11, 13, 15],
   [7, 9, 12, 14, 16, 19, 21, 24],
   [12, 15, 18, 22, 25, 28, 31, 34],
   [19, 23, 27, 31, 35, 38, 42, 46],
   [28, 32, 37, 41, 46, 50, 55, 59],
   [37, 43, 48, 53, 58, 64, 69, 74],
   [49, 55, 61, 67, 73, 79, 85, 91],
   [61, 68, 75, 82, 88, 95, 102, 108],
   [76, 83, 90, 98, 105, 113, 120, 128],
   [91, 99, 107, 116, 124, 132, 140, 148],
   [108, 117, 126, 135, 144, 153, 161, 170],
   [127, 136, 146, 155, 165, 175, 184, 194],
   [147, 157, 167, 177, 188, 198, 208, 219],
   [168, 179, 190, 201, 212, 223, 234, 245],
   [191, 202, 214, 226, 238, 250, 261, 273],
   [215, 227, 240, 252, 265, 277, 290, 302],
   [241, 254, 267, 280, 293, 307, 320, 333],
   [268, 282, 296, 310, 323, 337, 351, 365],
   [296, 311, 326, 340, 355, 370, 384, 399]]

def cutoff (k h : ℕ) : ℕ := ((cutoffTable.getD (k - 2) []).getD h 0)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem sign_certificates : ∀ k ∈ Finset.Icc 2 21, ∀ h ∈ Finset.Icc 0 7,
    4 * product k (cutoff k h) < product k (cutoff k h + (k + h)) ∧
      product k (cutoff k h + 1 + (k + h)) < 4 * product k (cutoff k h + 1) := by
  decide

theorem no_small_gap_k_le21 (k h n : ℕ)
    (hk : 2 ≤ k) (hk' : k ≤ 21) (hh : h ≤ 7) :
    product k (n + k + h) ≠ 4 * product k n := by
  obtain ⟨hl, hu⟩ := sign_certificates k (Finset.mem_Icc.mpr ⟨hk, hk'⟩)
    h (Finset.mem_Icc.mpr ⟨Nat.zero_le _, hh⟩)
  simpa only [Nat.add_assoc] using not_four_of_adjacent_signs k (k + h) (cutoff k h) n hl hu

/-- info: 'B686Round3SmallGap.cross_antitone' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms cross_antitone
/-- info: 'B686Round3SmallGap.not_four_of_adjacent_signs' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_of_adjacent_signs
/-- info: 'B686Round3SmallGap.sign_certificates' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms sign_certificates
/-- info: 'B686Round3SmallGap.no_small_gap_k_le21' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_small_gap_k_le21

/-- info: 'B686Round3SmallGap.four_thirds_power' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms four_thirds_power
/-- info: 'B686Round3SmallGap.start_exceeds_span' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms start_exceeds_span

end B686Round3SmallGap

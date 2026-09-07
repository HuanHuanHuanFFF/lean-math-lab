import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Positivity.Basic
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Algebra.BigOperators.Intervals

/-!
B686 Four, fixed k=12 only. The coefficient certificate from round 2 is
completed here by an integer lattice gap and a direct bound for the small range.
This follows the square-root polynomial method used in the earlier k=6/8
files. It is not a proof of the unrestricted bounty target.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

namespace B686K12

def p12 (t : ℤ) : ℤ :=
  (t + 1) * (t + 2) * (t + 3) * (t + 4) * (t + 5) * (t + 6) *
    (t + 7) * (t + 8) * (t + 9) * (t + 10) * (t + 11) * (t + 12)

def a12 (t : ℤ) : ℤ :=
  44343 + 67431 * t + 35945 * t ^ 2 + 9126 * t ^ 3 +
    1196 * t ^ 4 + 78 * t ^ 5 + 2 * t ^ 6

def e12 (t : ℤ) : ℤ :=
  50295249 + 34414146 * t + 8519823 * t ^ 2 + 903474 * t ^ 3 + 34749 * t ^ 4

theorem approx_identity (t : ℤ) : a12 t ^ 2 = 4 * p12 t + e12 t := by
  unfold a12 p12 e12
  ring

theorem a12_ge (t : ℤ) (ht : 0 ≤ t) : 9 ≤ a12 t := by
  have hpos : 0 ≤ a12 t - 44343 := by
    have he : a12 t - 44343 =
        67431 * t + 35945 * t ^ 2 + 9126 * t ^ 3 +
          1196 * t ^ 4 + 78 * t ^ 5 + 2 * t ^ 6 := by unfold a12; ring
    rw [he]
    positivity
  omega

theorem e12_pos (t : ℤ) (ht : 0 ≤ t) : 0 < e12 t := by
  unfold e12
  positivity

theorem a12_mod (t : ℤ) : a12 t % 18 = 9 := by
  have hpow : ∀ j : ℕ, t ^ j % 18 = (t % 18) ^ j % 18 := by
    intro j
    induction j with
    | zero => simp only [pow_zero]
    | succ j ih => simp only [pow_succ, Int.mul_emod, ih, Int.emod_emod]
  have hcheck : ∀ r : Fin 18, a12 (r.val : ℤ) % 18 = 9 := by decide
  have hr0 : 0 ≤ t % 18 := Int.emod_nonneg t (by decide)
  have hrlt : t % 18 < 18 := Int.emod_lt_of_pos t (by decide)
  let r : Fin 18 := ⟨(t % 18).toNat, by omega⟩
  have hr : (r.val : ℤ) = t % 18 := by dsimp [r]; omega
  calc
    a12 t % 18 = a12 (t % 18) % 18 := by
      simp only [a12, Int.add_emod, Int.mul_emod, hpow, Int.emod_emod]
    _ = a12 (r.val : ℤ) % 18 := by rw [hr]
    _ = 9 := hcheck r

theorem remainder_gap (t : ℤ) (ht : 38 ≤ t) :
    0 < 36 * a12 t - 81 - 4 * e12 t := by
  have hq : 0 ≤ t - 38 := by omega
  have he : 36 * a12 t - 81 - 4 * e12 t =
      6277327551 + 25588134036 * (t - 38) + 2554212168 * (t - 38) ^ 2 +
        101694960 * (t - 38) ^ 3 + 1997100 * (t - 38) ^ 4 +
        19224 * (t - 38) ^ 5 + 72 * (t - 38) ^ 6 := by
    unfold a12 e12
    ring
  rw [he]
  positivity

theorem square_intervals (t : ℤ) (ht : 38 ≤ t) :
    (2 * a12 t - 9) ^ 2 < 16 * p12 t ∧ 4 * p12 t < a12 t ^ 2 := by
  have hid := approx_identity t
  have he := e12_pos t (by omega)
  have hg := remainder_gap t ht
  have hr : 16 * p12 t - (2 * a12 t - 9) ^ 2 =
      4 * (4 * p12 t - a12 t ^ 2) + 36 * a12 t - 81 := by ring
  constructor <;> omega

theorem not_four_of_large (n m : ℤ) (hn : 38 ≤ n) (hm : 38 ≤ m) :
    p12 m ≠ 4 * p12 n := by
  intro heq
  obtain ⟨hnlo, hnhi⟩ := square_intervals n hn
  obtain ⟨hmlo, hmhi⟩ := square_intervals m hm
  have han := a12_ge n (by omega)
  have ham := a12_ge m (by omega)
  have hmodn := a12_mod n
  have hmodm := a12_mod m
  have hcases : a12 m ≤ 2 * a12 n - 9 ∨ 2 * a12 n + 9 ≤ a12 m := by omega
  rcases hcases with hleft | hright
  · have hs : a12 m ^ 2 ≤ (2 * a12 n - 9) ^ 2 :=
      pow_le_pow_left₀ (by omega) hleft 2
    omega
  · have hle : 4 * a12 n ≤ 2 * a12 m - 9 := by omega
    have hs : (4 * a12 n) ^ 2 ≤ (2 * a12 m - 9) ^ 2 :=
      pow_le_pow_left₀ (by omega) hle 2
    have hr : (4 * a12 n) ^ 2 = 16 * a12 n ^ 2 := by ring
    omega

theorem p12_pos (t : ℤ) (ht : 0 ≤ t) : 0 < p12 t := by
  unfold p12
  positivity

theorem not_four_of_small (n m : ℤ) (hn0 : 0 ≤ n) (hn : n < 38)
    (hm : n + 12 ≤ m) : p12 m ≠ 4 * p12 n := by
  intro h
  have hp := p12_pos n hn0
  have hm0 : 0 ≤ m := by omega
  have hs : 2176782336 * p12 n ≤ 244140625 * p12 m := by
    calc
      2176782336 * p12 n =
          (6 * (n + 1)) * (6 * (n + 2)) * (6 * (n + 3)) * (6 * (n + 4)) *
          (6 * (n + 5)) * (6 * (n + 6)) * (6 * (n + 7)) * (6 * (n + 8)) *
          (6 * (n + 9)) * (6 * (n + 10)) * (6 * (n + 11)) * (6 * (n + 12)) := by
        unfold p12
        ring
      _ ≤ (5 * (m + 1)) * (5 * (m + 2)) * (5 * (m + 3)) * (5 * (m + 4)) *
          (5 * (m + 5)) * (5 * (m + 6)) * (5 * (m + 7)) * (5 * (m + 8)) *
          (5 * (m + 9)) * (5 * (m + 10)) * (5 * (m + 11)) * (5 * (m + 12)) := by
        gcongr ?_ * ?_ * ?_ * ?_ * ?_ * ?_ * ?_ * ?_ * ?_ * ?_ * ?_ * ?_ <;> omega
      _ = 244140625 * p12 m := by
        unfold p12
        ring
  omega

theorem not_four (n m : ℕ) (hm : n + 12 ≤ m) : p12 m ≠ 4 * p12 n := by
  intro heq
  by_cases hn : 38 ≤ n
  · exact not_four_of_large n m (by omega) (by omega) heq
  · exact not_four_of_small n m (by omega) (by omega) (by omega) heq

theorem p12_nat_product (t : ℕ) :
    p12 t = ((∏ i ∈ Finset.Icc 1 (12 : ℕ), (t + i)) : ℕ) := by
  norm_num [p12, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]

theorem not_four_product (n m : ℕ) (hm : n + 12 ≤ m) :
    (∏ i ∈ Finset.Icc 1 (12 : ℕ), (m + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (12 : ℕ), (n + i)) := by
  intro h
  apply not_four n m hm
  rw [p12_nat_product, p12_nat_product]
  exact_mod_cast h

theorem not_four_ratio (n m : ℕ) (hm : n + 12 ≤ m) :
    (4 : ℚ) ≠ (∏ i ∈ Finset.Icc 1 (12 : ℕ), (m + i)) /
      (∏ i ∈ Finset.Icc 1 (12 : ℕ), (n + i)) := by
  have hpos : 0 < ∏ i ∈ Finset.Icc 1 (12 : ℕ), (n + i) := by
    apply Finset.prod_pos
    intro i hi
    have hi1 := (Finset.mem_Icc.mp hi).1
    omega
  have hden : ((∏ i ∈ Finset.Icc 1 (12 : ℕ), (n + i) : ℕ) : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hpos)
  intro h
  rw [eq_div_iff hden] at h
  apply not_four_product n m hm
  exact_mod_cast h.symm

/-- info: 'B686K12.not_four' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four
/-- info: 'B686K12.not_four_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_ratio

end B686K12

import research.tasks.«B686-Four».runs.«20260908-lcm-distance-7cab35e».uniform.Consumer
import research.tasks.«B686-Four».independent.GapBounds
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith

/-! The exact fixed-gap bound from the adopted third-round report, now derived
from the newer all-length distance theorem and elementary prime spacing.
No external large-prime-factor counting estimate is used. -/
namespace B686FixedGap
open Finset
noncomputable section

lemma prime_triple_gap (a b c : ℕ) (ha : a.Prime) (hb : b.Prime) (hc : c.Prime)
    (ha3 : 3 < a) (hab : a < b) (hbc : b < c) : a + 6 ≤ c := by
  have ha2 := ha.eq_two_or_odd.resolve_left (by omega)
  have hb2 := hb.eq_two_or_odd.resolve_left (by omega)
  have hc2 := hc.eq_two_or_odd.resolve_left (by omega)
  have ha0 : a % 3 ≠ 0 := by
    intro hh
    exact Nat.not_prime_of_dvd_of_lt (Nat.dvd_of_mod_eq_zero hh) (by decide) ha3 ha
  have hb0 : b % 3 ≠ 0 := by
    intro hh
    exact Nat.not_prime_of_dvd_of_lt (Nat.dvd_of_mod_eq_zero hh) (by decide) (by omega) hb
  have hc0 : c % 3 ≠ 0 := by
    intro hh
    exact Nat.not_prime_of_dvd_of_lt (Nat.dvd_of_mod_eq_zero hh) (by decide) (by omega) hc
  by_contra hnot
  have hbe : b = a+2 := by omega
  have hce : c = a+4 := by omega
  have hr : a%3=1 ∨ a%3=2 := by omega
  rcases hr with hr | hr
  · apply hb0
    simp [hbe, Nat.add_mod, hr]
  · apply hc0
    simp [hce, Nat.add_mod, hr]

/-- A coarse elementary lower bound for the zero-indexed n-th prime. -/
theorem three_mul_index_le_nth_prime (j : ℕ) : 3 * j ≤ Nat.nth Nat.Prime j + 2 := by
  induction j using Nat.strong_induction_on with
  | h j ih =>
    by_cases hj : j ≤ 3
    · interval_cases j <;> norm_num [Nat.nth_prime_zero_eq_two, Nat.nth_prime_one_eq_three,
        Nat.nth_prime_two_eq_five, Nat.nth_prime_three_eq_seven]
    · have hmono := Nat.nth_strictMono Nat.infinite_setOfPred_prime
      have hgap := prime_triple_gap (Nat.nth Nat.Prime (j-2)) (Nat.nth Nat.Prime (j-1))
        (Nat.nth Nat.Prime j) (Nat.prime_nth_prime _) (Nat.prime_nth_prime _)
        (Nat.prime_nth_prime _)
        (by have hh := Nat.add_two_le_nth_prime (j-2); omega)
        (hmono (by omega)) (hmono (by omega))
      have hprev := ih (j-2) (by omega)
      omega

/-- The paper's p_(s+1) is `Nat.nth Nat.Prime s`, using zero-based indexing. -/
def fixedGapBound (h : ℕ) : ℕ :=
  max 293 (max (h+8) (Nat.nth Nat.Prime ((4*h+7)/3)-1))

lemma fixedGapBound_ge (h : ℕ) : 293 ≤ fixedGapBound h ∧ 4*h+2 ≤ fixedGapBound h := by
  have hp := three_mul_index_le_nth_prime ((4*h+7)/3)
  have hs : 4*h+5 ≤ 3*((4*h+7)/3) := by omega
  have hinner := le_max_right (h+8) (Nat.nth Nat.Prime ((4*h+7)/3)-1)
  have houter := le_max_right 293 (max (h+8) (Nat.nth Nat.Prime ((4*h+7)/3)-1))
  constructor
  · exact le_max_left _ _
  · change 4*h+2 ≤ max 293 (max (h+8) (Nat.nth Nat.Prime ((4*h+7)/3)-1))
    omega

lemma span_le_of_distance (k h B : ℕ) (hB : 293 ≤ B) (hBh : 4*h+2 ≤ B)
    (hd : k^2 < 64*(k+h)) : 2*k+h ≤ B := by
  by_contra hnot
  have hk : 111 ≤ k := by omega
  have hsquare := Nat.mul_le_mul_right k hk
  nlinarith

/-- Exact original bound, including all h, k, n and the original square-size
bound on the starting point. Its numerical B(h) agrees with the paper. -/
theorem original_fixed_gap_bounds (h k n : ℕ) (hk : 2 ≤ k)
    (heq : (∏ i ∈ Icc 1 k, (n+k+h+i)) = 4 * ∏ i ∈ Icc 1 k, (n+i)) :
    2*k+h ≤ fixedGapBound h ∧
      k ≤ (fixedGapBound h-h)/2 ∧ n < (fixedGapBound h)^2 := by
  have hd := B686UniformRound9.Consumer.original_statement_sixty_four k n (n+k+h)
    hk (by omega) heq
  have hdist : k^2 < 64*(k+h) := by
    simpa only [show n+k+h-n=k+h by omega] using hd
  have hB := fixedGapBound_ge h
  have hspan := span_le_of_distance k h (fixedGapBound h) hB.1 hB.2 hdist
  have hn := B686GapBounds.start_below_span_square k n (k+h) (by omega)
    (by simpa [B686GapBounds.product, Nat.add_assoc] using heq)
  have hn' : n+1 < (2*k+h)^2 := by
    simpa only [show k+(k+h)=2*k+h by omega] using hn
  have hp := pow_le_pow_left₀ (Nat.zero_le (2*k+h)) hspan 2
  exact ⟨hspan, by omega, by omega⟩

/-- A genuine finite set of every original solution triple at a fixed gap;
the bound is uniform, explicit and independent of the interval starts. -/
theorem fixed_gap_solutions_finite (h : ℕ) :
    {t : ℕ×ℕ×ℕ | 2≤t.1 ∧ t.2.2=t.2.1+t.1+h ∧
      (∏ i ∈ Icc 1 t.1, (t.2.2+i)) = 4 * ∏ i ∈ Icc 1 t.1, (t.2.1+i)}.Finite := by
  let B := fixedGapBound h
  apply ((Set.finite_Iic B).prod
    ((Set.finite_Iic (B^2)).prod (Set.finite_Iic (B^2+B)))).subset
  rintro ⟨k,n,m⟩ ⟨hk,hm,heq⟩
  dsimp only at hk hm heq
  have hb := original_fixed_gap_bounds h k n hk (by simpa only [hm] using heq)
  change k≤B ∧ n≤B^2 ∧ m≤B^2+B
  dsimp only [B]
  omega

/-- info: 'B686FixedGap.three_mul_index_le_nth_prime' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_mul_index_le_nth_prime
/-- info: 'B686FixedGap.original_fixed_gap_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_fixed_gap_bounds
/-- info: 'B686FixedGap.fixed_gap_solutions_finite' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms fixed_gap_solutions_finite
end
end B686FixedGap

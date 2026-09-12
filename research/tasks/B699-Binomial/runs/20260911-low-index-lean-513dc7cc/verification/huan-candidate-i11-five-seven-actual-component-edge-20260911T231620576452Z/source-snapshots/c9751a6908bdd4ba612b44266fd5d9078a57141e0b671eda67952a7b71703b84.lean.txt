import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenFinal.ActualInstance
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Component.CeilHalf
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SmallPrimes.Window

/-! UNCOMPILED CANDIDATE. Actual raw binomial (5,7) prime components.
The final theorem keeps only n>=2^15360. It constructs both windows from accepted
localization; offsets may coincide and the signed difference may be zero. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenFinalConsumers
open Math.B699.I11FiveSevenScaled
open B699LowIndex.I11SmallPrimes
open B699LowIndex.I11FiveThreeComponentEdge

theorem integer_window_gap_le_ten {n a b : ℕ} (ha : a < 11) (hb : b < 11) :
    |((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ)| ≤ 10 := by
  apply abs_le.mpr
  constructor <;> omega

theorem actual_window_power_bounds {n p : ℕ} (hn : 20 ≤ n) (window : PrimeWindow n p) :
    ceilHalf n ≤ p ^ ((n.choose 11).factorization p) * window.cofactor ∧
      p ^ ((n.choose 11).factorization p) * window.cofactor ≤ 2 * ceilHalf n := by
  have hrepr : p ^ ((n.choose 11).factorization p) * window.cofactor = n - window.offset := by
    simpa only [primeComponent, Nat.mul_comm] using window.equation
  simpa only [← hrepr] using window_in_ceilHalf_interval hn window.offset_lt

theorem component_edge_of_actual_windows {n : ℕ}
    (hn : 20 ≤ n) (hY : fiveSevenY0 ≤ ceilHalf n)
    (wp : PrimeWindow n 5) (wq : PrimeWindow n 7) :
    (primeComponent n 5) ^ 1000 * (ceilHalf n) ^ 352 ≤ n ^ 1000 ∨
      (primeComponent n 7) ^ 1000 * (ceilHalf n) ^ 216 ≤ n ^ 1000 := by
  have hpBounds := actual_window_power_bounds hn wp
  have hqBounds := actual_window_power_bounds hn wq
  have hpNat : (5 : ℕ) ^ ((n.choose 11).factorization 5) * wp.cofactor = n - wp.offset := by
    simpa only [primeComponent, Nat.mul_comm] using wp.equation
  have hqNat : (7 : ℕ) ^ ((n.choose 11).factorization 7) * wq.cofactor = n - wq.offset := by
    simpa only [primeComponent, Nat.mul_comm] using wq.equation
  have hpInt : (5 : ℤ) ^ ((n.choose 11).factorization 5) * (wp.cofactor : ℤ) =
      ((n - wp.offset : ℕ) : ℤ) := by exact_mod_cast hpNat
  have hqInt : (7 : ℤ) ^ ((n.choose 11).factorization 7) * (wq.cofactor : ℤ) =
      ((n - wq.offset : ℕ) : ℤ) := by exact_mod_cast hqNat
  have hgap : |(5 : ℤ) ^ ((n.choose 11).factorization 5) * (wp.cofactor : ℤ) -
      (7 : ℤ) ^ ((n.choose 11).factorization 7) * (wq.cofactor : ℤ)| ≤ 24 := by
    rw [hpInt, hqInt]
    exact le_trans (integer_window_gap_le_ten wp.offset_lt wq.offset_lt)
      (by decide : (10 : ℤ) ≤ 24)
  have hcof := actual_five_seven_cofactor_edge (ceilHalf n)
    ((n.choose 11).factorization 5) ((n.choose 11).factorization 7)
    wp.cofactor wq.cofactor hY wq.cofactor_pos
    hpBounds.1 hqBounds.1 hqBounds.2 hgap
  rcases hcof with hP | hQ
  · exact Or.inl (primeWindow_graph_capacity wp hP)
  · exact Or.inr (primeWindow_graph_capacity wq hQ)

/-- A source-aligned actual (5,7) component edge. No tree, numeric certificate,
G, cofactor, window, or height-validity premise remains. -/
theorem actual_five_seven_component_edge {n : ℕ} (hn : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n 5) ^ 1000 * ((n + 1) / 2) ^ 352 ≤ n ^ 1000 ∨
      (primeComponent n 7) ^ 1000 * ((n + 1) / 2) ^ 216 ≤ n ^ 1000 := by
  have hlarge : 20 ≤ n :=
    twenty_le_of_power_bound (by decide : 5 ≤ 15360) hn
  have hn11 : 11 ≤ n := Nat.le_trans (by decide : 11 ≤ 20) hlarge
  have hY : fiveSevenY0 ≤ ceilHalf n := by
    have h := ceilHalf_power_lower (n := n) (k := 15359)
    simp only [show 15359 + 1 = 15360 by decide] at h
    simpa only [fiveSevenY0] using h hn
  obtain ⟨wp⟩ := primeWindow_nonempty (n := n) (p := 5) hn11 (by decide : Nat.Prime 5)
  obtain ⟨wq⟩ := primeWindow_nonempty (n := n) (p := 7) hn11 (by decide : Nat.Prime 7)
  simpa only [ceilHalf] using component_edge_of_actual_windows hlarge hY wp wq

end Math.B699.I11FiveSevenFinalConsumers

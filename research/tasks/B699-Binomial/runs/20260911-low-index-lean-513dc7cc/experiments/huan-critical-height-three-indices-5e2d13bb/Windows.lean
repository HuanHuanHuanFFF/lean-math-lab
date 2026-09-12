import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-height-three-indices-5e2d13bb».Components
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-two-five-gap33-5e2d13bb».Edge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Component.CeilHalf

/-! Complete uncompiled candidate: ordinary localization supplies the actual 2/5 windows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LargePrimeStructure

theorem window_bounds {n a : ℕ} (hn : 66 ≤ n) (ha : a < 34) :
    (n + 1) / 2 ≤ n - a ∧ n - a ≤ 2 * ((n + 1) / 2) := by omega

theorem integer_window_gap33 {n a b : ℕ} (ha : a < 34) (hb : b < 34) :
    |((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ)| ≤ 33 := by
  apply abs_le.mpr
  constructor <;> omega

theorem large_height_bounds {n : ℕ} (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    1122 ≤ n ∧ (2 : ℕ) ^ 15359 ≤ (n + 1) / 2 := by
  constructor
  · exact (by decide : 1122 ≤ (2 : ℕ) ^ 11).trans
      ((Nat.pow_le_pow_right (by decide : 0 < (2 : ℕ))
        (by decide : 11 ≤ 15360)).trans hheight)
  · simpa only [B699LowIndex.I11FiveThreeComponentEdge.ceilHalf] using
      B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_power_lower (n := n) (k := 15359) hheight

theorem actual_two_five_component_capacity {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n i 2) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 ∨
      (primeComponent n i 5) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 := by
  obtain ⟨hlarge, hY⟩ := large_height_bounds hheight
  have hin : i ≤ n := by omega
  obtain ⟨a, A, hai, hA, hP⟩ :=
    exists_prime_window (n := n) (i := i) (p := 2) (by omega) hin (by decide)
  obtain ⟨b, C, hbi, hC, hQ⟩ :=
    exists_prime_window (n := n) (i := i) (p := 5) (by omega) hin (by decide)
  have ha : a < 34 := lt_of_lt_of_le hai hi34
  have hb : b < 34 := lt_of_lt_of_le hbi hi34
  have hpBounds := window_bounds (n := n) (by omega) ha
  have hqBounds := window_bounds (n := n) (by omega) hb
  have hPnat : (2 : ℕ) ^ ((n.choose i).factorization 2) * A = n - a := hP
  have hQnat : (5 : ℕ) ^ ((n.choose i).factorization 5) * C = n - b := hQ
  have hPint : (2 : ℤ) ^ ((n.choose i).factorization 2) * (A : ℤ) =
      ((n - a : ℕ) : ℤ) := by exact_mod_cast hPnat
  have hQint : (5 : ℤ) ^ ((n.choose i).factorization 5) * (C : ℤ) =
      ((n - b : ℕ) : ℤ) := by exact_mod_cast hQnat
  have hgap : |(2 : ℤ) ^ ((n.choose i).factorization 2) * (A : ℤ) -
      (5 : ℤ) ^ ((n.choose i).factorization 5) * (C : ℤ)| ≤ 33 := by
    rw [hPint, hQint]
    exact integer_window_gap33 ha hb
  have hcofactor := Math.B699.TwoFiveGap33.actual_two_five_weak_edge
    ((n + 1) / 2) ((n.choose i).factorization 2) ((n.choose i).factorization 5)
    A C hY hC (by simpa only [hPnat] using hpBounds.1)
    (by simpa only [hQnat] using hqBounds.1)
    (by simpa only [hQnat] using hqBounds.2) hgap
  rcases hcofactor with hleft | hright
  · exact Or.inl (component_cofactor_capacity
      (hP.le.trans (Nat.sub_le n a)) hleft)
  · exact Or.inr (component_cofactor_capacity
      (hQ.le.trans (Nat.sub_le n b)) hright)

theorem actual_small_part_capacity {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (smallPrimePart n i) ^ 1000 * ((n + 1) / 2) ^ 10 ≤
      n ^ (1000 * smallPrimeCount i) := by
  have hn : 0 < n := (Nat.pow_pos (by decide : 0 < (2 : ℕ))).trans_le hheight
  rcases actual_two_five_component_capacity hi hi34 hheight with hP | hQ
  · exact smallPrimePart_capacity hn (by decide : Nat.Prime 2) (by omega) hP
  · exact smallPrimePart_capacity hn (by decide : Nat.Prime 5) (by omega) hQ

end Math.B699.CriticalPadeHeight

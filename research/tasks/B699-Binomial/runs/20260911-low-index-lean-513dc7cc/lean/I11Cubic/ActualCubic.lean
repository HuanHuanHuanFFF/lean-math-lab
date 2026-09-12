import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Cubic.CubicPowers
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Cubic.CubicCofactors
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SmallPrimes.Window

/-!
UNCOMPILED CANDIDATE. The actual i11 cubic bridge, with complete n,j quantifiers.
The localization prerequisite has a separate frozen candidate and must be accepted
by the parent first. No offset-distinctness condition is introduced.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I11CubicBridge

open B699LargePrimeStructure
open B699LowIndex.I11SmallPrimes

theorem actual_i11_cubic_bridge {n j : ℕ}
    (hn : (2 : ℕ) ^ 98 ≤ n) (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j) :
    ∃ p q h k a b A C : ℕ,
      p.Prime ∧ q.Prime ∧ p ∈ ({2, 3, 5, 7} : Finset ℕ) ∧
      q ∈ ({2, 3, 5, 7} : Finset ℕ) ∧ p ≠ q ∧
      h = (n.choose 11).factorization p ∧ k = (n.choose 11).factorization q ∧
      0 < h ∧ 0 < k ∧ a < 11 ∧ b < 11 ∧ 1 ≤ A ∧ 1 ≤ C ∧
      n - a = p ^ h * A ∧ n - b = q ^ k * C ∧
      A ^ 3 ≤ min (n - a) (n - b) ∧ C ^ 3 ≤ min (n - a) (n - b) ∧
      Nat.dist (n - a) (n - b) ≤ 10 := by
  have hn110 : 110 ≤ n := Nat.le_trans cubic_start_large hn
  have hn11 : 11 ≤ n := by omega
  have hn20 : 20 ≤ n := by omega
  have hnpos : 0 < n := by omega
  obtain ⟨p, q, hp, hplt, hq, hqlt, hpq, hpb, hqb⟩ := two_actual_large_components hn hij hjn hno
  have hpMem : p ∈ ({2, 3, 5, 7} : Finset ℕ) := by
    rw [← i11_small_primes]
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hplt, hp⟩
  have hqMem : q ∈ ({2, 3, 5, 7} : Finset ℕ) := by
    rw [← i11_small_primes]
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hqlt, hq⟩
  obtain ⟨wp⟩ := primeWindow_nonempty hn11 hp
  obtain ⟨wq⟩ := primeWindow_nonempty hn11 hq
  have hprodP : wp.cofactor * primeComponent n p ≤ n := by
    rw [wp.equation]
    exact Nat.sub_le n wp.offset
  have hprodQ : wq.cofactor * primeComponent n q ≤ n := by
    rw [wq.equation]
    exact Nat.sub_le n wq.offset
  have hfourP : wp.cofactor ^ 4 ≤ n := cofactor_four_le hnpos hprodP hpb
  have hfourQ : wq.cofactor ^ 4 ≤ n := cofactor_four_le hnpos hprodQ hqb
  have hcubeP : wp.cofactor ^ 3 ≤ min (n - wp.offset) (n - wq.offset) :=
    cofactor_cube_le_both_windows hn20 wp.cofactor_pos hfourP wp.offset_lt wq.offset_lt
  have hcubeQ : wq.cofactor ^ 3 ≤ min (n - wp.offset) (n - wq.offset) :=
    cofactor_cube_le_both_windows hn20 wq.cofactor_pos hfourQ wp.offset_lt wq.offset_lt
  have hreprP : n - wp.offset = p ^ (n.choose 11).factorization p * wp.cofactor := by
    simpa only [primeComponent, Nat.mul_comm] using Eq.symm wp.equation
  have hreprQ : n - wq.offset = q ^ (n.choose 11).factorization q * wq.cofactor := by
    simpa only [primeComponent, Nat.mul_comm] using Eq.symm wq.equation
  exact ⟨p, q, (n.choose 11).factorization p, (n.choose 11).factorization q,
    wp.offset, wq.offset, wp.cofactor, wq.cofactor, hp, hq, hpMem, hqMem, hpq,
    rfl, rfl, exponent_pos_of_large_fourth hnpos hpb, exponent_pos_of_large_fourth hnpos hqb,
    wp.offset_lt, wq.offset_lt, wp.cofactor_pos, wq.cofactor_pos, hreprP, hreprQ,
    hcubeP, hcubeQ, window_distance_le_ten wp.offset_lt wq.offset_lt⟩

end B699LowIndex.I11CubicBridge

#print axioms B699LowIndex.I11CubicBridge.actual_i11_cubic_bridge

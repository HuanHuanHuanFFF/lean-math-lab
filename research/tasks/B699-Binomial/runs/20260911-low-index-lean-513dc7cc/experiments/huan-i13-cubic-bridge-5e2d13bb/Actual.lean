import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Cubic.Powers
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Cubic.Cofactors
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Cubic.Window

/-!
UNCOMPILED CANDIDATE. The actual i13 cubic bridge, with complete n,j quantifiers.
The general localization theorem is already accepted; this i13 specialization
remains a candidate. No offset-distinctness condition is introduced.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.I13CubicBridge

open B699LargePrimeStructure

theorem actual_i13_cubic_bridge {n j : ℕ}
    (hn : (2 : ℕ) ^ 67 ≤ n) (hij : 13 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 13 j) :
    ∃ p q h k a b A C : ℕ,
      p.Prime ∧ q.Prime ∧ p ∈ ({2, 3, 5, 7, 11} : Finset ℕ) ∧
      q ∈ ({2, 3, 5, 7, 11} : Finset ℕ) ∧ p ≠ q ∧
      h = (n.choose 13).factorization p ∧ k = (n.choose 13).factorization q ∧
      0 < h ∧ 0 < k ∧ a < 13 ∧ b < 13 ∧ 1 ≤ A ∧ 1 ≤ C ∧
      n - a = p ^ h * A ∧ n - b = q ^ k * C ∧
      A ^ 3 ≤ min (n - a) (n - b) ∧ C ^ 3 ≤ min (n - a) (n - b) ∧
      Nat.dist (n - a) (n - b) ≤ 12 := by
  have hn686 : 686 ≤ n := Nat.le_trans cubic_start_large hn
  have hn13 : 13 ≤ n := by omega
  have hnCubic : 686 ≤ n := by omega
  have hnpos : 0 < n := by omega
  obtain ⟨p, q, hp, hplt, hq, hqlt, hpq, hpb, hqb⟩ := two_actual_large_components hn hij hjn hno
  have hpMem : p ∈ ({2, 3, 5, 7, 11} : Finset ℕ) := by
    rw [← i13_small_primes]
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hplt, hp⟩
  have hqMem : q ∈ ({2, 3, 5, 7, 11} : Finset ℕ) := by
    rw [← i13_small_primes]
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hqlt, hq⟩
  obtain ⟨wp⟩ := primeWindow_nonempty hn13 hp
  obtain ⟨wq⟩ := primeWindow_nonempty hn13 hq
  have hprodP : wp.cofactor * primeComponent n p ≤ n := by
    rw [wp.equation]
    exact Nat.sub_le n wp.offset
  have hprodQ : wq.cofactor * primeComponent n q ≤ n := by
    rw [wq.equation]
    exact Nat.sub_le n wq.offset
  have htenP : wp.cofactor ^ 10 ≤ n ^ 3 := cofactor_ten_le hnpos hprodP hpb
  have htenQ : wq.cofactor ^ 10 ≤ n ^ 3 := cofactor_ten_le hnpos hprodQ hqb
  have hcubeP : wp.cofactor ^ 3 ≤ min (n - wp.offset) (n - wq.offset) :=
    cofactor_cube_le_both_windows hnCubic htenP wp.offset_lt wq.offset_lt
  have hcubeQ : wq.cofactor ^ 3 ≤ min (n - wp.offset) (n - wq.offset) :=
    cofactor_cube_le_both_windows hnCubic htenQ wp.offset_lt wq.offset_lt
  have hreprP : n - wp.offset = p ^ (n.choose 13).factorization p * wp.cofactor := by
    simpa only [primeComponent, Nat.mul_comm] using Eq.symm wp.equation
  have hreprQ : n - wq.offset = q ^ (n.choose 13).factorization q * wq.cofactor := by
    simpa only [primeComponent, Nat.mul_comm] using Eq.symm wq.equation
  exact ⟨p, q, (n.choose 13).factorization p, (n.choose 13).factorization q,
    wp.offset, wq.offset, wp.cofactor, wq.cofactor, hp, hq, hpMem, hqMem, hpq,
    rfl, rfl, exponent_pos_of_large_tenth hnpos hpb, exponent_pos_of_large_tenth hnpos hqb,
    wp.offset_lt, wq.offset_lt, wp.cofactor_pos, wq.cofactor_pos, hreprP, hreprQ,
    hcubeP, hcubeQ, window_distance_le_twelve wp.offset_lt wq.offset_lt⟩

end B699LowIndex.I13CubicBridge

#print axioms B699LowIndex.I13CubicBridge.actual_i13_cubic_bridge

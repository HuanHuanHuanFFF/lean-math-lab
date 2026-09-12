import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Bounded.Components
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Bounded.WindowBounds

/-! UNCOMPILED CANDIDATE. Actual bounded cofactors for the i11 CRT descent.
All original n,j and prime endpoint quantifiers remain inside the imported
Common predicate. Positions may coincide. The numeric M/H certificate is explicit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11BoundedCofactors
open B699LargePrimeStructure B699LowIndex.UpperHeight
open B699LowIndex.I11SmallPrimes B699LowIndex.I11CubicBridge

theorem actual_i11_bounded_cofactor_bridge {n j H M : ℕ}
    (hM : 1 ≤ M) (hlarge : 110 ≤ n) (hMn : M < n) (hnH : n < H)
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hcertificate : (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33)
    (hno : ¬ Common n 11 j) :
    ∃ p q h k a b A C : ℕ,
      p.Prime ∧ q.Prime ∧ p ∈ ({2, 3, 5, 7} : Finset ℕ) ∧
      q ∈ ({2, 3, 5, 7} : Finset ℕ) ∧ p ≠ q ∧
      h = (n.choose 11).factorization p ∧ k = (n.choose 11).factorization q ∧
      0 < h ∧ 0 < k ∧ a < 11 ∧ b < 11 ∧ 1 ≤ A ∧ 1 ≤ C ∧ A ≤ M ∧ C ≤ M ∧
      n - a = p ^ h * A ∧ n - b = q ^ k * C ∧ Nat.dist (n - a) (n - b) ≤ 10 := by
  have hn11 : 11 ≤ n := by omega
  obtain ⟨p, q, hp, hq, hpMem, hqMem, hpq, hpb, hqb⟩ :=
    two_actual_components_above_capacity hM hij hjn hlarge hnH hcertificate hno
  obtain ⟨wp⟩ := primeWindow_nonempty hn11 hp
  obtain ⟨wq⟩ := primeWindow_nonempty hn11 hq
  have hA : wp.cofactor < M := actual_window_cofactor_lt wp hpb
  have hC : wq.cofactor < M := actual_window_cofactor_lt wq hqb
  have hpowP : 0 < (n.choose 11).factorization p := exponent_pos_of_capacity hMn hpb
  have hpowQ : 0 < (n.choose 11).factorization q := exponent_pos_of_capacity hMn hqb
  have hreprP : n - wp.offset = p ^ (n.choose 11).factorization p * wp.cofactor := by
    simpa only [primeComponent, Nat.mul_comm] using Eq.symm wp.equation
  have hreprQ : n - wq.offset = q ^ (n.choose 11).factorization q * wq.cofactor := by
    simpa only [primeComponent, Nat.mul_comm] using Eq.symm wq.equation
  exact ⟨p, q, (n.choose 11).factorization p, (n.choose 11).factorization q,
    wp.offset, wq.offset, wp.cofactor, wq.cofactor, hp, hq, hpMem, hqMem, hpq,
    rfl, rfl, hpowP, hpowQ, wp.offset_lt, wq.offset_lt, wp.cofactor_pos, wq.cofactor_pos,
    Nat.le_of_lt hA, Nat.le_of_lt hC, hreprP, hreprQ,
    window_distance_le_ten wp.offset_lt wq.offset_lt⟩

end B699LowIndex.I11BoundedCofactors
#print axioms B699LowIndex.I11BoundedCofactors.actual_i11_bounded_cofactor_bridge

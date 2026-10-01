module
public import Mathlib.NumberTheory.PrimeCounting
public import Mathlib.Data.Nat.Prime.Basic
import Lean.Elab.Tactic.Omega

/-! Paper section 3.1: a uniform exact sieve-cardinality upper bound for pi(b).
This proves the correctness interface before evaluating any of the fixed
115 rows. It performs no new prime/index scan or unbounded gap research. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
public section
namespace B699ModernSieve

noncomputable def survivors (P : Finset Nat) (b : Nat) : Finset Nat := by
  classical
  exact (Finset.Icc 1 b).filter (fun m => ∀ q ∈ P, ¬ q ∣ m)

theorem primeCounting_sieve_upper {P : Finset Nat} {b : Nat}
    (hP : P.Nonempty) (hprime : ∀ q ∈ P, q.Prime) (hbound : ∀ q ∈ P, q ≤ b) :
    Nat.primeCounting b ≤ P.card - 1 + (survivors P b).card := by
  classical
  obtain ⟨q, hq⟩ := hP
  have hb1 : 1 ≤ b := by
    have hq2 := (hprime q hq).two_le
    have hqb := hbound q hq
    omega
  have hone : 1 ∈ survivors P b := by
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Icc.mpr ⟨by decide, hb1⟩, ?_⟩
    intro p hp hpd
    have hp2 := (hprime p hp).two_le
    have hple := Nat.le_of_dvd (by decide : 0 < 1) hpd
    omega
  have hsub : Nat.primesLE b ⊆ P ∪ (survivors P b).erase 1 := by
    intro p hp
    obtain ⟨hpb, hpp⟩ := Nat.mem_primesLE.mp hp
    by_cases hpP : p ∈ P
    · exact Finset.mem_union.mpr (Or.inl hpP)
    · apply Finset.mem_union.mpr
      apply Or.inr
      apply Finset.mem_erase.mpr
      refine ⟨hpp.ne_one, ?_⟩
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_Icc.mpr ⟨hpp.one_lt.le, hpb⟩, ?_⟩
      intro r hr hrd
      rcases (Nat.dvd_prime hpp).mp hrd with hr1 | hrp
      · exact (hprime r hr).ne_one hr1
      · exact hpP (hrp ▸ hr)
  have hc : Nat.primeCounting b ≤ P.card + ((survivors P b).erase 1).card := by
    rw [← Nat.primesLE_card_eq_primeCounting]
    exact (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  have he := Finset.card_erase_add_one hone
  have hpCard : 0 < P.card := Finset.card_pos.mpr ⟨q, hq⟩
  omega

end B699ModernSieve
#check @B699ModernSieve.primeCounting_sieve_upper
#print axioms B699ModernSieve.primeCounting_sieve_upper


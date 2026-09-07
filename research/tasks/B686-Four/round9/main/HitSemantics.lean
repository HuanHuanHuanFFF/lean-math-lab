import Lean.Elab.Tactic.Omega

/-!
Exact modular semantics used by the prime-synchronization route.
This file requires only Lean, not an analytic equidistribution assumption.
-/

namespace B686Round9

/-- A block shorter than a modulus hits a multiple precisely when its
starting residue is at least the modulus minus the block length. -/
theorem block_hits_iff (k n p : Nat) (hkp : k < p) :
    (∃ i, 1 ≤ i ∧ i ≤ k ∧ p ∣ n + i) ↔ p ≤ n % p + k := by
  have hp : 0 < p := by omega
  have hr : n % p < p := Nat.mod_lt n hp
  constructor
  · rintro ⟨i, hi, hik, hd⟩
    have himod : i % p = i := Nat.mod_eq_of_lt (by omega)
    have hz := Nat.mod_eq_zero_of_dvd hd
    rw [Nat.add_mod, himod] at hz
    apply Nat.le_of_not_lt
    intro hnot
    have hsmall : n % p + i < p := by omega
    rw [Nat.mod_eq_of_lt hsmall] at hz
    omega
  · intro h
    refine ⟨p - n % p, by omega, by omega, ?_⟩
    apply Nat.dvd_of_mod_eq_zero
    rw [← Nat.mod_add_mod]
    have heq : n % p + (p - n % p) = p := by omega
    rw [heq, Nat.mod_self]

/-- The fixed off-diagonal rectangle used in the analytic argument really
does encode a hit in the first block and a miss in the second one. -/
theorem rectangle_hit_miss (k n m p : Nat)
    (_hk : 2 ≤ k) (hlo : 2 * k ≤ p) (hhi : p ≤ 4 * k)
    (hn : 4 * p < 5 * (n % p)) (hm : 5 * (m % p) < p) :
    (∃ i, 1 ≤ i ∧ i ≤ k ∧ p ∣ n + i) ∧
      ¬ (∃ j, 1 ≤ j ∧ j ≤ k ∧ p ∣ m + j) := by
  have hkp : k < p := by omega
  rw [block_hits_iff k n p hkp, block_hits_iff k m p hkp]
  omega

/-- info: 'B686Round9.block_hits_iff' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms block_hits_iff
/-- info: 'B686Round9.rectangle_hit_miss' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms rectangle_hit_miss

end B686Round9

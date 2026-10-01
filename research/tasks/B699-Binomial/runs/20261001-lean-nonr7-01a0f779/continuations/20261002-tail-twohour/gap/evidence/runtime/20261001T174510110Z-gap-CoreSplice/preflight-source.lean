import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.IntegerInterval

/-! Pure logical/natural splice used by the actual binomial adapter.
P and C are explicit predicates, not project axioms. Prime and binomial
semantics must be bound by the independently checked actual adapter. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailGapArithmetic

theorem original_of_inputs {P : Nat → Prop} {C : Nat → Nat → Nat → Prop}
    (htop : ∀ n i j p : Nat, i < j → j ≤ n / 2 → P p →
      n - i < p → p ≤ n → C n i j)
    (hheight : ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ¬ C n i j → n < 4096 * i)
    (hgap : ∀ y : Nat, 10000000 ≤ y →
      ∃ p : Nat, P p ∧ y < p ∧ 4095 * (p - y) ≤ y)
    (hfinite : ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      n ≤ 20000000 → C n i j) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 → C n i j := by
  intro n i j hi hij hjn
  by_cases hn : n ≤ 20000000
  · exact hfinite n i j hi hij hjn hn
  · apply Classical.byContradiction
    intro hno
    have hbound := hheight n i j hi hij hjn hno
    have hy := counterexample_gap_threshold hij hjn (by omega : 20000000 < n)
    obtain ⟨p, hp, hyp, hshort⟩ := hgap (n - i) hy
    have hpn := gap_height_top_lt hij hjn hbound hyp hshort
    exact hno (htop n i j p hij hjn hp hyp (by omega))

end B699TailGapArithmetic

#print axioms B699TailGapArithmetic.original_of_inputs

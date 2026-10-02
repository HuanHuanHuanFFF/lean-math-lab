module
public import Mathlib.Data.Nat.Prime.Defs

/-! Modern finite-chain API, following the fixed old PrimeChain construction.
No primality or chain witness is assumed by a definition. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section
namespace B699Finite20261002

inductive PrimeChain (gap : Nat) : Nat → Nat → Prop where
  | singleton {p : Nat} (hp : p.Prime) : PrimeChain gap p p
  | step {p q r : Nat} (hp : p.Prime) (hpq : p < q)
      (hgap : q ≤ p + gap) (htail : PrimeChain gap q r) : PrimeChain gap p r

theorem PrimeChain.trans {gap lo mid hi : Nat}
    (hleft : PrimeChain gap lo mid) (hright : PrimeChain gap mid hi) :
    PrimeChain gap lo hi := by
  revert hright
  induction hleft with
  | singleton _ =>
      intro hright
      exact hright
  | step hp hpq hgap _ ih =>
      intro hright
      exact .step hp hpq hgap (ih hright)

theorem PrimeChain.near_top {gap lo hi : Nat} (hchain : PrimeChain gap lo hi)
    {n : Nat} (hlo : lo ≤ n) (hhi : n < hi) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ n < p + gap := by
  induction hchain generalizing n with
  | singleton _ => omega
  | @step p q r hp _ hgap _ ih =>
      by_cases hnq : n < q
      · exact ⟨p, hp, hlo, by omega⟩
      · exact ih (by omega) hhi

end B699Finite20261002

#print axioms B699Finite20261002.PrimeChain.trans
#print axioms B699Finite20261002.PrimeChain.near_top

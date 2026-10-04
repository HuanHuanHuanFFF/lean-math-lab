module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore

/-! Finite multiplicative prime chains.  No infinite prime supply is assumed.
An edge 4095*q <= 4096*p leaves a top witness for each integer n < q.
With n < 4096*i this witness satisfies n-i < p, exactly as needed by B699. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section
namespace B699TailNinety20261004

inductive RatioPrimeChain : Nat → Nat → Prop where
  | singleton {p : Nat} (hp : p.Prime) : RatioPrimeChain p p
  | step {p q r : Nat} (hp : p.Prime) (hpq : p < q)
      (hratio : 4095 * q ≤ 4096 * p) (htail : RatioPrimeChain q r) :
      RatioPrimeChain p r

theorem RatioPrimeChain.trans {lo mid hi : Nat}
    (hleft : RatioPrimeChain lo mid) (hright : RatioPrimeChain mid hi) :
    RatioPrimeChain lo hi := by
  revert hright
  induction hleft with
  | singleton _ =>
      intro hright
      exact hright
  | step hp hpq hratio _ ih =>
      intro hright
      exact .step hp hpq hratio (ih hright)

theorem RatioPrimeChain.near_top {lo hi : Nat} (hchain : RatioPrimeChain lo hi)
    {n : Nat} (hlo : lo ≤ n) (hhi : n < hi) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ 4095 * n < 4096 * p := by
  induction hchain generalizing n with
  | singleton _ => omega
  | @step p q r hp _ hratio _ ih =>
      by_cases hnq : n < q
      · exact ⟨p, hp, hlo, by omega⟩
      · exact ih (by omega) hhi

theorem RatioPrimeChain.last_prime {lo hi : Nat} (hchain : RatioPrimeChain lo hi) :
    hi.Prime := by
  induction hchain with
  | singleton hp => exact hp
  | step _ _ _ _ ih => exact ih

theorem top_of_ratio {n i p : Nat} (hpn : p ≤ n)
    (hnear : 4095 * n < 4096 * p) (hheight : n < 4096 * i) :
    n - i < p := by
  omega

end B699TailNinety20261004

#print axioms B699TailNinety20261004.RatioPrimeChain.trans
#print axioms B699TailNinety20261004.RatioPrimeChain.near_top
#print axioms B699TailNinety20261004.RatioPrimeChain.last_prime
#print axioms B699TailNinety20261004.top_of_ratio

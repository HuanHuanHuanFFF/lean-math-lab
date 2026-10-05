module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteRetry20261002

/-! Exact last-prime induction from the fixed old PrimeChain API. -/
theorem chain_last_prime {gap lo hi : Nat}
    (h : B699Finite20261002.PrimeChain gap lo hi) : hi.Prime := by
  induction h with
  | singleton hp => exact hp
  | step _ _ _ _ ih => exact ih

end B699FiniteRetry20261002
#print axioms B699FiniteRetry20261002.chain_last_prime

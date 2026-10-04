module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore

/-! Extract a strict next-prime witness from a finite additive-gap chain.
The scaled Gap conclusion needs D * gap <= y; no infinite supply is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699TailFinish20261004

theorem fixed_chain_first_prime {gap lo hi : Nat}
    (hchain : B699Finite20261002.PrimeChain gap lo hi) : lo.Prime := by
  cases hchain with
  | singleton hp => exact hp
  | step hp _ _ _ => exact hp

theorem fixed_chain_near_after {gap lo hi : Nat}
    (hchain : B699Finite20261002.PrimeChain gap lo hi)
    {y : Nat} (hlo : lo ≤ y) (hhi : y < hi) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ p ≤ y + gap := by
  induction hchain generalizing y with
  | singleton _ => omega
  | @step p q r _ _ hgap htail ih =>
      by_cases hyq : y < q
      · exact ⟨q, fixed_chain_first_prime htail, hyq, by omega⟩
      · exact ih (by omega) hhi

theorem fixed_chain_scaled_gap {D gap lo hi : Nat}
    (hchain : B699Finite20261002.PrimeChain gap lo hi)
    {y : Nat} (hlo : lo ≤ y) (hhi : y < hi) (hscaled : D * gap ≤ y) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ D * (p - y) ≤ y := by
  obtain ⟨p, hp, hyp, hupper⟩ := fixed_chain_near_after hchain hlo hhi
  have hsub : p - y ≤ gap := by omega
  exact ⟨p, hp, hyp, (Nat.mul_le_mul_left D hsub).trans hscaled⟩

end B699TailFinish20261004
#print axioms B699TailFinish20261004.fixed_chain_first_prime
#print axioms B699TailFinish20261004.fixed_chain_near_after
#print axioms B699TailFinish20261004.fixed_chain_scaled_gap

module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioCore

/-! The same finite ratio chain also supplies the next prime above each y.
This is a real finite Gap interval, using already checked chain nodes;
the last endpoint is excluded because no next prime is stored there. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699TailNinety20261004

theorem RatioPrimeChain.first_prime {lo hi : Nat} (hchain : RatioPrimeChain lo hi) :
    lo.Prime := by
  cases hchain with
  | singleton hp => exact hp
  | step hp _ _ _ => exact hp

theorem RatioPrimeChain.near_after {lo hi : Nat} (hchain : RatioPrimeChain lo hi)
    {y : Nat} (hlo : lo ≤ y) (hhi : y < hi) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  induction hchain generalizing y with
  | singleton _ => omega
  | @step p q r _ _ hratio htail ih =>
      by_cases hyq : y < q
      · have hupper : 4095 * q ≤ 4096 * y :=
          hratio.trans (Nat.mul_le_mul_left 4096 hlo)
        exact ⟨q, htail.first_prime, hyq, by omega⟩
      · exact ih (by omega) hhi

end B699TailNinety20261004

#print axioms B699TailNinety20261004.RatioPrimeChain.first_prime
#print axioms B699TailNinety20261004.RatioPrimeChain.near_after

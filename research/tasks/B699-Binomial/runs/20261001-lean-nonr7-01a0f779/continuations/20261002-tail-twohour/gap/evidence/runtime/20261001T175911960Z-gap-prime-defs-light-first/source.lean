import Mathlib.Data.Nat.Prime.Defs

/-! The exact independent natural prime-supply statement in paper §6.1.
No witness or unrestricted supply theorem is asserted by this definition. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailGap

def Gap (D Y : ℕ) : Prop :=
  ∀ y : ℕ, Y ≤ y → ∃ p : ℕ, p.Prime ∧ y < p ∧ D * (p - y) ≤ y

end B699TailGap

#print B699TailGap.Gap
#print axioms B699TailGap.Gap

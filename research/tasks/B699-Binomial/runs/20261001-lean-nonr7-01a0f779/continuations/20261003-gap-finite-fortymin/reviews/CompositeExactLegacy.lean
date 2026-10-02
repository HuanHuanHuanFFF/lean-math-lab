import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261003-gap-finite-fortymin».supply.CompositeTransferLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699CompositeVerify20261003

theorem complete_4885_exact (n j : Nat) (hij : 4885 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4885 ≤ p ∧ p ∣ n.choose 4885 ∧ p ∣ n.choose j :=
  B699CompositeTransfer20261003.complete_4885 hij hjn

theorem complete_4886_exact (n j : Nat) (hij : 4886 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4886 ≤ p ∧ p ∣ n.choose 4886 ∧ p ∣ n.choose j :=
  B699CompositeTransfer20261003.complete_4886 hij hjn

theorem complete_4887_exact (n j : Nat) (hij : 4887 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4887 ≤ p ∧ p ∣ n.choose 4887 ∧ p ∣ n.choose j :=
  B699CompositeTransfer20261003.complete_4887 hij hjn

theorem complete_4888_exact (n j : Nat) (hij : 4888 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4888 ≤ p ∧ p ∣ n.choose 4888 ∧ p ∣ n.choose j :=
  B699CompositeTransfer20261003.complete_4888 hij hjn

theorem complete_4885_4888_exact (n i j : Nat)
    (hi : 4885 ≤ i) (hiu : i ≤ 4888) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699CompositeTransfer20261003.complete_4885_through_4888 hi hiu hij hjn

end B699CompositeVerify20261003

#print B699CompositeVerify20261003.complete_4885_exact
#print axioms B699CompositeVerify20261003.complete_4885_exact
#print B699CompositeVerify20261003.complete_4886_exact
#print axioms B699CompositeVerify20261003.complete_4886_exact
#print B699CompositeVerify20261003.complete_4887_exact
#print axioms B699CompositeVerify20261003.complete_4887_exact
#print B699CompositeVerify20261003.complete_4888_exact
#print axioms B699CompositeVerify20261003.complete_4888_exact
#print B699CompositeVerify20261003.complete_4885_4888_exact
#print axioms B699CompositeVerify20261003.complete_4885_4888_exact

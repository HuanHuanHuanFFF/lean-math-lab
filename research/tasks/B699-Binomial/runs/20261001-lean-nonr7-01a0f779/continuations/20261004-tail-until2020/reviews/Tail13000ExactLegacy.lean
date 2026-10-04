import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-until2020».supply.Tail13000Legacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailUntil2020Verify20261004

theorem complete_13000_exact (n j : Nat) (hij : 13000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 13000 ≤ p ∧ p ∣ n.choose 13000 ∧ p ∣ n.choose j :=
  B699TailUntil202020261004.complete_13000 hij hjn

theorem all_upto_13000_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ 13000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailUntil202020261004.common_upto_13000 hi hiu hij hjn

end B699TailUntil2020Verify20261004

#print B699TailUntil2020Verify20261004.complete_13000_exact
#print axioms B699TailUntil2020Verify20261004.complete_13000_exact
#print B699TailUntil2020Verify20261004.all_upto_13000_exact
#print axioms B699TailUntil2020Verify20261004.all_upto_13000_exact

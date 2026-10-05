import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-until2020».supply.Tail15000Legacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailUntil2020Verify20261004

theorem complete_15000_exact (n j : Nat) (hij : 15000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 15000 ≤ p ∧ p ∣ n.choose 15000 ∧ p ∣ n.choose j :=
  B699TailUntil202020261004.complete_15000 hij hjn

theorem all_upto_15000_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ 15000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailUntil202020261004.common_upto_15000 hi hiu hij hjn

end B699TailUntil2020Verify20261004

#print B699TailUntil2020Verify20261004.complete_15000_exact
#print axioms B699TailUntil2020Verify20261004.complete_15000_exact
#print B699TailUntil2020Verify20261004.all_upto_15000_exact
#print axioms B699TailUntil2020Verify20261004.all_upto_15000_exact

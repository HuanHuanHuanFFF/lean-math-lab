import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialHeight.Compression
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CRTConsumers.AllStages

/-! A pending exact consumer of the accepted initial reduction and complete
four-stage CRT chain. This statement does not use terminal candidate coverage. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11CRTConsumers
open B699LargePrimeStructure

theorem actual_i11_below_29294603 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) :
    n < 29294603 :=
  AllStages.initial_to_29294603 hij hjn hno
    (Math.B699.I11InitialHeight.actual_i11_below_109 hij hjn hno)

end Math.B699.I11CRTConsumers

#check (Math.B699.I11CRTConsumers.actual_i11_below_29294603 :
  ∀ {n j : ℕ}, 11 < j → j ≤ n / 2 → ¬ B699LargePrimeStructure.Common n 11 j →
    n < 29294603)
#print axioms Math.B699.I11CRTConsumers.actual_i11_below_29294603
